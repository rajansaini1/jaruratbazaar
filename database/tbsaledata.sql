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

-- Dumping structure for table jaruratbazaardb.bazaarapp_saledatatable
CREATE TABLE IF NOT EXISTS `bazaarapp_saledatatable` (
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
  `invoice` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `comapany_name` varchar(255) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `apartment_address` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `order_notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.bazaarapp_saledatatable: ~12 rows (approximately)
/*!40000 ALTER TABLE `bazaarapp_saledatatable` DISABLE KEYS */;
INSERT INTO `bazaarapp_saledatatable` (`table_id`, `email`, `first_name`, `last_name`, `product_id`, `product_name`, `product_disc`, `product_size`, `product_image`, `product_qty`, `product_price`, `total`, `invoice`, `country`, `comapany_name`, `street_address`, `apartment_address`, `state`, `zip`, `phone`, `order_notes`) VALUES
	(1, 'rajanynrsaini@gmail.com', 'rajan', 'rajan', '70', 'Men Clothing', 'Men Yellow Solid Padded Jacket', 'XL', 'yjacket.jpg', '3', '2525', '', '', '', 'ProductsBrand object (21)', 'jfy', 'jfy', 'Haryana', 'iugugy', '5555555', ''),
	(2, 'rajanynrsaini@gmail.com', 'rajan', 'rajan', '70', 'Men Clothing', 'Men Yellow Solid Padded Jacket', 'XL', 'yjacket.jpg', '3', '2525', '', '', '', 'ProductsBrand object (21)', 'jfy', 'jfy', 'Haryana', 'iugugy', '5555555', ''),
	(3, 'rajanynrsaini@gmail.com', 'rajan', 'rajan', '70', 'Men Clothing', 'Men Yellow Solid Padded Jacket', 'XL', 'yjacket.jpg', '3', '2525', '', '', '', 'ProductsBrand object (21)', 'jfy', 'jfy', 'Haryana', 'iugugy', '5555555', ''),
	(4, 'rajanynrsaini@gmail.com', 'rajan', 'rajan', '98', 'Plastic Toys', 'Multicolor Ractangular pieces', '', 'toy1.jpg', '6', '299', '', '', '', 'ProductsBrand object (19)', 'jfy', 'jfy', 'Haryana', 'iugugy', '5555555', ''),
	(5, 'rajanynrsaini@gmail.com', 'rajan', 'rajan', '34', 'Shoes', 'Shoes', '8', 'blackshoes.jpg', '5', '2500', '', '', '', 'ProductsBrand object (13)', 'jfy', 'jfy', 'Haryana', 'iugugy', '5555555', ''),
	(6, 'rajanynrsaini@gmail.com', 'rajan', 'rajan', '44', 'Kurta', 'Kurta', 'XL', 'Kurta.jpg', '3', '2000', '', '', '', 'ProductsBrand object (19)', 'jfy', 'jfy', 'Haryana', 'iugugy', '5555555', ''),
	(7, 'rajanynrsaini@gmail.com', 'rajan', 'rajan', '43', 'Top', 'Top', 'XL', 'girl5.jpg', '4', '600', '', '', '', 'ProductsBrand object (9)', 'jfy', 'jfy', 'Haryana', 'iugugy', '5555555', ''),
	(8, 'rajanynrsaini@gmail.com', 'rajan', 'rajan', '95', 'Wireless Mic', 'MOHANKHEDA Ws 858 Wireless Mic Recording High Sensitive Microphone Speaker for Smartphones Assorted color', '', 'mic.jpg', '5', '999', '', '', '', 'ProductsBrand object (54)', 'jfy', 'jfy', 'Haryana', 'iugugy', '5555555', ''),
	(9, 'rajanynrsaini@gmail.com', 'rajan', 'rajan', '37', 'Shoes', 'Shoes', '8', 'whiteshoes.jpg', '3', '3000', '', '', '', 'ProductsBrand object (16)', 'jfy', 'jfy', 'Haryana', 'iugugy', '5555555', ''),
	(10, 'rajanynrsaini@gmail.com', 'rajan', 'rajan', '92', 'LED  TV ', 'Samsung 58 cm (23 inches) 23H4003 HD Ready LED TV (Black)', '', 'led.jpg', '5', '15500', '', '', '', 'ProductsBrand object (54)', 'jfy', 'jfy', 'Haryana', 'iugugy', '5555555', ''),
	(11, 'rajanynrsaini@gmail.com', 'rajan', 'rajan', '97', 'Smart Fitness Band', 'Smart Fitness Band ID152 Activity Tracker Fitness Watch Heart Rate Monitor Sleep Monitor Waterproof IP68 Smart Watch Bands Calories Counter Step Tracker Pedometer Watch for Women Men Kid', '', 'watch.jpg', '4', '2299', '9196', '', '', 'ProductsBrand object (55)', 'jfy', 'jfy', 'Haryana', 'iugugy', '5555555', ''),
	(12, 'rajputbharti010@gmail.com', 'Bharti', 'Bharti', '80', 'Girl\'s Dress', 'Women Black & Mustard Yellow Solid Kurta with Trousers & Bhagalpuri Print Dupatta', 'XS', 'plazzo.jpg', '3', '3800', '11400', '', '', 'ProductsBrand object (40)', 'Sardhwar', 'Sardhwar', 'Himachal Pradesh', '175023', '8626873387', '');
/*!40000 ALTER TABLE `bazaarapp_saledatatable` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
