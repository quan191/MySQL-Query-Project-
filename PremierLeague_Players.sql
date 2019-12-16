-- MySQL dump 10.13  Distrib 5.6.45, for Win64 (x86_64)
--
-- Host: relational.fit.cvut.cz    Database: PremierLeague
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.15-MariaDB-log

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
-- Table structure for table `Players`
--

DROP TABLE IF EXISTS `Players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Players` (
  `PlayerID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL COMMENT 'Players from Premier League',
  PRIMARY KEY (`PlayerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Players`
--

LOCK TABLES `Players` WRITE;
/*!40000 ALTER TABLE `Players` DISABLE KEYS */;
INSERT INTO `Players` VALUES (3,'Giggs Ryan'),(363,'Scholes Paul'),(973,'Woodgate Jonathan'),(999,'Smith Alan'),(1059,'Gabbidon Daniel'),(1131,'Bramble Titus'),(1195,'Johnson Andrew'),(1212,'Wright-Phillips Shaun'),(1216,'Hill Clint'),(1231,'Bellamy Craig'),(1256,'Duff Damien'),(1274,'Dunn David'),(1307,'Gardner Ricardo'),(1344,'JÃ¤Ã¤skelÃ¤inen Jussi'),(1409,'Wilbraham Aaron'),(1411,'Parker Scott'),(1420,'Derry Shaun'),(1587,'Knight Zat'),(1615,'Blake Robbie'),(1619,'Henry Thierry'),(1632,'Barry Gareth'),(1640,'Upson Matthew'),(1679,'Delap Rory'),(1710,'Keane Robbie'),(1718,'Terry John'),(1764,'Dunne Richard'),(1765,'Heskey Emile'),(1795,'Owen Michael'),(1801,'Robinson Paul'),(1803,'Friedel Brad'),(1809,'Carragher Jamie'),(1812,'Murphy Danny'),(1814,'Gerrard Steven'),(1821,'Neville Philip'),(1822,'Given Shay'),(1827,'Schwarzer Mark'),(1840,'Dyer Kieron'),(1841,'Brown Wes'),(1869,'Hughes Aaron'),(1930,'Young Luke'),(1934,'King Ledley'),(1936,'Gower Mark'),(1940,'Bridge Wayne'),(1945,'SÃ¸rensen Thomas'),(1950,'Monk Garry'),(1989,'Craddock Jody'),(2004,'Robinson Paul'),(2019,'Smith Tommy'),(2034,'Ferdinand Rio'),(2051,'Lampard Frank'),(2160,'Petrov Stilian'),(2399,'Higginbotham Danny'),(2404,'Carrick Michael'),(2559,'Davies Simon'),(2562,'Drury Adam'),(2570,'Etherington Matthew'),(3118,'Roberts Jason'),(3119,'Kenny Patrick'),(3273,'Cahill Tim'),(3296,'Boyce Emmerson'),(3332,'Reid Steven'),(3630,'Kevin Davies '),(3658,'Pennant Jermaine'),(3665,'Aurelio Fabio'),(3731,'Helguson Heidar'),(3736,'O\'Shea John'),(3773,'Crouch Peter'),(3785,'Cole Ashley'),(3897,'Anelka Nicolas'),(4098,'John Arne Riise '),(4142,'MÃ­chel Salgado '),(4202,'Cerny Radek'),(4255,'Bothroyd Jay'),(4374,'Lappin Simon'),(4396,'Saha Louis'),(4445,'McFadden James'),(4454,'LÃ¸venkrands Peter'),(4570,'Zamora Bobby'),(4611,'van der Vaart Rafael'),(4719,'Kuyt Dirk'),(4740,'Emerton Brett'),(4990,'Diarra Mahamadou'),(5043,'Hargreaves Owen'),(5075,'Donovan Landon'),(5207,'Gordon Craig'),(5288,'Tremmel Gerhard'),(5589,'Whitehead Dean'),(5692,'Hulse Robert'),(5730,'Agyemang Patrick'),(5741,'Holt Grant'),(5750,'Shorey Nicky'),(6219,'Distin Sylvain'),(6240,'Shola Ameobi '),(6254,'Gallas William'),(6286,'CissÃ© Djibril'),(6298,'Grygera Zdenek'),(6769,'Diao Salif'),(7459,'Pizarro David'),(7525,'Pienaar Steven'),(7551,'Lescott Joleon'),(7631,'Vaughan David'),(7635,'Hunt Stephen'),(7645,'Jagielka Phil'),(7670,'Andrews Keith'),(7712,'Ricketts Sam'),(7933,'Coloccini Fabricio'),(7958,'Defoe Jermain'),(8358,'Johnson Roger'),(8371,'Givet GaÃ«l'),(8378,'Osman Leon'),(8380,'Collins James'),(8432,'Reina JosÃ©'),(8442,'Essien Michael'),(8595,'Berbatov Dimitar'),(8597,'Rosicky Tomas'),(8758,'Arteta Mikel'),(9007,'Hibbert Tony'),(9047,'Johnson Glen'),(9089,'Foster Ben'),(9110,'Maloney Shaun'),(9493,'Kelly Stephen'),(9631,'Jones Bradley'),(9765,'Klasnic Ivan'),(10089,'Petrov Martin'),(10425,'Malouda Florent'),(10451,'Jenas Jermaine'),(10454,'Etuhu Dickson'),(10466,'Heitinga Johnny'),(10561,'Henry Karl'),(10738,'Bent Darren'),(10954,'Bunn Mark'),(11078,'Ward Elliott'),(11248,'Kyrgiakos Sotirios'),(11278,'Bosingwa JosÃ©'),(11334,'Cech Petr'),(11378,'Williamson Michael'),(11467,'Jones Billy'),(11721,'Fuller Ricardo'),(11735,'Sidwell Steve'),(11829,'Routledge Wayne'),(11883,'Tate Alan'),(11911,'Gary Caldwell '),(12002,'Downing Stewart'),(12150,'Whelan Glenn'),(12297,'van Persie Robin'),(12303,'Drogba Didier'),(12413,'Huth Robert'),(12443,'Orr Bradley'),(12450,'Kolo TourÃ© '),(12674,'Hall Fitz'),(12679,'Dawson Michael'),(12745,'Baines Leighton'),(12765,'Thomas Jerome'),(12780,'Mears Tyrone'),(12813,'Walters Jonathan'),(12882,'Park Ji-Sung '),(13017,'Rooney Wayne'),(13227,'Arshavin Andrey'),(13239,'Yakubu '),(13308,'Maxi RodrÃ­guez '),(13310,'Warnock Stephen'),(13439,'Squillaci SÃ©bastien'),(13524,'Grella Vincenzo'),(13594,'Benayoun Yossi'),(13898,'Ferdinand Anton'),(14075,'Evra Patrice'),(14166,'Lita Leroy'),(14278,'Ridgewell Liam'),(14279,'FortunÃ© Marc-Antoine'),(14295,'Fletcher Darren'),(14402,'Torres Fernando'),(14469,'Crusat Albert'),(14489,'Pugh Danny'),(14664,'Yaya TourÃ© '),(14668,'Reo-Coker Nigel'),(14775,'Ryan Taylor '),(14898,'Crofts Andrew'),(14919,'Kilgallon Matthew'),(14947,'Foley Kevin'),(14965,'Vidic Nemanja'),(15073,'Richardson Kieran'),(15076,'de Jong Nigel'),(15109,'Huddlestone Tom'),(15114,'Britton Leon'),(15157,'Milner James'),(15188,'Pratley Darren'),(15201,'Barnett Leon'),(15237,'Surman Andrew'),(15276,'Barton Joey'),(15284,'Hangeland Brede'),(15337,'Howard Tim'),(15395,'Tuncay '),(15398,'Graham Danny'),(15405,'Hutton Alan'),(15428,'Moore Luke'),(15498,'Gohouri Steve'),(15675,'Chamakh Marouane'),(15749,'Hart Joe'),(15864,'Turner Michael'),(15903,'Stockdale David'),(15943,'Vermaelen Thomas'),(15944,'Kightly Michael'),(15968,'Baird Chris'),(16005,'Best Leon'),(16045,'Watson Ben'),(16058,'Pedersen Morten Gamst'),(16210,'Scharner Paul'),(16234,'Stam Ronnie'),(16236,'Edwards David'),(16734,'Ferreira Paulo'),(16854,'Senderos Philippe'),(17127,'Mertesacker Per'),(17336,'Clichy GaÃ«l'),(17349,'Lennon Aaron'),(17468,'CuÃ©llar Carlos'),(17476,'Kompany Vincent'),(17500,'Adebayor Emmanuel'),(17687,'Ikeme Carl'),(17694,'Turnbull Ross'),(17812,'Fox David'),(17891,'Bilyaletdinov Diniyar'),(17955,'Dobbie Stephen'),(17974,'Steven Taylor '),(17997,'Bardsley Phillip'),(18008,'Morrison James'),(18144,'Whitbread Zak'),(18151,'FÃ¼lÃ¶p Marton'),(18215,'Jones Kenwyne'),(18428,'Eagles Chris'),(18430,'Gera ZoltÃ¡n'),(18586,'BuzsÃ¡ky Ãkos'),(18658,'Alex '),(18737,'N\'Zogbia Charles'),(18753,'Ben Arfa Hatem'),(18804,'Jerome Cameron'),(18818,'Jarvis Matthew'),(18832,'Stearman Richard'),(18846,'Perch James'),(18892,'Young Ashley'),(18953,'Fletcher Steven'),(19008,'Berra Christophe'),(19053,'Onuoha Nedum'),(19057,'Sebastian Larsson '),(19084,'Elokobi George'),(19124,'Tierney Marc'),(19151,'Brunt Chris'),(19159,'Williams Ashley'),(19160,'Djourou Johan'),(19188,'Dann Scott'),(19196,'Mackie Jamie'),(19197,'Puncheon Jason'),(19236,'Ruddy John'),(19272,'McAuley Gareth'),(19321,'Jackson Simeon'),(19341,'Martin Russell'),(19419,'Cahill Gary'),(19556,'Jones David'),(19557,'Ebanks-Blake Sylvain'),(19569,'Johnson Bradley'),(19602,'Vukcevic Simon'),(19645,'Campbell DJ'),(19688,'Sinclair Scott'),(19714,'Wilkinson Andy'),(19718,'Nelsen Ryan'),(19740,'Taiwo Taye'),(19916,'Vaughan James'),(19921,'Meireles Raul'),(19930,'Mark Davies '),(19946,'Ephraim Hogan'),(19958,'Wheater David'),(19959,'Adam Johnson '),(20066,'Hennessey Wayne'),(20141,'Dorrans Graham'),(20208,'Adam Charlie'),(20226,'Dempsey Clint'),(20298,'Pavlyuchenko Roman'),(20312,'TÃ©vez Carlos'),(20359,'Samba Christopher'),(20450,'Doyle Kevin'),(20452,'Long Shane'),(20467,'Walcott Theo'),(20480,'Krul Tim'),(20481,'Ireland Stephen'),(20488,'Traore Armand'),(20492,'Richards Micah'),(20531,'Westwood Keiren'),(20589,'Orlandi Andrea'),(20658,'Zabaleta Pablo'),(20664,'Silva David'),(20695,'Antonio Valencia '),(21060,'GutiÃ©rrez JonÃ¡s'),(21083,'Dyer Nathan'),(21091,'Song Alexandre'),(21094,'Agger Daniel'),(26725,'JosÃ© Enrique '),(26756,'Doni '),(26793,'Skrtel Martin'),(26900,'Odemwingie Peter'),(27258,'Anderson '),(27341,'Cabaye Yohan'),(27348,'Tamas Gabriel'),(27440,'Cox Simon'),(27450,'Agbonlahor Gabriel'),(27696,'Muamba Fabrice'),(27697,'Bendtner Nicklas'),(27698,'Connolly Matthew'),(27707,'Gibson Darron'),(28097,'Kranjcar Niko'),(28146,'Assou-Ekotto Benoit'),(28147,'DiamÃ© Mohamed'),(28157,'Goodwillie David'),(28183,'Steinsson GrÃ©tar'),(28301,'Cheik TiotÃ© '),(28342,'Gecov Marcel'),(28448,'Cattermole Lee'),(28468,'Gardner Craig'),(28491,'Al-Habsi Ali'),(28495,'Mikel John Obi'),(28499,'Hoolahan Wes'),(28541,'Campbell Fraizer'),(28554,'Nasri Samir'),(28566,'Abou Diaby Vassiriki'),(28568,'O\'Hara Jamie'),(28593,'Anichebe Victor'),(28654,'Martin Olsson '),(32317,'Beckford Jermaine'),(32318,'Wilson Marc'),(33223,'Gyan Asamoah'),(33298,'Beausejour Jean'),(34285,'Figueroa Maynor'),(34296,'Palacios Wilson'),(34392,'Sessegnon StÃ©phane'),(35865,'Modeste Anthony'),(36903,'Bale Gareth'),(36968,'Park Chu-Young '),(37055,'Modric Luka'),(37084,'Ruiz Bryan'),(37269,'Jara Gonzalo'),(37334,'Rodallega Hugo'),(37339,'Elmohamady Ahmed'),(37352,'Kalou Salomon'),(37572,'AgÃ¼ero Sergio'),(37634,'HilÃ¡rio Henrique'),(37639,'Guthrie Danny'),(37642,'Evans Jonny'),(37742,'Kaboul Younes'),(37748,'Sagna Bacary'),(37847,'Zubar Ronald'),(37869,'Shawcross Ryan'),(37939,'Marveaux Sylvain'),(38251,'de Vries Dorus'),(38290,'Rose Danny'),(38297,'Howson Jonathan'),(38328,'Ngog David'),(38429,'Obertan Gabriel'),(38462,'Corluka Vedran'),(38530,'Nani '),(39104,'DembÃ©lÃ© Moussa'),(39202,'Drenthe Royston'),(39215,'Vorm Michel'),(39217,'Agustien Kemy'),(39253,'Jonas Olsson '),(39336,'SuÃ¡rez Luis'),(39439,'Pogrebnyak Pavel'),(39464,'Moras Vangelis'),(39725,'Lindegaard Anders'),(39765,'Taarabt Adel'),(39776,'Martin Chris'),(39895,'Mulumbu Youssuf'),(39982,'Maierhofer Stefan'),(40142,'Carroll Andy'),(40146,'Bertrand Ryan'),(40204,'Morison Steve'),(40231,'JÃ³nsson Eggert GunnthÃ³r'),(40275,'dos Santos Giovani'),(40349,'Begovic Asmir'),(40387,'Gosling Dan'),(40399,'Vokes Sam'),(40451,'Pilkington Anthony'),(40501,'Blackman Nick'),(40555,'Allen Joe'),(40564,'Lansbury Henri'),(40616,'Ward Stephen'),(40660,'Hammill Adam'),(40725,'Simpson Danny'),(40755,'Sturridge Daniel'),(41135,'Ivanovic Branislav'),(41184,'Fellaini Marouane'),(41208,'Milijas Nenad'),(41262,'Elliott Bennett '),(41270,'David Luiz '),(41705,'Guzan Brad'),(41727,'Ryan Bennett '),(41792,'Ramsey Aaron'),(41823,'Delph Fabian'),(42425,'Briggs Matthew'),(42427,'Gibbs Kieran'),(42428,'Hutchinson Sam'),(42493,'Balotelli Mario'),(42518,'Kacaniklic Alexander'),(42544,'Dzeko Edin'),(42593,'Kolarov Aleksandar'),(42744,'Bassong SÃ©bastien'),(42758,'CissÃ© Papiss Demba'),(42996,'Rangel Angel'),(43020,'HernÃ¡ndez Javier'),(43035,'Alcaraz Antolin'),(43191,'Lucas Leiva '),(43250,'Cleverley Tom'),(43274,'Gervinho '),(43670,'Mata Juan'),(44302,'GuÃ©dioura AdlÃ¨ne'),(45139,'Lichaj Eric'),(45158,'Shotton Ryan'),(45175,'Bogdan Adam'),(46581,'SÃ¡ Orlando'),(46695,'de Laet Ritchie'),(47390,'Taylor Neil'),(47412,'Ba Demba'),(48730,'Piscu '),(49013,'Moses Victor'),(49323,'N\'Zonzi Steven'),(49384,'Rodwell Jack'),(49493,'Herd Chris'),(49539,'Naughton Kyle'),(49724,'Di Santo Franco'),(49806,'Hoilett Junior'),(49944,'Livermore Jake'),(50023,'Jordi GÃ³mez '),(50175,'Welbeck Danny'),(50232,'Shelvey Jonjo'),(50264,'Rudd Declan'),(50471,'McArthur James'),(50472,'McCarthy James'),(51484,'Delfouneso Nathan'),(51507,'Koscielny Laurent'),(51511,'Bessone Federico'),(51887,'Marcus Olsson '),(51922,'Amos Ben'),(51938,'Albrighton Marc'),(51940,'De Gea David'),(52477,'Baker Nathan'),(52876,'Sandro '),(53238,'Bruno Perone '),(53371,'Meyler David'),(53392,'Ramires '),(54469,'Smith Adam'),(54771,'Fabio '),(54772,'Rafael '),(55415,'Sammon Conor'),(55422,'Sigurdsson Gylfi'),(55548,'Spearing Jay'),(55586,'Baxter Jose'),(55604,'Santon Davide'),(55909,'Smalling Chris'),(56861,'Frimpong Emmanuel'),(56864,'Coquelin Francis'),(56944,'Petrovic Radosav'),(56979,'Henderson Jordan'),(57069,'Tchoyi Somen'),(57214,'AndrÃ© Santos '),(57835,'Gueye Magaye'),(58621,'Walker Kyle'),(58771,'Colback Jack'),(58778,'Stracqualursi Denis'),(58786,'Kelly Martin'),(58845,'Clark Ciaran'),(58900,'Formica Mauro'),(59013,'Bannan Barry'),(59125,'Wickham Connor'),(59304,'Vuckic Haris'),(59325,'Kakuta Gael'),(59936,'Szczesny Wojciech'),(59949,'Coleman Seamus'),(59970,'Macheda Federico'),(60232,'Dawson Craig'),(60865,'Vellios Apostolos'),(61538,'McManaman Callum'),(61933,'Duffy Shane'),(61944,'Ferguson Shane'),(62419,'Jelavic Nikica'),(63370,'McClean James'),(65807,'Savic Stefan'),(66749,'Lukaku Romelu'),(66797,'Mignolet Simon'),(66978,'Sordell Marvin'),(67731,'Faurlin Alejandro'),(68815,'Caulker Steven'),(73459,'Richards Ashley'),(74208,'Pogba Paul'),(74230,'van Aanholt Patrick'),(75773,'Lee Chung-Yong '),(75880,'Ayala Daniel'),(76359,'Jones Phil'),(77800,'Gardner Gary'),(78056,'Romeu Oriol'),(78108,'Coates SebastiÃ¡n'),(78774,'Davis David'),(79843,'Thorne George'),(80061,'Noble Ryan'),(80181,'McAleny Conor'),(80235,'Boyata Dedryck'),(80254,'Jenkinson Carl'),(80442,'Samba DiakitÃ© '),(80979,'Weimann Andreas'),(81025,'Kasami Pajtim'),(81880,'Oxlade-Chamberlain Alex'),(82263,'Alonso Marcos'),(82514,'Ream Tim'),(83428,'Hanley Grant'),(83701,'Gorman John'),(86168,'Rochina RubÃ©n'),(86364,'Yennaris Nicholas'),(87835,'Doherty Matt'),(87860,'Morris Josh'),(88658,'Kean Jake'),(88821,'McEachran Joshua'),(88894,'Barkley Ross'),(89328,'Slew Jordan'),(90801,'Miquel Ignasi'),(91126,'Keane William'),(91128,'Andrade Bruno'),(91979,'Flanagan John'),(92372,'Miyaichi Ryo'),(92488,'Lowe Jason'),(92790,'Harriman Michael'),(93666,'Razak Abdul'),(95703,'Lancaster Cameron'),(97612,'Sammy Ameobi '),(98464,'Vela Joshua'),(98769,'Ji Dong-Won '),(103903,'Henley Adam'),(103955,'Sterling Raheem'),(105086,'Frei Kerim'),(105190,'Forde Anthony'),(105322,'Riley Joe'),(106603,'Fryers Ezekiel'),(107853,'Trotta Marcello'),(114042,'Carruthers Samir');
/*!40000 ALTER TABLE `Players` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-16  8:05:50
