# Host: 127.0.0.1  (Version 5.5.53)
# Date: 2018-01-25 10:27:54
# Generator: MySQL-Front 5.4  (Build 4.153) - http://www.mysqlfront.de/

/*!40101 SET NAMES utf8 */;

#
# Structure for table "article_types"
#

DROP TABLE IF EXISTS `article_types`;
CREATE TABLE `article_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "article_types"
#

INSERT INTO `article_types` VALUES (1,'2018-01-24 15:41:09','2018-01-24 15:41:09','Php'),(2,'2018-01-24 15:41:09','2018-01-24 15:41:09','Laravel'),(3,'2018-01-24 15:41:09','2018-01-24 15:41:09','Linux'),(4,'2018-01-24 15:41:09','2018-01-24 15:41:09','Vuejs'),(5,'2018-01-24 15:41:09','2018-01-24 15:41:09','Angularjs'),(6,'2018-01-24 15:41:09','2018-01-24 15:41:09','Mysql'),(7,'2018-01-24 15:41:09','2018-01-24 15:41:09','Mongodb');

#
# Structure for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "migrations"
#

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

#
# Structure for table "oauth_access_tokens"
#

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "oauth_access_tokens"
#

/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('08fe1f57077a6c9f08ecf54a3a6c7adb7f56a179622aa135227ca21cc48853e73fe1b2752d88fef3',8,2,NULL,'[]',0,'2018-01-18 16:39:45','2018-01-18 16:39:45','2019-01-18 16:39:45'),('0a2cefebedc08ecc375fb27f10474d9baa200a7b00d08201ff766e074bd7f25b40f035229686456a',6,2,NULL,'[]',0,'2018-01-18 16:36:32','2018-01-18 16:36:32','2019-01-18 16:36:32'),('135d242d76c1501cfaf569123537a5e905c459a9f05721598ee3ea7cbf06372691a4f9aafa021cd8',20,2,NULL,'[]',0,'2018-01-18 16:56:37','2018-01-18 16:56:37','2019-01-18 16:56:37'),('18fe6a1a521fa2e12ff0e6930958fd9d9f13200f2d1e7182ab2a081721d069ae87bf64cff9f4589e',12,2,NULL,'[]',0,'2018-01-18 16:43:39','2018-01-18 16:43:39','2019-01-18 16:43:39'),('21510620cbc9e491d0586291d059aec2cad77c8ab86d69e0342fbf7b6abacfcbbd7f0549b88c385e',5,2,NULL,'[]',0,'2018-01-18 16:36:13','2018-01-18 16:36:13','2019-01-18 16:36:13'),('24446501d3558c0147f88a130a8a4560afa0b8f5c0f9c827e4630cc27fc0dc9a71f1641da65d9d07',10,2,NULL,'[]',0,'2018-01-18 16:42:17','2018-01-18 16:42:17','2019-01-18 16:42:17'),('27f2e4f8938c4c0d6e3488a922bdb8688056602a21801782702eef85b1ded48977cedf62e24dfdcc',1,2,NULL,'[]',0,'2018-01-18 16:23:44','2018-01-18 16:23:44','2019-01-18 16:23:44'),('341777939d4386320ddd229df0aaedc21254ddd6ede849a0d74d7b30f8c98d268fb73f8960e3c289',2,2,NULL,'[]',0,'2018-01-18 16:29:02','2018-01-18 16:29:02','2019-01-18 16:29:02'),('364f140e0537c86d34ce34e34fabe725a8aabae35e0134dc5fe52d295f20199a37451c0e8746f4fe',25,2,NULL,'[]',1,'2018-01-24 16:54:01','2018-01-24 16:54:01','2019-01-24 16:54:01'),('3877218a3fc3f2ad4e277f0cdd4e54853e4ba5a604d178ad44ae346bb7af19f0f223555174871ef3',21,2,NULL,'[]',0,'2018-01-18 16:57:29','2018-01-18 16:57:29','2019-01-18 16:57:29'),('3a22d1ae05a4f8ddf261772a474ca7c7dc141b7ad5c36d6f3ad2d92b950e4a518154b60079fe9020',25,2,NULL,'[]',0,'2018-01-22 09:41:27','2018-01-22 09:41:27','2019-01-22 09:41:27'),('4e969d3ba7af8c7ec8554878ef56fa030cd929dbf5393bfbfe134e3e38f4312a54de864b4aea750e',22,2,NULL,'[]',0,'2018-01-18 16:58:07','2018-01-18 16:58:07','2019-01-18 16:58:07'),('62f4215d536447a940af8c31605ba8bbeb8c3567e58bfe73a64c1f3e931ccb908c2b25db20dfdc95',25,2,NULL,'[]',1,'2018-01-22 09:03:49','2018-01-22 09:03:49','2019-01-22 09:03:49'),('6abf8fd026e5d2774324485b30a502c307e5774429fa39068386458ea36bcd234a28b155de08171b',25,2,NULL,'[]',0,'2018-01-22 09:49:59','2018-01-22 09:49:59','2019-01-22 09:49:59'),('6ec4bfbbf59c71f83d0335ab6e224c2fc08f2575a9c2ff5a75d44e7b9ac7186ce439ae84a78df276',11,2,NULL,'[]',0,'2018-01-18 16:42:56','2018-01-18 16:42:56','2019-01-18 16:42:56'),('714efea58193e9b8e98ae28908b68cd70ee6569004faebd725bb772ea9945c3b7ae731d5dc219942',19,2,NULL,'[]',0,'2018-01-18 16:54:49','2018-01-18 16:54:49','2019-01-18 16:54:49'),('7d8cc61bb0e5af0f8b8b90c751985723f295e0733b963e27349e0e40809be85fc155c8229d9eb55b',18,2,NULL,'[]',0,'2018-01-18 16:53:53','2018-01-18 16:53:53','2019-01-18 16:53:53'),('885b2f1dc496fdbf78eb0ab406178198666fa6d2a311564bfc1689406473cf36356c268e58db1643',3,2,NULL,'[]',0,'2018-01-18 16:31:52','2018-01-18 16:31:52','2019-01-18 16:31:52'),('8aeb50c3e50dda34ec6e1b490b2d4172cf25b434cf7662a0b20192aa2d0de40b492154681ce13002',14,2,NULL,'[]',0,'2018-01-18 16:45:17','2018-01-18 16:45:17','2019-01-18 16:45:17'),('8e101d9a263db93c78883ca7825ed26bfa38685132ecef5e286d007502b9dea2cba2056bc1e14321',7,2,NULL,'[]',0,'2018-01-18 16:38:31','2018-01-18 16:38:31','2019-01-18 16:38:31'),('984ebcd3d424a5fb25dba949a5ae5ecc86dcbba0ab12f9c5d88a4d9aeba9193a1a638e8b45b47433',9,2,NULL,'[]',0,'2018-01-18 16:41:41','2018-01-18 16:41:41','2019-01-18 16:41:41'),('9bc8145e7627f8f155e6cbd856c03388250ff6807c260e38f6f9852f9b788c8e25a7193074c5074b',25,2,NULL,'[]',0,'2018-01-22 09:04:13','2018-01-22 09:04:13','2019-01-22 09:04:13'),('a2f4f10846c5c1275edb0a97c4291e5a9df6a69c9d19fc40a861615ab3686a119dd3acfb377a672b',23,2,NULL,'[]',0,'2018-01-18 16:58:57','2018-01-18 16:58:57','2019-01-18 16:58:57'),('b4a823ae5d721a6f144539587b00305295c26772252753918dd79470636e0823a58a02be04e991b8',16,2,NULL,'[]',0,'2018-01-18 16:49:57','2018-01-18 16:49:57','2019-01-18 16:49:57'),('b8b3d2fd4785b0e8b107b37ad37bf7bdbc4a7fc4f6e5f58ea08911a3fab6e9db4235752d924f3ffa',15,2,NULL,'[]',0,'2018-01-18 16:47:59','2018-01-18 16:47:59','2019-01-18 16:47:59'),('cb7e681a11d1d4fb21ed5620a65c4d7f258a2ab6910bb379dea2032feb6b1131d2e40357c37a1c18',25,2,NULL,'[]',1,'2018-01-22 09:34:51','2018-01-22 09:34:51','2019-01-22 09:34:51'),('df6f4f534b013ac8153bfb531d2e39dcd2afbdb62a8f7ed17f70d50bf73b9f8c843b42f34c609c7f',4,2,NULL,'[]',0,'2018-01-18 16:32:49','2018-01-18 16:32:49','2019-01-18 16:32:49'),('e07f0bb4f467af4e7229bd3ead02b2fa5c18966193c9de32c6bad650cf96e97faa0106fc1fd70f98',13,2,NULL,'[]',0,'2018-01-18 16:44:16','2018-01-18 16:44:16','2019-01-18 16:44:16'),('eb04d69886f9d49da602ecd7bf2237e32357627cd84e8ecb18b1708e27e5137ae30fbe91206dee8b',25,2,NULL,'[]',1,'2018-01-24 16:55:18','2018-01-24 16:55:18','2019-01-24 16:55:18'),('efd9943f73436f448ece82d7871d34e9459d0305d3434f7d96119eff8773097b7038951220d1372d',24,2,NULL,'[]',0,'2018-01-18 17:01:13','2018-01-18 17:01:13','2019-01-18 17:01:13'),('f30d7c6a784943dc936da430545132800583fcf0e3998f6df2af7968ba39f5ee963e66b22681c5ab',17,2,NULL,'[]',0,'2018-01-18 16:50:56','2018-01-18 16:50:56','2019-01-18 16:50:56');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

#
# Structure for table "oauth_auth_codes"
#

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "oauth_auth_codes"
#


#
# Structure for table "oauth_clients"
#

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "oauth_clients"
#

/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','cd4iddVIl5lp93OuRAzoVJn3ZgOSF7eNS9f0WuRd','http://localhost',1,0,0,'2018-01-18 15:07:06','2018-01-18 15:07:06'),(2,NULL,'Laravel Password Grant Client','AGiHIqBtf1cc7RjNjOE86eYD0f9gx6sCIDEvwAyT','http://localhost',0,1,0,'2018-01-18 15:07:06','2018-01-18 15:07:06');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

#
# Structure for table "oauth_personal_access_clients"
#

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "oauth_personal_access_clients"
#

/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2018-01-18 15:07:06','2018-01-18 15:07:06');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

#
# Structure for table "oauth_refresh_tokens"
#

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "oauth_refresh_tokens"
#

/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES ('0309a083b6890b70668f8f6f0a4b5d24c3bb267d3120607c11a412e9df7a1063715e2aefd4c3c33e','08fe1f57077a6c9f08ecf54a3a6c7adb7f56a179622aa135227ca21cc48853e73fe1b2752d88fef3',0,'2019-01-18 16:39:45'),('04b6a959fe1ddcf6a98c375b253af982107f9fe61845c4dc8c5f067737dd6775443005dcc4754c73','18fe6a1a521fa2e12ff0e6930958fd9d9f13200f2d1e7182ab2a081721d069ae87bf64cff9f4589e',0,'2019-01-18 16:43:40'),('0bdb48a04a33a428a8a8c3372f8acb4dd8886a2956329291214c903fc0153d823cb203f48d380093','24446501d3558c0147f88a130a8a4560afa0b8f5c0f9c827e4630cc27fc0dc9a71f1641da65d9d07',0,'2019-01-18 16:42:17'),('0efbb82a09887788baeb6a755408a977ce172710835d030f65de93f004522a762fd297a4a05950c2','21510620cbc9e491d0586291d059aec2cad77c8ab86d69e0342fbf7b6abacfcbbd7f0549b88c385e',0,'2019-01-18 16:36:13'),('1370a840cbdf1e0931fe33f3af4bdc971be0a51a7bbeb71394181f48485f952e4bcb3225790e427a','364f140e0537c86d34ce34e34fabe725a8aabae35e0134dc5fe52d295f20199a37451c0e8746f4fe',0,'2019-01-24 16:54:01'),('15b0eff9b9adf0be97c000d1fd283b7937f7ee6e1ca5741db36de4da4a9f5a3cf2821505ca26a208','0a2cefebedc08ecc375fb27f10474d9baa200a7b00d08201ff766e074bd7f25b40f035229686456a',0,'2019-01-18 16:36:32'),('1cdebdfee68ce59959548f4c0efbda07f0a0367bb71603d33da5ca5e8a7d49210e227f785897d51d','27f2e4f8938c4c0d6e3488a922bdb8688056602a21801782702eef85b1ded48977cedf62e24dfdcc',0,'2019-01-18 16:23:44'),('1df809399881a7610c6c4689b391989b897a950e9a989809b694fb1beaddcb9a968f2ffb43904eab','3a22d1ae05a4f8ddf261772a474ca7c7dc141b7ad5c36d6f3ad2d92b950e4a518154b60079fe9020',0,'2019-01-22 09:41:27'),('1ebde3a3040034d7d90294e2871ab7a5156a03899f58462b5979074e6556e933984c7daf6227272c','6ec4bfbbf59c71f83d0335ab6e224c2fc08f2575a9c2ff5a75d44e7b9ac7186ce439ae84a78df276',0,'2019-01-18 16:42:56'),('2ab9af347be668b3a3917d53c2bf1181757f843d5a9027e905c3ea023e481c916641a2b9eaa66004','f30d7c6a784943dc936da430545132800583fcf0e3998f6df2af7968ba39f5ee963e66b22681c5ab',0,'2019-01-18 16:50:56'),('36b8dfcb9646825cf374f51abefe8b3026d2de4fe0b562f47a68d90bf77d83f5c66cf8519f6ef418','8e101d9a263db93c78883ca7825ed26bfa38685132ecef5e286d007502b9dea2cba2056bc1e14321',0,'2019-01-18 16:38:31'),('40c091a0df64709c287556f602d7a760e676903464fbc708a5f769bcfcb0a1719a2bf73908c5976d','341777939d4386320ddd229df0aaedc21254ddd6ede849a0d74d7b30f8c98d268fb73f8960e3c289',0,'2019-01-18 16:29:02'),('49f7d12b91f5fc8c02bc51f930ee45fc5ab5b25d34517273e6d69d0dfa8c7105b9c5760dd60900a8','135d242d76c1501cfaf569123537a5e905c459a9f05721598ee3ea7cbf06372691a4f9aafa021cd8',0,'2019-01-18 16:56:37'),('4b091d385055afe70b5a452b0aa49b7955d3bc96aed0bfdc11d4d2e32e53e5ee4d65bb67e5949f1b','8aeb50c3e50dda34ec6e1b490b2d4172cf25b434cf7662a0b20192aa2d0de40b492154681ce13002',0,'2019-01-18 16:45:17'),('4cc5d92dfb43d3f202b4314224450a35b2998295bd1b0bd2bed7bc09bd46e9559ce8aa0941570092','9bc8145e7627f8f155e6cbd856c03388250ff6807c260e38f6f9852f9b788c8e25a7193074c5074b',0,'2019-01-22 09:04:13'),('53af357d85e6965e36be32663439d61adeb885d9d1380e47b2e2533ad11025233582cad19ee1e65c','efd9943f73436f448ece82d7871d34e9459d0305d3434f7d96119eff8773097b7038951220d1372d',0,'2019-01-18 17:01:13'),('54780080bddd54229dd059e0ceeefd15456a961be0ef91a131cd269b7999580ecdfa014d7a20369c','e07f0bb4f467af4e7229bd3ead02b2fa5c18966193c9de32c6bad650cf96e97faa0106fc1fd70f98',0,'2019-01-18 16:44:16'),('5c49432a936cf4537d3bfb27bf4ea74091dd9e444d4565a2342ee9790a7868b557f32ccbffdcbcaf','984ebcd3d424a5fb25dba949a5ae5ecc86dcbba0ab12f9c5d88a4d9aeba9193a1a638e8b45b47433',0,'2019-01-18 16:41:41'),('94a2a16e9d2cf9e0876fd14000e48786bf6860b5bf1822b6b18f159ee938937ed0844b8efac25a98','7d8cc61bb0e5af0f8b8b90c751985723f295e0733b963e27349e0e40809be85fc155c8229d9eb55b',0,'2019-01-18 16:53:53'),('a1c9afb55051547567bec6f77df4e672826fa7a1fd84d0c9380f192b61fdbfdf0f35989e9a5ba999','b4a823ae5d721a6f144539587b00305295c26772252753918dd79470636e0823a58a02be04e991b8',0,'2019-01-18 16:49:57'),('af2787319d74b2a7498da05d49886e1b8a89b775c9b1a4153ce0085663b3cb55c9468b1801df5b58','3877218a3fc3f2ad4e277f0cdd4e54853e4ba5a604d178ad44ae346bb7af19f0f223555174871ef3',0,'2019-01-18 16:57:29'),('bd4d3ea48e14e296a3343a96fc411d5078a858d678d1df48f262a23f77f44b9c85b005e2194c0973','714efea58193e9b8e98ae28908b68cd70ee6569004faebd725bb772ea9945c3b7ae731d5dc219942',0,'2019-01-18 16:54:49'),('c6db4f0d93decbd21fdf97c0b22b15e4736f2847207fee694629d4a745d0782ec2e6c20418672907','4e969d3ba7af8c7ec8554878ef56fa030cd929dbf5393bfbfe134e3e38f4312a54de864b4aea750e',0,'2019-01-18 16:58:07'),('d0f805ce9f460f5d1b22e2c8c32ca39c09e8ddee9e69d4239465b916305942e2e9ec4a1d219e3d7d','6abf8fd026e5d2774324485b30a502c307e5774429fa39068386458ea36bcd234a28b155de08171b',0,'2019-01-22 09:49:59'),('d1286bd88a8a2e5f659f7e1232ea7451cb11cc11e6971b7d989ad318c575c5405eaf64ea449d9aa6','b8b3d2fd4785b0e8b107b37ad37bf7bdbc4a7fc4f6e5f58ea08911a3fab6e9db4235752d924f3ffa',0,'2019-01-18 16:47:59'),('d52448073aa86be40ef6ff8b8595af6c392edbd4f8cad76664288715c9e962e4bf34dd1489e81a06','62f4215d536447a940af8c31605ba8bbeb8c3567e58bfe73a64c1f3e931ccb908c2b25db20dfdc95',0,'2019-01-22 09:03:49'),('d743309ad005552b8eb2c37a35b0001f9cc2a7204b95ad99608458f3815339d7565abbaf1e2e500f','eb04d69886f9d49da602ecd7bf2237e32357627cd84e8ecb18b1708e27e5137ae30fbe91206dee8b',0,'2019-01-24 16:55:18'),('dc3f0ebc0cb2f7a0080f8aa1d43a8c1f5523284cfa4c9e2b36a37dc5e7cae3775425805d9ed5f63b','cb7e681a11d1d4fb21ed5620a65c4d7f258a2ab6910bb379dea2032feb6b1131d2e40357c37a1c18',0,'2019-01-22 09:34:51'),('ee2fc5740009f0fd0942a516e511e4c072305bfe03795e39c7e131a75599ff0a2066056bffeb9012','df6f4f534b013ac8153bfb531d2e39dcd2afbdb62a8f7ed17f70d50bf73b9f8c843b42f34c609c7f',0,'2019-01-18 16:32:49'),('f7e7d85fdae24909ed093056fdb414dd05210b141f91de54c984970956efe7288fea0ee15b9a0b7b','885b2f1dc496fdbf78eb0ab406178198666fa6d2a311564bfc1689406473cf36356c268e58db1643',0,'2019-01-18 16:31:52'),('fbb4dc48fec90c8f3f13d2d4a879f778090810be674392736bcead9a059040a5ce694dbeb6e0982c','a2f4f10846c5c1275edb0a97c4291e5a9df6a69c9d19fc40a861615ab3686a119dd3acfb377a672b',0,'2019-01-18 16:58:57');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

#
# Structure for table "password_resets"
#

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "password_resets"
#


#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avater` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '1',
  `activate` tinyint(4) NOT NULL DEFAULT '1',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "users"
#

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jie','124@qq.com','http://p2ox33ako.bkt.clouddn.com/24.png',1,1,'$2y$10$ZxuL7rhDSjuW4gDm0KZWqOh2cNY7X6Gw2HdimpM5ffBqWEnw.DEKm',NULL,'2018-01-18 16:23:26','2018-01-18 16:23:26'),(2,'qwq','qwwqw@qq.com','http://p2ox33ako.bkt.clouddn.com/59/png',1,1,'$2y$10$9aGvAOrcyGvGOmxdXQK6tebXi3Kz/fP.IguhH9Ero301bveah.lLy',NULL,'2018-01-18 16:29:01','2018-01-18 16:29:01'),(3,'qwqw','qwweq@qq.com','http://p2ox33ako.bkt.clouddn.com/89/png',1,1,'$2y$10$PVbwt9VDFNNfr.lBJagLDuFNXLVz8eYEII5U1fGJpu81y/xAfHbOe',NULL,'2018-01-18 16:31:52','2018-01-18 16:31:52'),(4,'adadads','121231@qq.com','http://p2ox33ako.bkt.clouddn.com/43/png',1,1,'$2y$10$/tgSD95sTKApMaXX7ziwG.4uJfen97Qu8W8fRor2nbQGKCaGNBwZK',NULL,'2018-01-18 16:32:48','2018-01-18 16:32:48'),(5,'1121','1231ss33@qq.com','http://p2ox33ako.bkt.clouddn.com/65/png',1,1,'$2y$10$mUDnScgpW6ePNPtEe6IW4uY4hRzTui0QvLyQnmGpbz5wzR6NRV37a',NULL,'2018-01-18 16:36:13','2018-01-18 16:36:13'),(6,'1121','1231ssww33@qq.com','http://p2ox33ako.bkt.clouddn.com/72/png',1,1,'$2y$10$FN5BJCfnUFk81RvWuDHMFuwQq3mAbkpVXqgf2I1BfQ1y58BRb2.L2',NULL,'2018-01-18 16:36:31','2018-01-18 16:36:31'),(7,'qwqweq','qeqeqwew@qq.com','http://p2ox33ako.bkt.clouddn.com/83/png',1,1,'$2y$10$tiCDgJA52U0BsGCLDomKwex6Q..GnuPxT776DRh..fEfvNmdgmOIi',NULL,'2018-01-18 16:38:31','2018-01-18 16:38:31'),(8,'1111212','1249555@qq.com','http://p2ox33ako.bkt.clouddn.com/62/png',1,1,'$2y$10$FcUzl90C0geM.wYXe1SwWehKHNiELk.tKPDCLJRVbB6xjQM0YENIa',NULL,'2018-01-18 16:39:45','2018-01-18 16:39:45'),(9,'qwqee','q121@qq.com','http://p2ox33ako.bkt.clouddn.com/81/png',1,1,'$2y$10$Q5xorJAFZW.rro2NWY.cruKt1WcWZoU5QtfxIWTsZrUao7LEnfR4W',NULL,'2018-01-18 16:41:40','2018-01-18 16:41:40'),(10,'qwqw','qwqwe@qq.com','http://p2ox33ako.bkt.clouddn.com/38/png',1,1,'$2y$10$lCznrJ8tkDpyG.FvZTnLgeCyGwyvRLdBZcTt39I.ass1C8Ohfma4y',NULL,'2018-01-18 16:42:17','2018-01-18 16:42:17'),(11,'qwqeqeq','qewqewqe@q.com','http://p2ox33ako.bkt.clouddn.com/83/png',1,1,'$2y$10$49mvDCX9nzfWbKF2NKwMcuyKt3aTvqZv/oUigX4laCNyR/ZO0wSzO',NULL,'2018-01-18 16:42:56','2018-01-18 16:42:56'),(12,'ccc','ccc@qq.com','http://p2ox33ako.bkt.clouddn.com/34/png',1,1,'$2y$10$XBAH1hB7EbNekQc2/stT7uC0rd4ttBKAPLijsh4XqEl5DeP9NBJ9K',NULL,'2018-01-18 16:43:39','2018-01-18 16:43:39'),(13,'qweqwe','qeqeqe@aaaa.co','http://p2ox33ako.bkt.clouddn.com/12/png',1,1,'$2y$10$2qh.6yPwVOmvSaplNwp1mubOev5gCn67NEGGQQQf8krxMg98Oeu4e',NULL,'2018-01-18 16:44:15','2018-01-18 16:44:15'),(14,'qwdqeqe','qeqeqe@xx.com','http://p2ox33ako.bkt.clouddn.com/81/png',1,1,'$2y$10$rBnpeaHBrpr6nhzWfVvzBekS4zb/JIQ7BlYYllmpatHPp5G7On7ni',NULL,'2018-01-18 16:45:16','2018-01-18 16:45:16'),(15,'1212','3333@qq.com','http://p2ox33ako.bkt.clouddn.com/4/png',1,1,'$2y$10$O1LZ6NpRbg2axY3EHqF.5eVl/s2BhKQMIBR6tHqa2Ks6Tv1fg91fe',NULL,'2018-01-18 16:47:58','2018-01-18 16:47:58'),(16,'ada','asdad@qq.com','http://p2ox33ako.bkt.clouddn.com/18/png',1,1,'$2y$10$hob34ETRMeDtacgTat77VesEDN3pxg1UowjlmvbzvRczbgLadB1Wa',NULL,'2018-01-18 16:49:56','2018-01-18 16:49:56'),(17,'asdad','1231ddd@qq.com','http://p2ox33ako.bkt.clouddn.com/51/png',1,1,'$2y$10$z/sWsZIkWtACmjprC6Dl/uIynmHDv1j0qmCQGp6wK5pCGobJKNm0e',NULL,'2018-01-18 16:50:55','2018-01-18 16:50:55'),(18,'qwqw','qwqwqw@qqqq.com','http://p2ox33ako.bkt.clouddn.com/72/png',1,1,'$2y$10$Q0SgdyEL2HFLPmM6PSna8./F5Pni92KxpULHLDVMtQNpUhYgk0iRi',NULL,'2018-01-18 16:53:52','2018-01-18 16:53:52'),(19,'sasdad','adadadasd@qq.ocm','http://p2ox33ako.bkt.clouddn.com/88/png',1,1,'$2y$10$lKHFqPJIF2XDAGdHqCmCyevjjwvD8iGp7aVpmons9WksaJm6lt0d6',NULL,'2018-01-18 16:54:48','2018-01-18 16:54:48'),(20,'asda','sfsdf@qq.com','http://p2ox33ako.bkt.clouddn.com/43/png',1,1,'$2y$10$4GFoYzyfSM4m5llTSbwsMuAwL7kH7y/QnkWUS16yL.YRE3zCYPHhq',NULL,'2018-01-18 16:56:36','2018-01-18 16:56:36'),(21,'qwqw','q22w@qq.com','http://p2ox33ako.bkt.clouddn.com/27/png',1,1,'$2y$10$ZhE1Zr76lE6GHAH3qWpia.0UDgGgt0CetdIi6LcbMMWzVfSWolF4q',NULL,'2018-01-18 16:57:29','2018-01-18 16:57:29'),(22,'asdsad','adad@qq.com','http://p2ox33ako.bkt.clouddn.com/21/png',1,1,'$2y$10$EN3g6W6ZQFTI6Vp0MYbbe.a/yvfH2g13cnc597JWHEBlzaQMSsD4i',NULL,'2018-01-18 16:58:07','2018-01-18 16:58:07'),(23,'12121','123131@qq.ocm','http://p2ox33ako.bkt.clouddn.com/87/png',1,1,'$2y$10$QMiuORksKsONFGdYcZS7luxj1wPlUq29tGBWfLC8PYAHNaC1hHCdG',NULL,'2018-01-18 16:58:57','2018-01-18 16:58:57'),(24,'adsada','dfdf@qq.com','http://p2ox33ako.bkt.clouddn.com/36/png',1,1,'$2y$10$lyyCotf/7B1GZKIJ/ga6w.IEjnPHXq3/qEI4Jw0tOTtlFTuNsQvAa',NULL,'2018-01-18 17:01:12','2018-01-18 17:01:12'),(25,'武永洁','qq@qq.com','http://p2ox33ako.bkt.clouddn.com/67.png',1,1,'$2y$10$SffS3YChzHo7uMtRFY5eEO4givaotYSerXEqRIiPsqLh7wQbSdf2y','K1sO0SiQaVF9FvG8i4m4KjEXsDWamL3aVrzzH3TLo9FIxcSeu873lVimV2Du','2018-01-22 09:03:48','2018-01-22 09:03:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
