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

-- Dumping structure for table jaruratbazaardb.bazaarapp_tempdatatable
CREATE TABLE IF NOT EXISTS `bazaarapp_tempdatatable` (
  `table_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_disc` varchar(255) DEFAULT NULL,
  `product_size` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_qty` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `comapany_name` varchar(255) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `apartment_address` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `order_notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.bazaarapp_tempdatatable: ~1 rows (approximately)
/*!40000 ALTER TABLE `bazaarapp_tempdatatable` DISABLE KEYS */;
INSERT INTO `bazaarapp_tempdatatable` (`table_id`, `email`, `first_name`, `last_name`, `product_id`, `product_name`, `product_disc`, `product_size`, `product_image`, `product_qty`, `product_price`, `total`, `country`, `comapany_name`, `street_address`, `apartment_address`, `state`, `zip`, `phone`, `order_notes`) VALUES
	(68, 'rajanynrsaini@gmail.com', 'rajan', 'rajan', '37', 'Shoes', 'Shoes', '8', 'whiteshoes.jpg', '3', '3000', '', '', 'ProductsBrand object (16)', 'jfy', 'jfy', 'Haryana', 'iugugy', '5555555', ''),
	(70, 'rajanynrsaini@gmail.com', 'rajan', 'rajan', '98', 'Plastic Toys', 'Multicolor Ractangular pieces', '', 'toy1.jpg', '6', '299', '', '', 'ProductsBrand object (19)', 'jfy', 'jfy', 'Haryana', 'iugugy', '5555555', '');
/*!40000 ALTER TABLE `bazaarapp_tempdatatable` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
bazaarapp_tempdatatable