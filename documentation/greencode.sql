-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: maindb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_880E0D76F85E0677` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'L\'informatique écologique','linformatique-ecologique','#ff8080','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla rutrum sem rutrum diam aliquam tristique. Maecenas blandit accumsan volutpat. Mauris in ipsum euismod justo bibendum suscipit. Nam sed nulla eu eros varius dapibus nec in risus.','2022-04-17 09:14:37','2022-04-17 09:14:37','linformatique-ecologique.jpg'),(2,'Eco-Conception Web','eco-conception-web','#ff0000','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla rutrum sem rutrum diam aliquam tristique. Maecenas blandit accumsan volutpat. Mauris in ipsum euismod justo bibendum suscipit. Nam sed nulla eu eros varius dapibus nec in risus.','2022-04-17 09:15:08','2022-04-17 09:15:09','eco-conception-web.jpg'),(3,'Green IT et Front End','green-it-et-front-end','#8080c0','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla rutrum sem rutrum diam aliquam tristique. Maecenas blandit accumsan volutpat. Mauris in ipsum euismod justo bibendum suscipit. Nam sed nulla eu eros varius dapibus nec in risus.','2022-04-17 09:16:05','2022-04-17 09:18:10','green-it-et-front-end.jpg'),(4,'Green IT et Back End','green-it-et-back-end','#0080c0','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla rutrum sem rutrum diam aliquam tristique. Maecenas blandit accumsan volutpat. Mauris in ipsum euismod justo bibendum suscipit. Nam sed nulla eu eros varius dapibus nec in risus.','2022-04-17 09:16:50','2022-04-17 09:16:50','green-it-et-back-end.jpg'),(5,'Ecologie et SEO','ecologie-et-seo','#ff00ff','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla rutrum sem rutrum diam aliquam tristique. Maecenas blandit accumsan volutpat. Mauris in ipsum euismod justo bibendum suscipit. Nam sed nulla eu eros varius dapibus nec in risus.','2022-04-17 09:17:12','2022-04-17 09:17:12','ecologie-et-seo.jpg'),(6,'Empreinte carbone de nos activités numériques','empreinte-carbone-de-nos-activites-numeriques','#00ffff','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla rutrum sem rutrum diam aliquam tristique. Maecenas blandit accumsan volutpat. Mauris in ipsum euismod justo bibendum suscipit. Nam sed nulla eu eros varius dapibus nec in risus.','2022-04-17 09:17:39','2022-04-17 09:17:39','empreinte-carbone-de-nos-activites-numeriques.jpg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20220328092043','2022-04-14 08:21:35',4349),('DoctrineMigrations\\Version20220328143246','2022-04-14 08:21:39',474),('DoctrineMigrations\\Version20220329091824','2022-04-14 08:21:40',804),('DoctrineMigrations\\Version20220331163649','2022-04-14 08:21:41',61),('DoctrineMigrations\\Version20220401055339','2022-04-14 08:21:41',121),('DoctrineMigrations\\Version20220401184528','2022-04-14 08:21:41',118),('DoctrineMigrations\\Version20220401190935','2022-04-14 08:21:41',55),('DoctrineMigrations\\Version20220402143830','2022-04-14 08:21:41',198),('DoctrineMigrations\\Version20220404140312','2022-04-14 08:21:41',559),('DoctrineMigrations\\Version20220404141351','2022-04-14 08:21:42',392),('DoctrineMigrations\\Version20220404141604','2022-04-14 08:21:42',53),('DoctrineMigrations\\Version20220404142045','2022-04-14 08:21:42',52),('DoctrineMigrations\\Version20220405075752','2022-04-14 08:21:42',327),('DoctrineMigrations\\Version20220405082518','2022-04-14 08:21:43',395),('DoctrineMigrations\\Version20220405090119','2022-04-14 08:21:43',240),('DoctrineMigrations\\Version20220405090300','2022-04-14 08:21:43',602),('DoctrineMigrations\\Version20220405092424','2022-04-14 08:21:44',960),('DoctrineMigrations\\Version20220405093056','2022-04-14 08:21:45',57),('DoctrineMigrations\\Version20220405113928','2022-04-14 08:21:45',168),('DoctrineMigrations\\Version20220405114140','2022-04-14 08:21:45',71),('DoctrineMigrations\\Version20220405120632','2022-04-14 08:21:45',1099),('DoctrineMigrations\\Version20220405122113','2022-04-14 08:21:47',66),('DoctrineMigrations\\Version20220405131445','2022-04-14 08:21:47',354),('DoctrineMigrations\\Version20220406151618','2022-04-14 08:21:47',65),('DoctrineMigrations\\Version20220412092120','2022-04-14 08:21:47',176),('DoctrineMigrations\\Version20220414082608','2022-04-14 08:27:39',222);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `featured_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdf_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson`
--

LOCK TABLES `lesson` WRITE;
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
INSERT INTO `lesson` VALUES (2,'Qu\'est-ce que le Green Code ?','quest-ce-que-le-green-code','<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quis cursus lorem. Nam dignissim lectus eget nunc porta, eget tincidunt odio tincidunt. Nam scelerisque ac nisl interdum congue. Duis eget sapien nec justo fermentum fermentum. Cras imperdiet sed risus eget venenatis. Integer nec est a odio posuere iaculis sed ut ex. Etiam tellus ex, finibus iaculis ligula non, ullamcorper consequat lacus. Integer et hendrerit mi. Nam accumsan auctor felis, in pellentesque lacus sagittis sit amet. Quisque ut vehicula eros. Mauris quis odio ac erat dictum lacinia blandit sed sapien. Donec eget ipsum et massa sollicitudin facilisis et quis risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin ante massa, dignissim eget consequat in, ullamcorper non risus. Fusce molestie, velit eget vulputate ornare, turpis purus bibendum turpis, vitae tincidunt nunc mauris in nisl.&nbsp;<br><br></div><div>&nbsp;Nullam a laoreet nibh. Duis dapibus hendrerit dapibus. In ornare viverra varius. Nulla non commodo elit. Donec commodo sit amet dui at ullamcorper. Sed at purus erat. Praesent vulputate eros ex. Etiam vestibulum sit amet metus non tempor. Mauris dapibus quam nec eros ultricies molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus.&nbsp;<br><br></div><div>&nbsp;Donec egestas diam erat, eget efficitur nibh venenatis sed. In vel lectus sit amet elit feugiat commodo nec vel nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam tristique felis elit, quis blandit urna iaculis a. Integer sed turpis et magna volutpat eleifend. Nam vitae condimentum velit. Duis eget maximus quam, ut sollicitudin lorem. Donec est leo, tincidunt sit amet erat in, suscipit laoreet est. Praesent eu sapien posuere, posuere est non, placerat ante. Proin hendrerit nisl ante, nec interdum enim laoreet non. In quam mauris, sollicitudin quis est ut, varius aliquam tellus.&nbsp;<br><br></div><div>&nbsp;In dignissim, enim vitae condimentum fringilla, ante odio ornare tortor, sed molestie quam felis at justo. Sed gravida sodales mauris ac blandit. Proin id pretium sapien. Cras non orci consequat, accumsan nisl ut, posuere velit. Duis vitae aliquam odio. Nulla pulvinar, metus eu venenatis tincidunt, orci nunc laoreet nisl, quis volutpat sem dolor eu ex. Duis faucibus volutpat felis vel porta. Vestibulum quis enim vestibulum nisl tempus lacinia. Aliquam luctus eros ligula, in blandit lacus maximus in. Integer scelerisque semper dictum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;&nbsp;<br><br></div><div>&nbsp;Vivamus non aliquet felis. Cras neque dolor, sodales at lacus et, rutrum porta diam. Suspendisse porttitor ante et lorem rutrum varius. Pellentesque a nunc diam. Aenean id accumsan magna. Aliquam sit amet aliquet est. Nulla nec massa bibendum, rutrum metus quis, sagittis dolor. Proin at semper massa. Praesent tempus nibh nec pharetra semper. Quisque aliquet, ante in ullamcorper porta, diam orci auctor tortor, vel consectetur nibh diam eu enim. Maecenas bibendum efficitur nisl, eget semper risus convallis vitae. Praesent vitae orci diam. Aliquam urna dui, lobortis venenatis condimentum eu, aliquet vitae augue. Etiam eget tellus velit.&nbsp;<br><br></div><div>&nbsp;Nulla pulvinar rhoncus lacus at mollis. Donec consectetur eleifend sapien volutpat condimentum. Fusce tincidunt porttitor eros id lacinia. Nam malesuada mauris sapien. Nullam eget lectus ut ante commodo vestibulum. Suspendisse ultrices, urna commodo aliquet viverra, dolor felis blandit ligula, ac finibus dolor justo sit amet metus. Vestibulum at augue nulla. Pellentesque lacinia cursus elit, id fermentum nisl gravida et. Quisque molestie sapien eu ultricies volutpat. Praesent elementum risus vitae metus ultricies, eu interdum orci aliquam. Sed id turpis tincidunt, convallis arcu a, consequat ex. Aliquam sodales sem sed libero suscipit imperdiet. Donec posuere, purus ac auctor scelerisque, neque eros venenatis mi, ut gravida massa purus in justo.&nbsp;<br><br></div><div>&nbsp;Etiam semper nisi vitae purus venenatis, sed iaculis metus facilisis. Suspendisse ac lorem at nibh tincidunt hendrerit tempor eget erat. Quisque velit sem, fringilla et orci ac, tempor luctus mi. Nam euismod, justo non accumsan dignissim, diam nisi efficitur neque, in imperdiet eros eros nec nunc. Integer iaculis nunc leo, id tincidunt mauris consequat vitae. Sed id magna vel mauris dignissim egestas nec venenatis neque. Curabitur purus sem, congue sagittis condimentum pulvinar, varius et metus. Sed quam massa, molestie in leo condimentum, bibendum semper tortor. Vestibulum malesuada arcu non nisl feugiat, non egestas nunc sagittis.&nbsp;<br><br></div><div>&nbsp;Morbi ullamcorper commodo est non lacinia. Vestibulum pellentesque nisi ut luctus fringilla. Ut blandit fermentum erat sed vestibulum. Aenean in ante viverra justo hendrerit tempus. Fusce fermentum ante at tincidunt mollis. Aenean a ex non est tincidunt feugiat. Morbi tortor nibh, aliquet eu magna quis, fringilla tempus nisi. Aenean tincidunt bibendum metus sed lacinia. Quisque placerat justo a pellentesque luctus. Praesent placerat tortor sed volutpat dapibus. Donec justo purus, porta quis tempus eu, tincidunt at magna. In non aliquet ipsum. Sed id ante cursus, hendrerit neque eget, luctus ex.&nbsp;<br><br></div><div>&nbsp;Sed consequat placerat dui, in facilisis eros egestas et. Pellentesque ultricies elit urna, eget venenatis purus tempus eget. Donec id tincidunt lectus. Donec eget semper felis. Ut sodales nibh ac risus pharetra, quis tincidunt mauris aliquam. Nunc lacus turpis, eleifend quis suscipit quis, lobortis posuere est. Praesent non elit tortor. Donec pharetra rutrum convallis. Nullam varius sapien et dui faucibus, vitae egestas tortor aliquam. Suspendisse porttitor vestibulum sollicitudin. Donec ac magna magna.&nbsp;<br><br></div><div>&nbsp;Fusce vel aliquet urna. Suspendisse venenatis nulla ac tortor rhoncus blandit. Morbi vulputate auctor dui ut dictum. Etiam non libero et nisl aliquam pretium. In hac habitasse platea dictumst. Etiam ut massa nec dui rutrum mattis at nec magna. Curabitur placerat arcu sit amet ante fringilla feugiat. Vivamus facilisis dui non felis consectetur, eu finibus sem consequat. Maecenas vel tortor fringilla, vestibulum augue malesuada, luctus nunc.&nbsp;</div>','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla rutrum sem rutrum diam aliquam tristique. Maecenas blandit accumsan volutpat. Mauris in ipsum euismod justo bibendum suscipit. Nam sed nulla eu eros varius dapibus nec in risus.','2022-04-17 09:21:53','2022-04-17 09:21:53','quest-ce-que-le-green-code.jpg','https://www.youtube.com/embed/PbdRBLabJWU','quest-ce-que-le-green-code.pdf'),(3,'Avantages de l\'éco-conception web','avantages-de-leco-conception-web','<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quis cursus lorem. Nam dignissim lectus eget nunc porta, eget tincidunt odio tincidunt. Nam scelerisque ac nisl interdum congue. Duis eget sapien nec justo fermentum fermentum. Cras imperdiet sed risus eget venenatis. Integer nec est a odio posuere iaculis sed ut ex. Etiam tellus ex, finibus iaculis ligula non, ullamcorper consequat lacus. Integer et hendrerit mi. Nam accumsan auctor felis, in pellentesque lacus sagittis sit amet. Quisque ut vehicula eros. Mauris quis odio ac erat dictum lacinia blandit sed sapien. Donec eget ipsum et massa sollicitudin facilisis et quis risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin ante massa, dignissim eget consequat in, ullamcorper non risus. Fusce molestie, velit eget vulputate ornare, turpis purus bibendum turpis, vitae tincidunt nunc mauris in nisl.&nbsp;<br><br></div><div>&nbsp;Nullam a laoreet nibh. Duis dapibus hendrerit dapibus. In ornare viverra varius. Nulla non commodo elit. Donec commodo sit amet dui at ullamcorper. Sed at purus erat. Praesent vulputate eros ex. Etiam vestibulum sit amet metus non tempor. Mauris dapibus quam nec eros ultricies molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus.&nbsp;<br><br></div><div>&nbsp;Donec egestas diam erat, eget efficitur nibh venenatis sed. In vel lectus sit amet elit feugiat commodo nec vel nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam tristique felis elit, quis blandit urna iaculis a. Integer sed turpis et magna volutpat eleifend. Nam vitae condimentum velit. Duis eget maximus quam, ut sollicitudin lorem. Donec est leo, tincidunt sit amet erat in, suscipit laoreet est. Praesent eu sapien posuere, posuere est non, placerat ante. Proin hendrerit nisl ante, nec interdum enim laoreet non. In quam mauris, sollicitudin quis est ut, varius aliquam tellus.&nbsp;<br><br></div><div>&nbsp;In dignissim, enim vitae condimentum fringilla, ante odio ornare tortor, sed molestie quam felis at justo. Sed gravida sodales mauris ac blandit. Proin id pretium sapien. Cras non orci consequat, accumsan nisl ut, posuere velit. Duis vitae aliquam odio. Nulla pulvinar, metus eu venenatis tincidunt, orci nunc laoreet nisl, quis volutpat sem dolor eu ex. Duis faucibus volutpat felis vel porta. Vestibulum quis enim vestibulum nisl tempus lacinia. Aliquam luctus eros ligula, in blandit lacus maximus in. Integer scelerisque semper dictum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;&nbsp;<br><br></div><div>&nbsp;Vivamus non aliquet felis. Cras neque dolor, sodales at lacus et, rutrum porta diam. Suspendisse porttitor ante et lorem rutrum varius. Pellentesque a nunc diam. Aenean id accumsan magna. Aliquam sit amet aliquet est. Nulla nec massa bibendum, rutrum metus quis, sagittis dolor. Proin at semper massa. Praesent tempus nibh nec pharetra semper. Quisque aliquet, ante in ullamcorper porta, diam orci auctor tortor, vel consectetur nibh diam eu enim. Maecenas bibendum efficitur nisl, eget semper risus convallis vitae. Praesent vitae orci diam. Aliquam urna dui, lobortis venenatis condimentum eu, aliquet vitae augue. Etiam eget tellus velit.&nbsp;<br><br></div><div>&nbsp;Nulla pulvinar rhoncus lacus at mollis. Donec consectetur eleifend sapien volutpat condimentum. Fusce tincidunt porttitor eros id lacinia. Nam malesuada mauris sapien. Nullam eget lectus ut ante commodo vestibulum. Suspendisse ultrices, urna commodo aliquet viverra, dolor felis blandit ligula, ac finibus dolor justo sit amet metus. Vestibulum at augue nulla. Pellentesque lacinia cursus elit, id fermentum nisl gravida et. Quisque molestie sapien eu ultricies volutpat. Praesent elementum risus vitae metus ultricies, eu interdum orci aliquam. Sed id turpis tincidunt, convallis arcu a, consequat ex. Aliquam sodales sem sed libero suscipit imperdiet. Donec posuere, purus ac auctor scelerisque, neque eros venenatis mi, ut gravida massa purus in justo.&nbsp;<br><br></div><div>&nbsp;Etiam semper nisi vitae purus venenatis, sed iaculis metus facilisis. Suspendisse ac lorem at nibh tincidunt hendrerit tempor eget erat. Quisque velit sem, fringilla et orci ac, tempor luctus mi. Nam euismod, justo non accumsan dignissim, diam nisi efficitur neque, in imperdiet eros eros nec nunc. Integer iaculis nunc leo, id tincidunt mauris consequat vitae. Sed id magna vel mauris dignissim egestas nec venenatis neque. Curabitur purus sem, congue sagittis condimentum pulvinar, varius et metus. Sed quam massa, molestie in leo condimentum, bibendum semper tortor. Vestibulum malesuada arcu non nisl feugiat, non egestas nunc sagittis.&nbsp;<br><br></div><div>&nbsp;Morbi ullamcorper commodo est non lacinia. Vestibulum pellentesque nisi ut luctus fringilla. Ut blandit fermentum erat sed vestibulum. Aenean in ante viverra justo hendrerit tempus. Fusce fermentum ante at tincidunt mollis. Aenean a ex non est tincidunt feugiat. Morbi tortor nibh, aliquet eu magna quis, fringilla tempus nisi. Aenean tincidunt bibendum metus sed lacinia. Quisque placerat justo a pellentesque luctus. Praesent placerat tortor sed volutpat dapibus. Donec justo purus, porta quis tempus eu, tincidunt at magna. In non aliquet ipsum. Sed id ante cursus, hendrerit neque eget, luctus ex.&nbsp;<br><br></div><div>&nbsp;Sed consequat placerat dui, in facilisis eros egestas et. Pellentesque ultricies elit urna, eget venenatis purus tempus eget. Donec id tincidunt lectus. Donec eget semper felis. Ut sodales nibh ac risus pharetra, quis tincidunt mauris aliquam. Nunc lacus turpis, eleifend quis suscipit quis, lobortis posuere est. Praesent non elit tortor. Donec pharetra rutrum convallis. Nullam varius sapien et dui faucibus, vitae egestas tortor aliquam. Suspendisse porttitor vestibulum sollicitudin. Donec ac magna magna.&nbsp;<br><br></div><div>&nbsp;Fusce vel aliquet urna. Suspendisse venenatis nulla ac tortor rhoncus blandit. Morbi vulputate auctor dui ut dictum. Etiam non libero et nisl aliquam pretium. In hac habitasse platea dictumst. Etiam ut massa nec dui rutrum mattis at nec magna. Curabitur placerat arcu sit amet ante fringilla feugiat. Vivamus facilisis dui non felis consectetur, eu finibus sem consequat. Maecenas vel tortor fringilla, vestibulum augue malesuada, luctus nunc.&nbsp;</div>','Concevoir un site écologique c’est avant tout mettre l’accent sur certaines bonnes pratiques','2022-04-17 09:31:10','2022-04-17 09:31:10','avantages-de-leco-conception-web.jpg','https://www.youtube.com/embed/SZC3Nb9BwP0','avantages-de-leco-conception-web.pdf'),(4,'Inconvénients de l\'éco-conception web','inconvenients-de-leco-conception-web','<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse quis cursus lorem. Nam dignissim lectus eget nunc porta, eget tincidunt odio tincidunt. Nam scelerisque ac nisl interdum congue. Duis eget sapien nec justo fermentum fermentum. Cras imperdiet sed risus eget venenatis. Integer nec est a odio posuere iaculis sed ut ex. Etiam tellus ex, finibus iaculis ligula non, ullamcorper consequat lacus. Integer et hendrerit mi. Nam accumsan auctor felis, in pellentesque lacus sagittis sit amet. Quisque ut vehicula eros. Mauris quis odio ac erat dictum lacinia blandit sed sapien. Donec eget ipsum et massa sollicitudin facilisis et quis risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin ante massa, dignissim eget consequat in, ullamcorper non risus. Fusce molestie, velit eget vulputate ornare, turpis purus bibendum turpis, vitae tincidunt nunc mauris in nisl.&nbsp;<br><br></div><div>&nbsp;Nullam a laoreet nibh. Duis dapibus hendrerit dapibus. In ornare viverra varius. Nulla non commodo elit. Donec commodo sit amet dui at ullamcorper. Sed at purus erat. Praesent vulputate eros ex. Etiam vestibulum sit amet metus non tempor. Mauris dapibus quam nec eros ultricies molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus.&nbsp;<br><br></div><div>&nbsp;Donec egestas diam erat, eget efficitur nibh venenatis sed. In vel lectus sit amet elit feugiat commodo nec vel nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam tristique felis elit, quis blandit urna iaculis a. Integer sed turpis et magna volutpat eleifend. Nam vitae condimentum velit. Duis eget maximus quam, ut sollicitudin lorem. Donec est leo, tincidunt sit amet erat in, suscipit laoreet est. Praesent eu sapien posuere, posuere est non, placerat ante. Proin hendrerit nisl ante, nec interdum enim laoreet non. In quam mauris, sollicitudin quis est ut, varius aliquam tellus.&nbsp;<br><br></div><div>&nbsp;In dignissim, enim vitae condimentum fringilla, ante odio ornare tortor, sed molestie quam felis at justo. Sed gravida sodales mauris ac blandit. Proin id pretium sapien. Cras non orci consequat, accumsan nisl ut, posuere velit. Duis vitae aliquam odio. Nulla pulvinar, metus eu venenatis tincidunt, orci nunc laoreet nisl, quis volutpat sem dolor eu ex. Duis faucibus volutpat felis vel porta. Vestibulum quis enim vestibulum nisl tempus lacinia. Aliquam luctus eros ligula, in blandit lacus maximus in. Integer scelerisque semper dictum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;&nbsp;<br><br></div><div>&nbsp;Vivamus non aliquet felis. Cras neque dolor, sodales at lacus et, rutrum porta diam. Suspendisse porttitor ante et lorem rutrum varius. Pellentesque a nunc diam. Aenean id accumsan magna. Aliquam sit amet aliquet est. Nulla nec massa bibendum, rutrum metus quis, sagittis dolor. Proin at semper massa. Praesent tempus nibh nec pharetra semper. Quisque aliquet, ante in ullamcorper porta, diam orci auctor tortor, vel consectetur nibh diam eu enim. Maecenas bibendum efficitur nisl, eget semper risus convallis vitae. Praesent vitae orci diam. Aliquam urna dui, lobortis venenatis condimentum eu, aliquet vitae augue. Etiam eget tellus velit.&nbsp;<br><br></div><div>&nbsp;Nulla pulvinar rhoncus lacus at mollis. Donec consectetur eleifend sapien volutpat condimentum. Fusce tincidunt porttitor eros id lacinia. Nam malesuada mauris sapien. Nullam eget lectus ut ante commodo vestibulum. Suspendisse ultrices, urna commodo aliquet viverra, dolor felis blandit ligula, ac finibus dolor justo sit amet metus. Vestibulum at augue nulla. Pellentesque lacinia cursus elit, id fermentum nisl gravida et. Quisque molestie sapien eu ultricies volutpat. Praesent elementum risus vitae metus ultricies, eu interdum orci aliquam. Sed id turpis tincidunt, convallis arcu a, consequat ex. Aliquam sodales sem sed libero suscipit imperdiet. Donec posuere, purus ac auctor scelerisque, neque eros venenatis mi, ut gravida massa purus in justo.&nbsp;<br><br></div><div>&nbsp;Etiam semper nisi vitae purus venenatis, sed iaculis metus facilisis. Suspendisse ac lorem at nibh tincidunt hendrerit tempor eget erat. Quisque velit sem, fringilla et orci ac, tempor luctus mi. Nam euismod, justo non accumsan dignissim, diam nisi efficitur neque, in imperdiet eros eros nec nunc. Integer iaculis nunc leo, id tincidunt mauris consequat vitae. Sed id magna vel mauris dignissim egestas nec venenatis neque. Curabitur purus sem, congue sagittis condimentum pulvinar, varius et metus. Sed quam massa, molestie in leo condimentum, bibendum semper tortor. Vestibulum malesuada arcu non nisl feugiat, non egestas nunc sagittis.&nbsp;<br><br></div><div>&nbsp;Morbi ullamcorper commodo est non lacinia. Vestibulum pellentesque nisi ut luctus fringilla. Ut blandit fermentum erat sed vestibulum. Aenean in ante viverra justo hendrerit tempus. Fusce fermentum ante at tincidunt mollis. Aenean a ex non est tincidunt feugiat. Morbi tortor nibh, aliquet eu magna quis, fringilla tempus nisi. Aenean tincidunt bibendum metus sed lacinia. Quisque placerat justo a pellentesque luctus. Praesent placerat tortor sed volutpat dapibus. Donec justo purus, porta quis tempus eu, tincidunt at magna. In non aliquet ipsum. Sed id ante cursus, hendrerit neque eget, luctus ex.&nbsp;<br><br></div><div>&nbsp;Sed consequat placerat dui, in facilisis eros egestas et. Pellentesque ultricies elit urna, eget venenatis purus tempus eget. Donec id tincidunt lectus. Donec eget semper felis. Ut sodales nibh ac risus pharetra, quis tincidunt mauris aliquam. Nunc lacus turpis, eleifend quis suscipit quis, lobortis posuere est. Praesent non elit tortor. Donec pharetra rutrum convallis. Nullam varius sapien et dui faucibus, vitae egestas tortor aliquam. Suspendisse porttitor vestibulum sollicitudin. Donec ac magna magna.&nbsp;<br><br></div><div>&nbsp;Fusce vel aliquet urna. Suspendisse venenatis nulla ac tortor rhoncus blandit. Morbi vulputate auctor dui ut dictum. Etiam non libero et nisl aliquam pretium. In hac habitasse platea dictumst. Etiam ut massa nec dui rutrum mattis at nec magna. Curabitur placerat arcu sit amet ante fringilla feugiat. Vivamus facilisis dui non felis consectetur, eu finibus sem consequat. Maecenas vel tortor fringilla, vestibulum augue malesuada, luctus nunc.&nbsp;</div>','Concevoir un site écologique c’est avant tout mettre l’accent sur certaines bonnes pratiques','2022-04-17 09:33:03','2022-04-17 09:33:03','inconvenients-de-leco-conception-web.jpg','https://www.youtube.com/embed/SZC3Nb9BwP0','inconvenients-de-leco-conception-web.pdf');
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_category`
--

DROP TABLE IF EXISTS `lesson_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_category` (
  `lesson_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`lesson_id`,`category_id`),
  KEY `IDX_4E0B53D8CDF80196` (`lesson_id`),
  KEY `IDX_4E0B53D812469DE2` (`category_id`),
  CONSTRAINT `FK_4E0B53D812469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_4E0B53D8CDF80196` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_category`
--

LOCK TABLES `lesson_category` WRITE;
/*!40000 ALTER TABLE `lesson_category` DISABLE KEYS */;
INSERT INTO `lesson_category` VALUES (2,1),(3,2),(4,2);
/*!40000 ALTER TABLE `lesson_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_library`
--

DROP TABLE IF EXISTS `lesson_library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_library` (
  `lesson_id` int NOT NULL,
  `library_id` int NOT NULL,
  PRIMARY KEY (`lesson_id`,`library_id`),
  KEY `IDX_54FCCA1BCDF80196` (`lesson_id`),
  KEY `IDX_54FCCA1BFE2541D7` (`library_id`),
  CONSTRAINT `FK_54FCCA1BCDF80196` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_54FCCA1BFE2541D7` FOREIGN KEY (`library_id`) REFERENCES `library` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_library`
--

LOCK TABLES `lesson_library` WRITE;
/*!40000 ALTER TABLE `lesson_library` DISABLE KEYS */;
/*!40000 ALTER TABLE `lesson_library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library`
--

LOCK TABLES `library` WRITE;
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
/*!40000 ALTER TABLE `library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `story` longtext COLLATE utf8mb4_unicode_ci,
  `is_coach` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (4,'admin@email.com','[\"ROLE_APPRENANT\",\"ROLE_ADMIN\",\"ROLE_FORMATEUR\"]','$2y$13$L2aygwPGiYqVun6QT2MOheNdui1H9VQLg2gAIwA4wh51/iNiGR8wi','Admin','Admin','Super','6257e80abd1bf917953935.png','<div>Coucou, je suis l\'administrateur du site !</div>',1),(5,'judith@hopps.fr','[]','$2y$13$Cpx7e2kWHpLIeMPbdazseeKiiPWgxeRzO5nUwVKJyLGVsKk70eSPu','Judith','Hopps','Judith','6257e5067d57f677016575.jpg',NULL,0),(7,'manny@calavera.fr','[\"ROLE_APPRENANT\",\"ROLE_FORMATEUR\"]','$2y$13$rbJFh902Un/TFOnXF1FnuOqvWYMmJp.Yx1kv7IKbUQn5KXydZZncS','Manny','Calavera','Manny','6257e655658f9471052890.jpg','<div>Coucou, je souhaiterai devenir formateur chez GreenCode</div>',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-17 11:09:00
