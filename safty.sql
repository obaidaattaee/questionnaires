-- MySQL dump 10.17  Distrib 10.3.23-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: safty_questionnaire
-- ------------------------------------------------------
-- Server version	10.3.23-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `countryCode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `official_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `official_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ISO3166Alpha2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ISO3166Numeric` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ArabicFormal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`countryCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('ABW','Aruba','أروبا','Aruba','297','AW','533','Aruba',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('AFG','Afghanistan','أفغانستان','Afghanistan','93','AF','004','جمهورية أفغانستان الإسلامية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('AGO','Angola','أنغولا','Angola','244','AO','024','جمهورية أنغولا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('AIA','Anguilla','أنغيلا','Anguilla','1-264','AI','660','Anguilla',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('ALA','Åland Islands','جزر ألاند','Åland Islands','358','AX','248','Åland Islands',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('ALB','Albania','ألبانيا','Albania','355','AL','008','جمهورية ألبانيا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('AND','Andorra','أندورا','Andorra','376','AD','020','إمارة أندورا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('ARE','United Arab Emirates','الإمارات العربية المتحدة','United Arab Emirates','971','AE','784','الإمارات العربية المتحدة',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('ARG','Argentina','الأرجنتين','Argentina','54','AR','032','جمهورية الأرجنتين',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('ARM','Armenia','أرمينيا','Armenia','374','AM','051','جمهورية أرمينيا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('ASM','American Samoa','ساموا الأمريكية','American Samoa','1-684','AS','016','American Samoa',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('ATA','Antarctica','أنتاركتيكا','Antarctica','672','AQ','010','Antarctica',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('ATF','French Southern Territories','الأراضي الفرنسية الجنوبية الجنوبية','French Southern Territories','262','TF','260','French Southern Territories',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('ATG','Antigua & Barbuda','أنتيغوا وبربودا','Antigua and Barbuda','1-268','AG','028','أنتيغوا وبربودا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('AUS','Australia','أستراليا','Australia','61','AU','036','أستراليا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('AUT','Austria','النمسا','Austria','43','AT','040','جمهورية النمسا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('AZE','Azerbaijan','أذربيجان','Azerbaijan','994','AZ','031','جمهورية أذربيجان',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BDI','Burundi','بوروندي','Burundi','257','BI','108','جمهورية بوروندي',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BEL','Belgium','بلجيكا','Belgium','32','BE','056','مملكة بلجيكا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BEN','Benin','بنن','Benin','229','BJ','204','جمهورية بنن',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BES','Caribbean Netherlands','بونير وسان يوستاتيوس وسابا','Bonaire, Sint Eustatius and Saba','599','BQ','535','Bonaire, Sint Eustatius and Saba',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BFA','Burkina Faso','بوركينا فاسو','Burkina Faso','226','BF','854','بوركينا فاسو',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BGD','Bangladesh','بنغلاديش','Bangladesh','880','BD','050','جمهورية بنغلاديش الشعبية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BGR','Bulgaria','بلغاريا','Bulgaria','359','BG','100','جمهورية بلغاريا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BHR','Bahrain','البحرين','Bahrain','973','BH','048','مملكة البحرين',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BHS','Bahamas','جزر البهاما','Bahamas','1-242','BS','044','كمنولث جزر البهاما',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BIH','Bosnia','البوسنة والهرسك','Bosnia and Herzegovina','387','BA','070','البوسنة والهرسك',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BLM','St. Barthélemy','سان بارتليمي','Saint Barthélemy','590','BL','652','Saint Barthélemy',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('BLR','Belarus','بيلاروس','Belarus','375','BY','112','جمهورية بيلاروس',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BLZ','Belize','بليز','Belize','501','BZ','084','بليز',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BMU','Bermuda','برمودا','Bermuda','1-441','BM','060','Bermuda',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BOL','Bolivia','بوليفيا (دولة - المتعددة القوميات)','Bolivia (Plurinational State of)','591','BO','068','دولة بوليفيا المتعددة القوميات',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BRA','Brazil','البرازيل','Brazil','55','BR','076','الجمهورية الاتحادية البرازيلية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BRB','Barbados','بربادوس','Barbados','1-246','BB','052','بربادوس',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BRN','Brunei','بروني دار السلام','Brunei Darussalam','673','BN','096','بروني دار السلام',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BTN','Bhutan','بوتان','Bhutan','975','BT','064','مملكة بوتان',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BVT','Bouvet Island','جزيرة بوفيت','Bouvet Island','47','BV','074','Bouvet Island',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('BWA','Botswana','بوتسوانا','Botswana','267','BW','072','جمهورية بوتسوانا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('CAF','Central African Republic','جمهورية أفريقيا الوسطى','Central African Republic','236','CF','140','جمهورية أفريقيا الوسطى',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('CAN','Canada','كندا','Canada','1','CA','124','كندا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('CCK','Cocos (Keeling) Islands','جزر كوكوس (كيلينغ)','Cocos (Keeling) Islands','61','CC','166','Cocos (Keeling) Islands',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('CHE','Switzerland','سويسرا','Switzerland','41','CH','756','الاتحاد السويسري',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('CHL','Chile','شيلي','Chile','56','CL','152','جمهورية شيلي',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('CHN','China','الصين','China','86','CN','156','جمهورية الصين الشعبية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('CIV','Côte d’Ivoire','كوت ديفوار','Côte d\'Ivoire','225','CI','384','جمهورية كوت ديفوار',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('CMR','Cameroon','الكاميرون','Cameroon','237','CM','120','جمهورية الكاميرون',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('COD','Congo - Kinshasa','جمهورية الكونغو الديمقراطية','Democratic Republic of the Congo','243','CD','180','جمهورية الكونغو الديمقراطية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('COG','Congo - Brazzaville','الكونغو','Congo','242','CG','178','جمهورية الكونغو',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('COK','Cook Islands','جزر كوك','Cook Islands','682','CK','184','جزر كوك',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('COL','Colombia','كولومبيا','Colombia','57','CO','170','جمهورية كولومبيا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('COM','Comoros','جزر القمر','Comoros','269','KM','174','اتحاد جزر القمر',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('CPV','Cape Verde','كابو فيردي','Cabo Verde','238','CV','132','جمهورية كابو فيردي',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('CRI','Costa Rica','كوستاريكا','Costa Rica','506','CR','188','جمهورية كوستاريكا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('CUB','Cuba','كوبا','Cuba','53','CU','192','جمهورية كوبا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('CUW','Curaçao','كوراساو','Curaçao','599','CW','531','Curaçao',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('CXR','Christmas Island','جزيرة كريسماس','Christmas Island','61','CX','162','Christmas Island',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('CYM','Cayman Islands','جزر كايمان','Cayman Islands','1-345','KY','136','Cayman Islands',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('CYP','Cyprus','قبرص','Cyprus','357','CY','196','جمهورية قبرص',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('CZE','Czechia','تشيكيا','Czechia','420','CZ','203','الجمهورية التشيكية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('DEU','Germany','ألمانيا','Germany','49','DE','276','جمهورية ألمانيا الاتحادية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('DJI','Djibouti','جيبوتي','Djibouti','253','DJ','262','جمهورية جيبوتي',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('DMA','Dominica','دومينيكا','Dominica','1-767','DM','212','كمنولث دومينيكا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('DNK','Denmark','الدانمرك','Denmark','45','DK','208','مملكة الدانمرك',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('DOM','Dominican Republic','الجمهورية الدومينيكية','Dominican Republic','1-809,1-829,1-849','DO','214','الجمهورية الدومينيكية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('DZA','Algeria','الجزائر','Algeria','213','DZ','012','الجمهورية الجزائرية الديمقراطية الشعبية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('ECU','Ecuador','إكوادور','Ecuador','593','EC','218','جمهورية إكوادور',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('EGY','Egypt','مصر','Egypt','20','EG','818','جمهورية مصر العربية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('ERI','Eritrea','إريتريا','Eritrea','291','ER','232','دولة إريتريا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('ESH','Western Sahara','الصحراء الغربية','Western Sahara','212','EH','732','Western Sahara',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('ESP','Spain','إسبانيا','Spain','34','ES','724','مملكة إسبانيا',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('EST','Estonia','إستونيا','Estonia','372','EE','233','جمهورية إستونيا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('ETH','Ethiopia','إثيوبيا','Ethiopia','251','ET','231','جمهورية إثيوبيا الديمقراطية الاتحادية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('FIN','Finland','فنلندا','Finland','358','FI','246','جمهورية فنلندا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('FJI','Fiji','فيجي','Fiji','679','FJ','242','جمهورية فيجي',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('FLK','Falkland Islands','جزر فوكلاند (مالفيناس)','Falkland Islands (Malvinas)','500','FK','238','Falkland Islands (Malvinas)',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('FRA','France','فرنسا','France','33','FR','250','الجمهورية الفرنسية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('FRO','Faroe Islands','جزر فايرو','Faroe Islands','298','FO','234','Faroe Islands',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('FSM','Micronesia','ميكرونيزيا (ولايات - الموحدة)','Micronesia (Federated States of)','691','FM','583','ولايات ميكرونيزيا الموحدة',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('GAB','Gabon','غابون','Gabon','241','GA','266','جمهورية الغابون',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('GBR','UK','المملكة المتحدة لبريطانيا العظمى وآيرلندا الشمالية','United Kingdom of Great Britain and Northern Ireland','44','GB','826','المملكة المتحدة لبريطانيا العظمى وآيرلندا الشمالية',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('GEO','Georgia','جورجيا','Georgia','995','GE','268','جورجيا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('GGY','Guernsey','غيرنزي','Guernsey','44','GG','831','Guernsey',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('GHA','Ghana','غانا','Ghana','233','GH','288','جمهورية غانا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('GIB','Gibraltar','جبل طارق','Gibraltar','350','GI','292','Gibraltar',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('GIN','Guinea','غينيا','Guinea','224','GN','324','جمهورية غينيا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('GLP','Guadeloupe','غواديلوب','Guadeloupe','590','GP','312','Guadeloupe',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('GMB','Gambia','غامبيا','Gambia','220','GM','270','جمهورية غامبيا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('GNB','Guinea-Bissau','غينيا - بيساو','Guinea-Bissau','245','GW','624','جمهورية غينيا - بيساو',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('GNQ','Equatorial Guinea','غينيا الاستوائية','Equatorial Guinea','240','GQ','226','جمهورية غينيا الاستوائية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('GRC','Greece','اليونان','Greece','30','GR','300','الجمهورية الهيلينية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('GRD','Grenada','غرينادا','Grenada','1-473','GD','308','غرينادا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('GRL','Greenland','غرينلند','Greenland','299','GL','304','Greenland',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('GTM','Guatemala','غواتيمالا','Guatemala','502','GT','320','جمهورية غواتيمالا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('GUF','French Guiana','غيانا الفرنسية','French Guiana','594','GF','254','French Guiana',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('GUM','Guam','غوام','Guam','1-671','GU','316','Guam',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('GUY','Guyana','غيانا','Guyana','592','GY','328','جمهورية غيانا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('HKG','Hong Kong','منطقة هونغ كونغ الصينية الإدارية الخاصة','China, Hong Kong Special Administrative Region','852','HK','344','China, Hong Kong Special Administrative Region',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('HMD','Heard & McDonald Islands','جزيرة هيرد وجزر ماكدونالد','Heard Island and McDonald Islands','672','HM','334','Heard Island and McDonald Islands',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('HND','Honduras','هندوراس','Honduras','504','HN','340','جمهورية هندوراس',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('HRV','Croatia','كرواتيا','Croatia','385','HR','191','جمهورية كرواتيا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('HTI','Haiti','هايتي','Haiti','509','HT','332','جمهورية هايتي',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('HUN','Hungary','هنغاريا','Hungary','36','HU','348','هنغاريا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('IDN','Indonesia','إندونيسيا','Indonesia','62','ID','360','جمهورية إندونيسيا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('IMN','Isle of Man','جزيرة مان','Isle of Man','44','IM','833','Isle of Man',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('IND','India','الهند','India','91','IN','356','جمهورية الهند',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('IOT','British Indian Ocean Territory','المحيط الهندي الإقليم البريطاني في','British Indian Ocean Territory','246','IO','086','British Indian Ocean Territory',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('IRL','Ireland','آيرلندا','Ireland','353','IE','372','آيرلندا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('IRN','Iran','إيران (جمهورية - الإسلامية)','Iran (Islamic Republic of)','98','IR','364','جمهورية إيران الإسلامية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('IRQ','Iraq','العراق','Iraq','964','IQ','368','جمهورية العراق',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('ISL','Iceland','آيسلندا','Iceland','354','IS','352','جمهورية آيسلندا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('ISR','Israel','إسرائيل','Israel','972','IL','376','دولة إسرائيل',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('ITA','Italy','إيطاليا','Italy','39','IT','380','جمهورية إيطاليا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('JAM','Jamaica','جامايكا','Jamaica','1-876','JM','388','جامايكا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('JEY','Jersey','جيرزي','Jersey','44','JE','832','Jersey',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('JOR','Jordan','الأردن','Jordan','962','JO','400','المملكة الأردنية الهاشمية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('JPN','Japan','اليابان','Japan','81','JP','392','اليابان',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('KAZ','Kazakhstan','كازاخستان','Kazakhstan','7','KZ','398','جمهورية كازاخستان',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('KEN','Kenya','كينيا','Kenya','254','KE','404','جمهورية كينيا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('KGZ','Kyrgyzstan','قيرغيزستان','Kyrgyzstan','996','KG','417','جمهورية قيرغيزستان',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('KHM','Cambodia','كمبوديا','Cambodia','855','KH','116','مملكة كمبوديا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('KIR','Kiribati','كيريباس','Kiribati','686','KI','296','جمهورية كيريباس',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('KNA','St. Kitts & Nevis','سانت كيتس ونيفس','Saint Kitts and Nevis','1-869','KN','659','سانت كيتس ونيفس',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('KOR','South Korea','جمهورية كوريا','Republic of Korea','82','KR','410','جمهورية كوريا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('KWT','Kuwait','الكويت','Kuwait','965','KW','414','دولة الكويت',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('LAO','Laos','جمهورية لاو الديمقراطية الشعبية','Lao People\'s Democratic Republic','856','LA','418','جمهورية لاو الديمقراطية الشعبية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('LBN','Lebanon','لبنان','Lebanon','961','LB','422','الجمهورية اللبنانية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('LBR','Liberia','ليبريا','Liberia','231','LR','430','جمهورية ليبريا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('LBY','Libya','ليبيا','Libya','218','LY','434','ليبيا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('LCA','St. Lucia','سانت لوسيا','Saint Lucia','1-758','LC','662','سانت لوسيا',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('LIE','Liechtenstein','ليختنشتاين','Liechtenstein','423','LI','438','إمارة ليختنشتاين',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('LKA','Sri Lanka','سري لانكا','Sri Lanka','94','LK','144','جمهورية سري لانكا الاشتراكية الديمقراطية',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('LSO','Lesotho','ليسوتو','Lesotho','266','LS','426','مملكة ليسوتو',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('LTU','Lithuania','ليتوانيا','Lithuania','370','LT','440','جمهورية ليتوانيا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('LUX','Luxembourg','لكسمبرغ','Luxembourg','352','LU','442','دوقية لكسمبرغ الكبرى',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('LVA','Latvia','لاتفيا','Latvia','371','LV','428','جمهورية لاتفيا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MAC','Macau','منطقة ماكاو الإدارية الخاصة التابعة للصين','China, Macao Special Administrative Region','853','MO','446','China, Macao Special Administrative Region',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MAF','St. Martin','سان مارتن','Saint Martin (French Part)','590','MF','663','Saint Martin (French Part)',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('MAR','Morocco','المغرب','Morocco','212','MA','504','المملكة المغربية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MCO','Monaco','موناكو','Monaco','377','MC','492','إمارة موناكو',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MDA','Moldova','جمهورية مولدوفا','Republic of Moldova','373','MD','498','جمهورية مولدوفا',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('MDG','Madagascar','مدغشقر','Madagascar','261','MG','450','جمهورية مدغشقر',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MDV','Maldives','ملديف','Maldives','960','MV','462','جمهورية ملديف',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MEX','Mexico','المكسيك','Mexico','52','MX','484','الولايات المتحدة المكسيكية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MHL','Marshall Islands','جزر مارشال','Marshall Islands','692','MH','584','جمهورية جزر مارشال',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MKD','Macedonia','جمهورية مقدونيا اليوغوسلافية سابقاً','The former Yugoslav Republic of Macedonia','389','MK','807','جمهورية مقدونيا اليوغوسلافية سابقاً',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('MLI','Mali','مالي','Mali','223','ML','466','جمهورية مالي',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MLT','Malta','مالطة','Malta','356','MT','470','جمهورية مالطة',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MMR','Myanmar','ميانمار','Myanmar','95','MM','104','جمهورية اتحاد ميانمار',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MNE','Montenegro','الجبل الأسود','Montenegro','382','ME','499','الجبل الأسود',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MNG','Mongolia','منغوليا','Mongolia','976','MN','496','منغوليا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MNP','Northern Mariana Islands','جزر ماريانا الشمالية','Northern Mariana Islands','1-670','MP','580','Northern Mariana Islands',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MOZ','Mozambique','موزامبيق','Mozambique','258','MZ','508','جمهورية موزامبيق',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MRT','Mauritania','موريتانيا','Mauritania','222','MR','478','الجمهورية الإسلامية الموريتانية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MSR','Montserrat','مونتسيرات','Montserrat','1-664','MS','500','Montserrat',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MTQ','Martinique','مارتينيك','Martinique','596','MQ','474','Martinique',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MUS','Mauritius','موريشيوس','Mauritius','230','MU','480','جمهورية موريشيوس',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MWI','Malawi','ملاوي','Malawi','265','MW','454','جمهورية ملاوي',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MYS','Malaysia','ماليزيا','Malaysia','60','MY','458','ماليزيا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('MYT','Mayotte','جزيرة مايوت','Mayotte','262','YT','175','Mayotte',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('NAM','Namibia','ناميبيا','Namibia','264','NA','516','جمهورية ناميبيا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('NCL','New Caledonia','كاليدونيا الجديدة','New Caledonia','687','NC','540','New Caledonia',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('NER','Niger','النيجر','Niger','227','NE','562','جمهورية النيجر',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('NFK','Norfolk Island','جزيرة نورفلك','Norfolk Island','672','NF','574','Norfolk Island',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('NGA','Nigeria','نيجيريا','Nigeria','234','NG','566','جمهورية نيجيريا الاتحادية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('NIC','Nicaragua','نيكاراغوا','Nicaragua','505','NI','558','جمهورية نيكاراغوا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('NIU','Niue','نيوي','Niue','683','NU','570','نيوي',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('NLD','Netherlands','هولندا','Netherlands','31','NL','528','مملكة هولندا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('NOR','Norway','النرويج','Norway','47','NO','578','مملكة النرويج',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('NPL','Nepal','نيبال','Nepal','977','NP','524','جمهورية نيبال الديمقراطية الاتحادية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('NRU','Nauru','ناورو','Nauru','674','NR','520','جمهورية ناورو',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('NZL','New Zealand','نيوزيلندا','New Zealand','64','NZ','554','نيوزيلندا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('OMN','Oman','عمان','Oman','968','OM','512','سلطنة عمان',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('PAK','Pakistan','باكستان','Pakistan','92','PK','586','جمهورية باكستان الإسلامية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('PAN','Panama','بنما','Panama','507','PA','591','جمهورية بنما',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('PCN','Pitcairn Islands','بيتكيرن','Pitcairn','870','PN','612','Pitcairn',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('PER','Peru','بيرو','Peru','51','PE','604','جمهورية بيرو',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('PHL','Philippines','الفلبين','Philippines','63','PH','608','جمهورية الفلبين',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('PLW','Palau','بالاو','Palau','680','PW','585','جمهورية بالاو',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('PNG','Papua New Guinea','بابوا غينيا الجديدة','Papua New Guinea','675','PG','598','دولة بابوا غينيا الجديدة المستقلة',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('POL','Poland','بولندا','Poland','48','PL','616','جمهورية بولندا',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('PRI','Puerto Rico','بورتوريكو','Puerto Rico','1','PR','630','Puerto Rico',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('PRK','North Korea','جمهورية كوريا الشعبية الديمقراطية','Democratic People\'s Republic of Korea','850','KP','408','جمهورية كوريا الشعبية الديمقراطية',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('PRT','Portugal','البرتغال','Portugal','351','PT','620','جمهورية البرتغال',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('PRY','Paraguay','باراغواي','Paraguay','595','PY','600','جمهورية باراغواي',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('PSE','Palestine','دولة فلسطين','State of Palestine','970','PS','275','دولة فلسطين',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('PYF','French Polynesia','بولينيزيا الفرنسية','French Polynesia','689','PF','258','French Polynesia',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('QAT','Qatar','قطر','Qatar','974','QA','634','دولة قطر',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('REU','Réunion','ريونيون','Réunion','262','RE','638','Réunion',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('ROU','Romania','رومانيا','Romania','40','RO','642','رومانيا',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('RUS','Russia','الاتحاد الروسي','Russian Federation','7','RU','643','الاتحاد الروسي',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('RWA','Rwanda','رواندا','Rwanda','250','RW','646','جمهورية رواندا',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('Sark','Sark','سارك','Sark',NULL,NULL,NULL,'Sark',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SAU','Saudi Arabia','المملكة العربية السعودية','Saudi Arabia','966','SA','682','المملكة العربية السعودية',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SDN','Sudan','السودان','Sudan','249','SD','729','جمهورية السودان',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SEN','Senegal','السنغال','Senegal','221','SN','686','جمهورية السنغال',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SGP','Singapore','سنغافورة','Singapore','65','SG','702','جمهورية سنغافورة',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SGS','South Georgia & South Sandwich Islands','جورجيا الجنوبية وجزر ساندويتش الجنوبية','South Georgia and the South Sandwich Islands','500','GS','239','South Georgia and the South Sandwich Islands',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SHN','St. Helena','سانت هيلانة','Saint Helena','290','SH','654','Saint Helena',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SJM','Svalbard & Jan Mayen','جزر سفالبارد وجان ماين','Svalbard and Jan Mayen Islands','47','SJ','744','Svalbard and Jan Mayen Islands',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SLB','Solomon Islands','جزر سليمان','Solomon Islands','677','SB','090','جزر سليمان',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SLE','Sierra Leone','سيراليون','Sierra Leone','232','SL','694','جمهورية سيراليون',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SLV','El Salvador','السلفادور','El Salvador','503','SV','222','جمهورية السلفادور',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('SMR','San Marino','سان مارينو','San Marino','378','SM','674','جمهورية سان مارينو',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SOM','Somalia','الصومال','Somalia','252','SO','706','جمهورية الصومال الاتحادية',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SPM','St. Pierre & Miquelon','سان بيار وميكلون','Saint Pierre and Miquelon','508','PM','666','Saint Pierre and Miquelon',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SRB','Serbia','صربيا','Serbia','381','RS','688','جمهورية صربيا',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SSD','South Sudan','جنوب السودان','South Sudan','211','SS','728','جمهورية جنوب السودان',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('STP','São Tomé & Príncipe','سان تومي وبرينسيبي','Sao Tome and Principe','239','ST','678','جمهورية سان تومي وبرينسيبي الديمقراطية',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SUR','Suriname','سورينام','Suriname','597','SR','740','جمهورية سورينام',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SVK','Slovakia','سلوفاكيا','Slovakia','421','SK','703','الجمهورية السلوفاكية',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SVN','Slovenia','سلوفينيا','Slovenia','386','SI','705','جمهورية سلوفينيا',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SWE','Sweden','السويد','Sweden','46','SE','752','مملكة السويد',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SWZ','Swaziland','سوازيلند','Swaziland','268','SZ','748','مملكة سوازيلند',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SXM','Sint Maarten','سانت مارتن','Sint Maarten (Dutch part)','1-721','SX','534','Sint Maarten (Dutch part)',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SYC','Seychelles','سيشيل','Seychelles','248','SC','690','جمهورية سيشيل',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('SYR','Syria','الجمهورية العربية السورية','Syrian Arab Republic','963','SY','760','الجمهورية العربية السورية',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('TCA','Turks & Caicos Islands','جزر تركس وكايكوس','Turks and Caicos Islands','1-649','TC','796','Turks and Caicos Islands',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('TCD','Chad','تشاد','Chad','235','TD','148','جمهورية تشاد',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('TGO','Togo','توغو','Togo','228','TG','768','جمهورية توغو',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('THA','Thailand','تايلند','Thailand','66','TH','764','مملكة تايلند',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('TJK','Tajikistan','طاجيكستان','Tajikistan','992','TJ','762','جمهورية طاجيكستان',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('TKL','Tokelau','توكيلاو','Tokelau','690','TK','772','Tokelau',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('TKM','Turkmenistan','تركمانستان','Turkmenistan','993','TM','795','تركمانستان',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('TLS','Timor-Leste','تيمور- ليشتي','Timor-Leste','670','TL','626','جمهورية تيمور - ليشتي الديمقراطية',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('TON','Tonga','تونغا','Tonga','676','TO','776','مملكة تونغا',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('TTO','Trinidad & Tobago','ترينيداد وتوباغو','Trinidad and Tobago','1-868','TT','780','جمهورية ترينيداد وتوباغو',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('TUN','Tunisia','تونس','Tunisia','216','TN','788','الجمهورية التونسية',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('TUR','Turkey','تركيا','Turkey','90','TR','792','جمهورية تركيا',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('TUV','Tuvalu','توفالو','Tuvalu','688','TV','798','توفالو',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('TWN','Taiwan','تايون',NULL,'886','TW','158',NULL,NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('TZA','Tanzania','جمهورية تنزانيا المتحدة','United Republic of Tanzania','255','TZ','834','جمهورية تنزانيا المتحدة',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('UGA','Uganda','أوغندا','Uganda','256','UG','800','جمهورية أوغندا',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('UKR','Ukraine','أوكرانيا','Ukraine','380','UA','804','أوكرانيا',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('UMI','U.S. Outlying Islands','نائية التابعة للولايات المتحدة','United States Minor Outlying Islands',NULL,'UM','581','United States Minor Outlying Islands',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('URY','Uruguay','أوروغواي','Uruguay','598','UY','858','جمهورية أوروغواي الشرقية',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('USA','US','الولايات المتحدة الأمريكية','United States of America','1','US','840','الولايات المتحدة الأمريكية',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('UZB','Uzbekistan','أوزبكستان','Uzbekistan','998','UZ','860','جمهورية أوزبكستان',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('VAT','Vatican City','الكرسي الرسولي','Holy See','39-06','VA','336','الكرسي الرسولي',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('VCT','St. Vincent & Grenadines','سانت فنسنت وجزر غرينادين','Saint Vincent and the Grenadines','1-784','VC','670','سانت فنسنت وجزر غرينادين',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('VEN','Venezuela','فنزويلا (جمهورية - البوليفارية)','Venezuela (Bolivarian Republic of)','58','VE','862','جمهورية فنزويلا البوليفارية',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('VGB','British Virgin Islands','جزر فرجن البريطانية','British Virgin Islands','1-284','VG','092','British Virgin Islands',NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19'),('VIR','U.S. Virgin Islands','جزر فرجن التابعة للولايات المتحدة','United States Virgin Islands','1-340','VI','850','United States Virgin Islands',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('VNM','Vietnam','فييت نام','Viet Nam','84','VN','704','جمهورية فييت نام الاشتراكية',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('VUT','Vanuatu','فانواتو','Vanuatu','678','VU','548','جمهورية فانواتو',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('WLF','Wallis & Futuna','جزر واليس وفوتونا','Wallis and Futuna Islands','681','WF','876','Wallis and Futuna Islands',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('WSM','Samoa','ساموا','Samoa','685','WS','882','دولة ساموا المستقلة',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('YEM','Yemen','اليمن','Yemen','967','YE','887','الجمهورية اليمنية',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('ZAF','South Africa','جنوب أفريقيا','South Africa','27','ZA','710','جمهورية جنوب أفريقيا',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('ZMB','Zambia','زامبيا','Zambia','260','ZM','894','جمهورية زامبيا',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20'),('ZWE','Zimbabwe','زمبابوي','Zimbabwe','263','ZW','716','جمهورية زمبابوي',NULL,'2020-10-12 09:25:20','2020-10-12 09:25:20');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feild_type`
--

DROP TABLE IF EXISTS `feild_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feild_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feild_type`
--

LOCK TABLES `feild_type` WRITE;
/*!40000 ALTER TABLE `feild_type` DISABLE KEYS */;
INSERT INTO `feild_type` VALUES (1,'text',NULL,NULL),(2,'email',NULL,NULL),(3,'date',NULL,NULL),(4,'gender',NULL,NULL),(5,'country',NULL,NULL),(6,'image',NULL,NULL);
/*!40000 ALTER TABLE `feild_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (364,'2014_10_12_000000_create_users_table',1),(365,'2014_10_12_100000_create_password_resets_table',1),(366,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(367,'2019_08_19_000000_create_failed_jobs_table',1),(368,'2019_12_14_000001_create_personal_access_tokens_table',1),(369,'2020_10_10_052446_create_sessions_table',1),(370,'2020_10_10_055141_create_sections_table',1),(371,'2020_10_10_055201_create_questions_table',1),(372,'2020_10_10_055259_create_question_answers_table',1),(373,'2020_10_10_141404_create_feild_type_table',1),(374,'2020_10_10_153007_create_countries_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_answers`
--

DROP TABLE IF EXISTS `question_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_answers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `section_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_answers`
--

LOCK TABLES `question_answers` WRITE;
/*!40000 ALTER TABLE `question_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `question_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` int(11) NOT NULL,
  `feild_type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'obaida name',1,1,'2020-10-12 09:25:43','2020-10-12 09:25:43'),(2,'data of birth',1,3,'2020-10-12 09:25:56','2020-10-12 09:25:56'),(3,'images',1,6,'2020-10-12 09:26:09','2020-10-12 09:26:09');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `closed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,'obaida',NULL,'2020-10-12 09:25:33','2020-10-12 09:25:33');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('0o1M6YKDqKpSBvOGXKkOqPWhZujELXPFBLHGW9LL',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFVqSWVFQ01ma3NGUU9MZEdJQnVnUm9FeWxDRjhXdTN6bDlJbk9MayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1602505595),('7TSw6fmfe57xs0TyDuKmdu1Z6hle0PFARZc4xhY5',1,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0','YTo2OntzOjY6Il90b2tlbiI7czo0MDoibHg4V1UzU3d5S2NwWVR5Y0RRc29iUTdocXExbFVBMWptTnBBUUtJWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9xdWVzdGlvbm5haXJlL29iYWlkYSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRoRHdnSGt1RWE0bGRXYlNkZU95Nm5Pa1ZDeDdEalJFSC93cDVzb2t1aWF2RWVsejZ4T2N2MiI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkaER3Z0hrdUVhNGxkV2JTZGVPeTZuT2tWQ3g3RGpSRUgvd3A1c29rdWlhdkVlbHo2eE9jdjIiO30=',1602507162),('Pj1tN900ck10AaXMXiGWL9xwbLn59rKbdPdxJuPn',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWRwN2NlM0hYY3l6WXczVkl6clBEOWpyMldLc0RHd0M4M3NPU2UxYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1602505595);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','a@a.com',NULL,'$2y$10$hDwgHkuEa4ldWbSdeOy6nOkVCx7DjREH/wp5sokuiavEelz6xOcv2',NULL,NULL,NULL,NULL,NULL,'2020-10-12 09:25:19','2020-10-12 09:25:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-12 16:27:05
