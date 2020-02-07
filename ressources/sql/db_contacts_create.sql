-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: contact_simple
-- ------------------------------------------------------
-- Server version	8.0.19

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
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(45) DEFAULT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `web` varchar(45) DEFAULT NULL,
  `notes` longtext,
  `email` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `adresse` varchar(180) DEFAULT NULL,
  `cpostal` varchar(45) DEFAULT NULL,
  `ville` varchar(45) DEFAULT NULL,
  `spam` tinyint(1) DEFAULT '0',
  `photo` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `photo_UNIQUE` (`photo`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Mr.','NEE','Mickael','http://www.xmickael.fr','Auteur du programme, test de la creation d\'un contact','xmickael@gmail.com','06 28 22 78 39','14 rue Leger Gauthier','63450','Saint Amant Tallende',1,'toc4v3nzHxkSuSQL2Pcl'),(3,'Mlle','Louis','Juliette','http://www.Louis.com','notes automatique du contact : Louis Juliette','Louis.Juliette@sfr.com','0541439590','15 RUE VICTORIEN SARDOU','56477','Choisy-le-Roi',1,'a437ULwCSK7hIoYYxibQ'),(4,'Mr.','Hamon','Jules','http://www.Hamon.com','notes automatique du contact : Hamon Jules','Hamon.Jules@topnet.tn','0138725294','51 IMPASSE DE LA BALEINE','71316','Castres',0,NULL),(5,'Mme','Thomas','Lucas','http://www.Thomas.com','notes automatique du contact : Thomas Lucas','Thomas.Lucas@ermitage.fr','0569131721','87 RUE DES FRERES LUMIERE','84146','Saint-Pierre',0,'mpAyWS0Cc1oVo1nGlcEU'),(6,'Mme','Collet','Gabin','http://www.Collet.com','notes automatique du contact : Collet Gabin','Collet.Gabin@tenapra.com','0637851542','54 RUE DES SORBIERS','27776','Saint-Benoît',1,'qYc4pkTNwuE5THzR141i'),(7,'Mme','Germain','Alice','http://www.Germain.com','notes automatique du contact : Germain Alice','Germain.Alice@freefr','0253965156','48 RUE DE LA CORVETTE','3356','Agen',0,'sGiDDvF9h1xRshsb7XcA'),(8,'Mme','Berger','Lina','http://www.Berger.com','notes automatique du contact : Berger Lina','Berger.Lina@niveau99.com','0490246659','2 RUE DU LAC','37324','Douai',0,'ZPocIzFO9tXWVRSUBffx'),(9,'Mme','Schmitt','Alice','http://www.Schmitt.com','notes automatique du contact : Schmitt Alice','Schmitt.Alice@hotmail.com','0697493695','86 RUE MOLIERE','86474','Athis-Mons',0,NULL),(10,'Mlle','Dumas','Ambre','http://www.Dumas.com','notes automatique du contact : Dumas Ambre','Dumas.Ambre@wanadoo.fr','0624251180','27 RUE DU TRANSVAAL','99789','Bourg-en-Bresse',0,'iLVs0OAKLB9P0uIKh7Jm'),(11,'Mr.','Fernandez','Mathieu','http://www.Fernandez.com','notes automatique du contact : Fernandez Mathieu','Fernandez.Mathieu@wanadoo.fr','0185922361','75 RUE DE BUXEROLLES','69545','Wattrelos',0,'sAEYLm0i5Lc3j4z5Wl9O'),(12,'Mlle','Bouvier','Julia','http://www.Bouvier.com','notes automatique du contact : Bouvier Julia','Bouvier.Julia@ac-reims.fr','0241619599','42 ROUTE DEPARTEMENTALE 200','39270','Angers',1,'QOQ4EBSQ5lgS9MGYrwYf'),(13,'Mr.','Roche','Lisa','http://www.Roche.com','notes automatique du contact : Roche Lisa','Roche.Lisa@tenapra.com','0530192542','98 PASSAGE DES VIOLETTES','81841','Amiens',0,'otdfoMv6bybENHABXglu'),(14,'Mr.','Robin','Louis','http://www.Robin.com','notes automatique du contact : Robin Louis','Robin.Louis@sfr.com','0664088122','40 RUE DJANGO REINHARDT','34832','La Seyne-sur-Mer',0,'WPYsPcYHrOw8gi2xSqNy'),(15,'Mr.','Perrier','Mathieu','http://www.Perrier.com','notes automatique du contact : Perrier Mathieu','Perrier.Mathieu@hotmail.com','0364790972','45 RUE MASSENET','31056','L\'Haÿ-les-Roses',0,'X9bQoM60rm1IRXlfih7B'),(16,'Mr.','Lemaire','Kevin','http://www.Lemaire.com','notes automatique du contact : Lemaire Kevin','Lemaire.Kevin@orage.fr','0622738040','76 RUE DES PENDANTS','97839','L\'Haÿ-les-Roses',0,'4UbaCMT7aw6QbmJ0wAw6'),(17,'Mme','Joly','Paul','http://www.Joly.com','notes automatique du contact : Joly Paul','Joly.Paul@studiovitamine.com','0639509269','24 RUE DE BEAUPUY','55829','Franconville',0,'eZyEXwe1Y9Mst3FPs7UH'),(18,'Mme','Laporte','Iris','http://www.Laporte.com','notes automatique du contact : Laporte Iris','Laporte.Iris@ijbourgogne.com','0476697354','5 RUE JULES VEDRINES','57356','Nancy',0,'3mLcnTumDXEOYd39aaTL'),(19,'Mr.','Leclercq','Mathieu','http://www.Leclercq.com','notes automatique du contact : Leclercq Mathieu','Leclercq.Mathieu@yantu.com','0692077107','86 RUE ZURBARAN','43040','Alès',0,'hVxFvn05FMMZuaPSOv4q'),(20,'Mr.','Carpentier','Raphaël','http://www.Carpentier.com','notes automatique du contact : Carpentier Raphaël','Carpentier.Raphael@sfr.fr','0561325861','22 RUE LECONTE DE LISLE','2496','Courbevoie',0,'sNs6YHP6FAUvJnFAfata'),(21,'Mme','Blanchard','Lena','http://www.Blanchard.com','notes automatique du contact : Blanchard Lena','Blanchard.Lena@kerkiki.com','0485924250','9 RUE DJANGO REINHARDT','41220','Saint-Martin',0,'AczJXyI4Paonnh1KVfO5'),(22,'Mr.','Robin','Sacha','http://www.Robin.com','notes automatique du contact : Robin Sacha','Robin.Sacha@ac-dijon.fr','0116992992','44 RUE MALESHERBES','76002','Créteil',0,'KsibckgJqk7SiD85Sg96'),(23,'Mr.','Lambert','Léon','http://www.Lambert.com','notes automatique du contact : Lambert Léa','Lambert.Lea@club.fr','0103608659','26 RUE DU PONT SAINT ETIENNE','57338','Agen',0,'8tlQOBYmeBjEXZbphyVl'),(24,'Mr.','Collin','David','http://www.Collin.com','notes automatique du contact : Collin David','Collin.David@libertysurf.fr','0188928240','52 RUE CHARLES LINDBERGH','14407','Draguignan',0,'wxWw9PPLBqOsbt5ue6F6'),(25,'Mlle','Gaillard','Carole','http://www.Gaillard.com','notes automatique du contact : Gaillard Carole','Gaillard.Carole@sfr.com','0231215207','57 RUE D\'AGUESSEAU','30027','Chelles',0,'WKYEHKHzmbIXnf6yWLM2'),(26,'Mr.','Germain','Gabriel','http://www.Germain.com','notes automatique du contact : Germain Gabriel','Germain.Gabriel@hotmail.com','0303233512','36 RUE DE L\'ARGONNE','1736','Brive-la-Gaillarde',0,'sM3DET2lswKykNrMY4aE'),(27,'Mr.','Brunet','Hugo','http://www.Brunet.com','notes automatique du contact : Brunet Hugo','Brunet.Hugo@gmail.com','0412340855','80 RUE GEORGES BIZET','36246','Franconville',0,'v0RHz1vPReUDCb0grZX1'),(28,'Mlle','Roche','Clement','http://www.Roche.com','notes automatique du contact : Roche Clement','Roche.Clement@dambricourt.fr','0602585789','15 RUE LECONTE DE LISLE','3280','Cagnes-sur-Mer',0,'NChu5EWq87FeNOFQ8EIf'),(29,'Mlle','Gay','Iris','http://www.Gay.com','notes automatique du contact : Gay Iris','Gay.Iris@jetable.org','0169959736','59 RUE JOSEPH MAZABRAUD','22811','Le Mans',0,'tpxm9Zv9A4I9OIYl8mND'),(30,'Mr.','Leroy','Soufianne','http://www.Leroy.com','notes automatique du contact : Leroy Soufianne','Leroy.Soufianne@ironfle.com','0635358206','44 SQUARE DE GUYENNE','97354','Le Chesnay-Rocquencourt',0,'3c28ntg5u9ZLCVrLTVA9'),(33,'Mlle','Perret','Juliette','http://www.Perret.com','notes automatique du contact : Perret Juliette','Perret.Juliette@yantu.com','0112389251','11 RUE SAINT-BENOIT','50201','Grenoble',0,'xG00plIhOze8wjZLtzVK'),(34,'Mlle','Lucas','Jeanne','http://www.Lucas.com','notes automatique du contact : Lucas Jeanne','Lucas.Jeanne@topnet.tn','0305291742','59 RUE DES VENAUDS','66398','Vénissieux',0,'4Q9Xc52A8tWdQ9TLuBir'),(35,'Mme','Marie','Louise','http://www.Marie.com','notes automatique du contact : Marie Louise','Marie.Louise@club.fr','0658848422','54 RUE FONVIEILLE-ALQUIER','41219','Hyères',0,'6ILBBko02pMNrtvrX7Jk'),(36,'Mme','Morel','Hugo','http://www.Morel.com','notes automatique du contact : Morel Hugo','Morel.Hugo@tenapra.com','0199527731','97 ALLEE LOUIS BLERIOT','47240','Châtenay-Malabry',0,'qFT9gX0GK8RhMlGXvDUk'),(37,'Mlle','Roussel','Louise','http://www.Roussel.com','notes automatique du contact : Roussel Louise','Roussel.Louise@dracenie.net','0268677962','34 AVENUE DE NAUGEAT','41528','Calais',0,'CdNd9OCcgxZvF0jlj42X'),(38,'Mme','Moulin','Emma','http://www.Moulin.com','notes automatique du contact : Moulin Emma','Moulin.Emma@wanadfoo.fr','0190838124','91 ALLEE D\'ITHAQUE','66985','Bourg-en-Bresse',0,'HBdKqbQ6puCeBO7ZAnre'),(39,'Mr.','Barre','Bart','http://www.Barre.com','notes automatique du contact : Barre Bart','Barre.Bart@dbmail.com','0496180218','46 AVENUE GENERAL VALIN','30764','Palaiseau',0,'Pxads45NsvkkE1AFnox6'),(40,'Mr.','Picard','Lena','http://www.Picard.com','notes automatique du contact : Picard Lena','Picard.Lena@farenc.net','0595465250','41 RUE FERNANDEL','72415','Fort-de-France',0,'DYraFaAXBbRsGw3iHs4C'),(41,'Mme','Jacquet','Mohamed','http://www.Jacquet.com','notes automatique du contact : Jacquet Mohamed','Jacquet.Mohamed@mon-instit.fr','0344263417','93 ALLEE LA HENRIADE','3271','Caen',0,'vMnbkzMaTIUOsrNbSIXI'),(42,'Mr.','Benoit','Iris','http://www.Benoit.com','notes automatique du contact : Benoit Iris','Benoit.Iris@megy.net','0188338347','50 CHEMIN RURAL 203','83919','Trappes',0,'4YiZWPBx57M9ra9aZUKC'),(43,'Mr.','Marie','Hugo','http://www.Marie.com','notes automatique du contact : Marie Hugo','Marie.Hugo@orange-ftgroup.com','0470905864','98 RUE D\'ISLY','31565','Boulogne-sur-Mer',0,NULL),(44,'Mlle','Perrin','Alice','http://www.Perrin.com','notes automatique du contact : Perrin Alice','Perrin.Alice@online.fr','0627544525','13 RUE PIERRE DAC','21200','Saint-Priest',0,NULL),(45,'Mme','Lefebvre','Liam','http://www.Lefebvre.com','notes automatique du contact : Lefebvre Liam','Lefebvre.Liam@hotmail.com','0566393572','71 ALLEE DE CHATIVAUX','84732','Échirolles',0,NULL),(46,'Mlle','Perret','Lina','http://www.Perret.com','notes automatique du contact : Perret Lina','Perret.Lina@epitech.net','0329844290','20 ALLEE ROGER DUBAN','23306','Matoury',0,'XOdqF8cmPQ0hmtnwbuq2'),(47,'Mlle','Brunet','Alejandro','http://www.Brunet.com','notes automatique du contact : Brunet Alejandro','Brunet.Alejandro@voila.fr','0337626190','4 ALLEE DES HAUTES PILATERIES','3298','Toulon',0,'96mPAbIIOxajmFTUqSot'),(48,'Mlle','Bourgeois','Maguy','http://www.Bourgeois.com','notes automatique du contact : Bourgeois Maguy','Bourgeois.Maguy@msn.com','0595275691','49 ALLEE DE MARTIGUES','86114','',0,NULL),(49,'Mlle','Guillot','Jeanne','http://www.Guillot.com','notes automatique du contact : Guillot Jeanne','Guillot.Jeanne@gmail.com','0622059404','33 RUE CHRISTOPHE COLOMB','38305','Beauvais',0,NULL),(50,'Mme','Jacquet','Mathieu','http://www.Jacquet.com','notes automatique du contact : Jacquet Mathieu','Jacquet.Mathieu@dracenie.net','0394216876','24 RUE FERRERIE','86442','Saint-Paul',0,NULL),(51,'Mlle','Giraud','Mohamed','http://www.Giraud.com','notes automatique du contact : Giraud Mohamed','Giraud.Mohamed@ironfle.com','0363508668','53 AVENUE MONTJOVIS','92871','Épinay-sur-Seine',0,NULL),(52,'Mlle','Lejeune','Maël','http://www.Lejeune.com','notes automatique du contact : Lejeune Maël','Lejeune.Maël@rollin.net','0526360965','25 RUE ALPHONSE DENIS','6278','Grenoble',0,NULL);
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

-- Dump completed on 2020-02-07 14:04:21
