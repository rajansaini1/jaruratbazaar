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

-- Dumping structure for table jaruratbazaardb.managerapp_products
CREATE TABLE IF NOT EXISTS `managerapp_products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `product_size` varchar(255) DEFAULT NULL,
  `product_size2` varchar(255) DEFAULT NULL,
  `product_size3` varchar(255) DEFAULT NULL,
  `product_size4` varchar(255) DEFAULT NULL,
  `product_qty` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_image1` varchar(255) NOT NULL,
  `product_image2` varchar(255) DEFAULT NULL,
  `product_image3` varchar(255) DEFAULT NULL,
  `product_image4` varchar(255) DEFAULT NULL,
  `product_isactive` tinyint(1) NOT NULL,
  `product_creation_date` varchar(255) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `productcategory_id` int(11) NOT NULL,
  `productstype_id` int(11) NOT NULL,
  `user_email_id` varchar(200) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `managerapp_products_brand_id_cd103159_fk_managerap` (`brand_id`),
  KEY `managerapp_products_productcategory_id_1f66a185_fk_managerap` (`productcategory_id`),
  KEY `managerapp_products_productstype_id_be466a2c_fk_managerap` (`productstype_id`),
  KEY `managerapp_products_user_email_id_a2fb0b97_fk_bazaarapp` (`user_email_id`),
  CONSTRAINT `managerapp_products_user_email_id_a2fb0b97_fk_bazaarapp` FOREIGN KEY (`user_email_id`) REFERENCES `bazaarapp_usersignup` (`userEmail`),
  CONSTRAINT `managerapp_products_brand_id_cd103159_fk_managerap` FOREIGN KEY (`brand_id`) REFERENCES `managerapp_productsbrand` (`brand_id`),
  CONSTRAINT `managerapp_products_productcategory_id_1f66a185_fk_managerap` FOREIGN KEY (`productcategory_id`) REFERENCES `managerapp_productscategories` (`categories_id`),
  CONSTRAINT `managerapp_products_productstype_id_be466a2c_fk_managerap` FOREIGN KEY (`productstype_id`) REFERENCES `managerapp_productstype` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.managerapp_products: ~1 rows (approximately)
/*!40000 ALTER TABLE `managerapp_products` DISABLE KEYS */;
INSERT INTO `managerapp_products` (`product_id`, `product_name`, `product_description`, `product_size`, `product_size2`, `product_size3`, `product_size4`, `product_qty`, `product_price`, `product_image1`, `product_image2`, `product_image3`, `product_image4`, `product_isactive`, `product_creation_date`, `brand_id`, `productcategory_id`, `productstype_id`, `user_email_id`) VALUES
	(12, 'shoes', 'new shoes', '7', '8', '9', '10', 55, 2300, 'card2.jpg', 'card1.jpg', 'running.jpg', 'harley.jpg', 1, '2019-11-06 09:49:56.822583', 2, 1, 2, 'sainimanraj01@gmail.com');
/*!40000 ALTER TABLE `managerapp_products` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
jaruratbazaardbmanagerapp_products