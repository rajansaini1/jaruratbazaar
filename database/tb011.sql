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
  `userConfirmationLink` varchar(200) NOT NULL,
  `userOtp` varchar(200) NOT NULL,
  `userOtpTime` varchar(200) NOT NULL,
  `userToken` varchar(200) NOT NULL,
  PRIMARY KEY (`userEmail`),
  KEY `bazaarapp_usersignup_roleid_id_9b39aed9_fk_bazaarapp` (`roleid_id`),
  CONSTRAINT `bazaarapp_usersignup_roleid_id_9b39aed9_fk_bazaarapp` FOREIGN KEY (`roleid_id`) REFERENCES `bazaarapp_userrole` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.bazaarapp_usersignup: ~6 rows (approximately)
/*!40000 ALTER TABLE `bazaarapp_usersignup` DISABLE KEYS */;
INSERT INTO `bazaarapp_usersignup` (`userName`, `userEmail`, `userMobile`, `userPassword`, `userAddress`, `userCity`, `userGender`, `userPinCode`, `userDob`, `userState`, `isActive`, `isAvailable`, `isQueue`, `isVerified`, `roleid_id`, `userConfirmationLink`, `userOtp`, `userOtpTime`, `userToken`) VALUES
	('', '', '', 'pbkdf2_sha256$100000$bRqIys9hPhrl$oHctQHiVpIYIsMnpHsRUqnzFaE7A73Vv/oLRH0g4A4c=', '', '', '', '', '', '', 1, 1, 0, 0, 2, '', 'v59569T', '2019-10-09 10:39:11.394804', ''),
	('jagat', 'jagatpreet1997@gmail.com', '7015800169', 'pbkdf2_sha256$100000$5ZEXAU4NukGs$xWMc6nqZpOgU7VNltVcPijpkKAgOzQIPDRtI0hdstM8=', 'bathinda', 'ynr', 'male', '133103', '20/04/1997', 'haryana', 1, 1, 0, 0, 2, '', 'w55333m', '2019-10-09 22:04:25.377098', 'w55333m'),
	('rajan', 'kolishnitin@gmail.com', '7015800169', 'pbkdf2_sha256$100000$B6YWwGED1whM$yBZ+ujveNEWF2bzZa5gPJKPZ+B0S8pDZSA6G6b8gQUk=', 'mfd', 'chd', 'male', '133103', '20/04/1997', 'haryana', 1, 1, 0, 0, 2, 'http://127.0.0.1.8000/verifyuser/?email=kolishnitin@gmail.com&token=f19511H', 'f19511H', '2019-10-11 08:55:57.627608', 'f19511H'),
	('nitin', 'mee@gmail.com', '7015800169', 'pbkdf2_sha256$100000$TxrmB7SI2LG0$WULshJCkXmsh8ny59+jxmElwbNw7WOXdZLN3qC/yOtk=', 'mfd', 'ambaala', 'MALE', '133103', '20/04/1997', 'haryana', 1, 1, 0, 0, 2, 'http://127.0.0.1.8000/verifyuser/?email=mee@gmail.com&token=R89971x', 'R89971x', '2019-10-11 08:51:16.260572', 'R89971x'),
	('rajan', 'rajanynrsaini@gmail.com', '7015800169', 'pbkdf2_sha256$100000$pHQ4iBXm6PyG$qmIeh6ds+ZnJXdKQA2sC+4HbSklsyTYpzHRL/UPZ0qA=', 'ambli hvht', 'chd', 'male', '135001', '19/08/1999', 'haryana', 1, 1, 0, 0, 2, 'http://127.0.0.1.8000/verifyuser/?email=rajanynrsaini@gmail.com&token=L65708U', 'L65708U', '2019-10-10 09:06:25.360822', 'L65708U'),
	('manraj', 'sainimanraj01@gmail.com', '8221045555', 'pbkdf2_sha256$100000$vv1ao2zZOXCo$DiG4/KjIzncoQOMcmj1th0ks3p5WyQpejnexCQ1mr7E=', 'tk', 'ambala', 'male', '133100', '12/05/1997', 'himachal', 1, 1, 0, 0, 2, 'http://127.0.0.1.8000/verifyuser/?email=sainimanraj01@gmail.com&token=F64680j', 'F64680j', '2019-10-10 18:29:13.610274', 'F64680j'),
	('rajan', 'tusahrsaini503@gmail.com', '7015800169', 'pbkdf2_sha256$100000$jqt4TrOrceHj$ToKbisnKJbjxa/ZhHqbUcq/GnUZK853jIwOGHn4HG90=', 'sarswati', 'ynr', 'male', '133103', '20/04/1997', 'haryana', 1, 1, 0, 0, 2, '', 'k70172Y', '2019-10-09 12:50:03.849506', 'k70172Y'),
	('tushar', 'tusharsaini@gmail.com', '7015800169', 'pbkdf2_sha256$100000$9xoMExU9pvPJ$uSM+WHfsHOxgp6yJopDLYS8djknKvsIbEamvDFmWqFo=', 'mfd', 'ambaala', 'male', '133103', '19/08/1999', 'haryana', 1, 1, 0, 0, 2, '', 'y14228N', '2019-10-09 10:43:14.203276', '');
/*!40000 ALTER TABLE `bazaarapp_usersignup` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
