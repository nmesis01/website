-- MySQL dump 10.13  Distrib 5.6.51-91.0, for Linux (x86_64)
--
-- Host: sql206.byetcluster.com    Database: epiz_32086347_learn
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `animals`
--

DROP TABLE IF EXISTS `animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animals`
--

LOCK TABLES `animals` WRITE;
/*!40000 ALTER TABLE `animals` DISABLE KEYS */;
INSERT INTO `animals` VALUES (1,'elephant','fil'),(2,'bear','ayı'),(3,'fox','tilki'),(4,'wolf','kurt'),(5,'zebra','zebra'),(6,'rabbit','tavşan'),(7,'deer','geyik'),(8,'giraffe','zürafa'),(9,'tiger','kaplan'),(10,'lion','aslan'),(11,'gorilla','goril'),(12,'snake','yılan'),(13,'crocodile','timsah'),(14,'turtle','kaplumbağa'),(15,'whale','balina'),(16,'kangaroo','kanguru'),(17,'frog','kurbağa'),(18,'dolphin','yunus'),(19,'panda','panda'),(20,'cow','inek'),(21,'cat','kedi'),(22,'dog','köpek'),(23,'ox','öküz'),(24,'horse','at'),(25,'camel','deve'),(26,'goat','keçi'),(27,'donkey','eşek'),(28,'bull','boğa'),(29,'sheep','koyun'),(30,'rat','sıçan'),(31,'squirrel','sincap'),(32,'bat','yarasa'),(33,'hamster','hamster'),(34,'chimpanzee','şempanze'),(35,'lizard','kertenkele'),(36,'gazelle','ceylan'),(37,'hippo','suaygırı'),(38,'hyena','sırtlan'),(39,'killer whale','katil balina'),(40,'koala','koala'),(41,'llama','lama'),(42,'polar bear','kutup ayısı'),(43,'jaguar','jaguar'),(44,'orangutan','orangutan'),(45,'leopard','leopar'),(46,'cheetah','çita'),(47,'lynx','vaşak'),(48,'panther','panter'),(49,'puma','puma'),(50,'raccoon','rakun'),(51,'reindeer','ren geyiği'),(52,'seal','fok'),(53,'beaver','kunduz'),(54,'bison','bizon'),(55,'blue whale','mavi balina'),(56,'bobcat','vaşak'),(57,'buffalo','bizon'),(58,'cobra','kobra'),(59,'alligator','timsah'),(60,'chameleon','bukalemun');
/*!40000 ALTER TABLE `animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bathroom`
--

DROP TABLE IF EXISTS `bathroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bathroom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bathroom`
--

LOCK TABLES `bathroom` WRITE;
/*!40000 ALTER TABLE `bathroom` DISABLE KEYS */;
INSERT INTO `bathroom` VALUES (1,'bathroom','banyo'),(2,'mirror','ayna'),(3,'bath towel','banyo havlusu'),(4,'shampoo','şampuan'),(5,'toilet paper','tuvalet kağıdı'),(6,'sponge','sünger'),(7,'soap','sabun'),(8,'liquid soap','sıvı sabun'),(9,'bath','banyo'),(10,'shower','duş'),(11,'washbasin','lavabo'),(12,'hair brush','saç fırçası'),(13,'tap','musluk'),(14,'faucet','musluk'),(15,'toothpaste','diş macunu'),(16,'tooth brush','diş fırçası'),(17,'hand towel','el havlusu'),(18,'razor','ustura'),(19,'shaving foam','tıraş köpüğü'),(20,'comb','tarak'),(21,'tiles','fayans'),(22,'bath mat','banyo paspası'),(23,'curtain','perde'),(24,'sink','lavabo'),(25,'shelf','raf'),(26,'cupboard','dolap'),(27,'toilet brush','tuvalet fırçası'),(28,'toilet','klozet'),(29,'water closet (WC)','klozet (WC)'),(30,'hair dryer','Saç kurutma makinesi'),(31,'q-tip','kulak pamuğu'),(32,'dental floss','diş ipi'),(33,'lotion','losyon'),(34,'scale','tartı'),(35,'nail clippers','tırnak makası'),(36,'scissors','makas'),(37,'bathtub','küvet'),(38,'conditioner','saç Kremi'),(39,'cologne','kolonya'),(40,'moisturizer','nemlendirici'),(41,'powder','pudra'),(42,'perfume','parfüm');
/*!40000 ALTER TABLE `bathroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogadmin`
--

DROP TABLE IF EXISTS `blogadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogadmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `wght` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `styl` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `decoration` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `texts` mediumtext COLLATE utf8mb4_turkish_ci NOT NULL,
  `header` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogadmin`
--

LOCK TABLES `blogadmin` WRITE;
/*!40000 ALTER TABLE `blogadmin` DISABLE KEYS */;
INSERT INTO `blogadmin` VALUES (6,'rgb(78, 148, 166)','400','normal','line-through solid rgb(78, 148, 166)','Gözlerim gözünde aşkı seçmiyor, \nOnlardan kalbime sevda geçmiyor, \nBen yordum ruhumu, biraz da sen yor, \nÇünkü bence şimdi herkes gibisin.\n\nYolunu beklerken daha dün gece, \nKaçıyorum bugün senden gizlice, \nKalbime baktım da işte iyice, \nAnladım ki sen de herkes gibisin.\n \nBüsbütün unuttum seni eminim, \nMaziye karıştı şimdi yeminim, \nKalbimde senin için yok bile kinim, \nBence sen de şimdi herkes gibisin... \nNâzım Hikmet Ran\n( 1902  - 1963 )','Herkes Gibisin'),(7,'rgb(255, 0, 255)','700','normal','none solid rgb(255, 0, 255)','    Evet büyük bir orospu çocukluğuna maruz kaldın ve bu iyi bildiğin, yakın sandığın insanlar tarafından gerçekleştirildi ama amq insanların hepsi böyle değildir herhalde. Bu sene odtüdesin lükse bak amq bölümündeki insanlar ilk bindeki seçilmiş insanlar. Tamam artık daha temkinli davranırsın insan illişkilerinde ama tamamen küsemezsin ki bu lanet hayata, düzene. Hayat kısa orospu çocukları uçuyor.','mlsf'),(5,'rgb(103, 166, 128)','400','normal','underline solid rgb(97, 97, 97)','Örttüm gecenin üstünü sen uyurken\nKokladım sabahı en saf yerinden\nBir sen miydin yoksa bana iyi gelen hala kapanmamış yaram\nBir sen miydin yoksa bana her şeyi veren\nHala yok beni anlayan\nBu yüzden aramadım kimseyi\nYerine koyamadım bu gece hiç kimseyi','Bu Yüzden');
/*!40000 ALTER TABLE `blogadmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogbrba`
--

DROP TABLE IF EXISTS `blogbrba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogbrba` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `wght` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `styl` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `decoration` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `texts` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `header` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogbrba`
--

LOCK TABLES `blogbrba` WRITE;
/*!40000 ALTER TABLE `blogbrba` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogbrba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `body`
--

DROP TABLE IF EXISTS `body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `body` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `body`
--

LOCK TABLES `body` WRITE;
/*!40000 ALTER TABLE `body` DISABLE KEYS */;
INSERT INTO `body` VALUES (1,'head','baş'),(2,'body','vücut'),(3,'hair','saç'),(4,'eye','göz'),(5,'mouth','ağız'),(6,'tooth','diş'),(7,'teeth','dişler'),(8,'knee','diz'),(9,'hand','el'),(10,'face','yüz'),(11,'ear','kulak'),(12,'arm','kol'),(13,'finger','parmak'),(14,'ankle','ayak bileği'),(15,'back','sırt'),(16,'hip','kalça'),(17,'beard','sakal'),(18,'blood','kan'),(19,'bone','kemik'),(20,'cheek','yanak'),(21,'chest','göğüs'),(22,'chin','çene'),(23,'elbow','dirsek'),(24,'foot','ayak'),(25,'feet','ayaklar'),(26,'leg','bacak'),(27,'lip','dudak'),(28,'moustache','bıyık'),(29,'nail','tırnak'),(30,'neck','boyun, boğaz'),(31,'nose','burun'),(32,'shoulder','omuz'),(33,'skin','cilt'),(34,'stomach','mide, karın'),(35,'teeth','dişler'),(36,'throat','boğaz'),(37,'thumb','başparmak'),(38,'toe','ayak parmağı'),(39,'tongue','dil'),(40,'wrist','bilek'),(41,'eyes','gözler'),(42,'nose','burun'),(43,'ears','kulaklar'),(44,'mouth','ağız'),(45,'tongue','dil'),(46,'lips','dudaklar'),(47,'tooth','diş'),(48,'teeth','dişler'),(49,'cheeks','yanaklar'),(50,'eyelash','kirpik'),(51,'eyelid','göz kapağı'),(52,'eyebrow','kaş'),(53,'head','kafa'),(54,'forehead','alın'),(55,'hair','saç'),(56,'nostrils','burun delikleri'),(57,'mustache','bıyık'),(58,'beard','sakal'),(59,'chin','çene'),(60,'neck','boyun'),(61,'nape','ense');
/*!40000 ALTER TABLE `body` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `msj` mediumtext COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,'Deneme','Lorem impsum dolor sit.');
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'class','sınıf (öğrencileri belirtir)'),(2,'classroom','sınıf (odayı belirtir)'),(3,'school bag','okul çantası'),(4,'black board','tahta'),(5,'book','kitap'),(6,'book case','kitaplık'),(7,'brush','fırça'),(8,'calendar','takvim'),(9,'chair','sandalye'),(10,'clock','duvar saati'),(11,'crayon','boya kalemi'),(12,'desk','sıra'),(13,'eraser','silgi'),(14,'map','harita'),(15,'notebook','defter'),(16,'paper','kağıt'),(17,'pen','kalem'),(18,'pencil','kurşun kalem'),(19,'printer','yazıcı'),(20,'ruler','cetvel'),(21,'school bag','okul çantası'),(22,'pencil sharpener','kalemtıraş'),(23,'dictionary','sözlük'),(24,'table','masa'),(25,'cellphone','cep telefonu'),(26,'door','kapı'),(27,'folder','kılasör'),(28,'globe','Dünya'),(29,'glue','tutkal'),(30,'highlighter','işaretçi kalem'),(31,'pencil case','kalemlik'),(32,'pen drive','taşınır bellek'),(33,'stapler','zımba'),(34,'wall','duvar'),(35,'window','pencere'),(36,'scissors','makas'),(37,'whiteboard','beyaz tahta'),(38,'teacher’s desk','öğretmen masası'),(39,'teacher’s table','öğretmen masası'),(40,'computer','bilgisayar'),(41,'homework','ev ödevi');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classlanguage`
--

DROP TABLE IF EXISTS `classlanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classlanguage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classlanguage`
--

LOCK TABLES `classlanguage` WRITE;
/*!40000 ALTER TABLE `classlanguage` DISABLE KEYS */;
INSERT INTO `classlanguage` VALUES (1,'answer','cevap, cevaplamak'),(2,'write','yazmak'),(3,'listen','dinlemek'),(4,'learn','öğrenmek'),(5,'test','test, test etmek'),(6,'think','düşünmek'),(7,'stand up','ayağa kalk'),(8,'sit down','otur'),(9,'be quiet','sessiz ol'),(10,'copmlete','tamamla'),(11,'match','eşleştir'),(12,'fill in','doldur'),(13,'find','bul'),(14,'warm-up','ısınma alıştırması'),(15,'study','çalışma'),(16,'check','kontrol etmek'),(17,'repeat','tekrarla'),(18,'practice','pratik yap'),(19,'exercises','alıştırmalar'),(20,'examples','örnekler'),(21,'reading passage','okuma parçası'),(22,'unit','ünite'),(23,'revision','gözden geçirme'),(24,'exam','sınav'),(25,'examination','sınav'),(26,'true','doğru'),(27,'false','yanlış'),(28,'workbook','alıştırma kitabı'),(29,'assignment','ödev'),(30,'homework','ev ödevi'),(31,'reading','okuma'),(32,'listening','dinleme'),(33,'writing','yazıma'),(34,'speaking','konuşma'),(35,'grammar','dilbilgisi'),(36,'skills','beceriler, yetenekler'),(37,'memorize','ezberlemek'),(38,'course','kurs'),(39,'key words','anahtar kelimeler'),(40,'rewrite','yeniden yazmak'),(41,'participate','katılmak'),(42,'word','kelime'),(43,'project','proje'),(44,'workshop','atölye'),(45,'help','yardım'),(46,'activity','etkinlik'),(47,'verb','fiil'),(48,'sentence','cümle'),(49,'object','nesne'),(50,'adjective','sıfat'),(51,'adverb','zarf'),(52,'dialogue','diyalog'),(53,'encyclopedia','ansiklopedi'),(54,'experiment','deney'),(55,'glossary','sözlük'),(56,'grades','sınıflar'),(57,'intelligent','akıllı'),(58,'language','dil'),(59,'lesson','ders'),(60,'library','kütüphane'),(61,'lunch','öğle yemeği'),(62,'lunch box','sefer tası'),(63,'principal','müdür'),(64,'project','proje'),(65,'pupil','öğrenci'),(66,'question','soru'),(67,'quiz','quiz'),(68,'science','bilim'),(69,'smart','akıllı'),(70,'student','öğrenci'),(71,'teacher','öğretmen'),(72,'vocabulary','kelime hazinesi');
/*!40000 ALTER TABLE `classlanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(30) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'red','kırmızı'),(2,'white','beyaz'),(3,'blue','mavi'),(4,'yellow','sarı'),(5,'orange','turuncu'),(6,'black','siyah'),(7,'pink','pembe'),(8,'purple','mor'),(9,'brown','kahverengi'),(10,'navy blue','lacivert'),(11,'violet','menekşe'),(12,'beige','bej'),(13,'grey','gri'),(14,'green','yeşil'),(15,'silver','gümüş rengi'),(16,'olive','zeytin yeşili'),(17,'gold','altın sarısı'),(18,'turquoise','turkuaz'),(19,'light green','açık yeşil'),(20,'dark green','koyu yeşil');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'advertisement','reklâm'),(2,'internet','internet'),(3,'media','medya'),(4,'mass media','kitle iletişim araçları'),(5,'social media','sosyal medya'),(6,'radio','radyo'),(7,'television','televizyon'),(8,'radio station','radyo istasyonu'),(9,'news report','haberler'),(10,'website','web sitesi'),(11,'social network','sosyal ağ'),(12,'announce','duyurmak'),(13,'listener','dinleyici'),(14,'audience','seyirci'),(15,'journalist','gazeteci'),(16,'public','kamu'),(17,'reporter','muhabir'),(18,'documentary','belgesel'),(19,'book','kitap'),(20,'broadcast','yayın'),(21,'newspaper','gazete'),(22,'magazine','dergi'),(23,'headline','başlık'),(24,'publish','yayınlamak'),(25,'live','canlı'),(26,'brochure','broşür'),(27,'pamphlet','broşür'),(28,'subtitles','altyazı'),(29,'censorship','sansür'),(30,'cell phone','cep telefonu'),(31,'email','eposta'),(32,'message','mesaj'),(33,'letter','mektup'),(34,'mimics','mimikler');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cooking`
--

DROP TABLE IF EXISTS `cooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cooking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cooking`
--

LOCK TABLES `cooking` WRITE;
/*!40000 ALTER TABLE `cooking` DISABLE KEYS */;
INSERT INTO `cooking` VALUES (1,'add','eklemek'),(2,'bake','fırında pişirmek'),(3,'blend','karıştırmak'),(4,'boil','haşlamak'),(5,'broil','kavurmak, kızartmak'),(6,'chop','doğramak'),(7,'cut','kesmek'),(8,'dip','una bulamak'),(9,'fry','kızartma'),(10,'grate','ızgara yapmak'),(11,'melt','eritmek'),(12,'mix','karıştırmak'),(13,'scramble','yumurta çırpmak'),(14,'serve','servis etmek'),(15,'pour','dökmek'),(16,'roast','kızartmak'),(17,'simmer','kaynatma'),(18,'slice','dilimlemek'),(19,'spread','yaymak'),(20,'stir','karıştırmak'),(21,'taste','tatmak'),(22,'squeeze','sıkmak'),(23,'peel','soymak'),(24,'strain','süzmek'),(25,'drain','süzmek'),(26,'can opener','konserve açacağı'),(27,'microwave','mikrodalga'),(28,'mixing bowl','karıştırma kabı'),(29,'paper towels','kağıt havlu'),(30,'potholder','tencere tutacağı'),(31,'roast','rosto'),(32,'rolling pin','oklava'),(33,'knife','bıçak'),(34,'spoon','kaşık'),(35,'spatula','spatula'),(36,'steam','buhar'),(37,'fork','çatal'),(38,'laddle','kepçe'),(39,'frying pan','kızartma tavası'),(40,'sink','lavabo'),(41,'dish','tabak'),(42,'pan','tava'),(43,'scale','ölçek'),(44,'oven','fırın'),(45,'cutting board','kesim tahtası'),(46,'plate','tabak'),(47,'tray','tepsi'),(48,'refrigerator','buzdolabı'),(49,'dishwasher','bulaşık makinesi');
/*!40000 ALTER TABLE `cooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan','Afganistan'),(2,'Albania','Arnavutluk'),(3,'Algeria','Cezayir'),(4,'Argentina','Arjantin'),(5,'Australia','Avustralya'),(6,'Austria','Avusturya'),(7,'Azerbaijan','Azerbaycan'),(8,'Belgium','Belçika'),(9,'Brazil','Brazilya'),(10,'Bulgaria','Bulgaristan'),(11,'Canada','Kanada'),(12,'China','Çin'),(13,'Cyprus','Kıbrıs'),(14,'Czechia','Çekya'),(15,'Denmark','Danimarka'),(16,'Egypt','Mısır'),(17,'England','İngiltere'),(18,'Finland','Finlandiya'),(19,'France','Fransa'),(20,'Georgia','Gürcistan'),(21,'Germany','Almanya'),(22,'Greece','Yunanistan'),(23,'Holland/Netherlands','Hollanda'),(24,'Hungary','Macaristan'),(25,'India','Hindistan'),(26,'Iran','İran'),(27,'Iraq','Irak'),(28,'Italy','İtalya'),(29,'Israel','İsrail'),(30,'Japan','Japonya'),(31,'Jordan','Ürdün'),(32,'Latvia','Letonya'),(33,'Libya','Libya'),(34,'Mexico','Meksika'),(35,'Morocco','Fas'),(36,'Pakistan','Pakistan'),(37,'Poland','Polonya'),(38,'Portugal','Portekiz'),(39,'Romania','Romanya'),(40,'Russia','Rusya'),(41,'Saudi Arabia','Suudi Arabistan'),(42,'Scotland','İskoçya'),(43,'South Korea','Güney Kore'),(44,'Spain','İspanya'),(45,'Sweden','İsveç'),(46,'Switzerland','İsviçre'),(47,'Syria','Suriye'),(48,'Thailand','Tayland'),(49,'Turkey','Türkiye'),(50,'Ukraine','Ukrayna'),(51,'United Kingdom/UK','Birleşik Krallık'),(52,'United States/USA','Amerika Birleşik Devletleri');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drinks`
--

DROP TABLE IF EXISTS `drinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drinks`
--

LOCK TABLES `drinks` WRITE;
/*!40000 ALTER TABLE `drinks` DISABLE KEYS */;
INSERT INTO `drinks` VALUES (1,'water','su'),(2,'milk','süt'),(3,'cola','kola'),(4,'coke','kola'),(5,'fruit juice','meyve suyu'),(6,'orange juice','portakal suyu'),(7,'tea','çay'),(8,'tea bag','çay poşeti'),(9,'iced tea','buzlu çay'),(10,'lemonade','limonata'),(11,'pop','gazlı içecek'),(12,'cocktail','kokteyl'),(13,'soft drinks','alkolsüz içecekler'),(14,'soda','gazlı içecek'),(15,'mineral water','soda'),(16,'sparkling water','maden suyu'),(17,'tap water','musluk suyu'),(18,'cocoa','kakao'),(19,'coffee','kahve'),(20,'green tea','yeşilçay'),(21,'herbal tea','bitki çayı'),(22,'hot chocolate','sıcak çikolata');
/*!40000 ALTER TABLE `drinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family`
--

DROP TABLE IF EXISTS `family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (1,'family','aile'),(2,'father','baba'),(3,'dad','baba'),(4,'mother','anne'),(5,'mom','anne'),(6,'son','oğul'),(7,'daughter','kız'),(8,'parent','ebeveyn'),(9,'child','çocuk'),(10,'children','çocuklar'),(11,'husband','eş'),(12,'wife','eş'),(13,'brother','erkek kardeş'),(14,'sister','kız kardeş'),(15,'uncle','amca–dayı'),(16,'aunt','hala–teyze'),(17,'nephew','erkek kuzen–yeğen'),(18,'niece','kız yeğen–kuzen'),(19,'cousin','kuzen'),(20,'grandfather','büyükbaba'),(21,'granddad','büyükbaba-dede'),(22,'grandpa','büyükbaba-dede'),(23,'grandmother','büyükanne'),(24,'granny','nene'),(25,'grandparents','büyük anne ve baba'),(26,'grandson','erkek torun'),(27,'granddaughter','kız torun'),(28,'grandchild','torun'),(29,'relative','akraba'),(30,'twin','ikiz kardeş'),(31,'baby','bebek'),(32,'stepfather','üvey baba'),(33,'stepmother','üvey anne'),(34,'stepson','üvey oğul'),(35,'stepdaughter','üvey kız'),(36,'stepbrother','üvey erkek kardeş'),(37,'stepsister','üvey kız kardeş'),(38,'half-sister','üvey kız kardeş'),(39,'half-brother','üvey erkek kardeş'),(40,'mother-in-law','kayınvalide'),(41,'father-in-law','kayınpeder'),(42,'son-in-law','damat'),(43,'daughter-in-law','gelin'),(44,'sister-in-law','yenge'),(45,'brother-in-law','kayınbirader'),(46,'single','bekar'),(47,'married','evli'),(48,'engaged','nişanlı'),(49,'separated','ayrılmış'),(50,'divorced','boşanmış'),(51,'marriage','evlilik'),(52,'wedding','düğün'),(53,'bride','gelin'),(54,'bridegroom','damat'),(55,'four','dört'),(56,'five','beş'),(57,'six','altı'),(58,'seven','yedi'),(59,'eight','sekiz'),(60,'nine','dokuz'),(61,'ten','on eleven'),(62,'twelve','oniki thirteen'),(63,'fourteen','on dört'),(64,'fifteen','onbeş'),(65,'sixteen','on altı'),(66,'seventeen','on yedi'),(67,'eighteen','onsekiz'),(68,'nineteen','on dokuz'),(69,'twenty','yirmi');
/*!40000 ALTER TABLE `family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foods`
--

DROP TABLE IF EXISTS `foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foods`
--

LOCK TABLES `foods` WRITE;
/*!40000 ALTER TABLE `foods` DISABLE KEYS */;
INSERT INTO `foods` VALUES (1,'beef','sığır eti'),(2,'chicken','tavuk'),(3,'duck','ördek'),(4,'lamb','kuzu eti'),(5,'liver','karaciğer'),(6,'mince','kıyma'),(7,'salami','salam'),(8,'sausages','sosis'),(9,'bacon','domuz pastırması'),(10,'turkey','hindi'),(11,'veal','dana eti'),(12,'fish','balık'),(13,'butter','tereyağı'),(14,'cream','kaymak, krema'),(15,'cheese','peynir'),(16,'goats cheese','keçi peyniri hard-boiled'),(17,'egg','Haşlanmış yumurta'),(18,'omelet','omlet'),(19,'eggs','yumurta'),(20,'margarine','margarin'),(21,'milk','süt full-fat'),(22,'milk','tam yağlı süt semi-skimmed'),(23,'milk','yarım yağlı süt'),(24,'skimmed milk','yağsız süt'),(25,'yoghurt','yoğurt'),(26,'bread','ekmek'),(27,'pitta bread','pide ekmeği'),(28,'loaf','somun'),(29,'loaf of bread','somun ekmek'),(30,'cake','pasta, kek'),(31,'baking powder','kabartma tozu'),(32,'flour','un'),(33,'wheat','buğday'),(34,'cornflour','mısır unu'),(35,'sugar','şeker'),(36,'pasta','makarna'),(37,'macaroni','makarna'),(38,'pastry','pasta'),(39,'scrambled eggs','Omlet'),(40,'yeast','maya'),(41,'dried apricots','kuru kayısı'),(42,'prunes','kuru erik'),(43,'dates','hurma'),(44,'raisins','kuru üzüm'),(45,'soup','corba'),(46,'salad','salata'),(47,'dessert','tatlı'),(48,'noodles','erişte'),(49,'pasta','makarna'),(50,'pizza','pizza'),(51,'rice','pilav'),(52,'spaghetti','spagetti'),(53,'breakfast cereal','kahvaltı gevreği'),(54,'cornflakes','mısır gevreği'),(55,'honey','bal'),(56,'jam','reçel'),(57,'toast','tost'),(58,'ketchup','ketçap'),(59,'mayonnaise','mayonez'),(60,'mustard','hardal'),(61,'pepper','biber'),(62,'salt','tuz'),(63,'vinegar','sirke'),(64,'biscuits','bisküvi'),(65,'chocolate','çikolata'),(66,'Popcorn','Patlamış mısır'),(67,'Candy','Şekerleme'),(68,'Lollipop','Saplı şeker'),(69,'Wrapper','Ambalaj kâğıdı'),(70,'Cookie','Kurabiye'),(71,'Pie','Turta'),(72,'Gum','Sakız'),(73,'Ice-cream','Dondurma'),(74,'Cone','Külah'),(75,'crisps','cips'),(76,'nuts','fındık'),(77,'olives','zeytin'),(78,'peanuts','yer fıstığı'),(79,'sweets','şekerleme'),(80,'walnuts','ceviz'),(81,'chilli powder','biber tozu'),(82,'cinnamon','tarçın'),(83,'cumin','kimyon'),(84,'curry powder','acılı hint baharatı'),(85,'paprika (red pepper)','kırmızı biber'),(86,'saffron','safran');
/*!40000 ALTER TABLE `foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fruits`
--

DROP TABLE IF EXISTS `fruits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fruits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(30) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fruits`
--

LOCK TABLES `fruits` WRITE;
/*!40000 ALTER TABLE `fruits` DISABLE KEYS */;
INSERT INTO `fruits` VALUES (1,'banana','muz'),(2,'apple','elma'),(3,'apricot','kayısı'),(4,'banana','muz'),(5,'blackberry','böğürtlen'),(6,'cherry','kiraz'),(7,'fig','incir'),(8,'grapefruit','greyfurt'),(9,'grape','üzüm'),(10,'kiwi','kivi'),(11,'coconut','hindistan cevizi'),(12,'lemon','limon'),(13,'rose hip','kuş burnu'),(14,'orange','portakal'),(15,'peach','şeftali'),(16,'pear','armut'),(17,'pineapple','ananas'),(18,'pomegranate','nar'),(19,'plum','erik'),(20,'peanut','fıstık'),(21,'strawberry','çilek'),(22,'sourcherry','vişne'),(23,'tangerine','mandalina'),(24,'watermelon','karpuz'),(25,'melon','kavun'),(26,'mulberry','dut'),(27,'medler','muşmula'),(28,'quince','ayva'),(29,'walnut','ceviz'),(30,'hazelnut','fındık'),(31,'chestnuts','kestane'),(32,'mango','mango');
/*!40000 ALTER TABLE `fruits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garden`
--

DROP TABLE IF EXISTS `garden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garden` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garden`
--

LOCK TABLES `garden` WRITE;
/*!40000 ALTER TABLE `garden` DISABLE KEYS */;
INSERT INTO `garden` VALUES (1,'garden','bahçe'),(2,'gardener','bahçıvan'),(3,'lawn','çim'),(4,'lawn mower','çim biçme makinesi'),(5,'hose','hortum'),(6,'wheelbarrow','el arabası'),(7,'rake','tırmık'),(8,'ground','zemin'),(9,'shed','kulübe, baraka'),(10,'patio','veranda'),(11,'path','yol'),(12,'flower bed','çiçeklik'),(13,'bush','çalı'),(14,'bench','bank'),(15,'showel','kürek'),(16,'plants','bitkiler'),(17,'grass','ot'),(18,'dig','kazmak'),(19,'trowel','mala'),(20,'hoe','çapa'),(21,'pond','gölet'),(22,'flowerpot','saksı'),(23,'fence','çit'),(24,'gate','kapı'),(25,'greenhouse','sera'),(26,'washing lane','kurutma ipi'),(27,'flowers','çiçekler'),(28,'ax','balta'),(29,'yard','bahçe'),(30,'backyard','arka bahçe'),(31,'watering can','sulama kovası'),(32,'bird house','kuş evi');
/*!40000 ALTER TABLE `garden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,'history','tarih'),(2,'ancient','eski'),(3,'architecture','mimari'),(4,'armies','ordular'),(5,'barbarian','barbar'),(6,'cannonballs','top gülleler'),(7,'citizen','vatandaş'),(8,'civilization','medeniyet'),(9,'conquer','fethetmek'),(10,'culture','kültür'),(11,'decline','düşüş'),(12,'defeat','yenilgi'),(13,'devastate','harap'),(14,'domination','egemenlik'),(15,'empire','imparatorluk'),(16,'govern','yönetmek'),(17,'influence','etki'),(18,'invade','saldırmak'),(19,'king','kral'),(20,'queen','kraliçe'),(21,'kingdom','krallık'),(22,'sultans','sultanlar'),(23,'leader','lider'),(24,'military','askeri'),(25,'pharaoh','firavun'),(26,'philosopher','filozof'),(27,'republic','cumhuriyet'),(28,'territory','bölge'),(29,'triumph','zafer'),(30,'violence','şiddet'),(31,'warrior','savaşçı'),(32,'chronology','kronoloji'),(33,'coalition','koalisyon'),(34,'consensus','fikir birliği'),(35,'crusader','haçlı'),(36,'exploitation','istismar etme'),(37,'imperialism','emperyalizm'),(38,'revolution','devrim'),(39,'policy','politika'),(40,'reign','saltanat'),(41,'senate','senato'),(42,'tax','vergi'),(43,'bow','yay'),(44,'arrow','ok'),(45,'era','çağ'),(46,'century','yüzyıl'),(47,'colonial','sömürge civil'),(48,'war','iç savaş'),(49,'medieval','ortaçağ world'),(50,'war','dünya savaşı'),(51,'pirates','korsanlar'),(52,'slavery','kölelik');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house`
--

DROP TABLE IF EXISTS `house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house`
--

LOCK TABLES `house` WRITE;
/*!40000 ALTER TABLE `house` DISABLE KEYS */;
INSERT INTO `house` VALUES (1,'house','ev'),(2,'home','ev, yuva'),(3,'room','oda'),(4,'balcony','balkon'),(5,'bathroom','banyo'),(6,'bedroom','yatak odası'),(7,'dining room','yemek odası'),(8,'living room','oturma odası'),(9,'sitting room','salon'),(10,'garage','garaj'),(11,'kitchen','mutfak'),(12,'roof','çatı'),(13,'chimney','baca'),(14,'garden','bahçe'),(15,'basement','bodrum'),(16,'cellar','kiler'),(17,'attic','çatıkatı'),(18,'study','çalışma odası'),(19,'pool','havuz'),(20,'toilet','tuvalet'),(21,'window','pencere'),(22,'staircase','merdiven'),(23,'stairs','merdiven'),(24,'upstairs','üst kat'),(25,'downstairs','alt kat'),(26,'door','kapı'),(27,'wall','duvar'),(28,'ceiling','tavan'),(29,'floor','yer, zemin'),(30,'drive','araba yolu'),(31,'lawn','çimenlik'),(32,'path','patika yol'),(33,'hall','koridor, hol'),(34,'fence','çit'),(35,'doorbell','kapı zili'),(36,'doormat','paspas'),(37,'letter box','posta kutusu'),(38,'patio','bahçe avlusu'),(39,'backyard','arka bahçe'),(40,'flat','daire (İngiliz İngilizcesi)'),(41,'apartment','daire (Amerikan İngilizcesi)');
/*!40000 ALTER TABLE `house` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internet`
--

DROP TABLE IF EXISTS `internet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internet`
--

LOCK TABLES `internet` WRITE;
/*!40000 ALTER TABLE `internet` DISABLE KEYS */;
INSERT INTO `internet` VALUES (1,'internet','internet'),(2,'net','ağ'),(3,'web','İnternet ağı'),(4,'website','web sitesi'),(5,'email','E-posta'),(6,'social media','sosyal medya'),(7,'follow','takip etme'),(8,'address','adres'),(9,'username','kullanıcı adı'),(10,'password','parola'),(11,'reply','cevapla'),(12,'back','geri'),(13,'share','paylaşmak'),(14,'forward','ileri'),(15,'browser','tarayıcı'),(16,'attachment','iliştirme'),(17,'download','indir'),(18,'upload','karşıya yükle'),(19,'document','belge'),(20,'network','ağ'),(21,'wifi','kablosuz internet'),(22,'log in','oturum aç'),(23,'sign up','kaydol'),(24,'member','üye'),(25,'blog','kişisel sayfa'),(26,'browse','göz at'),(27,'message','mesaj'),(28,'find','bul'),(29,'online','bağlantılı, çevirim içi'),(30,'ofline','çevirim dışı'),(31,'search','ara'),(32,'search engine','arama motoru'),(33,'bookmark','yer imi'),(34,'keywords','anahtar kelimeler'),(35,'link','bağlantı'),(36,'web page','internet sayfası'),(37,'podcast','internet yayını'),(38,'FAQ','SSS (Sıkça Sorulan Sorular)'),(39,'homepage','anasayfa'),(40,'subscribe','abone ol'),(41,'spam mail','gereksiz mail'),(42,'junk mail','istenmeyen posta'),(43,'inbox','gelen kutusu'),(44,'outbox','giden epostalar'),(45,'button','düğme'),(46,'banner','reklam bloku'),(47,'click','tıklama'),(48,'favourites','sık kullanılanlar'),(49,'image','resim'),(50,'icon','küçük resim'),(51,'clipart','çizim resim'),(52,'history','geçmiş'),(53,'firewall','güvenlik duvarı'),(54,'subject','konu'),(55,'toolbar','araç çubuğu'),(56,'cookie','web çerezleri'),(57,'gif','resim dosyası türü'),(58,'jpeg','resim dosyası türü'),(59,'webinar','internet semineri'),(60,'tag','etiket web'),(61,'hosting','website barındırma'),(62,'ISP','İnternet servis sağlayıcı'),(63,'ID','Kimlik'),(64,'FTP','Dosya paylaşım protokolü'),(65,'IP','Internet protokolü'),(66,'cache','önbellek'),(67,'case sensitive','harfe duyarlı'),(68,'domain','alan adı'),(69,'form field','form alanı'),(70,'web server','web sunucusu'),(71,'URL','internet adresi'),(72,'database','veri tabanı'),(73,'hyperlink','köprü bağlantı'),(74,'comments','yorumlar'),(75,'chat','sohbet'),(76,'avatar','simge resim'),(77,'forums','forum siteleri');
/*!40000 ALTER TABLE `internet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kitchen`
--

DROP TABLE IF EXISTS `kitchen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kitchen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kitchen`
--

LOCK TABLES `kitchen` WRITE;
/*!40000 ALTER TABLE `kitchen` DISABLE KEYS */;
INSERT INTO `kitchen` VALUES (1,'kitchen','mutfak'),(2,'fridge','buzdolabı'),(3,'oven','fırın'),(4,'stove','fırın'),(5,'cooker','ocak'),(6,'microwave oven','mikrodalga fırın'),(7,'dishwasher','bulaşık bakinesi'),(8,'washing machine','çamaşır makinesi'),(9,'fork','çatal'),(10,'knife','bıçak'),(11,'spoon','kaşık'),(12,'teaspoon','çay kaşığı'),(13,'ladle','kepçe'),(14,'cup','fincan'),(15,'mug','kulplu bardak'),(16,'plate','tabak'),(17,'dish','tabak'),(18,'glass','bardak'),(19,'saucer','fincan tabağı'),(20,'pan','tava'),(21,'jug','sürahi'),(22,'bowl','kase'),(23,'grater','rende'),(24,'coffee pot','cezve'),(25,'coffee maker','kahve makinesi'),(26,'pot','kap'),(27,'teapot','demlik'),(28,'cooker','ocak'),(29,'tray','tepsi'),(30,'mixer','mikser'),(31,'blender','karıştırıcı, mikser'),(32,'tablecloth','masa örtüsü'),(33,'napkin','peçete'),(34,'sink','lavabo'),(35,'tap','musluk'),(36,'waste bin','çöp kutusu'),(37,'worktop','tezgah'),(38,'tea towel','el bezi'),(39,'frying pan','kızartma tavası'),(40,'saucepan','tencere'),(41,'pressure cooker','düdüklü tencere'),(42,'kettle','çatdanlık'),(43,'toaster','tost makinesi'),(44,'blender','blendır'),(45,'broom','süpürge'),(46,'corkscrew','tirbuşon'),(47,'shelf','raf'),(48,'colander','süzgeç'),(49,'rolling pin','oklava'),(50,'drawer','çekmece'),(51,'tin opener','konserve açacağı'),(52,'cookery book','yemek kitabı'),(53,'dishcloth','bulaşık bezi'),(54,'grill','mangal'),(55,'chopping board','doğrama tahtası'),(56,'cutting board','doğrama tahtası'),(57,'cooker hood','davlumbaz'),(58,'freezer','derin dondurucu'),(59,'cupboard','mutfak dolabı'),(60,'washing-up liquid','bulaşık deterjanı'),(61,'dish sponge','bulaşık süngeri');
/*!40000 ALTER TABLE `kitchen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listnames`
--

DROP TABLE IF EXISTS `listnames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listnames` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listname` varchar(30) COLLATE utf8mb4_turkish_ci NOT NULL,
  `ticket` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listnames`
--

LOCK TABLES `listnames` WRITE;
/*!40000 ALTER TABLE `listnames` DISABLE KEYS */;
INSERT INTO `listnames` VALUES (1,'Sayılar','nums'),(2,'Meyveler','fruits'),(3,'Renkler','color'),(4,'Aile','family'),(5,'Ders İsmi','school'),(6,'Sınıf','class'),(7,'Sınıf Dili','classlanguage'),(8,'Zaman','time'),(9,'Tarih','history'),(11,'İnternet','internet'),(12,'İletişim','contact'),(13,'Alışveriş','shopping'),(14,'Aletler','tools'),(15,'Spor','sport'),(16,'Vücut','body'),(17,'Ülkeler','countries'),(18,'Milletler','nations'),(19,'Ev','house'),(20,'Sebzeler','vegetables'),(21,'Yiyecekler','foods'),(22,'İçecekler','drinks'),(23,'Mutfak','kitchen'),(24,'Pişirme','cooking'),(25,'Hayvanlar','animals'),(26,'Bahçe','garden'),(27,'Banyo','bathroom');
/*!40000 ALTER TABLE `listnames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listofadmin`
--

DROP TABLE IF EXISTS `listofadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listofadmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listofadmin`
--

LOCK TABLES `listofadmin` WRITE;
/*!40000 ALTER TABLE `listofadmin` DISABLE KEYS */;
INSERT INTO `listofadmin` VALUES (10,'Bury','Gömmek'),(9,'Fold','Katlamak'),(7,'Soul','Ruh'),(8,'Fading','solma'),(11,'Soak','Emmek'),(12,'Tears','Göz yaşları'),(13,'Soil','Toprak'),(14,'Fragile','Kırılgan'),(33,'Victim','Kurban'),(16,'Harm','Zarar'),(17,'Sand','Kum'),(20,'Statisfying','Tatmin Edici'),(23,'nutritionist','beslenme uzmanı'),(24,'florist','çiçekçi'),(25,'on the other hand','diğer taraftan'),(26,'traffic jam','trafik sıkışıklığı'),(27,'among','arasında'),(28,'improve','geliştirmek'),(29,'staff','Personel'),(30,'refer','bahsetmek'),(31,'cost','maliyet'),(32,'Irrelevant','Alakasız'),(34,'Region','Bölge');
/*!40000 ALTER TABLE `listofadmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listofbrba`
--

DROP TABLE IF EXISTS `listofbrba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listofbrba` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listofbrba`
--

LOCK TABLES `listofbrba` WRITE;
/*!40000 ALTER TABLE `listofbrba` DISABLE KEYS */;
INSERT INTO `listofbrba` VALUES (1,'Admission','kabul'),(2,'Guilt','Suç'),(3,'Coughing','Öksürme'),(4,'Veggie bacon','sebzeli pastırma'),(11,'Compunds','Bileşikler'),(7,'Band aids','Yara bandı'),(9,'Matter','Önemli olmak'),(12,'Tires','Lastikler'),(14,'Supposed','Sözde'),(15,'Exhibition','Sergi'),(16,'Embarrassing','Utandırıcı'),(17,'Chest cold','Soğuk algınlığı'),(18,'Favor','İyilik'),(19,'Corner','Köşe'),(20,'Insurance','Sigorta'),(21,'Couple of','birkaç'),(23,'Lung','Akciğer'),(24,'Mustard','Hardal'),(25,'Wipe down','Silin'),(27,'Dash','kısa çizgi'),(28,'Beaner','Meksikalı'),(29,'Whiff','koku'),(30,'Respirators','solunum cihazları'),(31,'Suspect','Şüpheli'),(33,'Peek','Dikizlemek'),(34,'Filing','dosyalama'),(35,'Curious','Meraklı'),(36,'Amount','Tutar'),(37,'Expect','Beklemek'),(38,'Clue','İpucu'),(39,'Novel','Roman'),(41,'You flunked me','beni çaktın'),(42,'Stuff','Şey'),(43,'Evasive','Baştan savma'),(44,'Awake','Uyanmak'),(45,'Mess','Karışıklık'),(46,'Proceed','İlerlemek'),(47,'Dimed','karartılmış'),(48,'Separate','Ayırmak');
/*!40000 ALTER TABLE `listofbrba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nations`
--

DROP TABLE IF EXISTS `nations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nations`
--

LOCK TABLES `nations` WRITE;
/*!40000 ALTER TABLE `nations` DISABLE KEYS */;
INSERT INTO `nations` VALUES (1,'Afghan','Afgan'),(2,'Albanian','Arnavut'),(3,'Algerian','Cezayirli'),(4,'Argentinian','Arjantinli'),(5,'Australian','Avustralyalı'),(6,'Austrian','Avusturyalı'),(7,'Azerbaijani','Azeri'),(8,'Belgian','Belçikalı'),(9,'Brazilian','Brazilyalı'),(10,'Bulgarian','Bulgar'),(11,'British','İngiliz'),(12,'Canadian','Kanadalı'),(13,'Chinese','Çinli'),(14,'Cypriot','Kıbrıslı'),(15,'Czech','Çek'),(16,'Danish','Danimarkalı'),(17,'Egyptian','Mısırlı'),(18,'English','İngiliz'),(19,'Finnish','Finli'),(20,'French','Fransız'),(21,'Georgian','Gürcü'),(22,'German','Alman'),(23,'Greek','Yunan'),(24,'Dutch','Hollandalı'),(25,'Hungarian','Macar'),(26,'Indian','Hintli'),(27,'Iranian','İranlı'),(28,'Iraqi','Iraklı'),(29,'Israeli','İsrailli'),(30,'Italian','İtalyan'),(31,'Japanese','Japon'),(32,'Jordanian','Ürdünlü'),(33,'Latvian','Letonyalı'),(34,'Libyan','Libyalı'),(35,'Mexican','Meksikalı'),(36,'Moroccan','Faslı'),(37,'Pakistani','Pakistanlı'),(38,'Polish','Polonyalı'),(39,'Portuguese','Portekizli'),(40,'Romanian','Romanyalı'),(41,'Russian','Rus'),(42,'Arabian','Arap'),(43,'Scottish','İskoçyalı'),(44,'South Korean','Güney Koreli'),(45,'Spanish','İspanyol'),(46,'Swedish','İsveçli'),(47,'Swiss','İsviçreli'),(48,'Syrian','Suriyeli'),(49,'Thai','Taylandlı'),(50,'Turkish','Türk'),(51,'Ukrainian','Ukraynalı'),(52,'American','Amerikalı');
/*!40000 ALTER TABLE `nations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nums`
--

DROP TABLE IF EXISTS `nums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nums`
--

LOCK TABLES `nums` WRITE;
/*!40000 ALTER TABLE `nums` DISABLE KEYS */;
INSERT INTO `nums` VALUES (1,'zero','sıfır'),(2,'one','bir'),(3,'two','iki'),(4,'three','üç'),(5,'four','dört'),(6,'five','beş'),(7,'six','altı'),(8,'seven','yedi'),(9,'eight','sekiz'),(10,'nine','dokuz'),(11,'ten','on'),(12,'eleven','on bir'),(13,'twelve','oniki'),(14,'thirteen','on üç'),(15,'fourteen','on dört'),(16,'fifteen','onbeş'),(17,'sixteen','on altı'),(18,'seventeen','on yedi'),(19,'eighteen','onsekiz'),(20,'nineteen','on dokuz'),(21,'twenty','yirmi');
/*!40000 ALTER TABLE `nums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (1,'reading','okuma'),(2,'science','fen bilgisi'),(3,'literature','edebiyat'),(4,'math','matematik'),(5,'mathematics','matematik'),(6,'music','müzik'),(7,'art','sanat'),(8,'Physical Education (PE)','beden eğitimi'),(9,'biology','biyoloji'),(10,'writing','yazma'),(11,'English','İngilizce'),(12,'French','Fransızca'),(13,'geography','coğrafya'),(14,'geometry','geometri'),(15,'history','tarih'),(16,'chemistry','kimya'),(17,'computer science','bilgisayar bilimi'),(18,'drama','drama'),(19,'economics','ekonomi bilimi'),(20,'geology','jeoloji'),(21,'gym','Jimnastik'),(22,'health','sağlık'),(23,'home economics','ev ekonomisi'),(24,'botany','botanik'),(25,'archaeology','arkeoloji'),(26,'physics','fizik'),(27,'psychology','psikoloji'),(28,'algebra','cebir'),(29,'social studies','sosyal bilgiler'),(30,'world geography','Dünya coğrafyası');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping`
--

DROP TABLE IF EXISTS `shopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping`
--

LOCK TABLES `shopping` WRITE;
/*!40000 ALTER TABLE `shopping` DISABLE KEYS */;
INSERT INTO `shopping` VALUES (1,'shopping','alışveriş'),(2,'customer','müşteri'),(3,'cashier','kasiyer'),(4,'clerk','tezgahtar'),(5,'wallet (male)','cüzdan (erkek)'),(6,'purse (female)','cüzdan (bayan)'),(7,'sale','satış'),(8,'till','yazar kasa'),(9,'counter','gişe'),(10,'barcode','barkod'),(11,'receipt','makbuz'),(12,'shelves','raflar'),(13,'trolley','alışveriş arabası'),(14,'basket','sepet'),(15,'lift','asansör'),(16,'escalator','yürüyen merdiven'),(17,'bag','çanta'),(18,'fitting rooms','giyinme odaları'),(19,'changing rooms','giyinme odaları'),(20,'pay','ödeme'),(21,'money','para'),(22,'cash','nakit'),(23,'cheque','çek'),(24,'notes','kağıt para'),(25,'coins','madeni para'),(26,'credit card','kredi kartı'),(27,'debit card','banka kartı'),(28,'supermarket','süpermarket'),(29,'newsagents','gazete bayisi'),(30,'department store','büyük mağaza'),(31,'shop','mağaza'),(32,'store','mağaza'),(33,'chemist’s','eczane'),(34,'pharmacy','eczane'),(35,'book shop','kitap dükkanı'),(36,'shoe shop','ayakkabı dükkanı'),(37,'jeweller’s','kuyumcu'),(38,'optician’s','gözlükçü'),(39,'haberdasher’s','tuhafiyeci'),(40,'shoppin gcentre','alışveriş merkezi'),(41,'shopping mall','alışveriş merkezi'),(42,'mall','alışveriş merkezi'),(43,'market','market, Pazar'),(44,'florist','çiçekçi'),(45,'fishmonger’s','balıkçı'),(46,'baker’s','fırıncı'),(47,'bakery','fırın'),(48,'DIY store','yapı market'),(49,'post office','postane'),(50,'pet shop','evcil hayvan dükkanı'),(51,'hairdresser','kuaför'),(52,'coiffeur','kuaför'),(53,'gift','hediye'),(54,'souvenir','hatıra eşya'),(55,'right size','doğru beden'),(56,'fit','uygun'),(57,'bargain','pazarlık'),(58,'half price','yarı fiyat'),(59,'special offer','özel teklif'),(60,'open','açık'),(61,'closed','kapalı'),(62,'%50 off','%50 indirim'),(63,'reduced price','indirimli fiyat'),(64,'pound','pound'),(65,'pence','peni'),(66,'cent','sent'),(67,'dollar','dolar'),(68,'euro','euro'),(69,'queue','kuyruk'),(70,'price','fiyat'),(71,'put on','giymek'),(72,'try on','denemek'),(73,'give back','geri vermek'),(74,'buy','satın almak'),(75,'sell','satmak'),(76,'sold','satıldı'),(77,'refund','geri ödeme'),(78,'free shipping','ücretsiz kargo Alışveriş'),(79,'mağazaları',''),(80,'toy shop','oyuncak dükkanı'),(81,'toy store','oyuncak dükkanı'),(82,'boutique','butik'),(83,'tailor','terzi'),(84,'cobbler’s','ayakkabıcı'),(85,'ironmonger’s','hırdavatçı en'),(86,'ironmongery','hırdavat'),(87,'second hand shop','ikinci el dükkanı'),(88,'haberdashery','tuhafiye'),(89,'butcher’s','kasap'),(90,'seafood store','balıkçı'),(91,'greengrocers','manav'),(92,'grocery store','manav'),(93,'delicatessen','şarküteri'),(94,'grocer’s','bakkal'),(95,'hardware store','donanım mağazası'),(96,'gardening centre','bahçe merkezi'),(97,'laundry','çamaşırhane');
/*!40000 ALTER TABLE `shopping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sport`
--

DROP TABLE IF EXISTS `sport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sport`
--

LOCK TABLES `sport` WRITE;
/*!40000 ALTER TABLE `sport` DISABLE KEYS */;
INSERT INTO `sport` VALUES (1,'athletics','atletizm'),(2,'athlet','atlet'),(3,'badminton','badminton'),(4,'baseball','beyzbol'),(5,'basketball','basketbol'),(6,'billiards','bilardo'),(7,'bowling','bowling'),(8,'boxing','boks'),(9,'car racing','araba yarışı'),(10,'canoeing','kano'),(11,'cycling','bisiklete binme'),(12,'darts','dart'),(13,'diving','dalış'),(14,'football','futbol'),(15,'golf','golf'),(16,'gymnastics','jimnastik'),(17,'handball','hentbol'),(18,'hang gliding','deltakanatla uçuş'),(19,'hockey','hokey'),(20,'horse racing','at yarışı'),(21,'jogging','koşu'),(22,'karate','karate'),(23,'kung fu','kung fu'),(24,'motorcycle racing','motosiklet yarış'),(25,'paragliding','yamaç paraşütü'),(26,'polo','polo'),(27,'rowing','kürek çekme'),(28,'rugby','ragbi'),(29,'sailing','yelkencilik'),(30,'scuba diving','dalış'),(31,'skiing','kayakçılık'),(32,'snow-boarding','snovbord'),(33,'soccer','futbol'),(34,'sport','spor'),(35,'swimming','yüzme'),(36,'table tennis','masa Tenisi'),(37,'tennis','tenis'),(38,'volleyball','voleybol'),(39,'waterskiing','su kayağı'),(40,'weightlifting','ağırlık kaldırma'),(41,'windsurfing','rüzgâr sörfü'),(42,'wrestling','güreş');
/*!40000 ALTER TABLE `sport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time`
--

DROP TABLE IF EXISTS `time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time`
--

LOCK TABLES `time` WRITE;
/*!40000 ALTER TABLE `time` DISABLE KEYS */;
INSERT INTO `time` VALUES (1,'Monday','Pazartesi'),(2,'Tuesday','Salı'),(3,'Wednesday','Çarşamba'),(4,'Thursday','Perşembe'),(5,'Friday','Cuma'),(6,'Saturday','Cumartesi'),(7,'Sunday','Pazar'),(8,'January','Ocak'),(9,'February','Şubat'),(10,'March','Mart'),(11,'April','Nisan'),(12,'May','Mayıs'),(13,'June','Haziran'),(14,'July','Temmuz'),(15,'August','Ağustos'),(16,'September','Eylül'),(17,'October','Ekim'),(18,'November','Kasım'),(19,'December','Aralık'),(20,'Spring','İlkbahar'),(21,'Summer','Yaz'),(22,'Fall / Autumn','Sonbahar'),(23,'Winter','Kış'),(24,'day','gün'),(25,'week','hafta'),(26,'weekdays','haftaiçi günler'),(27,'weekend','haftasonu'),(28,'months','aylar'),(29,'year','yıl'),(30,'decade','on yıl'),(31,'century','yüz yıl'),(32,'millennium','bin yıl'),(33,'era','çağ');
/*!40000 ALTER TABLE `time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tools`
--

DROP TABLE IF EXISTS `tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tools`
--

LOCK TABLES `tools` WRITE;
/*!40000 ALTER TABLE `tools` DISABLE KEYS */;
INSERT INTO `tools` VALUES (1,'tools','aletler'),(2,'equipment','ekipman'),(3,'paintbrush','boya fırçası'),(4,'paint','boya'),(5,'ladder','merdiven'),(6,'hammer','çekiç'),(7,'nail','çivi'),(8,'screw','vida'),(9,'screwdriver','tornavida'),(10,'drill','matkap'),(11,'wrench','İngiliz anahtarı'),(12,'pliers','kerpeten'),(13,'toolbox','alet kutusu'),(14,'tape measure','mezro'),(15,'saw','testere'),(16,'axe','balta'),(17,'cutter','maket bıçağı'),(18,'broom','süpürge'),(19,'bucket','kova'),(20,'mop','paspas'),(21,'ironing board','ütü masası'),(22,'vacoom cleaner','elektrik süpürgesi'),(23,'tape','bant'),(24,'scissors','makas'),(25,'stepladder','merdiven'),(26,'torch','meşale, el feneri'),(27,'flashlight','el feneri'),(28,'chain','zincir'),(29,'rope','halat');
/*!40000 ALTER TABLE `tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` mediumtext COLLATE utf8mb4_turkish_ci NOT NULL,
  `password` mediumtext COLLATE utf8mb4_turkish_ci NOT NULL,
  `mail` mediumtext COLLATE utf8mb4_turkish_ci NOT NULL,
  `lists` mediumtext COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (15,'admin','96374185','146cskn@gmail.com',NULL),(16,'brba','96374185','14cskn@gmail.com',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vegetables`
--

DROP TABLE IF EXISTS `vegetables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vegetables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_ing` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `word_tr` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vegetables`
--

LOCK TABLES `vegetables` WRITE;
/*!40000 ALTER TABLE `vegetables` DISABLE KEYS */;
INSERT INTO `vegetables` VALUES (1,'sebzeler','vegetables'),(2,'carrot','havuç'),(3,'cucumber','salatalık'),(4,'tomato','domates'),(5,'aubergine','patlıcan'),(6,'eggplant','patlıcan'),(7,'potato','patates'),(8,'pepper','biber'),(9,'beans','fasulye'),(10,'lettuce','kıvırcık salata'),(11,'cabbage','lahana'),(12,'onion','soğan'),(13,'beetroot','pancar'),(14,'squash','kabak'),(15,'zucchini','kabak'),(16,'pumpkin','balkabağı'),(17,'spinach','ıspanak'),(18,'spring onion','taze soğan'),(19,'corn','mısır'),(20,'mushroom','mantar'),(21,'asparagus','kuşkonmaz'),(22,'peas','bezelye'),(23,'broccoli','brokoli'),(24,'garlic','sarımsak'),(25,'Brussels sprouts','brüksel lahanası'),(26,'artichoke','enginar'),(27,'cauliflower','karnabahar'),(28,'celery','kereviz'),(29,'chilli pepper','kırmızı biber'),(30,'ginger','zencefil'),(31,'leek','pırasa'),(32,'radish','kırmızı turp'),(33,'rocket','roka'),(34,'swede','şalgam'),(35,'turnip','turp');
/*!40000 ALTER TABLE `vegetables` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-03  4:07:00
