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

-- Dumping structure for table jaruratbazaardb.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.auth_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Dumping structure for table jaruratbazaardb.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.auth_group_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Dumping structure for table jaruratbazaardb.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.auth_permission: ~24 rows (approximately)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can add permission', 2, 'add_permission'),
	(5, 'Can change permission', 2, 'change_permission'),
	(6, 'Can delete permission', 2, 'delete_permission'),
	(7, 'Can add group', 3, 'add_group'),
	(8, 'Can change group', 3, 'change_group'),
	(9, 'Can delete group', 3, 'delete_group'),
	(10, 'Can add user', 4, 'add_user'),
	(11, 'Can change user', 4, 'change_user'),
	(12, 'Can delete user', 4, 'delete_user'),
	(13, 'Can add content type', 5, 'add_contenttype'),
	(14, 'Can change content type', 5, 'change_contenttype'),
	(15, 'Can delete content type', 5, 'delete_contenttype'),
	(16, 'Can add session', 6, 'add_session'),
	(17, 'Can change session', 6, 'change_session'),
	(18, 'Can delete session', 6, 'delete_session'),
	(19, 'Can add user role', 7, 'add_userrole'),
	(20, 'Can change user role', 7, 'change_userrole'),
	(21, 'Can delete user role', 7, 'delete_userrole'),
	(22, 'Can add user signup', 8, 'add_usersignup'),
	(23, 'Can change user signup', 8, 'change_usersignup'),
	(24, 'Can delete user signup', 8, 'delete_usersignup');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Dumping structure for table jaruratbazaardb.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.auth_user: ~1 rows (approximately)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$100000$H8yKIu51aRXK$tUVO/aXWkXjYyUufNgvAeEJhbnf/YSClhg9/oLLCqSY=', '2019-10-09 17:31:34', 1, 'jaruratbazaar', '', '', 'jaruratbazaar@gmail.com', 1, 1, '2019-10-02 00:34:17');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Dumping structure for table jaruratbazaardb.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.auth_user_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Dumping structure for table jaruratbazaardb.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.auth_user_user_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Dumping structure for table jaruratbazaardb.bazaarapp_userrole
CREATE TABLE IF NOT EXISTS `bazaarapp_userrole` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(200) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.bazaarapp_userrole: ~2 rows (approximately)
/*!40000 ALTER TABLE `bazaarapp_userrole` DISABLE KEYS */;
INSERT INTO `bazaarapp_userrole` (`roleid`, `roleName`, `isActive`) VALUES
	(1, 'Manager', 1),
	(2, 'User', 1);
/*!40000 ALTER TABLE `bazaarapp_userrole` ENABLE KEYS */;

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
	('rajan', 'rajanynrsaini@gmail.com', '7015800169', 'pbkdf2_sha256$100000$pHQ4iBXm6PyG$qmIeh6ds+ZnJXdKQA2sC+4HbSklsyTYpzHRL/UPZ0qA=', 'ambli hvht', 'chd', 'male', '135001', '19/08/1999', 'haryana', 1, 1, 0, 0, 2, 'http://127.0.0.1.8000/verifyuser/?email=rajanynrsaini@gmail.com&token=L65708U', 'L65708U', '2019-10-10 09:06:25.360822', 'L65708U'),
	('manraj', 'sainimanraj01@gmail.com', '8221045555', 'pbkdf2_sha256$100000$vv1ao2zZOXCo$DiG4/KjIzncoQOMcmj1th0ks3p5WyQpejnexCQ1mr7E=', 'tk', 'ambala', 'male', '133100', '12/05/1997', 'himachal', 1, 1, 0, 0, 2, 'http://127.0.0.1.8000/verifyuser/?email=sainimanraj01@gmail.com&token=F64680j', 'F64680j', '2019-10-10 18:29:13.610274', 'F64680j'),
	('rajan', 'tusahrsaini503@gmail.com', '7015800169', 'pbkdf2_sha256$100000$jqt4TrOrceHj$ToKbisnKJbjxa/ZhHqbUcq/GnUZK853jIwOGHn4HG90=', 'sarswati', 'ynr', 'male', '133103', '20/04/1997', 'haryana', 1, 1, 0, 0, 2, '', 'k70172Y', '2019-10-09 12:50:03.849506', 'k70172Y'),
	('tushar', 'tusharsaini@gmail.com', '7015800169', 'pbkdf2_sha256$100000$9xoMExU9pvPJ$uSM+WHfsHOxgp6yJopDLYS8djknKvsIbEamvDFmWqFo=', 'mfd', 'ambaala', 'male', '133103', '19/08/1999', 'haryana', 1, 1, 0, 0, 2, '', 'y14228N', '2019-10-09 10:43:14.203276', '');
/*!40000 ALTER TABLE `bazaarapp_usersignup` ENABLE KEYS */;

-- Dumping structure for table jaruratbazaardb.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.django_admin_log: ~2 rows (approximately)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2019-10-03 22:58:19', '1', 'UserRole object (1)', 1, '[{"added": {}}]', 7, 1),
	(2, '2019-10-03 22:58:54', '2', 'UserRole object (2)', 1, '[{"added": {}}]', 7, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Dumping structure for table jaruratbazaardb.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.django_content_type: ~8 rows (approximately)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(7, 'bazaarapp', 'userrole'),
	(8, 'bazaarapp', 'usersignup'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Dumping structure for table jaruratbazaardb.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.django_migrations: ~20 rows (approximately)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2019-10-02 00:32:05'),
	(2, 'auth', '0001_initial', '2019-10-02 00:32:09'),
	(3, 'admin', '0001_initial', '2019-10-02 00:32:10'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2019-10-02 00:32:10'),
	(5, 'contenttypes', '0002_remove_content_type_name', '2019-10-02 00:32:10'),
	(6, 'auth', '0002_alter_permission_name_max_length', '2019-10-02 00:32:10'),
	(7, 'auth', '0003_alter_user_email_max_length', '2019-10-02 00:32:11'),
	(8, 'auth', '0004_alter_user_username_opts', '2019-10-02 00:32:11'),
	(9, 'auth', '0005_alter_user_last_login_null', '2019-10-02 00:32:11'),
	(10, 'auth', '0006_require_contenttypes_0002', '2019-10-02 00:32:11'),
	(11, 'auth', '0007_alter_validators_add_error_messages', '2019-10-02 00:32:11'),
	(12, 'auth', '0008_alter_user_username_max_length', '2019-10-02 00:32:11'),
	(13, 'auth', '0009_alter_user_last_name_max_length', '2019-10-02 00:32:12'),
	(14, 'sessions', '0001_initial', '2019-10-02 00:32:12'),
	(15, 'bazaarapp', '0001_initial', '2019-10-03 17:51:33'),
	(16, 'bazaarapp', '0002_auto_20191003_1514', '2019-10-03 22:15:18'),
	(17, 'bazaarapp', '0003_auto_20191003_1518', '2019-10-03 22:41:08'),
	(18, 'bazaarapp', '0004_usersignup', '2019-10-03 22:41:08'),
	(19, 'bazaarapp', '0005_auto_20191004_0909', '2019-10-04 16:10:09'),
	(20, 'bazaarapp', '0006_usersignup_usertoken', '2019-10-04 18:29:51');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Dumping structure for table jaruratbazaardb.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jaruratbazaardb.django_session: ~2 rows (approximately)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('cazzwx1j9tdu77fu5324nl6sm3pmzjew', 'YWFjYzgwZDVkNzY0ZjhhZjQ1OGY1YWZjMzJkYTZjMTRmNzI5NWQ4Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMjYwZWQ5NzQwM2QzMzJhMzdlMTc1NmRkNjk2YjM4ZTYxMzliYzBkIn0=', '2019-10-17 17:27:34'),
	('r7wyryx8b2jzhdfuyq7dr4sb6tax34ut', 'M2ZjZTQ2NjkwNDg0NmQ2YzAzODFhOTI4ZjkzOTg5NWZhMWEwYjYzNTp7IkF1dGhlbnRpY2F0aW9uIjp0cnVlLCJlbWFpbGlkIjoiamFnYXRwcmVldDE5OTdAZ21haWwuY29tIiwicm9sZWlkIjoyfQ==', '2019-10-24 05:07:40');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
