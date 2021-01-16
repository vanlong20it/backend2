-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 17, 2019 at 08:56 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database1`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Accessories'),
(2, 'Mavic'),
(3, 'Phantom');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_description`, `product_price`, `product_image`) VALUES
(1, 'YUNEEC – Typhoon H Hexacopter Pro with Intel RealSense Technology', 'This is a multi-functional, 4K camera-equipped new quadcopter model by the Lindara gadget brand.\r\n\r\n\r\n\r\nAs it comes with a true ultra-definition camera, UK99 is capable of capturing some most stunning videos and images from the above!', '895.00', 'mt-1169_products_img10.jpg'),
(2, 'YUNEEC – Typhoon H Hexacopter – Gun Metal Gray', 'This is a multi-functional, 4K camera-equipped new quadcopter model by the Lindara gadget brand.\r\n\r\n\r\n\r\nAs it comes with a true ultra-definition camera, UK99 is capable of capturing some most stunning videos and images from the above!', '985.00', 'mt-1169_products_img09.jpg'),
(3, 'YUNEEC – Typhoon 4K Quadcopter with Carrying Case', 'This is a multi-functional, 4K camera-equipped new quadcopter model by the Lindara gadget brand.\r\n\r\n\r\n\r\nAs it comes with a true ultra-definition camera, UK99 is capable of capturing some most stunning videos and images from the above!', '754.00', 'mt-1169_products_img08.jpg'),
(4, 'WebRC – XDrone 2 Remote-Controlled Quadcopter – Black', 'This is a multi-functional, 4K camera-equipped new quadcopter model by the Lindara gadget brand.\r\n\r\n\r\n\r\nAs it comes with a true ultra-definition camera, UK99 is capable of capturing some most stunning videos and images from the above!', '652.00', 'mt-1169_products_img07.jpg'),
(5, 'Riviera RC – Raptor Drone with Remote Controller', 'This is a multi-functional, 4K camera-equipped new quadcopter model by the Lindara gadget brand.\r\n\r\n \r\n\r\nAs it comes with a true ultra-definition camera, UK99 is capable of capturing some most stunning videos and images from the above!', '765.00', 'mt-1169_products_img06.jpg'),
(6, 'Protocol – Neo-Drone Mini RC Drone', 'This is a multi-functional, 4K camera-equipped new quadcopter model by the Lindara gadget brand.\r\n\r\n \r\n\r\nAs it comes with a true ultra-definition camera, UK99 is capable of capturing some most stunning videos and images from the above!', '458.00', 'mt-1169_products_img05.jpg'),
(7, 'Parrot – Bebop 2 Quadcopter with Skycontroller 2 and Cockpit FPV Glasses', 'This is a multi-functional, 4K camera-equipped new quadcopter model by the Lindara gadget brand.\r\n\r\n \r\n\r\nAs it comes with a true ultra-definition camera, UK99 is capable of capturing some most stunning videos and images from the above!', '1241.00', 'mt-1169_products_img04.jpg'),
(8, 'EHANG – Ghostdrone 2.0 VR Drone (Apple iOS Compartible)', 'This is a multi-functional, 4K camera-equipped new quadcopter model by the Lindara gadget brand.\r\n\r\n \r\n\r\nAs it comes with a true ultra-definition camera, UK99 is capable of capturing some most stunning videos and images from the above!', '876.00', 'mt-1169_products_img03.jpg'),
(9, 'Autel Robotics – X-Star Premium Quadcopter with Remote Controller', 'This is a multi-functional, 4K camera-equipped new quadcopter model by the Lindara gadget brand.\r\n\r\n \r\n\r\nAs it comes with a true ultra-definition camera, UK99 is capable of capturing some most stunning videos and images from the above!', '876.00', 'mt-1169_products_img02.jpg'),
(10, '3DR – Solo Drone – Black', 'This is a multi-functional, 4K camera-equipped new quadcopter model by the Lindara gadget brand.\r\n\r\n \r\n\r\nAs it comes with a true ultra-definition camera, UK99 is capable of capturing some most stunning videos and images from the above!', '1098.00', 'mt-1169_products_img01.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE IF NOT EXISTS `product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`product_id`, `category_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 2),
(7, 3),
(8, 2),
(8, 3),
(9, 2),
(9, 3),
(10, 2),
(10, 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
