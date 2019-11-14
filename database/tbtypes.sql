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

-- Dumping structure for table jaruratbazaardb.managerapp_productstype
CREATE TABLE IF NOT EXISTS `managerapp_productstype` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_Name` varchar(250) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.managerapp_productstype: ~7 rows (approximately)
/*!40000 ALTER TABLE `managerapp_productstype` DISABLE KEYS */;
INSERT INTO `managerapp_productstype` (`type_id`, `type_Name`) VALUES
	(7, 'Men\'s Clothing'),
	(8, 'Men\'s Feetwear'),
	(9, 'Girl\'s Clothing'),
	(10, 'Girl\'s Feetwear'),
	(11, 'Kid\'s Clothing'),
	(12, 'Kid\'s Toys'),
	(13, 'Mobile'),
	(14, 'Kid\'s Feetwear');
/*!40000 ALTER TABLE `managerapp_productstype` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
