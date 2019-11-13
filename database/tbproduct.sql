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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.managerapp_products: ~20 rows (approximately)
/*!40000 ALTER TABLE `managerapp_products` DISABLE KEYS */;
INSERT INTO `managerapp_products` (`product_id`, `product_name`, `product_description`, `product_size`, `product_size2`, `product_size3`, `product_size4`, `product_qty`, `product_price`, `product_image1`, `product_image2`, `product_image3`, `product_image4`, `product_isactive`, `product_creation_date`, `brand_id`, `productcategory_id`, `productstype_id`, `user_email_id`) VALUES
	(32, 'Boy\'Hoodie', 'Boy\'s Hoodie', 'S', 'M', 'L', 'XL', 4, 2200, 'boyhud.jpg', 'boyhud2.jpg', 'boyhud3.jpg', 'boyhud4.jpg', 1, '2019-11-07 22:03:38.815317', 11, 9, 7, 'sainimanraj01@gmail.com'),
	(33, 'Shirt', 'Shirt', 'S', 'M', 'L', 'XL', 4, 1200, 'shirt.jpg', 'shirt2.jpg', 'shirt3.jpg', 'shitr4.jpg', 1, '2019-11-07 22:05:06.291827', 10, 9, 7, 'sainimanraj01@gmail.com'),
	(34, 'Shoes', 'Shoes', '5', '6', '7', '8', 5, 2500, 'blackshoes.jpg', 'blackshoes2.jpg', 'blackshoes3.jpg', 'blackshoes4.jpg', 1, '2019-11-07 22:08:15.342108', 13, 9, 8, 'sainimanraj01@gmail.com'),
	(35, 'Sandal', 'Sandal', '4', '5', '6', '7', 3, 1500, 'sandal.jpg', 'sandal2.jpg', 'sandal3.jpg', 'sandal4.jpg', 1, '2019-11-07 22:13:02.020695', 32, 10, 10, 'sainimanraj01@gmail.com'),
	(37, 'Shoes', 'Shoes', '4', '6', '7', '8', 3, 3000, 'whiteshoes.jpg', 'whiteshoes2.jpg', 'whiteshoes3.jpg', 'whiteshoes4.jpg', 1, '2019-11-07 22:16:34.326365', 16, 9, 8, 'sainimanraj01@gmail.com'),
	(38, 'Gown', 'Gown', 'S', 'M', 'L', 'XL', 2, 1700, 'girl.jpg', 'girl2.jpg', 'girl3.jpg', 'girl4.jpg', 1, '2019-11-07 22:20:45.527724', 9, 10, 9, 'sainimanraj01@gmail.com'),
	(39, 'Helicopter', 'Helicopter', 'S', 'S', 'S', 'S', 10, 320, 'helicopter.jpg', 'helicopter2.jpg', 'helicopter3.jpg', 'helicopter4.jpg', 1, '2019-11-07 22:24:28.480756', 43, 11, 12, 'sainimanraj01@gmail.com'),
	(40, 'Barbie', 'Barbie', 'L', 'L', 'L', 'L', 5, 150, 'doll.jpg', 'doll2.jpg', 'doll3.jpg', 'doll4.jpg', 1, '2019-11-07 22:26:33.121533', 49, 11, 12, 'sainimanraj01@gmail.com'),
	(42, 'Saree', 'Saree', 'S', 'L', 'M', 'XL', 5, 4000, 'saree.jpg', 'saree1.jpg', 'saree2.jpg', 'saree3.jpg', 1, '2019-11-07 22:40:41.471020', 37, 10, 9, 'sainimanraj01@gmail.com'),
	(43, 'Top', 'Top', 'S', 'M', 'L', 'XL', 4, 600, 'girl5.jpg', 'girl6.jpg', 'girl7.jpg', 'girl8.jpg', 1, '2019-11-07 22:44:09.157994', 9, 10, 9, 'sainimanraj01@gmail.com'),
	(44, 'Kurta', 'Kurta', 'S', 'M', 'L', 'XL', 3, 2000, 'Kurta.jpg', 'kurta2.jpg', 'kurta3.jpg', 'kurta4.jpg', 1, '2019-11-07 22:46:05.214157', 19, 9, 7, 'sainimanraj01@gmail.com'),
	(45, 'T-Shirt', 'T-Shirt', 'S', 'M', 'L', 'XL', 4, 800, 'T-Shirt.jpg', 'T-Shirt2.jpg', 'T-Shirt3.jpg', 'T-Shirt4.jpg', 1, '2019-11-07 22:47:51.190034', 18, 9, 7, 'sainimanraj01@gmail.com'),
	(46, 'Boy\'Hoodie', 'Boy\'s Hoodie', 'S', 'M', 'L', 'XL', 8, 2500, 'whitehud.jpg', 'whitehud2.jpg', 'whitehud3.jpg', 'whitehud4.jpg', 1, '2019-11-07 22:52:21.221464', 22, 9, 7, 'sainimanraj01@gmail.com'),
	(48, 'Galaxy Note 7 Pro', '', '6.3 inch', '', '', '', 3, 17000, 'redminote7pro.jpg', 'redminote7pro2.jpg', 'redminote7pro3.jpg', 'redminote7pro4.jpg', 1, '2019-11-07 23:33:20.961946', 55, 12, 13, 'sainimanraj01@gmail.com'),
	(49, 'Redmi Y2', '', '5.99 inch', '', '', '', 3, 12000, 'redmiy2.jpg', 'redmiy22.jpg', 'redmiy23.jpg', 'remiy24.jpg', 1, '2019-11-07 23:35:32.803439', 55, 12, 13, 'sainimanraj01@gmail.com'),
	(50, 'Samsung A20', '', '6.4 inch', '', '', '', 4, 16000, 'A20.jpg', 'A202.jpg', 'A203.jpg', 'A204.jpg', 1, '2019-11-07 23:37:24.486496', 54, 12, 13, 'sainimanraj01@gmail.com'),
	(51, 'Xiaomi Redmi 8', '', '6.2 inch', '', '', '', 2, 18000, 'redmi8.jpg', 'redmi82.jpg', 'redmi83.jpg', 'redmi84.jpg', 1, '2019-11-07 23:39:44.555284', 55, 12, 13, 'sainimanraj01@gmail.com'),
	(52, 'Samsung A50', '', '7.7mm', '', '', '', 2, 22000, 'A50 .jpg', 'A502.jpg', 'A503.jpg', 'A504.jpg', 1, '2019-11-07 23:42:37.168576', 54, 12, 13, 'sainimanraj01@gmail.com'),
	(59, 'testing', 'testing products', '4', '5', '5', '7', 88, 13333, 'card1.jpg', 'thomas-kelley-JoH60FhTp50-unsplash.jpg', 'thomas-kelley-JoH60FhTp50-unsplash.jpg', 'card2.jpg', 1, '2019-11-11 09:56:11.426914', 17, 11, 11, 'tusharsaini503@gmail.com');
/*!40000 ALTER TABLE `managerapp_products` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
jaruratbazaardbmanagerapp_products