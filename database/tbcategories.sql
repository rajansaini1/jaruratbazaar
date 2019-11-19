-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.48 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5222
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table jaruratbazaardb.managerapp_productscategories
CREATE TABLE IF NOT EXISTS `managerapp_productscategories` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_Name` varchar(250) NOT NULL,
  PRIMARY KEY (`categories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.managerapp_productscategories: ~4 rows (approximately)
/*!40000 ALTER TABLE `managerapp_productscategories` DISABLE KEYS */;
INSERT INTO `managerapp_productscategories` (`categories_id`, `categories_Name`) VALUES
	(9managerapp_productscategories, 'Men'),
	(10, 'Women'),
	(11, 'Kids & Baby'),
	(12, 'Electronics');
/*!40000 ALTER TABLE `managerapp_productscategories` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
jjaruratbazaardbaruratbazaardb