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

-- Dumping structure for table jaruratbazaardb.managerapp_productsbrand
CREATE TABLE IF NOT EXISTS `managerapp_productsbrand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_Name` varchar(250) NOT NULL,
  `brand_isActive` tinyint(1) NOT NULL,
  PRIMARY KEY (`brand_id`),
  UNIQUE KEY `brand_Name` (`brand_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.managerapp_productsbrand: ~47 rows (approximately)
/*!40000 ALTER TABLE `managerapp_productsbrand` DISABLE KEYS */;
INSERT INTO `managerapp_productsbrand` (`brand_id`, `brand_Name`, `brand_isActive`) VALUES
	(9, 'Tommy Hilfiger', 1),
	(10, 'Calvin Klein', 1),
	(11, 'Hugo Boss', 1),
	(12, 'Puma', 1),
	(13, 'Addidas', 1),
	(16, 'Nike', 1),
	(17, 'Gucci', 1),
	(18, 'Levi\'s Strauss', 1),
	(19, 'Prada', 1),
	(20, 'Buckle', 1),
	(21, 'Zara', 1),
	(22, 'Levis', 1),
	(23, 'Bombay Selection', 1),
	(24, 'Paragon', 1),
	(25, 'Bata', 1),
	(26, 'Catwalk', 1),
	(28, 'Crocs', 1),
	(29, 'Metro', 1),
	(30, 'Aldo', 1),
	(31, 'Bruno Magli', 1),
	(32, 'Jimmy Choo', 1),
	(33, 'Berluti ', 1),
	(34, 'Dolce', 1),
	(35, 'Reebook', 1),
	(36, 'Kalanjali', 1),
	(37, 'Meena Bazaar', 1),
	(38, 'Deepam Silk', 1),
	(39, 'Hands of India', 1),
	(40, 'BharatSthali', 1),
	(41, 'Roopkatha', 1),
	(42, 'Gini & Jonny', 1),
	(43, 'Lilliput', 1),
	(45, 'Max', 1),
	(46, 'Mothercare', 1),
	(47, 'Little Kangaroos', 1),
	(48, 'Bbayhug', 1),
	(49, 'Disney ', 1),
	(50, 'Lego', 1),
	(51, 'Hasbro', 1),
	(52, 'Alex', 1),
	(53, 'Crayola', 1),
	(54, 'Samsung', 1),
	(55, 'Redmi', 1),
	(56, 'Vivo', 1),
	(57, 'Oppo', 1),
	(58, 'Apple', 1),
	(59, 'Asus', 1);
/*!40000 ALTER TABLE `managerapp_productsbrand` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
