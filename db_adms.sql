/*
SQLyog Community v13.2.1 (64 bit)
MySQL - 10.4.32-MariaDB : Database - rumahkrs
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`rumahkrs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `rumahkrs`;

/*Table structure for table `detail_pesanans` */

DROP TABLE IF EXISTS `detail_pesanans`;

CREATE TABLE `detail_pesanans` (
  `id_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_transaksi` int(11) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `kuantitas` int(11) DEFAULT NULL,
  `harga_total` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id_detail`),
  KEY `detail_pesanans_ibfk_1` (`id_transaksi`),
  KEY `detail_pesanans_ibfk_2` (`id_menu`),
  CONSTRAINT `detail_pesanans_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksis` (`id_transaksi`),
  CONSTRAINT `detail_pesanans_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menus` (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `detail_pesanans` */

insert  into `detail_pesanans`(`id_detail`,`id_transaksi`,`id_menu`,`kuantitas`,`harga_total`,`createdAt`,`updatedAt`) values 
(1,2,1,1,20000,'2024-05-15 18:44:48','2024-05-15 18:44:48'),
(2,2,3,1,5000,'2024-05-15 18:44:48','2024-05-15 18:44:48'),
(3,2,4,1,8000,'2024-05-15 18:44:48','2024-05-15 18:44:48'),
(5,3,1,1,20000,'2024-05-15 18:45:57','2024-05-15 18:45:57'),
(6,3,4,1,8000,'2024-05-15 18:45:57','2024-05-15 18:45:57'),
(7,3,9,1,18000,'2024-05-15 18:45:57','2024-05-15 18:45:57'),
(8,3,6,1,12000,'2024-05-15 18:45:57','2024-05-15 18:45:57'),
(9,4,3,1,5000,'2024-05-15 18:51:21','2024-05-15 18:51:21'),
(10,4,6,1,12000,'2024-05-15 18:51:21','2024-05-15 18:51:21'),
(11,4,8,1,18000,'2024-05-15 18:51:21','2024-05-15 18:51:21'),
(12,4,7,1,12000,'2024-05-15 18:51:21','2024-05-15 18:51:21'),
(13,4,1,1,20000,'2024-05-15 18:51:21','2024-05-15 18:51:21'),
(14,4,5,1,12000,'2024-05-15 18:51:21','2024-05-15 18:51:21'),
(15,5,6,1,12000,'2024-05-15 19:02:10','2024-05-15 19:02:10'),
(16,5,9,1,18000,'2024-05-15 19:02:10','2024-05-15 19:02:10'),
(17,6,1,1,20000,'2024-05-15 19:33:04','2024-05-15 19:33:04'),
(18,6,2,1,20000,'2024-05-15 19:33:04','2024-05-15 19:33:04'),
(19,6,3,1,5000,'2024-05-15 19:33:04','2024-05-15 19:33:04'),
(20,6,4,1,8000,'2024-05-15 19:33:04','2024-05-15 19:33:04'),
(21,7,1,1,20000,'2024-05-15 19:43:00','2024-05-15 19:43:00'),
(22,7,2,1,20000,'2024-05-15 19:43:00','2024-05-15 19:43:00'),
(23,7,3,1,5000,'2024-05-15 19:43:00','2024-05-15 19:43:00'),
(24,7,5,1,12000,'2024-05-15 19:43:00','2024-05-15 19:43:00'),
(25,7,4,1,8000,'2024-05-15 19:43:00','2024-05-15 19:43:00'),
(26,7,6,1,12000,'2024-05-15 19:43:00','2024-05-15 19:43:00'),
(27,8,5,1,12000,'2024-05-15 19:44:52','2024-05-15 19:44:52'),
(28,8,6,1,12000,'2024-05-15 19:44:52','2024-05-15 19:44:52'),
(29,8,7,1,12000,'2024-05-15 19:44:52','2024-05-15 19:44:52'),
(30,8,8,1,18000,'2024-05-15 19:44:52','2024-05-15 19:44:52'),
(31,8,9,1,18000,'2024-05-15 19:44:52','2024-05-15 19:44:52'),
(32,9,1,1,20000,'2024-05-15 19:55:41','2024-05-15 19:55:41'),
(33,9,3,1,5000,'2024-05-15 19:55:41','2024-05-15 19:55:41'),
(34,9,2,1,20000,'2024-05-15 19:55:41','2024-05-15 19:55:41'),
(35,9,4,1,8000,'2024-05-15 19:55:41','2024-05-15 19:55:41'),
(36,9,6,1,12000,'2024-05-15 19:55:41','2024-05-15 19:55:41'),
(37,9,5,1,12000,'2024-05-15 19:55:41','2024-05-15 19:55:41'),
(38,9,7,1,12000,'2024-05-15 19:55:41','2024-05-15 19:55:41'),
(39,10,1,1,20000,'2024-05-15 19:59:38','2024-05-15 19:59:38'),
(40,10,2,1,20000,'2024-05-15 19:59:38','2024-05-15 19:59:38'),
(41,10,3,1,5000,'2024-05-15 19:59:38','2024-05-15 19:59:38'),
(42,10,6,1,12000,'2024-05-15 19:59:38','2024-05-15 19:59:38'),
(43,10,4,1,8000,'2024-05-15 19:59:38','2024-05-15 19:59:38'),
(44,10,5,1,12000,'2024-05-15 19:59:38','2024-05-15 19:59:38'),
(45,11,1,1,20000,'2024-05-15 20:00:15','2024-05-15 20:00:15'),
(46,11,2,1,20000,'2024-05-15 20:00:15','2024-05-15 20:00:15'),
(47,11,6,1,12000,'2024-05-15 20:00:15','2024-05-15 20:00:15'),
(48,11,3,1,5000,'2024-05-15 20:00:15','2024-05-15 20:00:15'),
(49,11,4,1,8000,'2024-05-15 20:00:15','2024-05-15 20:00:15'),
(50,11,5,1,12000,'2024-05-15 20:00:15','2024-05-15 20:00:15'),
(51,12,1,1,20000,'2024-05-15 20:02:07','2024-05-15 20:02:07'),
(52,12,2,1,20000,'2024-05-15 20:02:07','2024-05-15 20:02:07'),
(53,12,3,1,5000,'2024-05-15 20:02:07','2024-05-15 20:02:07'),
(54,12,7,1,12000,'2024-05-15 20:02:07','2024-05-15 20:02:07'),
(55,12,4,1,8000,'2024-05-15 20:02:07','2024-05-15 20:02:07'),
(56,12,5,1,12000,'2024-05-15 20:02:07','2024-05-15 20:02:07'),
(57,12,6,1,12000,'2024-05-15 20:02:07','2024-05-15 20:02:07'),
(58,13,1,1,20000,'2024-05-15 20:12:26','2024-05-15 20:12:26'),
(59,13,2,1,20000,'2024-05-15 20:12:26','2024-05-15 20:12:26'),
(60,13,7,1,12000,'2024-05-15 20:12:26','2024-05-15 20:12:26'),
(61,13,3,1,5000,'2024-05-15 20:12:26','2024-05-15 20:12:26'),
(62,13,4,1,8000,'2024-05-15 20:12:26','2024-05-15 20:12:26'),
(63,13,5,1,12000,'2024-05-15 20:12:26','2024-05-15 20:12:26'),
(64,13,6,1,12000,'2024-05-15 20:12:26','2024-05-15 20:12:26'),
(65,13,8,1,18000,'2024-05-15 20:12:26','2024-05-15 20:12:26'),
(66,13,9,1,18000,'2024-05-15 20:12:26','2024-05-15 20:12:26'),
(67,14,2,1,20000,'2024-05-15 20:13:41','2024-05-15 20:13:41'),
(68,14,3,1,5000,'2024-05-15 20:13:41','2024-05-15 20:13:41'),
(69,14,6,1,12000,'2024-05-15 20:13:41','2024-05-15 20:13:41'),
(70,14,5,1,12000,'2024-05-15 20:13:41','2024-05-15 20:13:41'),
(71,15,2,1,20000,'2024-05-15 20:15:21','2024-05-15 20:15:21'),
(72,15,4,1,8000,'2024-05-15 20:15:21','2024-05-15 20:15:21'),
(73,16,1,1,20000,'2024-05-15 20:20:40','2024-05-15 20:20:40'),
(74,16,6,1,12000,'2024-05-15 20:20:40','2024-05-15 20:20:40'),
(75,16,7,1,12000,'2024-05-15 20:20:40','2024-05-15 20:20:40'),
(76,16,8,1,18000,'2024-05-15 20:20:40','2024-05-15 20:20:40'),
(77,16,9,2,36000,'2024-05-15 20:20:40','2024-05-15 20:20:40'),
(78,17,3,1,5000,'2024-05-15 20:22:09','2024-05-15 20:22:09'),
(79,17,4,1,8000,'2024-05-15 20:22:09','2024-05-15 20:22:09'),
(80,17,6,1,12000,'2024-05-15 20:22:09','2024-05-15 20:22:09'),
(81,17,7,1,12000,'2024-05-15 20:22:09','2024-05-15 20:22:09'),
(82,17,8,1,18000,'2024-05-15 20:22:09','2024-05-15 20:22:09'),
(83,17,9,1,18000,'2024-05-15 20:22:09','2024-05-15 20:22:09'),
(84,18,6,1,12000,'2024-05-15 20:23:16','2024-05-15 20:23:16'),
(85,18,9,1,18000,'2024-05-15 20:23:16','2024-05-15 20:23:16'),
(86,18,8,1,18000,'2024-05-15 20:23:16','2024-05-15 20:23:16'),
(87,18,4,1,8000,'2024-05-15 20:23:16','2024-05-15 20:23:16'),
(88,19,4,1,8000,'2024-05-15 20:28:26','2024-05-15 20:28:26'),
(89,19,7,1,12000,'2024-05-15 20:28:26','2024-05-15 20:28:26'),
(90,19,1,1,20000,'2024-05-15 20:28:26','2024-05-15 20:28:26'),
(91,19,2,1,20000,'2024-05-15 20:28:26','2024-05-15 20:28:26'),
(92,20,2,1,20000,'2024-05-15 20:29:57','2024-05-15 20:29:57'),
(93,20,5,1,12000,'2024-05-15 20:29:57','2024-05-15 20:29:57'),
(94,20,8,1,18000,'2024-05-15 20:29:57','2024-05-15 20:29:57'),
(95,21,5,1,12000,'2024-05-15 20:32:07','2024-05-15 20:32:07'),
(96,21,7,1,12000,'2024-05-15 20:32:07','2024-05-15 20:32:07'),
(97,21,6,2,24000,'2024-05-15 20:32:07','2024-05-15 20:32:07'),
(98,21,9,1,18000,'2024-05-15 20:32:07','2024-05-15 20:32:07'),
(99,22,3,1,5000,'2024-05-15 20:33:44','2024-05-15 20:33:44'),
(100,22,9,1,18000,'2024-05-15 20:33:44','2024-05-15 20:33:44'),
(101,22,4,1,8000,'2024-05-15 20:33:44','2024-05-15 20:33:44'),
(102,22,6,1,12000,'2024-05-15 20:33:44','2024-05-15 20:33:44'),
(103,22,7,1,12000,'2024-05-15 20:33:44','2024-05-15 20:33:44'),
(104,22,8,1,18000,'2024-05-15 20:33:44','2024-05-15 20:33:44'),
(105,23,4,1,8000,'2024-05-15 20:37:20','2024-05-15 20:37:20'),
(106,23,6,1,12000,'2024-05-15 20:37:20','2024-05-15 20:37:20'),
(107,23,8,1,18000,'2024-05-15 20:37:20','2024-05-15 20:37:20'),
(108,23,7,1,12000,'2024-05-15 20:37:20','2024-05-15 20:37:20'),
(109,24,5,1,12000,'2024-05-15 20:38:37','2024-05-15 20:38:37'),
(110,24,6,1,12000,'2024-05-15 20:38:37','2024-05-15 20:38:37'),
(111,24,8,1,18000,'2024-05-15 20:38:37','2024-05-15 20:38:37'),
(112,25,6,1,12000,'2024-05-15 20:39:54','2024-05-15 20:39:54'),
(113,25,9,1,18000,'2024-05-15 20:39:54','2024-05-15 20:39:54'),
(114,25,8,1,18000,'2024-05-15 20:39:54','2024-05-15 20:39:54'),
(115,25,7,1,12000,'2024-05-15 20:39:54','2024-05-15 20:39:54'),
(116,26,1,1,20000,'2024-05-15 20:43:27','2024-05-15 20:43:27'),
(117,26,3,1,5000,'2024-05-15 20:43:27','2024-05-15 20:43:27'),
(118,26,7,1,12000,'2024-05-15 20:43:27','2024-05-15 20:43:27'),
(119,26,4,1,8000,'2024-05-15 20:43:27','2024-05-15 20:43:27'),
(120,26,5,1,12000,'2024-05-15 20:43:27','2024-05-15 20:43:27'),
(121,26,6,1,12000,'2024-05-15 20:43:27','2024-05-15 20:43:27'),
(122,27,1,1,20000,'2024-05-15 20:49:13','2024-05-15 20:49:13'),
(123,27,2,1,20000,'2024-05-15 20:49:13','2024-05-15 20:49:13'),
(124,27,3,1,5000,'2024-05-15 20:49:13','2024-05-15 20:49:13'),
(125,27,4,1,8000,'2024-05-15 20:49:13','2024-05-15 20:49:13'),
(126,27,5,1,12000,'2024-05-15 20:49:13','2024-05-15 20:49:13'),
(127,27,6,1,12000,'2024-05-15 20:49:13','2024-05-15 20:49:13'),
(128,28,2,1,20000,'2024-05-15 20:50:36','2024-05-15 20:50:36'),
(129,28,4,1,8000,'2024-05-15 20:50:36','2024-05-15 20:50:36'),
(130,28,6,1,12000,'2024-05-15 20:50:36','2024-05-15 20:50:36'),
(131,28,7,1,12000,'2024-05-15 20:50:36','2024-05-15 20:50:36'),
(132,28,8,1,18000,'2024-05-15 20:50:36','2024-05-15 20:50:36'),
(133,29,7,1,12000,'2024-05-15 20:54:31','2024-05-15 20:54:31'),
(134,29,8,1,18000,'2024-05-15 20:54:31','2024-05-15 20:54:31'),
(135,29,9,1,18000,'2024-05-15 20:54:31','2024-05-15 20:54:31'),
(136,29,6,1,12000,'2024-05-15 20:54:31','2024-05-15 20:54:31'),
(137,29,5,1,12000,'2024-05-15 20:54:31','2024-05-15 20:54:31'),
(138,30,1,1,20000,'2024-05-15 20:55:23','2024-05-15 20:55:23'),
(139,30,2,1,20000,'2024-05-15 20:55:23','2024-05-15 20:55:23'),
(140,30,4,1,8000,'2024-05-15 20:55:23','2024-05-15 20:55:23'),
(141,30,3,1,5000,'2024-05-15 20:55:23','2024-05-15 20:55:23'),
(142,30,5,1,12000,'2024-05-15 20:55:23','2024-05-15 20:55:23'),
(143,31,4,1,8000,'2024-05-15 20:59:13','2024-05-15 20:59:13'),
(144,31,3,1,5000,'2024-05-15 20:59:13','2024-05-15 20:59:13'),
(145,31,2,1,20000,'2024-05-15 20:59:13','2024-05-15 20:59:13'),
(146,31,1,1,20000,'2024-05-15 20:59:13','2024-05-15 20:59:13'),
(147,31,9,1,18000,'2024-05-15 20:59:13','2024-05-15 20:59:13'),
(148,32,8,1,18000,'2024-05-15 21:01:38','2024-05-15 21:01:38'),
(149,32,7,1,12000,'2024-05-15 21:01:38','2024-05-15 21:01:38'),
(150,32,6,1,12000,'2024-05-15 21:01:38','2024-05-15 21:01:38'),
(151,32,5,1,12000,'2024-05-15 21:01:38','2024-05-15 21:01:38'),
(152,33,4,1,8000,'2024-05-15 21:03:06','2024-05-15 21:03:06'),
(153,33,7,1,12000,'2024-05-15 21:03:06','2024-05-15 21:03:06'),
(154,33,5,1,12000,'2024-05-15 21:03:06','2024-05-15 21:03:06'),
(155,33,8,1,18000,'2024-05-15 21:03:06','2024-05-15 21:03:06'),
(156,33,6,1,12000,'2024-05-15 21:03:06','2024-05-15 21:03:06'),
(157,34,4,1,8000,'2024-05-15 21:12:13','2024-05-15 21:12:13'),
(158,34,7,1,12000,'2024-05-15 21:12:13','2024-05-15 21:12:13'),
(159,34,8,1,18000,'2024-05-15 21:12:13','2024-05-15 21:12:13'),
(160,35,4,1,8000,'2024-05-15 21:15:47','2024-05-15 21:15:47'),
(161,35,2,1,20000,'2024-05-15 21:15:47','2024-05-15 21:15:47'),
(162,35,3,1,5000,'2024-05-15 21:15:47','2024-05-15 21:15:47'),
(163,35,6,1,12000,'2024-05-15 21:15:47','2024-05-15 21:15:47'),
(164,35,7,1,12000,'2024-05-15 21:15:47','2024-05-15 21:15:47'),
(165,36,3,1,5000,'2024-05-15 21:18:27','2024-05-15 21:18:27'),
(166,36,1,1,20000,'2024-05-15 21:18:27','2024-05-15 21:18:27'),
(167,36,2,1,20000,'2024-05-15 21:18:27','2024-05-15 21:18:27'),
(168,36,4,1,8000,'2024-05-15 21:18:27','2024-05-15 21:18:27'),
(169,36,8,1,18000,'2024-05-15 21:18:27','2024-05-15 21:18:27'),
(170,37,3,1,5000,'2024-05-15 21:21:55','2024-05-15 21:21:55'),
(171,37,8,1,18000,'2024-05-15 21:21:55','2024-05-15 21:21:55'),
(172,37,9,1,18000,'2024-05-15 21:21:55','2024-05-15 21:21:55'),
(173,38,6,1,12000,'2024-05-15 21:22:50','2024-05-15 21:22:50'),
(174,38,4,1,8000,'2024-05-15 21:22:50','2024-05-15 21:22:50'),
(175,38,3,1,5000,'2024-05-15 21:22:50','2024-05-15 21:22:50'),
(176,38,1,1,20000,'2024-05-15 21:22:50','2024-05-15 21:22:50'),
(177,38,2,1,20000,'2024-05-15 21:22:50','2024-05-15 21:22:50'),
(178,39,1,1,20000,'2024-05-16 05:32:26','2024-05-16 05:32:26'),
(179,39,2,1,20000,'2024-05-16 05:32:26','2024-05-16 05:32:26'),
(180,39,3,1,5000,'2024-05-16 05:32:26','2024-05-16 05:32:26'),
(181,39,4,1,8000,'2024-05-16 05:32:26','2024-05-16 05:32:26'),
(182,40,1,1,20000,'2024-05-16 05:59:26','2024-05-16 05:59:26'),
(183,40,2,1,20000,'2024-05-16 05:59:26','2024-05-16 05:59:26'),
(184,40,3,1,5000,'2024-05-16 05:59:26','2024-05-16 05:59:26'),
(185,41,1,1,20000,'2024-05-16 06:10:11','2024-05-16 06:10:11'),
(186,41,6,1,12000,'2024-05-16 06:10:11','2024-05-16 06:10:11'),
(187,41,3,1,5000,'2024-05-16 06:10:11','2024-05-16 06:10:11'),
(188,42,7,1,12000,'2024-05-16 06:11:05','2024-05-16 06:11:05'),
(189,42,6,1,12000,'2024-05-16 06:11:05','2024-05-16 06:11:05'),
(190,42,5,1,12000,'2024-05-16 06:11:05','2024-05-16 06:11:05'),
(191,43,2,1,20000,'2024-05-16 06:15:04','2024-05-16 06:15:04'),
(192,43,5,1,12000,'2024-05-16 06:15:04','2024-05-16 06:15:04'),
(193,44,1,1,20000,'2024-05-16 06:25:44','2024-05-16 06:25:44'),
(194,44,2,1,20000,'2024-05-16 06:25:44','2024-05-16 06:25:44'),
(195,44,4,1,8000,'2024-05-16 06:25:44','2024-05-16 06:25:44'),
(196,44,5,1,12000,'2024-05-16 06:25:44','2024-05-16 06:25:44'),
(197,45,2,1,20000,'2024-05-16 06:28:43','2024-05-16 06:28:43'),
(198,45,1,1,20000,'2024-05-16 06:28:43','2024-05-16 06:28:43'),
(199,45,4,1,8000,'2024-05-16 06:28:43','2024-05-16 06:28:43'),
(200,45,6,1,12000,'2024-05-16 06:28:43','2024-05-16 06:28:43'),
(201,46,1,1,20000,'2024-05-16 06:31:28','2024-05-16 06:31:28'),
(202,46,2,1,20000,'2024-05-16 06:31:28','2024-05-16 06:31:28'),
(203,46,6,1,12000,'2024-05-16 06:31:28','2024-05-16 06:31:28'),
(204,47,1,1,20000,'2024-05-16 06:32:46','2024-05-16 06:32:46'),
(205,47,2,1,20000,'2024-05-16 06:32:46','2024-05-16 06:32:46'),
(206,47,3,1,5000,'2024-05-16 06:32:46','2024-05-16 06:32:46'),
(207,48,1,1,20000,'2024-05-16 06:34:43','2024-05-16 06:34:43'),
(208,48,3,1,5000,'2024-05-16 06:34:43','2024-05-16 06:34:43'),
(209,48,2,1,20000,'2024-05-16 06:34:43','2024-05-16 06:34:43'),
(210,49,1,1,20000,'2024-05-16 06:38:25','2024-05-16 06:38:25'),
(211,49,2,1,20000,'2024-05-16 06:38:25','2024-05-16 06:38:25'),
(212,49,3,1,5000,'2024-05-16 06:38:25','2024-05-16 06:38:25'),
(213,50,1,1,20000,'2024-05-16 06:42:05','2024-05-16 06:42:05'),
(214,50,2,1,20000,'2024-05-16 06:42:05','2024-05-16 06:42:05'),
(215,51,1,1,20000,'2024-05-16 06:43:17','2024-05-16 06:43:17'),
(216,51,3,1,5000,'2024-05-16 06:43:17','2024-05-16 06:43:17');

/*Table structure for table `mejas` */

DROP TABLE IF EXISTS `mejas`;

CREATE TABLE `mejas` (
  `id_meja` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_meja` int(11) DEFAULT NULL,
  `status` enum('tersedia','tidak tersedia') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id_meja`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `mejas` */

insert  into `mejas`(`id_meja`,`nomor_meja`,`status`,`createdAt`,`updatedAt`) values 
(1,1,'tersedia','2024-05-15 18:10:10','2024-05-15 18:10:10');

/*Table structure for table `menus` */

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga_pcs` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `menus` */

insert  into `menus`(`id_menu`,`nama_menu`,`jenis`,`deskripsi`,`harga_pcs`,`url`,`createdAt`,`updatedAt`) values 
(1,'Kebab With Real Meat','Makanan','Kebab dengan daging asli yang juicy dan bumbu rempah khas, dipanggang hingga sempurna. Nikmati cita rasa autentik yang menggugah selera.',20000.00,'../foto/kebab.jpg','2024-05-15 15:51:49','2024-05-15 15:51:49'),
(2,'Fried Rice Kebab','Makanan','Perpaduan unik nasi goreng yang lezat dengan daging kebab yang gurih, menciptakan sensasi rasa baru yang memanjakan lidah',20000.00,'../foto/kebabnasgor.jpg','2024-05-15 15:53:02','2024-05-15 15:53:02'),
(3,'Iced Tea','Minuman','Teh dingin yang segar dan menyegarkan, sempurna untuk menemani setiap hidangan Anda',5000.00,'../foto/Minum1.jpg','2024-05-15 15:53:48','2024-05-15 15:53:48'),
(4,'Fresh Lemon Juice Lime','Minuman','Jus lemon dan jeruk nipis segar yang penuh vitamin C, memberikan rasa asam manis yang menyegarkan',8000.00,'../foto/Minum2.jpg','2024-05-15 15:54:36','2024-05-15 15:54:36'),
(5,'Cappucino Float','Minuman','Kombinasi sempurna antara cappuccino klasik dan es krim vanila yang creamy. Sensasi nikmat yang tak terlupakan',12000.00,'../foto/Minum3.jpg','2024-05-15 15:55:26','2024-05-15 15:55:26'),
(6,'Matcha Creamy','Minuman','Minuman matcha dengan tekstur creamy yang lembut dan rasa manis yang seimbang. Pilihan ideal untuk pencinta teh hijau',12000.00,'../foto/Minum4.jpg','2024-05-15 15:56:00','2024-05-15 15:56:00'),
(7,'Iced Cendol','Minuman','Minuman tradisional dengan cendol lembut, gula merah, dan santan, disajikan dengan es serut. Nikmati kesegaran rasa khas Indonesia',12000.00,'../foto/Minum5.jpg','2024-05-15 15:57:05','2024-05-15 15:57:05'),
(8,'Chicken Katsu Curry','Makanan','Potongan ayam katsu yang renyah dipadukan dengan kuah kari Jepang yang kental dan lezat. Hidangan sempurna bagi pecinta kuliner Asia',18000.00,'../foto/makan2.jpg','2024-05-15 15:58:00','2024-05-15 15:58:00'),
(9,'Sweet and Sour Chicken','Makanan','Ayam goreng krispi dengan saus asam manis yang segar dan menggoda selera. Cocok untuk segala suasana makan',18000.00,'../foto/makan3.jpg','2024-05-15 15:58:29','2024-05-15 15:58:29');

/*Table structure for table `pelanggans` */

DROP TABLE IF EXISTS `pelanggans`;

CREATE TABLE `pelanggans` (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pelanggan` varchar(255) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pelanggans` */

insert  into `pelanggans`(`id_pelanggan`,`nama_pelanggan`,`no_telp`,`createdAt`,`updatedAt`) values 
(3,'Samuel Raka Yustianto','089516836510','2024-05-15 16:58:14','2024-05-15 16:58:14'),
(4,'Raka','085651173361','2024-05-15 16:59:48','2024-05-15 16:59:48'),
(5,'Anto','0928340789','2024-05-15 17:00:36','2024-05-15 17:00:36'),
(6,'Cici','0982130971','2024-05-15 17:26:53','2024-05-15 17:26:53'),
(9,NULL,NULL,'2024-05-15 17:39:56','2024-05-15 17:39:56'),
(10,NULL,NULL,'2024-05-15 17:41:06','2024-05-15 17:41:06'),
(11,NULL,NULL,'2024-05-15 17:47:04','2024-05-15 17:47:04'),
(12,NULL,NULL,'2024-05-15 17:48:57','2024-05-15 17:48:57'),
(13,NULL,NULL,'2024-05-15 17:49:11','2024-05-15 17:49:11'),
(14,NULL,'08123087129837','2024-05-15 17:50:22','2024-05-15 17:50:22'),
(15,'Keysya','08123087129837','2024-05-15 17:50:43','2024-05-15 17:50:43'),
(16,'weasdasda','234234234','2024-05-15 17:55:24','2024-05-15 17:55:24'),
(17,'asdadawd','3242354325','2024-05-15 18:00:05','2024-05-15 18:00:05'),
(18,'awdasdxcsdf','2342354435345','2024-05-15 18:01:25','2024-05-15 18:01:25'),
(19,'awdasdxcsdf','2342354435345','2024-05-15 18:02:12','2024-05-15 18:02:12'),
(20,'dfsdfsdf','13423425435','2024-05-15 18:30:17','2024-05-15 18:30:17'),
(21,'isisidaidi','324234124','2024-05-15 18:38:20','2024-05-15 18:38:20'),
(22,'yoyo','678678678','2024-05-15 18:44:40','2024-05-15 18:44:40'),
(23,'yaya','34234234234','2024-05-15 18:45:48','2024-05-15 18:45:48'),
(24,'Yin','6575674574567','2024-05-15 18:51:11','2024-05-15 18:51:11'),
(25,'Bibi','080984534','2024-05-15 19:01:57','2024-05-15 19:01:57'),
(26,'Bubu','2342542353','2024-05-15 19:11:04','2024-05-15 19:11:04'),
(27,'bobo','2342342345','2024-05-15 19:18:44','2024-05-15 19:18:44'),
(28,'boboi','23423423452','2024-05-15 19:22:00','2024-05-15 19:22:00'),
(29,'dsasad','23423455','2024-05-15 19:23:55','2024-05-15 19:23:55'),
(30,'bolo','324234134','2024-05-15 19:31:54','2024-05-15 19:31:54'),
(31,'bili','3432454','2024-05-15 19:32:56','2024-05-15 19:32:56'),
(32,'nono','678686','2024-05-15 19:42:53','2024-05-15 19:42:53'),
(33,'nonp','6786862','2024-05-15 19:44:43','2024-05-15 19:44:43'),
(34,'bobon','2132342','2024-05-15 19:55:32','2024-05-15 19:55:32'),
(35,'sadasdw','2314234','2024-05-15 19:59:30','2024-05-15 19:59:30'),
(36,'sadasdw','2314234','2024-05-15 20:00:08','2024-05-15 20:00:08'),
(37,'sadasdws','23142344','2024-05-15 20:01:58','2024-05-15 20:01:58'),
(38,'affasfa','4324124','2024-05-15 20:12:16','2024-05-15 20:12:16'),
(39,'adsad','35452','2024-05-15 20:13:34','2024-05-15 20:13:34'),
(40,'fhgjfh','3455464','2024-05-15 20:15:16','2024-05-15 20:15:16'),
(41,'mggn','767568','2024-05-15 20:20:28','2024-05-15 20:20:28'),
(42,'mfnbv','45435','2024-05-15 20:22:02','2024-05-15 20:22:02'),
(43,'mfnbvs','454355','2024-05-15 20:23:09','2024-05-15 20:23:09'),
(44,'mfnbvsD','4543553','2024-05-15 20:28:15','2024-05-15 20:28:15'),
(45,'mfnbvsDd','45435535','2024-05-15 20:29:50','2024-05-15 20:29:50'),
(46,'cfsf','565463','2024-05-15 20:31:57','2024-05-15 20:31:57'),
(47,'cfsfd','5654635','2024-05-15 20:33:37','2024-05-15 20:33:37'),
(48,'cfsfdk','56546358','2024-05-15 20:37:09','2024-05-15 20:37:09'),
(49,'cfsfdkj','565463580','2024-05-15 20:38:27','2024-05-15 20:38:27'),
(50,'cfsfdkjs','5654635801','2024-05-15 20:39:47','2024-05-15 20:39:47'),
(51,'cfsfdkjss','56546358011','2024-05-15 20:43:17','2024-05-15 20:43:17'),
(52,'sff','34241','2024-05-15 20:49:03','2024-05-15 20:49:03'),
(53,'sffd','342412','2024-05-15 20:50:28','2024-05-15 20:50:28'),
(54,'sffdx','3424127','2024-05-15 20:54:25','2024-05-15 20:54:25'),
(55,'sffdx2h','34241278','2024-05-15 20:55:16','2024-05-15 20:55:16'),
(56,'sffdx2hd','342412784','2024-05-15 20:59:07','2024-05-15 20:59:07'),
(57,'sffdx2hdl','3424127848','2024-05-15 21:01:32','2024-05-15 21:01:32'),
(58,'sffdx2hdlf','34241278485','2024-05-15 21:02:59','2024-05-15 21:02:59'),
(59,'sffdx2hdlfd','342412784852','2024-05-15 21:12:05','2024-05-15 21:12:05'),
(60,'sffdx2hdlfdd','3424127848523','2024-05-15 21:15:39','2024-05-15 21:15:39'),
(61,'sffdx2hdlfddd','34241278485234','2024-05-15 21:18:19','2024-05-15 21:18:19'),
(62,'sffdx2hdlfdddfd','342412784852342','2024-05-15 21:21:48','2024-05-15 21:21:48'),
(63,'sffdx2hdlfdddfdy','34241278485238','2024-05-15 21:22:43','2024-05-15 21:22:43'),
(64,'mada','0812397841','2024-05-16 04:26:10','2024-05-16 04:26:10'),
(65,'gdf','32423425','2024-05-16 04:28:58','2024-05-16 04:28:58'),
(66,'gdfa','324234251','2024-05-16 04:31:51','2024-05-16 04:31:51'),
(67,'fffsdf','1234324','2024-05-16 04:51:03','2024-05-16 04:51:03'),
(68,'kdkasd','3242542','2024-05-16 04:53:55','2024-05-16 04:53:55'),
(69,'war','32425422','2024-05-16 04:55:14','2024-05-16 04:55:14'),
(70,'jdtj','564562','2024-05-16 04:59:51','2024-05-16 04:59:51'),
(71,'jdtjk','5645620','2024-05-16 05:03:59','2024-05-16 05:03:59'),
(72,'qwgh','2345435','2024-05-16 05:05:08','2024-05-16 05:05:08'),
(73,'qwghd','23454357','2024-05-16 05:14:38','2024-05-16 05:14:38'),
(74,'qwghdf','234543572','2024-05-16 05:24:29','2024-05-16 05:24:29'),
(75,'xadasd','23432451','2024-05-16 05:31:27','2024-05-16 05:31:27'),
(76,'dsadasd','3242342524','2024-05-16 05:32:16','2024-05-16 05:32:16'),
(77,'mlgfdg','234235345','2024-05-16 05:59:07','2024-05-16 05:59:07'),
(78,'mlgfdgf','2342353453','2024-05-16 06:09:59','2024-05-16 06:09:59'),
(79,'mlgfdgfh','23423534534','2024-05-16 06:10:37','2024-05-16 06:10:37'),
(80,'rteert','231224','2024-05-16 06:14:53','2024-05-16 06:14:53'),
(81,'rteerts','2312244','2024-05-16 06:25:21','2024-05-16 06:25:21'),
(82,'beni','09810982','2024-05-16 06:28:28','2024-05-16 06:28:28'),
(83,'benis','098109821','2024-05-16 06:31:15','2024-05-16 06:31:15'),
(84,'benisa','0981098211','2024-05-16 06:32:35','2024-05-16 06:32:35'),
(85,'benisam','09810982112','2024-05-16 06:34:30','2024-05-16 06:34:30'),
(86,'benisan','09810982111','2024-05-16 06:38:10','2024-05-16 06:38:10'),
(87,'benisanw','098109821113','2024-05-16 06:41:55','2024-05-16 06:41:55'),
(88,'aldi','098109821112','2024-05-16 06:43:08','2024-05-16 06:43:08');

/*Table structure for table `transaksis` */

DROP TABLE IF EXISTS `transaksis`;

CREATE TABLE `transaksis` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int(11) DEFAULT NULL,
  `jumlah_bayar` decimal(10,2) DEFAULT NULL,
  `jenis_pembayaran` varchar(255) DEFAULT NULL,
  `jenis_pesanan` enum('Dine In','Take Away') DEFAULT NULL,
  `id_meja` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id_transaksi`),
  KEY `transaksis_ibfk_1` (`id_pelanggan`),
  KEY `transaksis_ibfk_2` (`id_meja`),
  CONSTRAINT `transaksis_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggans` (`id_pelanggan`),
  CONSTRAINT `transaksis_ibfk_2` FOREIGN KEY (`id_meja`) REFERENCES `mejas` (`id_meja`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `transaksis` */

insert  into `transaksis`(`id_transaksi`,`id_pelanggan`,`jumlah_bayar`,`jenis_pembayaran`,`jenis_pesanan`,`id_meja`,`createdAt`,`updatedAt`) values 
(2,22,51000.00,'Tunai','Take Away',NULL,'2024-05-15 18:44:48','2024-05-15 18:44:48'),
(3,23,58000.00,'Tunai','Take Away',NULL,'2024-05-15 18:45:57','2024-05-15 18:45:57'),
(4,24,79000.00,'Tunai','Take Away',NULL,'2024-05-15 18:51:21','2024-05-15 18:51:21'),
(5,25,30000.00,'Tunai','Take Away',NULL,'2024-05-15 19:02:10','2024-05-15 19:02:10'),
(6,31,53000.00,'Tunai','Take Away',NULL,'2024-05-15 19:33:04','2024-05-15 19:33:04'),
(7,32,77000.00,'Tunai','Take Away',NULL,'2024-05-15 19:43:00','2024-05-15 19:43:00'),
(8,33,72000.00,'Tunai','Take Away',NULL,'2024-05-15 19:44:52','2024-05-15 19:44:52'),
(9,34,89000.00,'Tunai','Take Away',NULL,'2024-05-15 19:55:41','2024-05-15 19:55:41'),
(10,35,77000.00,'Tunai','Take Away',NULL,'2024-05-15 19:59:38','2024-05-15 19:59:38'),
(11,36,77000.00,'Tunai','Take Away',NULL,'2024-05-15 20:00:15','2024-05-15 20:00:15'),
(12,37,89000.00,'Tunai','Take Away',NULL,'2024-05-15 20:02:07','2024-05-15 20:02:07'),
(13,38,125000.00,'Tunai','Take Away',NULL,'2024-05-15 20:12:26','2024-05-15 20:12:26'),
(14,39,49000.00,'Tunai','Take Away',NULL,'2024-05-15 20:13:41','2024-05-15 20:13:41'),
(15,40,28000.00,'Tunai','Take Away',NULL,'2024-05-15 20:15:21','2024-05-15 20:15:21'),
(16,41,98000.00,'Tunai','Take Away',NULL,'2024-05-15 20:20:40','2024-05-15 20:20:40'),
(17,42,73000.00,'Tunai','Take Away',NULL,'2024-05-15 20:22:09','2024-05-15 20:22:09'),
(18,43,56000.00,'Tunai','Take Away',NULL,'2024-05-15 20:23:16','2024-05-15 20:23:16'),
(19,44,60000.00,'Tunai','Take Away',NULL,'2024-05-15 20:28:26','2024-05-15 20:28:26'),
(20,45,50000.00,'Tunai','Take Away',NULL,'2024-05-15 20:29:57','2024-05-15 20:29:57'),
(21,46,66000.00,'Tunai','Take Away',NULL,'2024-05-15 20:32:07','2024-05-15 20:32:07'),
(22,47,73000.00,'Tunai','Take Away',NULL,'2024-05-15 20:33:44','2024-05-15 20:33:44'),
(23,48,50000.00,'Tunai','Take Away',NULL,'2024-05-15 20:37:20','2024-05-15 20:37:20'),
(24,49,42000.00,'Tunai','Take Away',NULL,'2024-05-15 20:38:37','2024-05-15 20:38:37'),
(25,50,60000.00,'Tunai','Take Away',NULL,'2024-05-15 20:39:54','2024-05-15 20:39:54'),
(26,51,69000.00,'Tunai','Take Away',NULL,'2024-05-15 20:43:27','2024-05-15 20:43:27'),
(27,52,77000.00,'Tunai','Take Away',NULL,'2024-05-15 20:49:13','2024-05-15 20:49:13'),
(28,53,70000.00,'Tunai','Take Away',NULL,'2024-05-15 20:50:36','2024-05-15 20:50:36'),
(29,54,72000.00,'Tunai','Take Away',NULL,'2024-05-15 20:54:31','2024-05-15 20:54:31'),
(30,55,65000.00,'Tunai','Take Away',NULL,'2024-05-15 20:55:23','2024-05-15 20:55:23'),
(31,56,71000.00,'Tunai','Take Away',NULL,'2024-05-15 20:59:13','2024-05-15 20:59:13'),
(32,57,54000.00,'Tunai','Take Away',NULL,'2024-05-15 21:01:38','2024-05-15 21:01:38'),
(33,58,62000.00,'Tunai','Take Away',NULL,'2024-05-15 21:03:06','2024-05-15 21:03:06'),
(34,59,38000.00,'Tunai','Take Away',NULL,'2024-05-15 21:12:13','2024-05-15 21:12:13'),
(35,60,57000.00,'Tunai','Take Away',NULL,'2024-05-15 21:15:47','2024-05-15 21:15:47'),
(36,61,71000.00,'Tunai','Take Away',NULL,'2024-05-15 21:18:27','2024-05-15 21:18:27'),
(37,62,41000.00,'Tunai','Take Away',NULL,'2024-05-15 21:21:55','2024-05-15 21:21:55'),
(38,63,65000.00,'Tunai','Take Away',NULL,'2024-05-15 21:22:50','2024-05-15 21:22:50'),
(39,76,53000.00,'Tunai','Take Away',NULL,'2024-05-16 05:32:26','2024-05-16 05:32:26'),
(40,77,45000.00,'Tunai','Take Away',NULL,'2024-05-16 05:59:26','2024-05-16 05:59:26'),
(41,78,37000.00,'Tunai','Take Away',NULL,'2024-05-16 06:10:11','2024-05-16 06:10:11'),
(42,79,36000.00,'Tunai','Take Away',NULL,'2024-05-16 06:11:05','2024-05-16 06:11:05'),
(43,80,32000.00,'Tunai','Take Away',NULL,'2024-05-16 06:15:04','2024-05-16 06:15:04'),
(44,81,60000.00,'Tunai','Take Away',NULL,'2024-05-16 06:25:44','2024-05-16 06:25:44'),
(45,82,60000.00,'Tunai','Take Away',NULL,'2024-05-16 06:28:43','2024-05-16 06:28:43'),
(46,83,52000.00,'Tunai','Take Away',NULL,'2024-05-16 06:31:28','2024-05-16 06:31:28'),
(47,84,45000.00,'Tunai','Take Away',NULL,'2024-05-16 06:32:46','2024-05-16 06:32:46'),
(48,85,45000.00,'Tunai','Take Away',NULL,'2024-05-16 06:34:43','2024-05-16 06:34:43'),
(49,86,45000.00,'Tunai','Take Away',NULL,'2024-05-16 06:38:25','2024-05-16 06:38:25'),
(50,87,40000.00,'Tunai','Take Away',NULL,'2024-05-16 06:42:05','2024-05-16 06:42:05'),
(51,88,25000.00,'Tunai','Take Away',NULL,'2024-05-16 06:43:17','2024-05-16 06:43:17');

/* Function  structure for function  `customer_name` */

/*!50003 DROP FUNCTION IF EXISTS `customer_name` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `customer_name`(cust_id INT) RETURNS varchar(255) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
	DECLARE cust_name VARCHAR(255);
    
	SELECT nama_pelanggan INTO cust_name
	FROM PELANGGAN
	WHERE id_pelanggan = cust_id;
    
	RETURN cust_name;
    END */$$
DELIMITER ;

/* Function  structure for function  `tampilkan_detail_pembelian` */

/*!50003 DROP FUNCTION IF EXISTS `tampilkan_detail_pembelian` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `tampilkan_detail_pembelian`(id_transaksi_input INT) RETURNS text CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE output TEXT DEFAULT '';
    
    SELECT CONCAT('Nama Pelanggan: ', PELANGGANS.nama_pelanggan, '\n',
                  'Menu yang Dibeli: ', 
                  GROUP_CONCAT(
                      CONCAT(
                          MENUS.nama_menu, ' (', 
                          kuantitas, ' pcs)'
                      ) SEPARATOR ', '), 
                  '\n',
                  'Total Bayar: Rp ', SUM(DETAIL_PESANANS.harga_total)) 
    INTO output
    FROM TRANSAKSIS
    JOIN PELANGGANS ON TRANSAKSIS.id_pelanggan = PELANGGANS.id_pelanggan
    JOIN (
        SELECT id_transaksi, id_menu, SUM(kuantitas) AS kuantitas, SUM(harga_total) AS harga_total
        FROM DETAIL_PESANANS
        GROUP BY id_transaksi, id_menu
    ) AS DETAIL_PESANANS ON TRANSAKSIS.id_transaksi = DETAIL_PESANANS.id_transaksi
    JOIN MENUS ON DETAIL_PESANANS.id_menu = MENUS.id_menu
    WHERE TRANSAKSIS.id_transaksi = id_transaksi_input
    GROUP BY TRANSAKSIS.id_transaksi, PELANGGANS.nama_pelanggan;
    
    RETURN output;
END */$$
DELIMITER ;

/* Procedure structure for procedure `edit_detail` */

/*!50003 DROP PROCEDURE IF EXISTS  `edit_detail` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_detail`(in id_transaksi int, in id_menu int, in kuantitas int, in harga_total decimal(10,2))
BEGIN
	UPDATE detail_pesanan
	    SET id_transaksi = id_transaksi,
		id_menu = id_menu,
		kuantitas = kuantitas,
		harga_total = harga_total
	    WHERE id_detail = no_detail;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `edit_meja` */

/*!50003 DROP PROCEDURE IF EXISTS  `edit_meja` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_meja`(IN nomor_meja INT, IN STATUS ENUM('tersedia','tidak_tersedia'))
BEGIN
		update meja
		set nomor_meja = nomor_meja, status = status
		where id_meja = id_meja;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `edit_menu` */

/*!50003 DROP PROCEDURE IF EXISTS  `edit_menu` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_menu`(IN nama_menu VARCHAR(255), IN jenis VARCHAR(255), IN deskripsi TEXT, IN harga_pcs DECIMAL(10,2))
BEGIN
		update menu
		set 
			nama_menu = nama_menu,
			jenis = jenis,
			deskripsi = deskripsi,
			harga_pcs = harga_pcs
		where id_menu = id_menu;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `edit_pelanggan` */

/*!50003 DROP PROCEDURE IF EXISTS  `edit_pelanggan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_pelanggan`(IN nama_pelanggan VARCHAR(255), IN no_telp VARCHAR(15))
BEGIN
		UPDATE pelanggan
		set
			nama_pelanggan = nama_pelanggan,
			no_telp = no_telp
		where id_pelanggan = id_pelanggan;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `edit_transaksi` */

/*!50003 DROP PROCEDURE IF EXISTS  `edit_transaksi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_transaksi`(in id_pelanggan int, 
	    in jumlah_bayar decimal(10,2), 
	    in jenis_pembayaran varchar(50), 
	    in jenis_pesanan enum('Dine In','Take Away'))
BEGIN
		update transaksi
		set
			id_pelanggan = id_pelanggan,
			jumlah_bayar = jumlah_bayar,
			jenis_pemmbayaran = jenis_pembayaran,
			jenis_pesanan = jenis_pesanan,
			id_meja = id_meja
		where id_transaksi = id_transaksi;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `hapus detail` */

/*!50003 DROP PROCEDURE IF EXISTS  `hapus detail` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `hapus detail`(in id_transaksi int, in id_menu int, in kuantitas int, in harga_total decimal(10,2))
BEGIN
		delete from detail_pesanan where id_detail = no_detail; 
	END */$$
DELIMITER ;

/* Procedure structure for procedure `hapus_meja` */

/*!50003 DROP PROCEDURE IF EXISTS  `hapus_meja` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `hapus_meja`()
BEGIN
		delete from meja where id_meja;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `hapus_menu` */

/*!50003 DROP PROCEDURE IF EXISTS  `hapus_menu` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `hapus_menu`(IN nama_menu VARCHAR(255), IN jenis VARCHAR(255), IN deskripsi TEXT, IN harga_pcs DECIMAL(10,2))
BEGIN
		delete from menu where id_menu = id_menu;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `hapus_pelanggan` */

/*!50003 DROP PROCEDURE IF EXISTS  `hapus_pelanggan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `hapus_pelanggan`(IN nama_pelanggan VARCHAR(255), IN no_telp VARCHAR(15))
BEGIN
		delete from pelanggan where id_pelanggan = id_pelanggan;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `hapus_transaksi` */

/*!50003 DROP PROCEDURE IF EXISTS  `hapus_transaksi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `hapus_transaksi`(in id_pelanggan int, 
	    in jumlah_bayar decimal(10,2), 
	    in jenis_pembayaran varchar(50), 
	    in jenis_pesanan enum('Dine In','Take Away'))
BEGIN
		delete from transaksi where id_transaksi = id_transaksi;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `tambah_detail` */

/*!50003 DROP PROCEDURE IF EXISTS  `tambah_detail` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tambah_detail`(in id_transaksi int, in id_menu int, in kuantitas int, in harga_total decimal(10,2))
BEGIN
		insert into detail_pesanan values (id_transaksi, id_menu, kuantitas, harga_total);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `tambah_meja` */

/*!50003 DROP PROCEDURE IF EXISTS  `tambah_meja` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tambah_meja`(IN nomor_meja INT, IN STATUS ENUM('tersedia','tidak_tersedia'))
BEGIN
    INSERT INTO meja VALUES (nomor_meja, STATUS);
END */$$
DELIMITER ;

/* Procedure structure for procedure `tambah_menu` */

/*!50003 DROP PROCEDURE IF EXISTS  `tambah_menu` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tambah_menu`(in nama_menu varchar(255), in jenis varchar(255), in deskripsi text, in harga_pcs decimal(10,2))
BEGIN
		insert into menu values (nama_menu, jenis, deskripsi, harga_pcs);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `tambah_pelanggan` */

/*!50003 DROP PROCEDURE IF EXISTS  `tambah_pelanggan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tambah_pelanggan`(in nama_pelanggan varchar(255), in no_telp varchar(15))
BEGIN
		INSERT INTO pelanggan VALUES (nama_pelanggan, no_telp);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `tambah_transaksi` */

/*!50003 DROP PROCEDURE IF EXISTS  `tambah_transaksi` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tambah_transaksi`(in id_pelanggan int, in jumlah_bayar decimal(10,2), in jenis_pembayaran varchar(50), in jenis_pesanan enum('Dine In','Take Away'))
BEGIN
		insert into transaksi values (id_pelanggan, jumlah_bayar, jenis_pembayaran, jenis_pesanan, id_meja);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `total_harga` */

/*!50003 DROP PROCEDURE IF EXISTS  `total_harga` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `total_harga`(IN trans_id INT)
BEGIN
		DECLARE total DECIMAL(10, 2);
    
		SELECT SUM(harga_total)
		INTO total
		FROM DETAIL_PESANAN
		WHERE id_transaksi = trans_id;
		    
		UPDATE TRANSAKSI
		SET jumlah_bayar = total
		WHERE id_transaksi = trans_id;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `update_table` */

/*!50003 DROP PROCEDURE IF EXISTS  `update_table` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `update_table`(
    IN meja_id INT,
    IN new_status ENUM('tersedia', 'tidak tersedia')
    )
BEGIN
		UPDATE MEJA
		SET status = new_status
		WHERE id_meja = meja_id;
	END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
