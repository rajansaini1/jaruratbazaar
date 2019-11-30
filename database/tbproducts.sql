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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.managerapp_products: ~63 rows (approximately)
/*!40000 ALTER TABLE `managerapp_products` DISABLE KEYS */;
INSERT INTO `managerapp_products` (`product_id`, `product_name`, `product_description`, `product_size`, `product_size2`, `product_size3`, `product_size4`, `product_qty`, `product_price`, `product_image1`, `product_image2`, `product_image3`, `product_image4`, `product_isactive`, `product_creation_date`, `brand_id`, `productcategory_id`, `productstype_id`, `user_email_id`) VALUES
	(32, 'Boy\'Hoodie', 'Boy\'s Hoodie', 'S', 'M', 'L', 'XL', 10, 2200, 'boyhud.jpg', 'boyhud2.jpg', 'boyhud3.jpg', 'boyhud4.jpg', 1, '2019-11-07 22:03:38.815317', 11, 9, 7, 'sainimanraj01@gmail.com'),
	(33, 'Shirt', 'Shirt', 'S', 'M', 'L', 'XL', 4, 1200, 'shirt.jpg', 'shirt2.jpg', 'shirt3.jpg', 'shitr4.jpg', 1, '2019-11-07 22:05:06.291827', 10, 9, 7, 'sainimanraj01@gmail.com'),
	(34, 'Shoes', 'Shoes', '5', '6', '7', '8', 10, 2500, 'blackshoes.jpg', 'blackshoes2.jpg', 'blackshoes3.jpg', 'blackshoes4.jpg', 1, '2019-11-07 22:08:15.342108', 13, 9, 8, 'sainimanraj01@gmail.com'),
	(35, 'Sandal', 'Sandal', '4', '5', '6', '7', 3, 1500, 'sandal.jpg', 'sandal2.jpg', 'sandal3.jpg', 'sandal4.jpg', 1, '2019-11-07 22:13:02.020695', 32, 10, 10, 'sainimanraj01@gmail.com'),
	(37, 'Shoes', 'Shoes', '4', '6', '7', '8', 10, 3000, 'whiteshoes.jpg', 'whiteshoes2.jpg', 'whiteshoes3.jpg', 'whiteshoes4.jpg', 1, '2019-11-07 22:16:34.326365', 16, 9, 8, 'sainimanraj01@gmail.com'),
	(38, 'Gown', 'Gown', 'S', 'M', 'L', 'XL', 2, 1700, 'girl.jpg', 'girl2.jpg', 'girl3.jpg', 'girl4.jpg', 1, '2019-11-07 22:20:45.527724', 9, 10, 9, 'sainimanraj01@gmail.com'),
	(39, 'Helicopter', 'Helicopter', 'S', 'S', 'S', 'S', 10, 320, 'helicopter.jpg', 'helicopter2.jpg', 'helicopter3.jpg', 'helicopter4.jpg', 1, '2019-11-07 22:24:28.480756', 43, 11, 12, 'sainimanraj01@gmail.com'),
	(40, 'Barbie', 'plastic doll ', 'medium', '', '', '', 5, 150, 'doll.jpg', 'doll2.jpg', 'doll3.jpg', 'doll4.jpg', 1, '2019-11-07 22:26:33.121533', 49, 11, 12, 'sainimanraj01@gmail.com'),
	(42, 'Saree', 'Saree', 'S', 'L', 'M', 'XL', 4, 4000, 'saree.jpg', 'saree1.jpg', 'saree2.jpg', 'saree3.jpg', 1, '2019-11-07 22:40:41.471020', 37, 10, 9, 'sainimanraj01@gmail.com'),
	(43, 'Top', 'Top', 'S', 'M', 'L', 'XL', 10, 600, 'girl5.jpg', 'girl6.jpg', 'girl7.jpg', 'girl8.jpg', 1, '2019-11-07 22:44:09.157994', 9, 10, 9, 'sainimanraj01@gmail.com'),
	(44, 'Kurta', 'Kurta', 'S', 'M', 'L', 'XL', 10, 2000, 'Kurta.jpg', 'kurta2.jpg', 'kurta3.jpg', 'kurta4.jpg', 1, '2019-11-07 22:46:05.214157', 19, 9, 7, 'sainimanraj01@gmail.com'),
	(45, 'T-Shirt', 'T-Shirt', 'S', 'M', 'L', 'XL', 0, 800, 'T-Shirt.jpg', 'T-Shirt2.jpg', 'T-Shirt3.jpg', 'T-Shirt4.jpg', 1, '2019-11-07 22:47:51.190034', 18, 9, 7, 'sainimanraj01@gmail.com'),
	(46, 'Boy\'Hoodie', 'Boy\'s Hoodie', 'S', 'M', 'L', 'XL', 8, 2500, 'whitehud.jpg', 'whitehud2.jpg', 'whitehud3.jpg', 'whitehud4.jpg', 1, '2019-11-07 22:52:21.221464', 22, 9, 7, 'sainimanraj01@gmail.com'),
	(49, 'Redmi Y2', 'Redmi Y2 (Pink,4GB,64GB Internal)', '5.99 inch', '', '', '', 3, 12000, 'redmi-y2.jpg', 'redmiy2.jpg', 'redmiy23.jpg', 'remiy24.jpg', 1, '2019-11-07 23:35:32.803439', 55, 12, 13, 'sainimanraj01@gmail.com'),
	(62, 'Kids Dress', 'Unisex Yellow & Navy Blue Printed T-shirt with Dungarees', 'S', 'M', 'L', 'XL', 4, 550, 'ydress.jpg', 'ydress2.jpg', 'ydress3.jpg', 'ydress4.jpg', 1, '2019-11-14 09:33:12.405096', 47, 11, 11, 'tusharsaini503@gmail.com'),
	(64, 'Kids Dress', 'Boys Green Printed T-shirt with Shorts', 'S', 'M', 'L', 'XL', 5, 440, 'babyboy.jpg', 'babyboy2.jpg', 'babyboy3.jpg', 'bayboy4.jpg', 1, '2019-11-14 09:37:38.838200', 46, 11, 11, 'tusharsaini503@gmail.com'),
	(65, 'Kids Dress', 'Unisex Pink Printed Sweatshirt And Trousers', 'S', 'M', 'L', 'XL', 6, 1299, 'babypink.jpg', 'babypink2.jpg', '', '', 1, '2019-11-14 09:43:55.717347', 47, 11, 11, 'tusharsaini503@gmail.com'),
	(66, 'Kids Shoes', 'Kids Grey & Beige Solid Sneakers', '5.7', '6.1', '6.7', '7.1', 3, 990, 'Whiteshoes2s.jpg', 'Whiteshoes2s.jpg', 'Whiteshoes4s.jpg', 'Whiteshoess.jpg', 1, '2019-11-14 09:49:23.730547', 46, 11, 12, 'tusharsaini503@gmail.com'),
	(67, 'Kid\'s Feetwear', 'Girl\'s pink flats for daily wear', '5.7', '6.1', '6.7', '7.1', 3, 750, 'flat.jpg', 'flat2.jpg', 'flat3.jpg', 'flat4.jpg', 1, '2019-11-14 09:56:32.796576', 46, 11, 14, 'tusharsaini503@gmail.com'),
	(68, 'Kid\'s Clothing', 'Girls Magenta Solid Fit and Flare Cape Dress', 'S', 'M', 'L', 'XL', 6, 700, 'rfrock.jpg', 'rfrock2.jpg', 'rfrock3.jpg', '', 1, '2019-11-14 09:59:09.953748', 48, 11, 9, 'tusharsaini503@gmail.com'),
	(69, 'Kid\'s Dress', 'Girls Checked Navy Blue Maxi Dress', 'S', 'M', 'L', 'XL', 2, 1006, 'bluedress.jpg', 'bluedress2.jpg', 'bluedress3.jpg', 'bluedress4.jpg', 1, '2019-11-14 10:01:07.774000', 48, 11, 9, 'tusharsaini503@gmail.com'),
	(70, 'Men Clothing', 'Men Yellow Solid Padded Jacket', 'S', 'M', 'L', 'XL', 0, 2525, 'yjacket.jpg', 'yjacket2.jpg', 'yjacket3.jpg', 'yjacket4.jpg', 1, '2019-11-14 10:09:35.129940', 21, 9, 7, 'tusharsaini503@gmail.com'),
	(72, 'Men Jacket', 'Men Black Solid Leather Jacket', 'S', 'M', 'L', 'XL', 0, 3500, 'jacket.jpg', 'jacket2.jpg', 'jacket3.jpg', 'jacket4.jpg', 1, '2019-11-14 11:54:54.701824', 20, 9, 7, 'tusharsaini503@gmail.com'),
	(74, 'Kid\'s Clothing', 'Girls Navy Blue Printed Fit and Flare Dress', 'S', 'M', 'L', 'XL', 5, 3500, 'pinkdress.jpg', 'pinkdress2.jpg', 'pinkdress3.jpg', 'pinkdress4.jpg', 1, '2019-11-14 12:01:48.587506', 46, 11, 11, 'tusharsaini503@gmail.com'),
	(75, 'Girl\'s Flat', 'Women Black Solid One Toe Flats', '4', '5', '6', '7', 4, 600, 'blackflat.jpg', 'blackflat2.jpg', 'blackflat3.jpg', 'blackflat4.jpg', 1, '2019-11-14 12:04:19.204878', 24, 10, 10, 'tusharsaini503@gmail.com'),
	(76, 'Girl\'s Feetwear', 'Women Black Solid Synthetic Ballerinas', '4', '5', '6', '7', 10, 450, 'blacksandal.jpg', 'blacksandal2.jpg', 'blacksandal3.jpg', 'blacksandal4.jpg', 1, '2019-11-14 13:09:33.014417', 24, 10, 10, 'sainimanraj01@gmail.com'),
	(77, 'Girl\'s Feetwear', 'Women Peach-Coloured & Gold-Toned Colourblocked Flat', '5', '6', '7', '8', 10, 750, 'chapal.jpg', 'chapal2.jpg', 'chapal3.jpg', 'chapal4.jpg', 1, '2019-11-14 13:31:33.296988', 24, 10, 10, 'sainimanraj01@gmail.com'),
	(78, 'Girl\'s Feetwear', 'Women Black Solid Synthetic Open Toe Flats', '4', '5', '6', '7', 2, 400, 'faltt.jpg', 'flatt2.jpg', 'flatt3.jpg', 'flatt4.jpg', 1, '2019-11-14 13:35:57.097786', 26, 10, 10, 'sainimanraj01@gmail.com'),
	(80, 'Girl\'s Dress', 'Women Black & Mustard Yellow Solid Kurta with Trousers & Bhagalpuri Print Dupatta', 'S', 'M', 'L', 'XS', 10, 3800, 'plazzo.jpg', 'plazzo2.jpg', 'plazzo3.jpg', 'plazzo4.jpg', 1, '2019-11-14 14:00:51.959983', 40, 10, 9, 'sainimanraj01@gmail.com'),
	(81, 'Girl\'s Dress', 'Pink Kurta', 'S', 'XS', 'M', 'L', 2, 4500, 'suit.jpg', 'suit2.jpg', 'suit3.jpg', 'suit4.jpg', 1, '2019-11-14 14:05:59.106197', 39, 10, 9, 'sainimanraj01@gmail.com'),
	(82, 'Samsung Galaxy M30s', 'Samsung Galaxy M30s (Sapphire Blue, 4GB RAM, Super AMOLED Display, 64GB Storage, 6000mAH Battery)', '16.21 centimeters (6.4-inch) ', '', '', '', 2, 13999, 'm30s.jpg', 'm30ss.jpg', 'm30s3.jpg', 'm30s4.jpg', 1, '2019-11-15 22:55:11.695149', 54, 12, 13, 'sainimanraj01@gmail.com'),
	(83, 'Puzzle Toy', 'Plastic Toy for kids,with multicolor rings and smile emoji', '5 inches', '', '', '', 2, 299, 'babytoy.jpg', 'babytoy2.jpg', 'babytoy4.jpg', 'babytoy3.jpg', 1, '2019-11-15 22:59:47.049829', 11, 11, 12, 'sainimanraj01@gmail.com'),
	(86, 'Camera', 'Nikon D3500 DX-Format DSLR Two Lens Kit with AF-P DX Nikkor 18-55mm f/3.5-5.6G VR & AF-P DX Nikkor 70-300mm f/4.5-6.3G ED (Black) 16 GB Class 10 SD Card and DSLR Bag', '8c.m.', '', '', '', 4, 37990, 'cam1.jpg', 'cam2.jpg', 'cam3.jpg', 'cam4.jpg', 1, '2019-11-15 23:10:30.392590', 60, 12, 15, 'sainimanraj01@gmail.com'),
	(87, 'Wireless Earphones', 'PTron BassFest in-Ear Wireless Headphones, High Bass Bluetooth Earphones, Bluetooth 5.0 Technology, 4 Hours Music Time, Earphones with Mic, Sports Bluetooth Headphones for All Smartphones (Black)', '15 cm', '', '', '', 4, 499, 'ear.jpg', 'ear2.jpg', 'ear3.jpg', 'ear4.jpg', 1, '2019-11-15 23:16:02.127685', 54, 12, 15, 'sainimanraj01@gmail.com'),
	(88, 'Wireless headphones', 'Leaf BH21 Bluetooth Over-The -Ear High Bass HD Sound Wireless Headphone with Turbo Bass Equaliser Mode, Super Soft Protein Over-The Ear Cushions, 24 Hours Battery Life', 'adjustable', '', '', '', 5, 1999, 'head1.jpg', 'head2.jpg', 'head3.jpg', 'head4.jpg', 1, '2019-11-15 23:20:38.213921', 54, 12, 15, 'sainimanraj01@gmail.com'),
	(89, 'Ceiling Fan(Crompton)', 'Crompton Hill Briz 48-inch Ceiling Fan (Black-Brown)', ' 48-inch', '', '', '', 4, 1499, 'fan.jpg', 'fan1.jpg', 'fan2.jpg', 'fan3.jpg', 1, '2019-11-15 23:26:57.758084', 61, 12, 15, 'sainimanraj01@gmail.com'),
	(90, 'Hp(laptop)', 'HP 15 Intel Core i5 (8GB DDR4/1TB HDD/Win 10/MS Office/Integrated Graphics/2.04 kg), Full HD Laptop (15.6-inch, Sparkling Black) 15q-ds0029TU', '15.6-inch,', '', '', '', 2, 41990, 'hp1.jpg', 'hp2.jpg', 'hp3.jpg', 'hp4.jpg', 1, '2019-11-15 23:32:06.447918', 62, 12, 15, 'sainimanraj01@gmail.com'),
	(91, 'Induction  Cooktop', 'Pigeon by Stovekraft Cruise 1800-Watt Induction Cooktop (Black)', '8 inches', '', '', '', 4, 1549, 'ind.jpg', 'ind3.jpg', 'ind1.jpg', 'ind2.jpg', 1, '2019-11-15 23:38:46.396788', 63, 12, 15, 'sainimanraj01@gmail.com'),
	(92, 'LED  TV ', 'Samsung 58 cm (23 inches) 23H4003 HD Ready LED TV (Black)', '58 cm (23 inches) ', '', '', '', 10, 15500, 'led.jpg', 'led1.jpg', 'led2.jpg', 'led3.jpg', 1, '2019-11-15 23:42:22.311091', 54, 12, 15, 'sainimanraj01@gmail.com'),
	(95, 'Wireless Mic', 'MOHANKHEDA Ws 858 Wireless Mic Recording High Sensitive Microphone Speaker for Smartphones Assorted color', '20cm', '', '', '', 10, 999, 'mic.jpg', 'mic1.jpg', 'mic2.jpg', 'mic3.jpg', 1, '2019-11-16 12:39:51.101852', 54, 12, 15, 'sainimanraj01@gmail.com'),
	(96, ' Single Door Refrigerator', 'LG 215 L 5 Star Inverter Direct Cool Single Door Refrigerator (GL-D221ARGY, Ruby Glow)', '215 litres', '', '', '', 4, 18500, 'friz.jpg', 'friz1.jpg', 'friz2.jpg', 'friz3.jpg', 1, '2019-11-16 12:42:38.174530', 61, 12, 15, 'sainimanraj01@gmail.com'),
	(97, 'Smart Fitness Band', 'Smart Fitness Band ID152 Activity Tracker Fitness Watch Heart Rate Monitor Sleep Monitor Waterproof IP68 Smart Watch Bands Calories Counter Step Tracker Pedometer Watch for Women Men Kid', 'Adjustable', '', '', '', 10, 2299, 'watch.jpg', 'watch1.jpg', 'watch3.jpg', 'watch4.jpg', 1, '2019-11-16 12:46:18.793075', 55, 12, 15, 'sainimanraj01@gmail.com'),
	(98, 'Plastic Toys', 'Multicolor Ractangular pieces', '5*3 inches', '', '', '', 10, 299, 'toy1.jpg', 'toy2.jpg', 'toy3.jpg', 'toy4.jpg', 1, '2019-11-16 13:03:26.224414', 19, 11, 12, 'sainimanraj01@gmail.com'),
	(99, 'Cargos for mens', 'Comfortable cargos for mens', '28', '30', '32', '34', 4, 799, 'cargoo.jpg', 'cargoo1.jpg', 'cargoo2.jpg', 'cargoo3.jpg', 1, '2019-11-18 22:43:05.536274', 9, 9, 7, 'sainimanraj01@gmail.com'),
	(100, 'Men\'s Sweater', 'Charcoal grey solid sweater, has a round neck, long sleeves, and ribbed hem & 70% acrylic, 30% wool Machine-wash', 'S', 'M', 'L', 'XL', 10, 1099, 'sweater.jpg', 'sweater2.jpg', 'sweater3.jpg', 'sweater4.jpg', 1, '2019-11-25 09:37:44.143160', 20, 9, 7, 'sainimanraj01@gmail.com'),
	(102, 'Bhama Coutur', 'Navy blue washed denim jacket with embroidered detail, has a spread collar, two flap pockets, button closure, long sleeves, straight hem', 'S', 'M', 'L', 'XL', 10, 1099, 'womenjacket.jpg', 'womenjacket2.jpg', 'womenjacket3.jpg', 'womenjacket4.jpg', 1, '2019-11-26 10:02:10.996882', 21, 10, 9, 'sainimanraj01@gmail.com'),
	(103, 'Roadster', 'Brown solid biker jacket, has a stand collar, two pockets, zip closure, long sleeves, straight hem, polyester lining', 'S', 'M', 'L', 'XL', 7, 2035, 'bikerjacket.jpg', 'bikerjacket2.jpg', 'bikerjacket3.jpg', 'bikerjacket4.jpg', 1, '2019-11-26 10:36:01.843244', 20, 10, 9, 'sainimanraj01@gmail.com'),
	(104, 'MANGO', 'Blue washed denim jacket, has a spread collar, 4 pockets, button closures, long sleeves, straight hem', 'S', 'M', 'L', 'XL', 8, 2500, 'denimjacket.jpg', 'denimjacket2.jpg', 'denimjacket3.jpg', 'denimjacket4.jpg', 1, '2019-11-26 10:38:00.285721', 23, 10, 9, 'sainimanraj01@gmail.com'),
	(105, 'Roadster', 'Blue melange sweater, has a stand collar with a short button placket, long sleeves, a ribbed hemline', 'S', 'M', 'L', 'XL', 10, 1800, 'bluesweater.jpg', 'bluesweater2.jpg', 'bluesweater3.jpg', 'bluesweater4.jpg', 1, '2019-11-26 10:49:17.095408', 11, 9, 7, 'sainimanraj01@gmail.com'),
	(106, 'Hooded Sweatshirt', 'Navy Blue and gold-toned embellished sweatshirt, has a hood, long sleeves, straight hem.', '9-10Y', '11-12Y', '12-13Y', '13-14Y', 10, 1499, 'bluesweatshirt.jpg', 'bluesweatshirt2.jpg', 'bluesweatshirt3.jpg', 'bluesweatshirt4.jpg', 1, '2019-11-26 11:15:44.634521', 48, 11, 11, 'sainimanraj01@gmail.com'),
	(107, 'Self Design Sweater', 'Navy Blue, grey and mustard yellow self-design sweater, has a round neck, long sleeves, and ribbed hem', 'S', 'M', 'L', 'XL', 0, 2399, 'gysweater.jpg', 'gysweater2.jpg', 'gysweater3.jpg', 'gysweater4.jpg', 1, '2019-11-26 11:20:03.308245', 9, 9, 7, 'sainimanraj01@gmail.com'),
	(108, 'Men Black Slip-On Sneakers', 'A pair of round toe black slip-on sneakers, has regular styling, slip-on detail Canvas upper Cushioned footbed Textured and patterned outsole Warranty: 1 year Warranty provided by brand/manufacturer', '6', '7', '8', '9', 0, 1800, 'greyshoes.jpeg', 'greyshoes2.jpeg', 'greyshoes3.jpeg', 'greyshoes4.jpeg', 1, '2019-11-26 11:26:09.049288', 12, 9, 8, 'sainimanraj01@gmail.com'),
	(109, 'Men Coral Pink Solid Sweater', 'Coral pink knitted sweater, has a round neck, long sleeves, ribbed hem', 'S', 'M', 'L', 'XL', 10, 1300, 'ethersweater.jpg', 'ethersweater2.jpg', 'denimjacket3.jpg', 'ethersweater4.jpg', 1, '2019-11-26 11:29:17.849698', 9, 9, 7, 'tusharsaini503@gmail.com'),
	(111, 'INVICTUS', 'Grey solid sweater, has a round neck, long sleeves, and ribbed hem', 'S', 'M', 'L', 'XL', 10, 1799, 'greysweater.jpg', 'greysweater2.jpg', 'greysweater3.jpg', 'greysweater4.jpg', 1, '2019-11-26 11:39:49.122203', 10, 9, 7, 'tusharsaini503@gmail.com'),
	(112, 'Bomber Jacket', 'Pink and blue checked bomber, has a stand collar, 2 pockets, zip closure, long sleeves, straight hem', 'S', 'M', 'L', 'XL', 10, 2700, 'bomberjacket.jpg', 'bomberjacket2.jpg', 'bomberjacket3.jpg', 'bomberjacket4.jpg', 1, '2019-11-26 11:42:13.468772', 18, 10, 9, 'tusharsaini503@gmail.com'),
	(113, 'Breasted Pea Coat', 'Navy blue solid double-breasted pea coat, has a notched lapel collar, button closures, long sleeves, two pockets, and an attached lining', 'S', 'M', 'L', 'XL', 10, 2400, 'greyjacket.jpg', 'greyjacket2.jpg', 'greyjacket3.jpg', 'greyjacket4.jpg', 1, '2019-11-26 12:04:19.697408', 19, 10, 9, 'tusharsaini503@gmail.com'),
	(114, 'Sweatpants', 'Trousers in soft sweatshirt fabric made from a cotton blend with a print motif on one leg and an elasticated, drawstring waist panel. Pockets in the side seams and tapered legs with ribbed hems. Soft brushed inside.', 'S', 'M', 'L', 'XL', 10, 1500, 'greytrousers.jpg', 'greytrousers2.jpg', 'greytrousers4.jpg', 'greytrousers4.jpg', 1, '2019-11-26 12:08:30.722346', 47, 11, 11, 'tusharsaini503@gmail.com'),
	(115, ' Hooded Sweatshirt', 'Mustard yellow and Black colourblocked sweatshirt, has a hood, long sleeves, straight hem', '9-10Y', '11-12Y', '12-13Y', '13-14Y', 10, 1200, 'hoodedsweatshirt.jpg', 'hoodedsweatshirt2.jpg', 'hoodedsweatshirt3.jpg', 'hoodedsweatshirt4.jpg', 1, '2019-11-26 12:12:06.712331', 46, 11, 11, 'tusharsaini503@gmail.com'),
	(116, 'Cotton Joggers', 'Joggers in soft cotton sweatshirt fabric with an elasticated drawstring waist, side pockets and ribbed hems. Soft brushed inside.', '9-10Y', '11-12Y', '12-13Y', '13-14Y', 10, 600, 'jogger.jpg', 'jogger2.jpg', 'jogger3.jpg', 'jogger4.jpg', 1, '2019-11-26 12:15:14.372595', 50, 11, 11, 'tusharsaini503@gmail.com'),
	(117, 'Hooded Jumper', 'Top in sweatshirt fabric with long sleeves and a jersey-lined hood with a wrapover front. Ribbing at the cuffs and hem.', '9-10Y', '11-12Y', '12-13Y', '13-14Y', 10, 1600, 'jumper.jpg', 'jumper2.jpg', 'jumper3.jpg', 'jumper4.jpg', 1, '2019-11-26 12:21:22.067499', 42, 11, 11, 'tusharsaini503@gmail.com'),
	(118, 'Sweatshirt', 'Grey Melange self design sweatshirt, has a round neck, long sleeves, straight hem', '9-10Y', '11-12Y', '12-13Y', '13-14Y', 10, 700, 'mickeysweater.jpg', 'mickeysweater2.jpg', 'mickeysweater3.jpg', 'mickeysweater4.jpg', 1, '2019-11-26 12:25:27.375648', 49, 11, 11, 'tusharsaini503@gmail.com'),
	(119, ' Puffer Jacket', 'Red solid jacket, has a hooded, 2 pockets, zip closure, long sleeves, curved hem, and polyester', 'S', 'M', 'L', 'XL', 10, 2300, 'pufferjacket.jpg', 'pufferjacket2.jpg', 'pufferjacket3.jpg', 'pufferjacket4.jpg', 1, '2019-11-26 12:35:44.184470', 40, 10, 9, 'tusharsaini503@gmail.com'),
	(120, ' Parka Jacket', 'Padded parka in woven fabric with a soft, brushed finish. Detachable, fleece-lined hood with a faux fur trim, a stand-up collar with a chin guard and a zip and wind flap with a hook and loop fastening down the front', '9-10Y', '11-12Y', '12-13Y', '13-14Y', 10, 1600, 'parkajacket.jpg', 'parkajacket2.jpg', 'parkajacket3.jpg', 'parkajacket4.jpg', 1, '2019-11-26 12:38:59.020088', 42, 11, 11, 'tusharsaini503@gmail.com'),
	(121, ' Parka Jacket', 'Padded parka in woven fabric with a soft, brushed finish. Detachable, fleece-lined hood with a faux fur trim, a stand-up collar with a chin guard and a zip and wind flap with a hook and loop fastening down the front', '9-10Y', '11-12Y', '12-13Y', '13-14Y', 0, 1600, 'parkajacket.jpg', 'parkajacket2.jpg', 'parkajacket3.jpg', 'parkajacket4.jpg', 1, '2019-11-26 12:38:59.181692', 42, 11, 11, 'tusharsaini503@gmail.com'),
	(124, 'Headphones', 'Black wireless headphones Built-in microphone and track, call and volume controls Warranty: 1 year', '', '', '', '', 10, 2800, 'mic.jpg', 'mic2.jpg', 'mic3.jpg', 'mic4.jpg', 1, '2019-11-26 13:22:43.024177', 61, 12, 15, 'tusharsaini503@gmail.com'),
	(125, ' Wired Headphone', 'boAt Black BassHeads 900 Wired Headphone with Mic Super Extra Bass: Enjoy powerful, dynamic sound with punchy bass and clear, natural vocals with the responsive 40mm Neodymium drivers,', '', '', '', '', 10, 690, 'headphone.jpg', 'headphone2.jpg', 'headphone3.jpg', 'headphone4.jpg', 1, '2019-11-26 13:28:10.963079', 60, 12, 15, 'tusharsaini503@gmail.com'),
	(126, 'Printed SweatShirt', 'Grey printed sweatshirt, has a hood, two pockets, long sleeves, zip closure, straight hem', '9-10Y', '11-12Y', '12-13Y', '13-14Y', 10, 750, 'printedhood.jpg', 'printedhood2.jpg', 'printedhood3.jpg', 'printedhood4.jpg', 1, '2019-11-28 09:50:15.555229', 42, 11, 11, 'sainimanraj01@gmail.com');
/*!40000 ALTER TABLE `managerapp_products` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;