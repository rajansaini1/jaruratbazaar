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
  `userProfile` varchar(255) NOT NULL,
  `shopAadhar` varchar(255) NOT NULL,
  `shopAadharImage` varchar(255) NOT NULL,
  `shopAddress` varchar(255) NOT NULL,
  `shopGst` varchar(255) NOT NULL,
  `shopPan` varchar(255) NOT NULL,
  `shopPanImage` varchar(255) NOT NULL,
  PRIMARY KEY (`userEmail`),
  KEY `bazaarapp_usersignup_roleid_id_9b39aed9_fk_bazaarapp` (`roleid_id`),
  CONSTRAINT `bazaarapp_usersignup_roleid_id_9b39aed9_fk_bazaarapp` FOREIGN KEY (`roleid_id`) REFERENCES `bazaarapp_userrole` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.bazaarapp_usersignup: ~10 rows (approximately)
/*!40000 ALTER TABLE `bazaarapp_usersignup` DISABLE KEYS */;
INSERT INTO `bazaarapp_usersignup` (`userName`, `userEmail`, `userMobile`, `userPassword`, `userAddress`, `userCity`, `userGender`, `userPinCode`, `userDob`, `userState`, `isActive`, `isAvailable`, `isQueue`, `isVerified`, `roleid_id`, `userConfirmationLink`, `userOtp`, `userOtpTime`, `userToken`, `userProfile`, `shopAadhar`, `shopAadharImage`, `shopAddress`, `shopGst`, `shopPan`, `shopPanImage`) VALUES
	('', '', '', '', '', '', '', '', '', '', 1, 1, 0, 0, 2, '', '', '', '', '', '', '', '', '', '', ''),
	('jagat', 'jagatpreet1997@gmail.com', '7015800169', 'pbkdf2_sha256$100000$5ZEXAU4NukGs$xWMc6nqZpOgU7VNltVcPijpkKAgOzQIPDRtI0hdstM8=', 'bathinda', 'ynr', 'male', '133103', '20/04/1997', 'haryana', 1, 1, 0, 0, 2, '', 'w55333m', '2019-10-09 22:04:25.377098', 'w55333m', '', '', '', '', '', '', ''),
	('rajan', 'kolishnitin@gmail.com', '7015800169', 'pbkdf2_sha256$100000$B6YWwGED1whM$yBZ+ujveNEWF2bzZa5gPJKPZ+B0S8pDZSA6G6b8gQUk=', 'mfd', 'chd', 'male', '133103', '20/04/1997', 'haryana', 1, 1, 0, 0, 2, 'http://127.0.0.1.8000/verifyuser/?email=kolishnitin@gmail.com&token=f19511H', 'f19511H', '2019-10-11 08:55:57.627608', 'f19511H', '', '', '', '', '', '', ''),
	('nitin', 'mee@gmail.com', '7015800169', 'pbkdf2_sha256$100000$TxrmB7SI2LG0$WULshJCkXmsh8ny59+jxmElwbNw7WOXdZLN3qC/yOtk=', 'mfd', 'ambaala', 'MALE', '133103', '20/04/1997', 'haryana', 1, 1, 0, 0, 2, 'http://127.0.0.1.8000/verifyuser/?email=mee@gmail.com&token=R89971x', 'R89971x', '2019-10-11 08:51:16.260572', 'R89971x', '', '', '', '', '', '', ''),
	('rajan', 'rajanynrsaini@gmail.com', '5555555', 'pbkdf2_sha256$100000$meppHPqGmFBK$eKxs/HGLbZZ/VvurmTSD4Hl6YrAGnQHcBeJFQCuELjI=', 'jfy', 'tyguyfu', 'kuguy', 'iugugy', 'biug', 'Haryana', 1, 1, 0, 1, 2, '', 'P34954E', '2019-11-04 11:22:47.194310', '', 'card1.jpg', '', '', '', '', '', ''),
	('Bharti', 'rajputbharti010@gmail.com', '8626873387', 'pbkdf2_sha256$100000$rMlZP6VjXRJJ$RXAh01dcK7z3Z1KPTlkm8dxJAjdvfcIFMuoc/q/CQW8=', 'Sardhwar', 'Mandi', 'Female', '175023', '1999-05-05', 'Himachal Pradesh', 1, 1, 0, 1, 2, '', 'N93483c', '2019-11-23 13:26:50.737222', '', 'dhiva-krishna-X16zXcbxU4U-unsplash.jpg', '', '', '', '', '', ''),
	('rajan', 'sainimanraj01@gmail.com', '7015817165', 'pbkdf2_sha256$100000$6oiUCxMTJwHd$jVxnWLQB5eBLH/de0WlBWPlWWEoE2fXHBMtrHNRZ7ic=', 'ambli', 'ambaala', 'male', '133103', '20/04/1997', 'haryana', 1, 1, 0, 1, 1, '', 'K15606m', '2019-10-14 11:18:01.856641', '', '', '', '', '', '', '', ''),
	('jkasau', 'tusahrsaini503@gmail.com', '784575', 'pbkdf2_sha256$100000$hPWhie5ydm3g$f5BpcJGr6Pt3/lSd6FxrjL0MBiREDuGvm2eWJYPES7M=', 'ggh', 'kh', 'hh', '234', '4567', 'bhh', 1, 1, 0, 0, 2, 'http://127.0.0.1.8000/verifyuser/?email=tusahrsaini503@gmail.com&token=D40384Q', 'D40384Q', '2019-10-11 10:59:34.272071', 'D40384Q', '', '', '', '', '', '', ''),
	('tushar', 'tusharsaini503@gmail.com', '9518800699', 'pbkdf2_sha256$100000$KXSSlZmgf7Qj$RIo8o+u0lkN2dqjvj4rHxRj4NaTkBrLyrqjrtgbr09Y=', 'mfd', 'ynrrrrr', 'male', '133103', '20/04/1997', 'Haryana', 1, 1, 0, 1, 3, '', 'U82694U', '2019-11-04 11:28:43.307303', '', 'card2.jpg', '88448848', 'task.jpg', 'saraswati', '95498489', '54954984984', 'slide7.jpg'),
	('tushar', 'tusharsaini@gmail.com', '7015800169', 'pbkdf2_sha256$100000$9xoMExU9pvPJ$uSM+WHfsHOxgp6yJopDLYS8djknKvsIbEamvDFmWqFo=', 'mfd', 'ambaala', 'male', '133103', '19/08/1999', 'haryana', 1, 1, 0, 0, 2, '', 'y14228N', '2019-10-09 10:43:14.203276', '', '', '', '', '', '', '', '');
/*!40000 ALTER TABLE `bazaarapp_usersignup` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
