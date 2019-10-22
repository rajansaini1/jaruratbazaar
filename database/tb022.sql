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

-- Dumping structure for table jaruratbazaardb.bazaarapp_loginrecord
CREATE TABLE IF NOT EXISTS `bazaarapp_loginrecord` (
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  `loginTime` varchar(255) DEFAULT NULL,
  `logoutTime` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `ipAddress` varchar(255) DEFAULT NULL,
  `macAddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.bazaarapp_loginrecord: ~2 rows (approximately)
/*!40000 ALTER TABLE `bazaarapp_loginrecord` DISABLE KEYS */;
INSERT INTO `bazaarapp_loginrecord` (`logid`, `loginTime`, `logoutTime`, `userEmail`, `ipAddress`, `macAddress`) VALUES
	(1, '', '', '', '', ''),
	(2, '', '', '', '', ''),
	(3, '2019-10-22 14:06:31.047413', '', 'rajanynrsaini@gmail.com', '', '');
/*!40000 ALTER TABLE `bazaarapp_loginrecord` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
