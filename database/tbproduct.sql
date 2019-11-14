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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.managerapp_products: ~19 rows (approximately)
/*!40000 ALTER TABLE `managerapp_products` DISABLE KEYS */;
INSERT INTO `managerapp_products` (`product_id`, `product_name`, `product_description`, `product_size`, `product_size2`, `product_size3`, `product_size4`, `product_qty`, `product_price`, `product_image1`, `product_image2`, `product_image3`, `product_image4`, `product_isactive`, `product_creation_date`, `brand_id`, `productcategory_id`, `productstype_id`, `user_email_id`) VALUES
	(32, 'Boy\'Hoodie', 'Boy\'s Hoodie', 'S', 'M', 'L', 'XL', 5, 2200, 'boyhud.jpg', 'boyhud2.jpg', 'boyhud3.jpg', 'boyhud4.jpg', 1, '2019-11-07 22:03:38.815317', 11, 9, 7, 'sainimanraj01@gmail.com'),
	(33, 'Shirt', 'Shirt', 'S', 'M', 'L', 'XL', 4, 1200, 'shirt.jpg', 'shirt2.jpg', 'shirt3.jpg', 'shitr4.jpg', 1, '2019-11-07 22:05:06.291827', 10, 9, 7, 'sainimanraj01@gmail.com'),
	(34, 'Shoes', 'Shoes', '5', '6', '7', '8', 5, 2500, 'blackshoes.jpg', 'blackshoes2.jpg', 'blackshoes3.jpg', 'blackshoes4.jpg', 1, '2019-11-07 22:08:15.342108', 13, 9, 8, 'sainimanraj01@gmail.com'),
	(35, 'Sandal', 'Sandal', '4', '5', '6', '7', 3, 1500, 'sandal.jpg', 'sandal2.jpg', 'sandal3.jpg', 'sandal4.jpg', 1, '2019-11-07 22:13:02.020695', 32, 10, 10, 'sainimanraj01@gmail.com'),
	(37, 'Shoes', 'Shoes', '4', '6', '7', '8', 3, 3000, 'whiteshoes.jpg', 'whiteshoes2.jpg', 'whiteshoes3.jpg', 'whiteshoes4.jpg', 1, '2019-11-07 22:16:34.326365', 16, 9, 8, 'sainimanraj01@gmail.com'),
	(38, 'Gown', 'Gown', 'S', 'M', 'L', 'XL', 2, 1700, 'girl.jpg', 'girl2.jpg', 'girl3.jpg', 'girl4.jpg', 1, '2019-11-07 22:20:45.527724', 9, 10, 9, 'sainimanraj01@gmail.com'),
	(39, 'Helicopter', 'Helicopter', 'S', 'S', 'S', 'S', 10, 320, 'helicopter.jpg', 'helicopter2.jpg', 'helicopter3.jpg', 'helicopter4.jpg', 1, '2019-11-07 22:24:28.480756', 43, 11, 12, 'sainimanraj01@gmail.com'),
	(40, 'Barbie', 'plastic doll ', 'medium', '', '', '', 5, 150, 'doll.jpg', 'doll2.jpg', 'doll3.jpg', 'doll4.jpg', 1, '2019-11-07 22:26:33.121533', 49, 11, 12, 'sainimanraj01@gmail.com'),
	(42, 'Saree', 'Saree', 'S', 'L', 'M', 'XL', 4, 4000, 'saree.jpg', 'saree1.jpg', 'saree2.jpg', 'saree3.jpg', 1, '2019-11-07 22:40:41.471020', 37, 10, 9, 'sainimanraj01@gmail.com'),
	(43, 'Top', 'Top', 'S', 'M', 'L', 'XL', 4, 600, 'girl5.jpg', 'girl6.jpg', 'girl7.jpg', 'girl8.jpg', 1, '2019-11-07 22:44:09.157994', 9, 10, 9, 'sainimanraj01@gmail.com'),
	(44, 'Kurta', 'Kurta', 'S', 'M', 'L', 'XL', 3, 2000, 'Kurta.jpg', 'kurta2.jpg', 'kurta3.jpg', 'kurta4.jpg', 1, '2019-11-07 22:46:05.214157', 19, 9, 7, 'sainimanraj01@gmail.com'),
	(45, 'T-Shirt', 'T-Shirt', 'S', 'M', 'L', 'XL', 4, 800, 'T-Shirt.jpg', 'T-Shirt2.jpg', 'T-Shirt3.jpg', 'T-Shirt4.jpg', 1, '2019-11-07 22:47:51.190034', 18, 9, 7, 'sainimanraj01@gmail.com'),
	(46, 'Boy\'Hoodie', 'Boy\'s Hoodie', 'S', 'M', 'L', 'XL', 8, 2500, 'whitehud.jpg', 'whitehud2.jpg', 'whitehud3.jpg', 'whitehud4.jpg', 1, '2019-11-07 22:52:21.221464', 22, 9, 7, 'sainimanraj01@gmail.com'),
	(48, 'Galaxy Note 7 Pro', '', '6.3 inch', '', '', '', 3, 17000, 'redminote7pro.jpg', 'redminote7pro2.jpg', 'redminote7pro3.jpg', 'redminote7pro4.jpg', 1, '2019-11-07 23:33:20.961946', 55, 12, 13, 'sainimanraj01@gmail.com'),
	(49, 'Redmi Y2', 'Redmi Y2 (Pink,4GB,64GB Internal)', '5.99 inch', '', '', '', 3, 12000, 'redmi-y2.jpg', 'redmiy2.jpg', 'redmiy23.jpg', 'remiy24.jpg', 1, '2019-11-07 23:35:32.803439', 55, 12, 13, 'sainimanraj01@gmail.com'),
	(50, 'Samsung A20', '', '6.4 inch', '', '', '', 4, 16000, 'A20.jpg', 'A202.jpg', 'A203.jpg', 'A204.jpg', 1, '2019-11-07 23:37:24.486496', 54, 12, 13, 'sainimanraj01@gmail.com'),
	(51, 'Xiaomi Redmi 8', '', '6.2 inch', '', '', '', 2, 18000, 'redmi8.jpg', 'redmi82.jpg', 'redmi83.jpg', 'redmi84.jpg', 1, '2019-11-07 23:39:44.555284', 55, 12, 13, 'sainimanraj01@gmail.com'),
	(62, 'Kids Dress', 'Unisex Yellow & Navy Blue Printed T-shirt with Dungarees', 'S', 'M', 'L', 'XL', 4, 550, 'ydress.jpg', 'ydress2.jpg', 'ydress3.jpg', 'ydress4.jpg', 1, '2019-11-14 09:33:12.405096', 47, 11, 11, 'tusharsaini503@gmail.com'),
	(63, 'Kids Dress', 'Unisex Yellow & Navy Blue Printed T-shirt with Dungarees', 'S', 'M', 'L', 'XL', 6, 550, 'ydress.jpg', 'ydress2.jpg', 'ydress3.jpg', 'ydress4.jpg', 1, '2019-11-14 09:35:01.269002', 47, 11, 11, 'tusharsaini503@gmail.com'),
	(64, 'Kids Dress', 'Boys Green Printed T-shirt with Shorts', 'S', 'M', 'L', 'XL', 5, 440, 'babyboy.jpg', 'babyboy2.jpg', 'babyboy3.jpg', 'bayboy4.jpg', 1, '2019-11-14 09:37:38.838200', 46, 11, 11, 'tusharsaini503@gmail.com'),
	(65, 'Kids Dress', 'Unisex Pink Printed Sweatshirt And Trousers', 'S', 'M', 'L', 'XL', 6, 1299, 'babypink.jpg', 'babypink2.jpg', '', '', 1, '2019-11-14 09:43:55.717347', 47, 11, 11, 'tusharsaini503@gmail.com'),
	(66, 'Kids Shoes', 'Kids Grey & Beige Solid Sneakers', '5.7', '6.1', '6.7', '7.1', 3, 990, 'Whiteshoes2s.jpg', 'Whiteshoes2s.jpg', 'Whiteshoes4s.jpg', 'Whiteshoess.jpg', 1, '2019-11-14 09:49:23.730547', 46, 11, 12, 'tusharsaini503@gmail.com'),
	(67, 'Kid\'s Feetwear', 'Girl\'s pink flats for daily wear', '5.7', '6.1', '6.7', '7.1', 3, 750, 'flat.jpg', 'flat2.jpg', 'flat3.jpg', 'flat4.jpg', 1, '2019-11-14 09:56:32.796576', 46, 11, 14, 'tusharsaini503@gmail.com'),
	(68, 'Kid\'s Clothing', 'Girls Magenta Solid Fit and Flare Cape Dress', 'S', 'M', 'L', 'XL', 6, 700, 'rfrock.jpg', 'rfrock2.jpg', 'rfrock3.jpg', '', 1, '2019-11-14 09:59:09.953748', 48, 11, 9, 'tusharsaini503@gmail.com'),
	(69, 'Kid\'s Dress', 'Girls Checked Navy Blue Maxi Dress', 'S', 'M', 'L', 'XL', 2, 1006, 'bluedress.jpg', 'bluedress2.jpg', 'bluedress3.jpg', 'bluedress4.jpg', 1, '2019-11-14 10:01:07.774000', 48, 11, 9, 'tusharsaini503@gmail.com'),
	(70, 'Men Clothing', 'Men Yellow Solid Padded Jacket', 'S', 'M', 'L', 'XL', 3, 2525, 'yjacket.jpg', 'yjacket2.jpg', 'yjacket3.jpg', 'yjacket4.jpg', 1, '2019-11-14 10:09:35.129940', 21, 9, 7, 'tusharsaini503@gmail.com'),
	(72, 'Men Jacket', 'Men Black Solid Leather Jacket', 'S', 'M', 'L', 'XL', 4, 3500, 'jacket.jpg', 'jacket2.jpg', 'jacket3.jpg', 'jacket4.jpg', 1, '2019-11-14 11:54:54.701824', 20, 10, 7, 'tusharsaini503@gmail.com'),
	(74, 'Kid\'s Clothing', 'Girls Navy Blue Printed Fit and Flare Dress', 'S', 'M', 'L', 'XL', 5, 3500, 'pinkdress.jpg', 'pinkdress2.jpg', 'pinkdress3.jpg', 'pinkdress4.jpg', 1, '2019-11-14 12:01:48.587506', 46, 11, 11, 'tusharsaini503@gmail.com'),
	(75, 'Girl\'s Flat', 'Women Black Solid One Toe Flats', '4', '5', '6', '7', 4, 600, 'blackflat.jpg', 'blackflat2.jpg', 'blackflat3.jpg', 'blackflat4.jpg', 1, '2019-11-14 12:04:19.204878', 24, 10, 10, 'tusharsaini503@gmail.com'),
	(76, 'Girl\'s Feetwear', 'Women Black Solid Synthetic Ballerinas', '4', '5', '6', '7', 3, 450, 'blacksandal.jpg', 'blacksandal2.jpg', 'blacksandal3.jpg', 'blacksandal4.jpg', 1, '2019-11-14 13:09:33.014417', 24, 10, 10, 'sainimanraj01@gmail.com'),
	(77, 'Girl\'s Feetwear', 'Women Peach-Coloured & Gold-Toned Colourblocked Flat', '5', '6', '7', '8', 4, 750, 'chapal.jpg', 'chapal2.jpg', 'chapal3.jpg', 'chapal4.jpg', 1, '2019-11-14 13:31:33.296988', 24, 10, 10, 'sainimanraj01@gmail.com'),
	(78, 'Girl\'s Feetwear', 'Women Black Solid Synthetic Open Toe Flats', '4', '5', '6', '7', 2, 400, 'faltt.jpg', 'flatt2.jpg', 'flatt3.jpg', 'flatt4.jpg', 1, '2019-11-14 13:35:57.097786', 26, 10, 10, 'sainimanraj01@gmail.com'),
	(79, 'Girl\'s Dress', 'Women Beige & Pink Yoke Design Kurta with Palazzos & Dupatta', 'S', 'M', 'L', 'XL', 5, 2200, 'kurta.jpg', 'kurta2.jpg', 'kurta3.jpg', 'kurta4.jpg', 1, '2019-11-14 13:40:46.357661', 36, 10, 9, 'sainimanraj01@gmail.com'),
	(80, 'Girl\'s Dress', 'Women Black & Mustard Yellow Solid Kurta with Trousers & Bhagalpuri Print Dupatta', 'S', 'M', 'L', 'XS', 3, 3800, 'plazzo.jpg', 'plazzo2.jpg', 'plazzo3.jpg', 'plazzo4.jpg', 1, '2019-11-14 14:00:51.959983', 40, 10, 9, 'sainimanraj01@gmail.com'),
	(81, 'Girl\'s Dress', 'Pink Kurta', 'S', 'XS', 'M', 'L', 2, 4500, 'suit.jpg', 'suit2.jpg', 'suit3.jpg', 'suit4.jpg', 1, '2019-11-14 14:05:59.106197', 39, 10, 9, 'sainimanraj01@gmail.com');
/*!40000 ALTER TABLE `managerapp_products` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
