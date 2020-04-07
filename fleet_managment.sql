-- Adminer 4.7.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `buses`;
CREATE TABLE `buses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seats_count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `buses` (`id`, `seats_count`) VALUES
(1,	12),
(2,	12),
(3,	12);

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8,	'2014_10_12_000000_create_users_table',	1),
(9,	'2014_10_12_100000_create_password_resets_table',	1),
(10,	'2016_06_01_000001_create_oauth_auth_codes_table',	1),
(11,	'2016_06_01_000002_create_oauth_access_tokens_table',	1),
(12,	'2016_06_01_000003_create_oauth_refresh_tokens_table',	1),
(13,	'2016_06_01_000004_create_oauth_clients_table',	1),
(14,	'2016_06_01_000005_create_oauth_personal_access_clients_table',	1),
(15,	'2019_08_19_000000_create_failed_jobs_table',	1);

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('187036fa00ff0f82a9834bd2dc48f18556255a784e50642aa47531a7214b8d04bdfde20a2f212a88',	1,	1,	'Personal',	'[]',	0,	'2020-04-06 00:08:48',	'2020-04-06 00:08:48',	'2021-04-06 00:08:48'),
('24fec1db4641bc5a0642462ac5e5205f0c81e3cdba33d8ab664e17f73eb2bdcbdafc5c99c1575127',	2,	1,	'Personal',	'[]',	0,	'2020-04-07 03:29:34',	'2020-04-07 03:29:34',	'2021-04-07 03:29:34'),
('43411fe81493e1f362351f1bf6307fc7a802fd0f146ee6fd1ee77123c0d6c36644a8b407acec9208',	1,	1,	'Personal',	'[]',	0,	'2020-04-07 03:41:14',	'2020-04-07 03:41:14',	'2021-04-07 03:41:14'),
('5630ecc2fd4b559821620f402b892fc1af9dbadbcdd0b341c896344b289ddf6190a095645fdc3114',	1,	1,	'Personal',	'[]',	0,	'2020-04-04 23:52:43',	'2020-04-04 23:52:43',	'2021-04-04 23:52:43'),
('5c985dbc5bb9d54fd1fdf3f03a3511fe22980a10097f7200f0a6e8f5bb1bce05e23c8384f7c8b561',	1,	1,	'Personal',	'[]',	0,	'2020-04-04 23:52:40',	'2020-04-04 23:52:40',	'2021-04-04 23:52:40'),
('5d7f9c220f0e5dee49dc3cd942c3a115fbe7caa97ee363be4d87abddb568e0e4788fcd550f5eb3f2',	1,	1,	'Personal',	'[]',	0,	'2020-04-05 22:00:11',	'2020-04-05 22:00:11',	'2021-04-05 22:00:11'),
('6a9a882d0355040398de11dd635d068a08577bf62205361a873ae2e8d0d11c843ab8210d65dfc77c',	1,	1,	'Personal',	'[]',	0,	'2020-04-05 00:45:29',	'2020-04-05 00:45:29',	'2021-04-05 00:45:29'),
('6acf54ccde2516fe320270b6cc52fb1efa01d910d1523df94324e5d19269e43132fc50e2ec0d6f1e',	1,	1,	'Personal',	'[]',	0,	'2020-04-07 03:41:35',	'2020-04-07 03:41:35',	'2021-04-07 03:41:35'),
('7edf6c6c0ad4fd315313694d2e895cff44ea6014a8d1dadb706a079495ea8f25ec8419cb95e88f4f',	1,	1,	'Personal',	'[]',	0,	'2020-04-06 18:30:42',	'2020-04-06 18:30:42',	'2021-04-06 18:30:42'),
('844e53029078aec88eae28a964631b926d0c5393f74895c2536c37039336b1a1c9b0339310e47a06',	1,	1,	'Personal',	'[]',	0,	'2020-04-05 21:31:25',	'2020-04-05 21:31:25',	'2021-04-05 21:31:25'),
('8ba40d71a9ce4ddcae8029dfe5dbc3771a8f1310277d159e19da92e4f4ab2907afab24d39a865bfa',	1,	1,	'Personal',	'[]',	0,	'2020-04-07 06:49:46',	'2020-04-07 06:49:46',	'2020-10-07 06:49:46'),
('8f6a49c36dee16cf8193bbf9e3548e9ddd62a1c282800d544a5ad9b44f4014c9126347c03d052350',	1,	1,	'Personal',	'[]',	0,	'2020-04-04 23:56:37',	'2020-04-04 23:56:37',	'2021-04-04 23:56:37'),
('9d00032c2b68c4f8173895c8f4c92b2b9062a9b081e9f5dd368f5adff95396e947b5b84cf0781ff3',	1,	1,	'Personal',	'[]',	0,	'2020-04-06 00:30:34',	'2020-04-06 00:30:34',	'2021-04-06 00:30:34'),
('b375fe940787fd8685c928da23e9dfc7510a5c6cd66f8118cedc74a3dbd247be9552e9433a182e79',	1,	1,	'Personal',	'[]',	0,	'2020-04-07 07:06:59',	'2020-04-07 07:06:59',	'2020-10-07 07:06:59'),
('c4b0d8047105a20218c4a082ba17e643ab5b73815f8c7204655b8655e471002618a398f60eced9f3',	2,	1,	'Personal',	'[]',	0,	'2020-04-07 02:51:11',	'2020-04-07 02:51:11',	'2021-04-07 02:51:11'),
('c76689c9bf8450ef57aabfc29d7bd86e65089a3ac4385a1de49f2b31ca657f4151d9d107628e2be6',	1,	1,	'Personal',	'[]',	0,	'2020-04-07 03:41:48',	'2020-04-07 03:41:48',	'2021-04-07 03:41:48'),
('c8352ec1e56dafea4c2d11e00b8163606ada4c88855f8ec08630cb60fe5a816ce8987e1ab70daf79',	1,	1,	'Personal',	'[]',	0,	'2020-04-07 03:43:11',	'2020-04-07 03:43:11',	'2020-10-07 03:43:11'),
('c885eeff354d3596f19fd269803a7b865b3f87951a1f54bde2791480b496f34d42a989594f90c5ba',	1,	1,	'Personal',	'[]',	0,	'2020-04-04 23:47:39',	'2020-04-04 23:47:39',	'2021-04-04 23:47:39'),
('d7d86a7115fffc38299378553ff0f171a2265895f7db6f4cb606e2980d8b02d3bb4d381c33bddce5',	1,	1,	'Personal',	'[]',	0,	'2020-04-04 23:52:42',	'2020-04-04 23:52:42',	'2021-04-04 23:52:42'),
('d8b4718f7811a2b457ef0f40c8985ac94baf85e6ca0ae059045fbddf669065f2fdff272719994650',	1,	1,	'Personal',	'[]',	0,	'2020-04-07 03:41:54',	'2020-04-07 03:41:54',	'2021-04-07 03:41:54'),
('dfa3677dc1fa8169d21bfd91dd6cda9f48d472f261249a6f1a45601f7b4824bc53a7a5c719bc7f89',	1,	1,	'Personal',	'[]',	0,	'2020-04-05 00:00:00',	'2020-04-05 00:00:00',	'2021-04-05 00:00:00'),
('e59f262fb4640e5543b9445bfa4b78b796dd92aabace016dae9a1f7e6e99bdd94aab09d3d5e70d66',	1,	1,	'Personal',	'[]',	0,	'2020-04-06 00:30:34',	'2020-04-06 00:30:34',	'2021-04-06 00:30:34'),
('f16a8ca45d40d705b481a64412b423be79c3f6a0659b4931a839cc1698ca656b5a35838bcb1229a5',	1,	1,	'Personal',	'[]',	0,	'2020-04-04 23:52:25',	'2020-04-04 23:52:25',	'2021-04-04 23:52:25'),
('f7816eb0b800ed67de83cc347dd96ee65a991e28c3da3a3ace28622fbb29f9cd4c5ddb5def2c0188',	2,	1,	'Personal',	'[]',	0,	'2020-04-07 03:29:17',	'2020-04-07 03:29:17',	'2021-04-07 03:29:17');

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1,	NULL,	'personal',	'UNbPEbKhqvRSGWGIh61cA8MBOGZnnIV5WYjq9ioH',	'http://localhost',	1,	0,	0,	'2020-04-04 23:13:09',	'2020-04-04 23:13:09'),
(2,	NULL,	'Laravel Personal Access Client',	'CetFvMo1TDRt6wOO7nIpwhpkgIL1CjfdzZZsH4Q7',	'http://localhost',	1,	0,	0,	'2020-04-07 06:48:46',	'2020-04-07 06:48:46'),
(3,	NULL,	'Laravel Password Grant Client',	'9GmlwPgmpF5ddYRvzrF6O8PO7rMMqHGzBnDDyMD0',	'http://localhost',	0,	1,	0,	'2020-04-07 06:48:46',	'2020-04-07 06:48:46');

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1,	1,	'2020-04-04 23:13:09',	'2020-04-04 23:13:09'),
(2,	2,	'2020-04-07 06:48:46',	'2020-04-07 06:48:46');

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `seats`;
CREATE TABLE `seats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bus_id` (`bus_id`),
  CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `seats` (`id`, `bus_id`) VALUES
(1,	1),
(2,	1),
(3,	1),
(4,	1),
(5,	2),
(6,	2),
(7,	3);

DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `stations` (`id`, `name`) VALUES
(1,	'cairo'),
(2,	'benha'),
(3,	'shbin'),
(4,	'tanta'),
(5,	'alex'),
(6,	'matroh');

DROP TABLE IF EXISTS `station_trip`;
CREATE TABLE `station_trip` (
  `trip_id` int(11) NOT NULL,
  `from_station_id` int(11) NOT NULL,
  `to_station_id` int(11) NOT NULL,
  KEY `trip_id` (`trip_id`),
  KEY `from_station_id` (`from_station_id`),
  KEY `to_station_id` (`to_station_id`),
  CONSTRAINT `station_trip_ibfk_1` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE,
  CONSTRAINT `station_trip_ibfk_2` FOREIGN KEY (`from_station_id`) REFERENCES `stations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `station_trip_ibfk_3` FOREIGN KEY (`to_station_id`) REFERENCES `stations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `station_trip` (`trip_id`, `from_station_id`, `to_station_id`) VALUES
(1,	1,	2),
(1,	2,	3),
(1,	3,	4),
(1,	4,	5),
(2,	5,	6),
(3,	3,	4),
(3,	4,	5),
(3,	5,	6),
(2,	4,	5);

DROP TABLE IF EXISTS `trips`;
CREATE TABLE `trips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `bus_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bus_id` (`bus_id`),
  CONSTRAINT `trips_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`id`) ON DELETE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `trips` (`id`, `name`, `bus_id`) VALUES
(1,	'cairo - alex',	1),
(2,	'alex-matroh',	2),
(3,	'shbin - matrouh',	3);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1,	'habib',	'habib@gmail.com',	NULL,	'$2y$10$JzQk7YmOw4G.mveRVrhWROMH.7RN/W0Bwl3C8j4xYx5Sx7y7xJoeO',	NULL,	'2020-04-04 23:12:48',	'2020-04-04 23:12:48'),
(2,	'robousta@gmail.com',	'robousta@gmail.com',	NULL,	'$2y$10$3RIOKehgBj89E/iIWAL1oea76R0jhhXBaAdKnj/7rgZ43fKlymc/.',	NULL,	'2020-04-07 02:51:10',	'2020-04-07 02:51:10');

DROP TABLE IF EXISTS `users_trips`;
CREATE TABLE `users_trips` (
  `user_id` bigint(20) unsigned NOT NULL,
  `trip_id` int(11) NOT NULL,
  `seat_id` int(11) NOT NULL,
  `from_station` int(11) NOT NULL,
  `to_station` int(11) NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `trip_id` (`trip_id`),
  KEY `seat_id` (`seat_id`),
  KEY `from_station` (`from_station`),
  KEY `to_station` (`to_station`),
  CONSTRAINT `users_trips_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_trips_ibfk_2` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_trips_ibfk_3` FOREIGN KEY (`seat_id`) REFERENCES `seats` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_trips_ibfk_4` FOREIGN KEY (`from_station`) REFERENCES `stations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_trips_ibfk_5` FOREIGN KEY (`to_station`) REFERENCES `stations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- 2020-04-07 07:25:03
