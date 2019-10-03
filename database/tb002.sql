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


-- Dumping database structure for jaruratbazaardb
CREATE DATABASE IF NOT EXISTS `jaruratbazaardb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jaruratbazaardb`;

-- Dumping structure for table jaruratbazaardb.bazaarapp_usersignup
CREATE TABLE IF NOT EXISTS `bazaarapp_usersignup` (
  `userName` varchar(200) NOT NULL,
  `userEmail` varchar(200) NOT NULL,
  `userMobile` varchar(10) NOT NULL,
  `userPassword` varchar(200) NOT NULL,
  `userAddress` varchar(200) NOT NULL,
  `userCity` varchar(200) NOT NULL,
  `userGender` varchar(10) NOT NULL,
  `userPinCode` varchar(200) NOT NULL,
  `userDob` varchar(200) NOT NULL,
  `userState` varchar(200) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `isAvailable` tinyint(1) NOT NULL,
  `isQueue` tinyint(1) NOT NULL,
  `isVerified` tinyint(1) NOT NULL,
  `roleid_id` int(11) NOT NULL,
  PRIMARY KEY (`userEmail`),
  KEY `bazaarapp_usersignup_roleid_id_9b39aed9_fk_bazaarapp` (`roleid_id`),
  CONSTRAINT `bazaarapp_usersignup_roleid_id_9b39aed9_fk_bazaarapp` FOREIGN KEY (`roleid_id`) REFERENCES `bazaarapp_userrole` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.bazaarapp_usersignup: ~0 rows (approximately)
/*!40000 ALTER TABLE `bazaarapp_usersignup` DISABLE KEYS */;
/*!40000 ALTER TABLE `bazaarapp_usersignup` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
