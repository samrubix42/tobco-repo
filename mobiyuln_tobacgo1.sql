-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 20, 2025 at 02:36 PM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobiyuln_tobacgo`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `variant_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 3, '2023-11-27 11:06:51', NULL),
(2, 3, 1, 3, '2023-11-27 11:08:28', NULL),
(3, 3, 1, 3, '2023-11-27 05:40:00', '2023-11-27 05:40:00'),
(4, 3, 1, 3, '2023-11-27 05:40:12', '2023-11-27 05:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Ashtray', 'ashtray', '1753802426.jpg', '2025-03-04 04:08:11', '2025-07-29 09:50:27'),
(4, 'Hookah', 'hookah', '1753802381.jpg', '2025-06-30 05:13:24', '2025-07-29 09:49:41'),
(5, 'Acrylic Bongs', 'acrylic-bongs', '1753802335.jpg', '2025-06-30 05:13:36', '2025-07-29 09:48:55'),
(7, 'Combos', 'combos', '1753802516.jpg', '2025-07-29 15:21:56', '2025-07-29 15:21:56'),
(8, 'Glass Bong Percolator', 'glass-bong-percolator', '1753802591.jpg', '2025-07-29 15:23:11', '2025-11-19 04:00:21'),
(9, 'Hookah Accessories', 'hookah-accessories', '1753802624.jpg', '2025-07-29 15:23:44', '2025-07-29 15:23:44'),
(10, 'Hookah Chillum', 'hookah-chillum', '1753802650.jpg', '2025-07-29 15:24:10', '2025-07-29 10:35:01'),
(11, 'Lighters', 'lighters', '1753802683.jpg', '2025-07-29 15:24:43', '2025-07-29 15:24:43'),
(12, 'Smoking Accessories', 'smoking-accessories', '1753802706.jpg', '2025-07-29 15:25:06', '2025-07-29 15:25:06'),
(13, 'Pipe and Handle', 'pipe-and-handle', '1757147212.jpg', '2025-09-06 08:26:52', '2025-09-06 08:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `contact_settings`
--

CREATE TABLE `contact_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adminemail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hours` text COLLATE utf8mb4_unicode_ci,
  `map` text COLLATE utf8mb4_unicode_ci,
  `max_amount` int(11) DEFAULT NULL,
  `shipping_charges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_settings`
--

INSERT INTO `contact_settings` (`id`, `address`, `email`, `adminemail`, `phone`, `logo`, `hours`, `map`, `max_amount`, `shipping_charges`, `created_at`, `updated_at`) VALUES
(1, '38,39, Lower Ground Floor, Street 76, Market, Amarpali Silicon City, Sector 76, Noida, Uttar Pradesh 201306', 'info@tobacgo.in', 'techonika.com1@gmail.com', '(+91) - 78384 49604', '1752557842.webp', '11:00 AM - 11:00 PM, Mon - Sun', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3504.0497819791262!2d77.3829002!3d28.568267799999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cef9220724b87%3A0x21576299f7843f22!2sTobac-go!5e0!3m2!1sen!2sin!4v1754030279156!5m2!1sen!2sin\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 3000, 300, NULL, '2025-11-08 04:30:27');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_amount` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_validity` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `particular_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `title`, `code`, `value`, `coupon_type`, `min_amount`, `coupon_validity`, `particular_date`, `from_date`, `to_date`, `created_at`, `updated_at`) VALUES
(7, 'DIWALI300', 'DIWALI300', '300', 'Flat Rate', '1000', 'Always', '0000-00-00', '0000-00-00', '0000-00-00', '2025-09-24 11:19:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hash` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `phone`, `password`, `hash`, `created_at`, `updated_at`) VALUES
(1, 'Rohan Verma123', 'rohanverma25dec@gmail.com', 7011243534, '$2y$10$nqdVYgqYebR0nWTUQS.dheOyYQ87FavR4v1ti5sHO5tSYdtzvnIe6', '34031f20592a4cb431d69763d34bc3c1351d87e95c04067a0c25230b9a1b059f1ea8ffc36c86e981ae80a67eac5b7d999b70598f7bdd83b14f4330b379469707', '2025-02-12 03:35:01', '2025-03-03 04:19:24'),
(2, 'Techonika', 'techonika.com@gmail.com', 8810599816, '$2y$10$0gUh7BLlDZkso/7ansL.WujB2EQH2ij.FUzULqDUI7iK70/spEjjS', NULL, '2025-10-03 12:03:25', '2025-10-03 12:03:25'),
(3, 'Hardik', 'hkhandelwal907@gmail.com', 7838449604, '$2y$10$dVyR8NF749ylmO2q8uMybOmtlP7UQpnSwh1mhIkiz2Mj.ie1eD/Hu', NULL, '2025-10-12 10:38:28', '2025-10-12 10:38:28'),
(4, 'Roli Jain', 'jain.roli2@gmail.com', 9610556265, '$2y$10$mRO2X/qG7d5aO7gUfDF4s.5zCBavm4Qa/5pJp3eyilGZQ80CdySjK', NULL, '2025-10-23 07:48:28', '2025-10-23 07:48:28'),
(5, 'Roli Jain', 'jain.roli92@gmail.com', 9610556265, '$2y$10$h7dIH0N4HJ66/4eExvEgOe86WQobUxNPrEUcE/gKxfqQVrgLjI4gy', NULL, '2025-10-23 07:58:34', '2025-10-23 07:58:34'),
(6, 'Rohan', 'rohan.danstring@gmail.com', 9876543210, '$2y$10$8PFbf36MwT8ISBwG6ijorOGNEMqreEn2HylK8uEGWYulXz5SRVV.a', NULL, '2025-10-23 08:09:27', '2025-10-23 08:09:27'),
(7, 'rohan verma', 'rohantesting@yopmail.com', 7011243534, '$2y$10$02E.aONslHt33n86fPSIOelAi7M2BD97qHxmvc4W6ZuC8MJmJvw92', NULL, '2025-10-24 03:03:16', '2025-10-24 03:03:16'),
(8, 'Ayush', 'chetanduklansharma@gmail.com', 8287609632, '$2y$10$w171ruVUe7K248nGucnYwe0MBXH.seJpj3fW9RSE1RgoxDgQUBN5q', NULL, '2025-11-04 16:48:12', '2025-11-04 16:48:12'),
(9, 'Anubhab Panigrahi', 'anubhabpanigrahi1616@gmail.com', 9348257288, '$2y$10$73LpdgMQpwVWqtg/EhDodOMxg0jLZZf0voVpft3VW1tCieNotX2we', NULL, '2025-11-19 23:56:26', '2025-11-19 23:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `messages` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `name`, `email`, `phone`, `subject`, `messages`, `created_at`) VALUES
(6, 'Robert Peary', NULL, '8332906999', NULL, 'Testing', '2025-03-04 10:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `product_id` int(255) DEFAULT NULL,
  `inventory` json DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `inventory`, `created_at`, `updated_at`) VALUES
(1, 1, '[{\"inventory\": \"1000\", \"variant_id\": \"2\", \"variant_title\": \"ML\"}, {\"inventory\": \"2500\", \"variant_id\": \"1\", \"variant_title\": \"L\"}]', '2025-07-15 03:55:18', '2025-07-14 22:51:26'),
(2, 2, '[{\"inventory\": \"100\", \"variant_id\": \"2\", \"variant_title\": \"ML\"}, {\"inventory\": \"120\", \"variant_id\": \"1\", \"variant_title\": \"L\"}]', '2025-07-15 04:24:58', '2025-07-14 22:54:58'),
(4, 274, '[{\"inventory\": \"3\", \"variant_id\": \"394\", \"variant_title\": \"Blue\"}, {\"inventory\": \"3\", \"variant_id\": \"393\", \"variant_title\": \"Orange\"}, {\"inventory\": \"4\", \"variant_id\": \"392\", \"variant_title\": \"Grey\"}, {\"inventory\": \"3\", \"variant_id\": \"391\", \"variant_title\": \"Lemon Yellow\"}]', '2025-09-27 05:07:38', '2025-11-15 08:55:20'),
(5, 314, '[{\"inventory\": \"200\", \"variant_id\": \"819\", \"variant_title\": \"Black\"}]', '2025-10-12 08:44:29', '2025-10-12 03:14:29'),
(6, 313, '[{\"inventory\": \"7\", \"variant_id\": \"817\", \"variant_title\": \"Gold\"}, {\"inventory\": \"4\", \"variant_id\": \"816\", \"variant_title\": \"Silver\"}]', '2025-10-12 08:47:05', '2025-10-12 03:17:05'),
(7, 312, '[{\"inventory\": \"2\", \"variant_id\": \"813\", \"variant_title\": \"Gold\"}]', '2025-10-12 08:47:17', '2025-10-12 03:17:17'),
(8, 311, '[{\"inventory\": \"4\", \"variant_id\": \"486\", \"variant_title\": \"Blue\"}, {\"inventory\": \"08\", \"variant_id\": \"485\", \"variant_title\": \"Black\"}]', '2025-10-12 08:53:17', '2025-10-12 03:23:17'),
(9, 310, '[{\"inventory\": \"1\", \"variant_id\": \"484\", \"variant_title\": \"Yellow\"}]', '2025-10-12 08:53:40', '2025-10-12 03:24:21'),
(10, 309, '[{\"inventory\": \"2\", \"variant_id\": \"483\", \"variant_title\": \"Red\"}]', '2025-10-12 08:53:54', '2025-10-12 03:23:54'),
(11, 308, '[{\"inventory\": \"1\", \"variant_id\": \"482\", \"variant_title\": \"Green\"}]', '2025-10-12 08:54:08', '2025-10-12 03:24:08'),
(12, 307, '[{\"inventory\": \"1\", \"variant_id\": \"481\", \"variant_title\": \"Lemon Yellow\"}]', '2025-10-12 08:55:03', '2025-10-12 03:25:03'),
(13, 306, '[{\"inventory\": \"1\", \"variant_id\": \"480\", \"variant_title\": \"Blue\"}]', '2025-10-12 08:55:17', '2025-10-12 03:25:17'),
(14, 305, '[{\"inventory\": \"32\", \"variant_id\": \"479\", \"variant_title\": \"Black\"}]', '2025-10-12 08:58:45', '2025-10-12 03:28:45'),
(15, 304, '[{\"inventory\": \"2\", \"variant_id\": \"478\", \"variant_title\": \"Blue\"}, {\"inventory\": \"13\", \"variant_id\": \"477\", \"variant_title\": \"Green\"}]', '2025-10-12 08:59:25', '2025-10-12 03:29:25'),
(16, 303, '[{\"inventory\": \"13\", \"variant_id\": \"476\", \"variant_title\": \"Multicolor 1\"}]', '2025-10-12 09:02:13', '2025-10-12 03:32:13'),
(17, 301, '[{\"inventory\": \"3\", \"variant_id\": \"468\", \"variant_title\": \"Blue\"}, {\"inventory\": \"2\", \"variant_id\": \"467\", \"variant_title\": \"Red\"}, {\"inventory\": \"3\", \"variant_id\": \"466\", \"variant_title\": \"Black\"}, {\"inventory\": \"10\", \"variant_id\": \"465\", \"variant_title\": \"White\"}, {\"inventory\": \"10\", \"variant_id\": \"464\", \"variant_title\": \"Purple\"}, {\"inventory\": \"9\", \"variant_id\": \"463\", \"variant_title\": \"Green\"}, {\"inventory\": \"5\", \"variant_id\": \"462\", \"variant_title\": \"Yellow\"}]', '2025-10-12 09:06:55', '2025-10-12 03:36:55'),
(18, 302, '[{\"inventory\": \"1\", \"variant_id\": \"475\", \"variant_title\": \"Blue\"}, {\"inventory\": \"5\", \"variant_id\": \"474\", \"variant_title\": \"Red\"}, {\"inventory\": \"4\", \"variant_id\": \"473\", \"variant_title\": \"Black\"}, {\"inventory\": \"2\", \"variant_id\": \"472\", \"variant_title\": \"Purple\"}, {\"inventory\": \"0\", \"variant_id\": \"471\", \"variant_title\": \"Green\"}, {\"inventory\": \"0\", \"variant_id\": \"470\", \"variant_title\": \"Silver\"}, {\"inventory\": \"1\", \"variant_id\": \"469\", \"variant_title\": \"Yellow\"}]', '2025-10-12 09:09:31', '2025-10-12 03:39:31'),
(19, 300, '[{\"inventory\": \"2\", \"variant_id\": \"461\", \"variant_title\": \"Gold\"}]', '2025-10-12 09:10:10', '2025-10-12 03:40:10'),
(20, 299, '[{\"inventory\": \"5\", \"variant_id\": \"460\", \"variant_title\": \"Black\"}, {\"inventory\": \"1\", \"variant_id\": \"459\", \"variant_title\": \"Gold\"}]', '2025-10-12 09:10:39', '2025-10-12 03:40:39'),
(21, 295, '[{\"inventory\": \"07\", \"variant_id\": \"455\", \"variant_title\": \"Gold\"}, {\"inventory\": \"04\", \"variant_id\": \"454\", \"variant_title\": \"Silver\"}]', '2025-10-12 09:13:53', '2025-10-12 03:43:53'),
(22, 297, '[{\"inventory\": \"43\", \"variant_id\": \"457\", \"variant_title\": \"Default\"}]', '2025-10-12 09:17:43', '2025-10-12 03:47:43'),
(23, 296, '[{\"inventory\": \"28\", \"variant_id\": \"456\", \"variant_title\": \"Default\"}]', '2025-10-12 09:21:42', '2025-10-12 03:51:42'),
(24, 298, '[{\"inventory\": \"20\", \"variant_id\": \"458\", \"variant_title\": \"Default\"}]', '2025-10-12 09:21:55', '2025-10-12 03:51:55'),
(25, 294, '[{\"inventory\": \"8\", \"variant_id\": \"453\", \"variant_title\": \"Gold\"}]', '2025-10-12 09:25:06', '2025-10-12 03:55:06'),
(26, 292, '[{\"inventory\": \"1\", \"variant_id\": \"451\", \"variant_title\": \"Default\"}]', '2025-10-12 09:25:40', '2025-10-12 03:55:40'),
(27, 291, '[{\"inventory\": \"1\", \"variant_id\": \"450\", \"variant_title\": \"Gold\"}, {\"inventory\": \"2\", \"variant_id\": \"449\", \"variant_title\": \"White\"}, {\"inventory\": \"0\", \"variant_id\": \"448\", \"variant_title\": \"Bronze\"}]', '2025-10-12 09:26:21', '2025-11-15 09:32:39'),
(28, 290, '[{\"inventory\": \"7\", \"variant_id\": \"447\", \"variant_title\": \"Gold\"}, {\"inventory\": \"6\", \"variant_id\": \"446\", \"variant_title\": \"Bronze\"}]', '2025-10-12 09:27:57', '2025-11-15 09:30:56'),
(29, 289, '[{\"inventory\": \"0\", \"variant_id\": \"445\", \"variant_title\": \"Blue\"}, {\"inventory\": \"1\", \"variant_id\": \"444\", \"variant_title\": \"Red\"}, {\"inventory\": \"1\", \"variant_id\": \"443\", \"variant_title\": \"Black\"}, {\"inventory\": \"0\", \"variant_id\": \"442\", \"variant_title\": \"Gold\"}]', '2025-10-12 09:28:35', '2025-11-15 09:32:03'),
(30, 288, '[{\"inventory\": \"5\", \"variant_id\": \"441\", \"variant_title\": \"Blue\"}, {\"inventory\": \"3\", \"variant_id\": \"440\", \"variant_title\": \"Red\"}, {\"inventory\": \"3\", \"variant_id\": \"439\", \"variant_title\": \"White\"}, {\"inventory\": \"4\", \"variant_id\": \"438\", \"variant_title\": \"Yellow\"}]', '2025-10-12 09:33:34', '2025-11-15 08:22:03'),
(31, 287, '[{\"inventory\": \"6\", \"variant_id\": \"437\", \"variant_title\": \"Default\"}]', '2025-10-12 09:34:17', '2025-11-15 09:10:55'),
(32, 286, '[{\"inventory\": \"3\", \"variant_id\": \"436\", \"variant_title\": \"Blue\"}, {\"inventory\": \"4\", \"variant_id\": \"435\", \"variant_title\": \"Orange\"}, {\"inventory\": \"3\", \"variant_id\": \"434\", \"variant_title\": \"Sea Green\"}, {\"inventory\": \"3\", \"variant_id\": \"433\", \"variant_title\": \"Coffee\"}]', '2025-10-12 09:37:02', '2025-11-15 08:49:29'),
(33, 285, '[{\"inventory\": \"3\", \"variant_id\": \"432\", \"variant_title\": \"Blue\"}, {\"inventory\": \"2\", \"variant_id\": \"431\", \"variant_title\": \"Purple\"}, {\"inventory\": \"4\", \"variant_id\": \"430\", \"variant_title\": \"Green\"}, {\"inventory\": \"3\", \"variant_id\": \"429\", \"variant_title\": \"Yellow\"}, {\"inventory\": \"1\", \"variant_id\": \"428\", \"variant_title\": \"Grey\"}]', '2025-10-12 09:39:17', '2025-11-15 09:25:51'),
(34, 284, '[{\"inventory\": \"1\", \"variant_id\": \"427\", \"variant_title\": \"Red\"}]', '2025-10-12 09:39:36', '2025-10-12 04:09:36'),
(35, 283, '[{\"inventory\": \"3\", \"variant_id\": \"426\", \"variant_title\": \"Red\"}, {\"inventory\": \"2\", \"variant_id\": \"425\", \"variant_title\": \"Purple\"}, {\"inventory\": \"5\", \"variant_id\": \"424\", \"variant_title\": \"Lemon Yellow\"}]', '2025-10-12 09:40:19', '2025-11-15 08:25:41'),
(36, 282, '[{\"inventory\": \"1\", \"variant_id\": \"423\", \"variant_title\": \"Blue\"}, {\"inventory\": \"1\", \"variant_id\": \"422\", \"variant_title\": \"Grey\"}, {\"inventory\": \"1\", \"variant_id\": \"421\", \"variant_title\": \"Lemon Yellow\"}, {\"inventory\": \"1\", \"variant_id\": \"420\", \"variant_title\": \"Coffee\"}]', '2025-10-12 09:40:50', '2025-10-12 04:10:50'),
(37, 281, '[{\"inventory\": \"2\", \"variant_id\": \"419\", \"variant_title\": \"Default\"}]', '2025-10-12 09:41:04', '2025-10-12 04:11:04'),
(38, 280, '[{\"inventory\": \"2\", \"variant_id\": \"418\", \"variant_title\": \"Blue\"}, {\"inventory\": \"2\", \"variant_id\": \"417\", \"variant_title\": \"Red\"}, {\"inventory\": \"4\", \"variant_id\": \"416\", \"variant_title\": \"Green\"}, {\"inventory\": \"4\", \"variant_id\": \"415\", \"variant_title\": \"Coffee\"}]', '2025-10-12 09:45:02', '2025-11-15 08:40:04'),
(39, 279, '[{\"inventory\": \"2\", \"variant_id\": \"414\", \"variant_title\": \"Blue\"}, {\"inventory\": \"2\", \"variant_id\": \"413\", \"variant_title\": \"Red\"}, {\"inventory\": \"1\", \"variant_id\": \"412\", \"variant_title\": \"Silver\"}, {\"inventory\": \"1\", \"variant_id\": \"411\", \"variant_title\": \"Sea Green\"}, {\"inventory\": \"1\", \"variant_id\": \"410\", \"variant_title\": \"Coffee\"}]', '2025-10-12 09:46:35', '2025-11-15 08:59:43'),
(40, 278, '[{\"inventory\": \"2\", \"variant_id\": \"409\", \"variant_title\": \"Blue\"}, {\"inventory\": \"2\", \"variant_id\": \"408\", \"variant_title\": \"Silver\"}, {\"inventory\": \"2\", \"variant_id\": \"407\", \"variant_title\": \"Sea Green\"}, {\"inventory\": \"2\", \"variant_id\": \"406\", \"variant_title\": \"Coffee\"}]', '2025-10-12 09:47:39', '2025-11-15 09:08:42'),
(41, 277, '[{\"inventory\": \"3\", \"variant_id\": \"405\", \"variant_title\": \"Blue\"}, {\"inventory\": \"3\", \"variant_id\": \"404\", \"variant_title\": \"Yellow\"}, {\"inventory\": \"2\", \"variant_id\": \"403\", \"variant_title\": \"Grey\"}]', '2025-10-12 09:48:38', '2025-11-15 09:20:08'),
(42, 276, '[{\"inventory\": \"1\", \"variant_id\": \"402\", \"variant_title\": \"Black\"}, {\"inventory\": \"1\", \"variant_id\": \"401\", \"variant_title\": \"Gold\"}, {\"inventory\": \"2\", \"variant_id\": \"400\", \"variant_title\": \"Silver\"}, {\"inventory\": \"1\", \"variant_id\": \"399\", \"variant_title\": \"Rose Gold\"}]', '2025-10-12 09:50:45', '2025-11-15 09:33:46'),
(43, 275, '[{\"inventory\": \"4\", \"variant_id\": \"398\", \"variant_title\": \"Blue\"}, {\"inventory\": \"2\", \"variant_id\": \"397\", \"variant_title\": \"Red\"}, {\"inventory\": \"2\", \"variant_id\": \"396\", \"variant_title\": \"Purple\"}, {\"inventory\": \"3\", \"variant_id\": \"395\", \"variant_title\": \"Sea Green\"}]', '2025-10-12 09:53:03', '2025-11-15 09:15:04'),
(44, 273, '[{\"inventory\": \"1\", \"variant_id\": \"390\", \"variant_title\": \"Default\"}]', '2025-10-12 09:54:40', '2025-10-12 04:24:40'),
(45, 272, '[{\"inventory\": \"1\", \"variant_id\": \"389\", \"variant_title\": \"Default\"}]', '2025-10-12 09:54:51', '2025-10-12 04:24:51'),
(46, 271, '[{\"inventory\": \"1\", \"variant_id\": \"388\", \"variant_title\": \"Default\"}]', '2025-10-12 09:55:02', '2025-10-12 04:25:02'),
(47, 270, '[{\"inventory\": \"1\", \"variant_id\": \"387\", \"variant_title\": \"Default\"}]', '2025-10-12 09:55:14', '2025-10-12 04:25:14'),
(48, 269, '[{\"inventory\": \"2\", \"variant_id\": \"386\", \"variant_title\": \"Default\"}]', '2025-10-12 09:55:32', '2025-10-12 04:25:32'),
(49, 268, '[{\"inventory\": \"0\", \"variant_id\": \"385\", \"variant_title\": \"Default\"}]', '2025-10-12 09:55:42', '2025-11-15 09:40:32'),
(50, 267, '[{\"inventory\": \"1\", \"variant_id\": \"384\", \"variant_title\": \"Default\"}]', '2025-10-12 09:55:52', '2025-11-15 09:38:59'),
(51, 266, '[{\"inventory\": \"3\", \"variant_id\": \"383\", \"variant_title\": \"Default\"}]', '2025-10-12 09:56:02', '2025-11-15 09:40:10'),
(52, 265, '[{\"inventory\": \"0\", \"variant_id\": \"382\", \"variant_title\": \"Default\"}]', '2025-10-12 09:56:11', '2025-11-15 09:41:00'),
(53, 264, '[{\"inventory\": \"0\", \"variant_id\": \"381\", \"variant_title\": \"Default\"}]', '2025-10-12 09:56:23', '2025-11-15 09:41:14'),
(54, 263, '[{\"inventory\": \"0\", \"variant_id\": \"380\", \"variant_title\": \"Default\"}]', '2025-10-12 09:56:38', '2025-11-15 09:41:34'),
(55, 261, '[{\"inventory\": \"1\", \"variant_id\": \"378\", \"variant_title\": \"Black\"}]', '2025-10-12 09:57:10', '2025-10-12 04:27:10'),
(56, 257, '[{\"inventory\": \"2\", \"variant_id\": \"369\", \"variant_title\": \"Light Brown\"}]', '2025-10-12 10:01:39', '2025-10-12 04:31:39'),
(57, 256, '[{\"inventory\": \"1\", \"variant_id\": \"368\", \"variant_title\": \"Light Brown\"}]', '2025-10-12 10:01:50', '2025-10-12 04:31:50'),
(58, 255, '[{\"inventory\": \"1\", \"variant_id\": \"367\", \"variant_title\": \"Black\"}]', '2025-10-12 10:02:03', '2025-10-12 04:32:03'),
(59, 254, '[{\"inventory\": \"3\", \"variant_id\": \"366\", \"variant_title\": \"Black\"}]', '2025-10-12 10:02:16', '2025-10-12 04:32:16'),
(60, 253, '[{\"inventory\": \"2\", \"variant_id\": \"365\", \"variant_title\": \"White\"}]', '2025-10-12 10:03:15', '2025-10-12 04:33:15'),
(61, 252, '[{\"inventory\": \"2\", \"variant_id\": \"364\", \"variant_title\": \"White\"}]', '2025-10-12 10:03:44', '2025-10-12 04:33:44'),
(62, 251, '[{\"inventory\": \"1\", \"variant_id\": \"363\", \"variant_title\": \"Gold\"}, {\"inventory\": \"1\", \"variant_id\": \"362\", \"variant_title\": \"White\"}, {\"inventory\": \"0\", \"variant_id\": \"361\", \"variant_title\": \"Cream\"}, {\"inventory\": \"1\", \"variant_id\": \"360\", \"variant_title\": \"Grey\"}]', '2025-10-12 10:04:34', '2025-10-12 04:34:34'),
(63, 250, '[{\"inventory\": \"1\", \"variant_id\": \"359\", \"variant_title\": \"Blue\"}, {\"inventory\": \"2\", \"variant_id\": \"358\", \"variant_title\": \"Gold\"}, {\"inventory\": \"2\", \"variant_id\": \"357\", \"variant_title\": \"White\"}]', '2025-10-12 10:05:30', '2025-10-12 04:35:30'),
(64, 246, '[{\"inventory\": \"4\", \"variant_id\": \"349\", \"variant_title\": \"Black\"}]', '2025-10-12 10:06:12', '2025-10-12 04:36:12'),
(65, 245, '[{\"inventory\": \"1\", \"variant_id\": \"348\", \"variant_title\": \"Red\"}, {\"inventory\": \"1\", \"variant_id\": \"347\", \"variant_title\": \"Black\"}, {\"inventory\": \"1\", \"variant_id\": \"346\", \"variant_title\": \"Purple\"}, {\"inventory\": \"1\", \"variant_id\": \"345\", \"variant_title\": \"Green\"}]', '2025-10-12 10:06:47', '2025-10-12 04:36:47'),
(66, 243, '[{\"inventory\": \"5\", \"variant_id\": \"343\", \"variant_title\": \"Gold\"}]', '2025-10-12 10:07:10', '2025-10-12 04:37:10'),
(67, 242, '[{\"inventory\": \"2\", \"variant_id\": \"342\", \"variant_title\": \"White\"}]', '2025-10-12 10:07:24', '2025-10-12 04:37:24'),
(68, 241, '[{\"inventory\": \"1\", \"variant_id\": \"341\", \"variant_title\": \"Gold\"}]', '2025-10-12 10:07:50', '2025-10-12 04:37:50'),
(69, 240, '[{\"inventory\": \"4\", \"variant_id\": \"340\", \"variant_title\": \"Yellow\"}]', '2025-10-12 10:08:06', '2025-10-12 04:38:06'),
(70, 239, '[{\"inventory\": \"3\", \"variant_id\": \"339\", \"variant_title\": \"Red\"}, {\"inventory\": \"2\", \"variant_id\": \"338\", \"variant_title\": \"Black\"}]', '2025-10-12 10:11:57', '2025-10-12 04:41:57'),
(71, 238, '[{\"inventory\": \"0\", \"variant_id\": \"337\", \"variant_title\": \"Gold\"}, {\"inventory\": \"1\", \"variant_id\": \"336\", \"variant_title\": \"White\"}]', '2025-10-12 10:12:39', '2025-10-12 04:42:39'),
(72, 237, '[{\"inventory\": \"1\", \"variant_id\": \"335\", \"variant_title\": \"Black\"}]', '2025-10-12 10:13:00', '2025-10-12 04:43:00'),
(73, 233, '[{\"inventory\": \"1\", \"variant_id\": \"329\", \"variant_title\": \"Gold\"}]', '2025-10-12 10:13:46', '2025-10-12 04:43:46'),
(74, 232, '[{\"inventory\": \"1\", \"variant_id\": \"328\", \"variant_title\": \"Gold\"}]', '2025-10-12 10:13:58', '2025-10-12 04:43:58'),
(75, 231, '[{\"inventory\": \"2\", \"variant_id\": \"327\", \"variant_title\": \"Gold\"}]', '2025-10-12 10:14:21', '2025-10-12 04:44:21'),
(76, 230, '[{\"inventory\": \"2\", \"variant_id\": \"326\", \"variant_title\": \"Yellow\"}]', '2025-10-12 10:14:47', '2025-10-12 04:44:47'),
(77, 224, '[{\"inventory\": \"1\", \"variant_id\": \"320\", \"variant_title\": \"Gold\"}, {\"inventory\": \"0\", \"variant_id\": \"319\", \"variant_title\": \"White\"}, {\"inventory\": \"0\", \"variant_id\": \"318\", \"variant_title\": \"Matte Grey\"}]', '2025-10-12 10:15:35', '2025-10-12 04:45:35'),
(78, 223, '[{\"inventory\": \"4\", \"variant_id\": \"317\", \"variant_title\": \"White\"}]', '2025-10-12 10:15:57', '2025-10-12 04:45:57'),
(79, 222, '[{\"inventory\": \"1\", \"variant_id\": \"316\", \"variant_title\": \"Red\"}]', '2025-10-12 10:16:16', '2025-10-12 04:46:16'),
(80, 221, '[{\"inventory\": \"1\", \"variant_id\": \"315\", \"variant_title\": \"White\"}]', '2025-10-12 10:16:51', '2025-10-12 04:46:51'),
(81, 220, '[{\"inventory\": \"1\", \"variant_id\": \"314\", \"variant_title\": \"White\"}]', '2025-10-12 10:17:08', '2025-10-12 04:47:08'),
(82, 219, '[{\"inventory\": \"1\", \"variant_id\": \"313\", \"variant_title\": \"Blue\"}]', '2025-10-12 10:17:21', '2025-10-12 04:47:21'),
(83, 234, '[{\"inventory\": \"2\", \"variant_id\": \"332\", \"variant_title\": \"Blue\"}, {\"inventory\": \"1\", \"variant_id\": \"331\", \"variant_title\": \"Black\"}, {\"inventory\": \"0\", \"variant_id\": \"330\", \"variant_title\": \"Yellow\"}]', '2025-10-12 10:17:51', '2025-10-12 04:47:51'),
(84, 218, '[{\"inventory\": \"50\", \"variant_id\": \"312\", \"variant_title\": \"White\"}]', '2025-10-12 10:18:27', '2025-10-12 04:48:27'),
(85, 217, '[{\"inventory\": \"50\", \"variant_id\": \"311\", \"variant_title\": \"White\"}]', '2025-10-12 10:18:42', '2025-10-12 04:48:42'),
(86, 215, '[{\"inventory\": 48, \"variant_id\": \"309\", \"variant_title\": \"White\"}]', '2025-10-12 10:18:53', '2025-11-04 11:21:48'),
(87, 208, '[{\"inventory\": \"50\", \"variant_id\": \"294\", \"variant_title\": \"Blue\"}, {\"inventory\": \"50\", \"variant_id\": \"293\", \"variant_title\": \"Red\"}, {\"inventory\": \"50\", \"variant_id\": \"292\", \"variant_title\": \"Black\"}, {\"inventory\": \"50\", \"variant_id\": \"291\", \"variant_title\": \"Gold\"}, {\"inventory\": \"50\", \"variant_id\": \"290\", \"variant_title\": \"Green\"}]', '2025-10-12 10:19:14', '2025-10-12 04:49:14'),
(88, 214, '[{\"inventory\": 98, \"variant_id\": \"308\", \"variant_title\": \"Black\"}]', '2025-10-12 10:19:30', '2025-10-23 02:38:39'),
(89, 213, '[{\"inventory\": 43, \"variant_id\": \"307\", \"variant_title\": \"Black\"}]', '2025-10-12 10:19:48', '2025-10-23 23:36:28'),
(90, 212, '[{\"inventory\": 5, \"variant_id\": \"306\", \"variant_title\": \"Black\"}, {\"inventory\": 1, \"variant_id\": \"305\", \"variant_title\": \"Brown\"}]', '2025-10-12 10:20:33', '2025-11-04 11:21:48'),
(91, 211, '[{\"inventory\": \"0\", \"variant_id\": \"304\", \"variant_title\": \"Black\"}, {\"inventory\": \"3\", \"variant_id\": \"303\", \"variant_title\": \"Brown\"}]', '2025-10-12 10:20:47', '2025-10-12 04:50:47'),
(92, 209, '[{\"inventory\": \"0\", \"variant_id\": \"302\", \"variant_title\": \"Blue\"}, {\"inventory\": \"0\", \"variant_id\": \"301\", \"variant_title\": \"Green\"}, {\"inventory\": \"2\", \"variant_id\": \"300\", \"variant_title\": \"Multicolor 1\"}, {\"inventory\": \"0\", \"variant_id\": \"299\", \"variant_title\": \"Multicolor 2\"}, {\"inventory\": \"0\", \"variant_id\": \"298\", \"variant_title\": \"Red & Blue\"}, {\"inventory\": \"0\", \"variant_id\": \"297\", \"variant_title\": \"Orange & Green\"}, {\"inventory\": \"0\", \"variant_id\": \"296\", \"variant_title\": \"Red & Blue Marble\"}, {\"inventory\": \"0\", \"variant_id\": \"295\", \"variant_title\": \"Red & Blue Marble 2\"}]', '2025-10-12 10:21:30', '2025-11-15 11:12:08'),
(93, 206, '[{\"inventory\": \"100\", \"variant_id\": \"289\", \"variant_title\": \"Default\"}]', '2025-10-12 10:21:49', '2025-10-12 04:51:49'),
(94, 160, '[{\"inventory\": \"18\", \"variant_id\": \"238\", \"variant_title\": \"Default\"}]', '2025-10-12 10:24:32', '2025-10-12 04:54:32'),
(95, 155, '[{\"inventory\": \"1\", \"variant_id\": \"233\", \"variant_title\": \"White\"}]', '2025-10-12 10:25:26', '2025-10-12 04:55:26'),
(96, 154, '[{\"inventory\": \"1\", \"variant_id\": \"232\", \"variant_title\": \"Black\"}]', '2025-10-12 10:26:20', '2025-10-12 04:56:20'),
(97, 152, '[{\"inventory\": \"1\", \"variant_id\": \"230\", \"variant_title\": \"Black\"}]', '2025-10-12 10:27:16', '2025-10-12 04:57:16'),
(98, 151, '[{\"inventory\": \"1\", \"variant_id\": \"229\", \"variant_title\": \"Black\"}]', '2025-10-12 10:27:34', '2025-10-12 04:57:34'),
(99, 150, '[{\"inventory\": \"1\", \"variant_id\": \"228\", \"variant_title\": \"Black\"}]', '2025-10-12 10:27:55', '2025-10-12 04:57:55'),
(100, 146, '[{\"inventory\": \"0\", \"variant_id\": \"222\", \"variant_title\": \"Light Green\"}, {\"inventory\": \"0\", \"variant_id\": \"221\", \"variant_title\": \"Light Brown\"}]', '2025-10-12 10:29:51', '2025-11-15 10:08:00'),
(101, 138, '[{\"inventory\": \"1\", \"variant_id\": \"211\", \"variant_title\": \"Brown\"}]', '2025-10-12 10:30:21', '2025-10-12 05:00:21'),
(102, 137, '[{\"inventory\": \"1\", \"variant_id\": \"210\", \"variant_title\": \"Gold\"}]', '2025-10-12 10:30:56', '2025-10-12 05:00:56'),
(103, 64, '[{\"inventory\": \"1\", \"variant_id\": \"105\", \"variant_title\": \"Purple\"}]', '2025-10-12 10:32:39', '2025-10-12 05:02:39'),
(104, 136, '[{\"inventory\": \"1\", \"variant_id\": \"209\", \"variant_title\": \"Blue\"}, {\"inventory\": \"1\", \"variant_id\": \"208\", \"variant_title\": \"Red\"}, {\"inventory\": \"0\", \"variant_id\": \"207\", \"variant_title\": \"Purple\"}]', '2025-10-12 10:33:22', '2025-10-12 05:03:22'),
(105, 63, '[{\"inventory\": \"1\", \"variant_id\": \"104\", \"variant_title\": \"Gold\"}]', '2025-10-12 10:33:59', '2025-10-12 05:03:59'),
(106, 61, '[{\"inventory\": \"1\", \"variant_id\": \"102\", \"variant_title\": \"Black\"}]', '2025-10-12 10:34:13', '2025-10-12 05:04:13'),
(107, 60, '[{\"inventory\": \"1\", \"variant_id\": \"101\", \"variant_title\": \"Black\"}]', '2025-10-12 10:34:31', '2025-10-12 05:04:31'),
(108, 59, '[{\"inventory\": \"1\", \"variant_id\": \"100\", \"variant_title\": \"Red\"}]', '2025-10-12 10:34:44', '2025-10-12 05:04:44'),
(109, 57, '[{\"inventory\": \"1\", \"variant_id\": \"98\", \"variant_title\": \"Gold\"}]', '2025-10-12 10:35:01', '2025-10-12 05:05:01'),
(110, 55, '[{\"inventory\": \"1\", \"variant_id\": \"95\", \"variant_title\": \"Gold\"}]', '2025-10-12 10:35:22', '2025-10-12 05:05:22'),
(111, 54, '[{\"inventory\": \"1\", \"variant_id\": \"94\", \"variant_title\": \"Gold\"}]', '2025-10-12 10:35:31', '2025-10-12 05:05:31'),
(112, 53, '[{\"inventory\": \"1\", \"variant_id\": \"93\", \"variant_title\": \"Gold\"}]', '2025-10-12 10:35:42', '2025-10-12 05:05:42'),
(113, 51, '[{\"inventory\": \"1\", \"variant_id\": \"91\", \"variant_title\": \"Bronze\"}]', '2025-10-12 10:35:56', '2025-10-12 05:05:56'),
(114, 48, '[{\"inventory\": \"2\", \"variant_id\": \"88\", \"variant_title\": \"Light Shade\"}, {\"inventory\": \"1\", \"variant_id\": \"87\", \"variant_title\": \"Dark Shade\"}]', '2025-10-12 10:36:32', '2025-10-12 05:06:32'),
(115, 20, '[{\"inventory\": \"10\", \"variant_id\": \"44\", \"variant_title\": \"Blue\"}, {\"inventory\": \"10\", \"variant_id\": \"43\", \"variant_title\": \"Red\"}, {\"inventory\": \"10\", \"variant_id\": \"42\", \"variant_title\": \"Orange\"}, {\"inventory\": \"10\", \"variant_id\": \"41\", \"variant_title\": \"Purple\"}, {\"inventory\": \"10\", \"variant_id\": \"40\", \"variant_title\": \"Green\"}, {\"inventory\": \"10\", \"variant_id\": \"39\", \"variant_title\": \"Pink\"}]', '2025-10-23 07:43:36', '2025-10-23 02:13:36'),
(116, 19, '[{\"inventory\": \"10\", \"variant_id\": \"38\", \"variant_title\": \"Blue\"}, {\"inventory\": \"10\", \"variant_id\": \"37\", \"variant_title\": \"Red\"}, {\"inventory\": \"10\", \"variant_id\": \"36\", \"variant_title\": \"Orange\"}, {\"inventory\": \"10\", \"variant_id\": \"35\", \"variant_title\": \"Purple\"}, {\"inventory\": \"10\", \"variant_id\": \"34\", \"variant_title\": \"Green\"}, {\"inventory\": \"10\", \"variant_id\": \"33\", \"variant_title\": \"Pink\"}]', '2025-10-23 07:44:23', '2025-10-23 02:14:23'),
(117, 18, '[{\"inventory\": \"10\", \"variant_id\": \"32\", \"variant_title\": \"Green\"}]', '2025-10-23 07:44:50', '2025-10-23 02:14:50'),
(118, 15, '[{\"inventory\": \"10\", \"variant_id\": \"19\", \"variant_title\": \"Blue\"}, {\"inventory\": \"10\", \"variant_id\": \"18\", \"variant_title\": \"Red\"}, {\"inventory\": \"10\", \"variant_id\": \"17\", \"variant_title\": \"Orange\"}, {\"inventory\": \"10\", \"variant_id\": \"16\", \"variant_title\": \"Purple\"}, {\"inventory\": \"10\", \"variant_id\": \"15\", \"variant_title\": \"Green\"}, {\"inventory\": \"10\", \"variant_id\": \"14\", \"variant_title\": \"Pink\"}]', '2025-10-23 07:45:18', '2025-10-23 02:15:18'),
(119, 14, '[{\"inventory\": \"10\", \"variant_id\": \"13\", \"variant_title\": \"Blue\"}, {\"inventory\": \"10\", \"variant_id\": \"12\", \"variant_title\": \"Orange\"}]', '2025-10-23 07:45:39', '2025-10-23 02:15:39'),
(120, 13, '[{\"inventory\": \"10\", \"variant_id\": \"11\", \"variant_title\": \"Blue\"}, {\"inventory\": \"10\", \"variant_id\": \"10\", \"variant_title\": \"Orange\"}]', '2025-10-23 07:46:02', '2025-10-23 02:16:02'),
(121, 5, '[{\"inventory\": \"10\", \"variant_id\": \"9\", \"variant_title\": \"Blue\"}, {\"inventory\": \"10\", \"variant_id\": \"8\", \"variant_title\": \"Orange\"}]', '2025-10-23 07:46:21', '2025-10-23 02:16:21'),
(122, 201, '[{\"inventory\": \"1\", \"variant_id\": \"284\", \"variant_title\": \"Default\"}]', '2025-11-15 15:19:03', '2025-11-15 09:49:03'),
(123, 193, '[{\"inventory\": \"1\", \"variant_id\": \"276\", \"variant_title\": \"Default\"}]', '2025-11-15 15:19:24', '2025-11-15 09:49:24'),
(124, 188, '[{\"inventory\": \"1\", \"variant_id\": \"271\", \"variant_title\": \"Default\"}]', '2025-11-15 15:19:39', '2025-11-15 09:49:39'),
(125, 205, '[{\"inventory\": \"1\", \"variant_id\": \"288\", \"variant_title\": \"Default\"}]', '2025-11-15 15:20:06', '2025-11-15 09:50:06'),
(126, 203, '[{\"inventory\": \"1\", \"variant_id\": \"286\", \"variant_title\": \"Default\"}]', '2025-11-15 15:20:31', '2025-11-15 09:50:31'),
(127, 192, '[{\"inventory\": \"1\", \"variant_id\": \"275\", \"variant_title\": \"Default\"}]', '2025-11-15 15:21:21', '2025-11-15 09:51:21'),
(128, 191, '[{\"inventory\": \"1\", \"variant_id\": \"274\", \"variant_title\": \"Default\"}]', '2025-11-15 15:21:39', '2025-11-15 09:51:39'),
(129, 189, '[{\"inventory\": \"3\", \"variant_id\": \"272\", \"variant_title\": \"Default\"}]', '2025-11-15 15:21:59', '2025-11-15 09:51:59'),
(130, 187, '[{\"inventory\": \"1\", \"variant_id\": \"270\", \"variant_title\": \"Default\"}]', '2025-11-15 15:22:23', '2025-11-15 09:52:23'),
(131, 186, '[{\"inventory\": \"1\", \"variant_id\": \"269\", \"variant_title\": \"Default\"}]', '2025-11-15 15:22:44', '2025-11-15 09:52:44'),
(132, 184, '[{\"inventory\": \"1\", \"variant_id\": \"267\", \"variant_title\": \"Default\"}]', '2025-11-15 15:23:09', '2025-11-15 09:53:09'),
(133, 182, '[{\"inventory\": \"1\", \"variant_id\": \"265\", \"variant_title\": \"Default\"}]', '2025-11-15 15:23:25', '2025-11-15 09:53:25'),
(134, 181, '[{\"inventory\": \"1\", \"variant_id\": \"264\", \"variant_title\": \"Default\"}]', '2025-11-15 15:23:46', '2025-11-15 09:53:46'),
(135, 180, '[{\"inventory\": \"1\", \"variant_id\": \"263\", \"variant_title\": \"Default\"}]', '2025-11-15 15:24:01', '2025-11-15 09:54:01'),
(136, 175, '[{\"inventory\": \"1\", \"variant_id\": \"259\", \"variant_title\": \"Default\"}]', '2025-11-15 15:24:14', '2025-11-15 09:54:14'),
(137, 174, '[{\"inventory\": \"8\", \"variant_id\": \"257\", \"variant_title\": \"Black\"}]', '2025-11-15 15:27:58', '2025-11-15 09:57:58'),
(138, 173, '[{\"inventory\": \"1\", \"variant_id\": \"258\", \"variant_title\": \"Black\"}]', '2025-11-15 15:28:08', '2025-11-15 09:58:08'),
(139, 172, '[{\"inventory\": \"4\", \"variant_id\": \"256\", \"variant_title\": \"Black\"}]', '2025-11-15 15:28:21', '2025-11-15 09:58:21'),
(140, 74, '[{\"inventory\": \"1\", \"variant_id\": \"129\", \"variant_title\": \"Black\"}]', '2025-11-15 15:28:37', '2025-11-15 09:58:37'),
(141, 73, '[{\"inventory\": \"1\", \"variant_id\": \"128\", \"variant_title\": \"Black\"}]', '2025-11-15 15:28:52', '2025-11-15 09:58:52'),
(142, 72, '[{\"inventory\": \"8\", \"variant_id\": \"127\", \"variant_title\": \"Black\"}]', '2025-11-15 15:29:10', '2025-11-15 09:59:10'),
(143, 71, '[{\"inventory\": \"8\", \"variant_id\": \"126\", \"variant_title\": \"Black\"}]', '2025-11-15 15:29:22', '2025-11-15 09:59:22'),
(144, 70, '[{\"inventory\": \"4\", \"variant_id\": \"125\", \"variant_title\": \"Black\"}]', '2025-11-15 15:29:38', '2025-11-15 09:59:38'),
(145, 69, '[{\"inventory\": \"4\", \"variant_id\": \"124\", \"variant_title\": \"Black\"}]', '2025-11-15 15:29:48', '2025-11-15 09:59:48'),
(146, 170, '[{\"inventory\": \"3\", \"variant_id\": \"254\", \"variant_title\": \"Blue\"}, {\"inventory\": \"2\", \"variant_id\": \"253\", \"variant_title\": \"Brown\"}, {\"inventory\": \"2\", \"variant_id\": \"252\", \"variant_title\": \"Yellow\"}]', '2025-11-15 15:32:04', '2025-11-15 10:02:04'),
(147, 169, '[{\"inventory\": \"1\", \"variant_id\": \"251\", \"variant_title\": \"Yellow\"}]', '2025-11-15 15:32:30', '2025-11-15 10:02:30'),
(148, 167, '[{\"inventory\": \"3\", \"variant_id\": \"246\", \"variant_title\": \"Blue\"}, {\"inventory\": \"1\", \"variant_id\": \"245\", \"variant_title\": \"Green\"}]', '2025-11-15 15:34:06', '2025-11-15 10:04:06'),
(149, 168, '[{\"inventory\": \"0\", \"variant_id\": \"250\", \"variant_title\": \"Blue\"}, {\"inventory\": \"3\", \"variant_id\": \"249\", \"variant_title\": \"Red\"}, {\"inventory\": \"0\", \"variant_id\": \"248\", \"variant_title\": \"Black\"}, {\"inventory\": \"0\", \"variant_id\": \"247\", \"variant_title\": \"Green\"}]', '2025-11-15 15:34:50', '2025-11-15 10:04:50'),
(150, 166, '[{\"inventory\": \"50\", \"variant_id\": \"244\", \"variant_title\": \"Default\"}]', '2025-11-15 15:35:32', '2025-11-15 10:05:32'),
(151, 165, '[{\"inventory\": \"50\", \"variant_id\": \"243\", \"variant_title\": \"Black\"}]', '2025-11-15 15:36:18', '2025-11-15 10:06:18'),
(152, 164, '[{\"inventory\": \"50\", \"variant_id\": \"242\", \"variant_title\": \"Black\"}]', '2025-11-15 15:36:38', '2025-11-15 10:06:38'),
(153, 163, '[{\"inventory\": \"200\", \"variant_id\": \"241\", \"variant_title\": \"Default\"}]', '2025-11-15 15:36:56', '2025-11-15 10:06:56'),
(154, 129, '[{\"inventory\": \"1\", \"variant_id\": \"200\", \"variant_title\": \"White\"}]', '2025-11-15 15:50:24', '2025-11-15 10:20:24'),
(155, 116, '[{\"inventory\": \"1\", \"variant_id\": \"187\", \"variant_title\": \"Clear\"}]', '2025-11-15 15:53:10', '2025-11-15 10:23:10'),
(156, 114, '[{\"inventory\": \"1\", \"variant_id\": \"185\", \"variant_title\": \"Orange\"}, {\"inventory\": \"1\", \"variant_id\": \"184\", \"variant_title\": \"Green\"}]', '2025-11-15 15:54:24', '2025-11-15 10:53:01'),
(157, 112, '[{\"inventory\": \"1\", \"variant_id\": \"182\", \"variant_title\": \"Dark Shade\"}]', '2025-11-15 15:55:25', '2025-11-15 10:25:25'),
(158, 111, '[{\"inventory\": \"4\", \"variant_id\": \"181\", \"variant_title\": \"Dark Shade\"}]', '2025-11-15 15:55:44', '2025-11-15 10:25:44'),
(159, 103, '[{\"inventory\": \"1\", \"variant_id\": \"170\", \"variant_title\": \"Green\"}]', '2025-11-15 15:57:37', '2025-11-15 10:27:37'),
(160, 102, '[{\"inventory\": \"1\", \"variant_id\": \"169\", \"variant_title\": \"Green\"}]', '2025-11-15 15:57:50', '2025-11-15 10:27:50'),
(161, 93, '[{\"inventory\": \"1\", \"variant_id\": \"155\", \"variant_title\": \"Green\"}, {\"inventory\": \"5\", \"variant_id\": \"154\", \"variant_title\": \"Clear\"}]', '2025-11-15 16:07:52', '2025-11-15 11:06:58'),
(162, 92, '[{\"inventory\": \"2\", \"variant_id\": \"153\", \"variant_title\": \"Crystal\"}]', '2025-11-15 16:08:41', '2025-11-15 10:38:41'),
(163, 91, '[{\"inventory\": \"1\", \"variant_id\": \"152\", \"variant_title\": \"Clear\"}]', '2025-11-15 16:09:22', '2025-11-15 10:39:22'),
(164, 84, '[{\"inventory\": \"1\", \"variant_id\": \"145\", \"variant_title\": \"Bronze\"}]', '2025-11-15 16:12:27', '2025-11-15 10:42:27'),
(165, 82, '[{\"inventory\": \"1\", \"variant_id\": \"142\", \"variant_title\": \"Blue\"}]', '2025-11-15 16:12:58', '2025-11-15 10:42:58'),
(166, 80, '[{\"inventory\": \"0\", \"variant_id\": \"140\", \"variant_title\": \"Blue\"}, {\"inventory\": \"3\", \"variant_id\": \"139\", \"variant_title\": \"Green\"}, {\"inventory\": \"1\", \"variant_id\": \"138\", \"variant_title\": \"Bottle Green\"}, {\"inventory\": \"1\", \"variant_id\": \"137\", \"variant_title\": \"Light Blue\"}]', '2025-11-15 16:17:12', '2025-11-15 10:47:12'),
(167, 76, '[{\"inventory\": \"1\", \"variant_id\": \"131\", \"variant_title\": \"Baby Pink\"}]', '2025-11-15 16:17:42', '2025-11-15 10:47:42'),
(168, 101, '[{\"inventory\": \"5\", \"variant_id\": \"168\", \"variant_title\": \"Light Green\"}]', '2025-11-15 16:27:25', '2025-11-15 10:57:25'),
(169, 100, '[{\"inventory\": \"9\", \"variant_id\": \"167\", \"variant_title\": \"Green\"}]', '2025-11-15 16:29:53', '2025-11-15 10:59:53'),
(170, 99, '[{\"inventory\": \"1\", \"variant_id\": \"166\", \"variant_title\": \"Blue\"}]', '2025-11-15 16:30:54', '2025-11-15 11:00:54'),
(171, 97, '[{\"inventory\": \"1\", \"variant_id\": \"164\", \"variant_title\": \"Blue\"}, {\"inventory\": \"1\", \"variant_id\": \"163\", \"variant_title\": \"Light Green\"}]', '2025-11-15 16:33:34', '2025-11-15 11:03:34'),
(172, 96, '[{\"inventory\": \"1\", \"variant_id\": \"162\", \"variant_title\": \"Blue\"}, {\"inventory\": \"1\", \"variant_id\": \"161\", \"variant_title\": \"Green\"}, {\"inventory\": \"0\", \"variant_id\": \"160\", \"variant_title\": \"Blue & Green\"}]', '2025-11-15 16:34:08', '2025-11-15 11:04:08'),
(173, 68, '[{\"inventory\": \"2\", \"variant_id\": \"123\", \"variant_title\": \"Blue\"}, {\"inventory\": \"2\", \"variant_id\": \"122\", \"variant_title\": \"Green\"}, {\"inventory\": \"0\", \"variant_id\": \"121\", \"variant_title\": \"Multicolor 1\"}, {\"inventory\": \"0\", \"variant_id\": \"120\", \"variant_title\": \"Multicolor 2\"}, {\"inventory\": \"0\", \"variant_id\": \"119\", \"variant_title\": \"Red & Blue\"}, {\"inventory\": \"0\", \"variant_id\": \"118\", \"variant_title\": \"Orange & Green\"}, {\"inventory\": \"0\", \"variant_id\": \"117\", \"variant_title\": \"Red & Blue Marble\"}, {\"inventory\": \"0\", \"variant_id\": \"116\", \"variant_title\": \"Red & Blue Marble 2\"}]', '2025-11-15 16:41:32', '2025-11-15 11:11:32'),
(174, 67, '[{\"inventory\": \"2\", \"variant_id\": \"115\", \"variant_title\": \"Blue\"}, {\"inventory\": \"0\", \"variant_id\": \"114\", \"variant_title\": \"Green\"}, {\"inventory\": \"0\", \"variant_id\": \"113\", \"variant_title\": \"Multicolor 1\"}, {\"inventory\": \"0\", \"variant_id\": \"112\", \"variant_title\": \"Multicolor 2\"}, {\"inventory\": \"0\", \"variant_id\": \"111\", \"variant_title\": \"Red & Blue\"}, {\"inventory\": \"0\", \"variant_id\": \"110\", \"variant_title\": \"Orange & Green\"}, {\"inventory\": \"0\", \"variant_id\": \"109\", \"variant_title\": \"Red & Blue Marble\"}, {\"inventory\": \"0\", \"variant_id\": \"108\", \"variant_title\": \"Red & Blue Marble 2\"}]', '2025-11-15 16:41:46', '2025-11-15 11:11:46'),
(175, 66, '[{\"inventory\": \"200\", \"variant_id\": \"107\", \"variant_title\": \"Black\"}]', '2025-11-15 16:42:37', '2025-11-15 11:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoice_no` int(11) DEFAULT NULL,
  `invoice_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_gst_applicable` int(11) DEFAULT NULL,
  `gst_tax_percent` int(11) DEFAULT NULL,
  `customer_data` json DEFAULT NULL,
  `company_data` json DEFAULT NULL,
  `product_data` json DEFAULT NULL,
  `sub_total` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gst` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_no`, `invoice_date`, `subject`, `is_gst_applicable`, `gst_tax_percent`, `customer_data`, `company_data`, `product_data`, `sub_total`, `gst`, `total`, `created_at`, `updated_at`) VALUES
(2, 1, '2025-09-27', 'TEst', 1, 5, '{\"customer_name\": \"Robert Peary\", \"customer_email\": \"pearyrobert89@gmail.com\", \"customer_phone\": \"8332906999\", \"customer_address\": \"29 N. Swanson Ave. Lockport, NY 14094\"}', '{\"company_name\": \"Gmail Number\", \"company_email\": \"Rohanverma25dec@gmail.com\", \"company_phone\": \"07011243534\", \"company_address\": \"192, RAM SHYAM ENCLAVE CHIPIYANA\"}', '[{\"price\": \"5499\", \"amount\": \"16497\", \"variant\": \"Orange\", \"quantity\": \"3\", \"product_id\": \"274\"}, {\"price\": \"5499\", \"amount\": \"27495\", \"variant\": \"Grey\", \"quantity\": \"5\", \"product_id\": \"274\"}]', '43992.00', '2199.60', '46191.60', '2025-09-27 03:24:40', '2025-09-27 05:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_07_050505_create_admin_user_table', 1),
(9, '2023_08_08_042427_create_category_table', 2),
(10, '2023_08_18_081918_media_table', 3),
(12, '2023_08_18_082949_create_plan', 4),
(13, '2023_08_08_042427_create_slider_table', 5),
(14, '2023_08_28_040458_create_testimonials', 5),
(15, '2023_09_01_051103_create_page_table', 6),
(16, '2023_09_04_032628_create_category_table', 7),
(17, '2023_09_04_035042_create_service_table', 8),
(18, '2023_09_04_052002_create_portfolio_table', 9),
(20, '2023_09_05_044357_create_print_plan_table', 10),
(21, '2023_09_06_041723_create_contact_settings_table', 11),
(22, '2023_10_02_111502_slider_table', 12),
(23, '2023_10_02_150455_create_product_table', 13),
(24, '2023_10_02_151123_create_product_images_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `productCheckout` json DEFAULT NULL,
  `couponCheckout` json DEFAULT NULL,
  `paid_amount` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT '1',
  `shipping_details` json DEFAULT NULL,
  `delivery_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `cancelled_reason` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `productCheckout`, `couponCheckout`, `paid_amount`, `payment_status`, `transaction_id`, `order_status`, `shipping_details`, `delivery_date`, `address_id`, `cancelled_reason`, `created_at`, `updated_at`) VALUES
(1, 'ORD9714', 1, '[{\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831119_68b71d8f8617a.jpg\", \"product_price\": \"5499\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Blue\"}]', '[{\"coupon\": \"DIWALI30\", \"subTotal\": \"5499.00\", \"couponValue\": \"30%\", \"finalAmount\": \"3849.30\", \"shippingValue\": \"0.00\"}]', '3849.30', 'success', 'OM2509241119520857660733', '1', NULL, NULL, 20, NULL, '2025-09-24 05:49:51', '2025-09-24 05:50:12'),
(2, 'ORD5025', 1, '[{\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831118_68b71d8ee686d.jpg\", \"product_price\": \"5499\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Lemon Yellow\"}]', '[{\"coupon\": \"DIWALI300\", \"subTotal\": \"5499.00\", \"couponValue\": \"300\", \"finalAmount\": \"5199.00\", \"shippingValue\": \"0.00\"}]', '5199.00', '', '', '0', NULL, NULL, 20, NULL, '2025-09-24 05:51:39', '2025-09-24 05:51:39'),
(3, 'ORD3715', 1, '[{\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831118_68b71d8ee686d.jpg\", \"product_price\": \"5499\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Lemon Yellow\"}]', '[{\"coupon\": \"DIWALI300\", \"subTotal\": \"5499.00\", \"couponValue\": \"300\", \"finalAmount\": \"5199.00\", \"shippingValue\": \"0.00\"}]', '5199.00', 'success', 'OM2509241123094947660183', '2', '{\"tracking_id\": \"1234567890\", \"shipping_date\": \"2025-09-24\", \"tracking_link\": \"#\", \"shipping_company\": \"Testing\"}', NULL, 20, NULL, '2025-09-24 05:53:09', '2025-09-24 05:54:21'),
(4, 'ORD4684', 0, '[{\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831118_68b71d8ee686d.jpg\", \"product_price\": \"5499\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Lemon Yellow\"}]', '[{\"coupon\": \"\", \"subTotal\": \"5499.00\", \"couponValue\": \"\", \"finalAmount\": \"5499.00\", \"shippingValue\": \"0.00\"}]', '5499.00', 'pending', 'OM2509250906022477343950', '0', NULL, NULL, 21, NULL, '2025-09-25 03:36:01', '2025-09-25 03:37:26'),
(5, 'ORD5861', 0, '[{\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831118_68b71d8ee686d.jpg\", \"product_price\": \"5499\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Lemon Yellow\"}]', '[{\"coupon\": \"\", \"subTotal\": \"5499.00\", \"couponValue\": \"\", \"finalAmount\": \"5499.00\", \"shippingValue\": \"0.00\"}]', '5499.00', 'success', 'OM2509250944540657343892', '1', NULL, NULL, 22, NULL, '2025-09-25 04:14:53', '2025-09-25 04:21:50'),
(6, 'ORD8436', 1, '[{\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831118_68b71d8ee686d.jpg\", \"product_price\": \"5499\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Lemon Yellow\"}]', '[{\"coupon\": \"\", \"subTotal\": \"5499.00\", \"couponValue\": \"\", \"finalAmount\": \"5499.00\", \"shippingValue\": \"0.00\"}]', '5499.00', 'success', 'OM2509250956503037343682', '1', NULL, NULL, 23, NULL, '2025-09-25 04:26:50', '2025-09-25 04:29:46'),
(7, 'ORD5501', 1, '[{\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831119_68b71d8f2f497.jpg\", \"product_price\": \"5499\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Grey\"}]', '[{\"coupon\": \"DIWALI300\", \"subTotal\": \"5499.00\", \"couponValue\": \"300\", \"finalAmount\": \"5199.00\", \"shippingValue\": \"0.00\"}]', '5199.00', 'success', 'OM2509250959342767343934', '1', NULL, NULL, 24, NULL, '2025-09-25 04:29:34', '2025-09-25 04:29:55'),
(8, 'ORD2274', 0, '[{\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831119_68b71d8f2f497.jpg\", \"product_price\": \"5499\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Grey\"}]', '[{\"coupon\": \"\", \"subTotal\": \"5499.00\", \"couponValue\": \"\", \"finalAmount\": \"5499.00\", \"shippingValue\": \"0.00\"}]', '5499.00', 'success', 'OM2509251024210557343059', '1', NULL, NULL, 25, NULL, '2025-09-25 04:54:20', '2025-09-25 04:59:22'),
(9, 'ORD2010', 1, '[{\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831119_68b71d8f2f497.jpg\", \"product_price\": \"5499\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Grey\"}]', '[{\"coupon\": \"\", \"subTotal\": \"5499.00\", \"couponValue\": \"\", \"finalAmount\": \"5499.00\", \"shippingValue\": \"0.00\"}]', '5499.00', 'success', 'OM2509251031047237343181', '1', NULL, NULL, 26, NULL, '2025-09-25 05:01:04', '2025-09-25 05:04:24'),
(10, 'ORD3831', 1, '[{\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831118_68b71d8ee686d.jpg\", \"product_price\": \"5499\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Lemon Yellow\"}, {\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831119_68b71d8f2f497.jpg\", \"product_price\": \"5499\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Grey\"}]', '[{\"coupon\": \"\", \"subTotal\": \"10998.00\", \"couponValue\": \"\", \"finalAmount\": \"10998.00\", \"shippingValue\": \"0.00\"}]', '10998.00', 'pending', 'OM2509251034119227343282', '0', NULL, NULL, 27, NULL, '2025-09-25 05:04:11', '2025-09-25 05:06:53'),
(11, 'ORD6106', 0, '[{\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831118_68b71d8ee686d.jpg\", \"product_price\": \"5499\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Lemon Yellow\"}, {\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831119_68b71d8f2f497.jpg\", \"product_price\": \"5499\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Grey\"}]', '[{\"coupon\": \"\", \"subTotal\": \"10998.00\", \"couponValue\": \"\", \"finalAmount\": \"10998.00\", \"shippingValue\": \"0.00\"}]', '10998.00', 'success', 'OM2509251036461737343271', '1', NULL, NULL, 28, NULL, '2025-09-25 05:06:46', '2025-09-25 05:13:04'),
(12, 'ORD4631', 1, '[{\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831118_68b71d8ee686d.jpg\", \"product_price\": \"5499\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Lemon Yellow\"}, {\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831119_68b71d8f2f497.jpg\", \"product_price\": \"5499\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Grey\"}]', '[{\"coupon\": \"\", \"subTotal\": \"10998.00\", \"couponValue\": \"\", \"finalAmount\": \"10998.00\", \"shippingValue\": \"0.00\"}]', '10998.00', 'success', 'OM2509251042492297343698', '1', NULL, NULL, 29, NULL, '2025-09-25 05:12:49', '2025-09-25 05:13:08'),
(13, 'ORD1421', 1, '[{\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831119_68b71d8f8617a.jpg\", \"product_price\": \"1\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Blue\"}]', '[{\"coupon\": \"\", \"subTotal\": \"1.00\", \"couponValue\": \"\", \"finalAmount\": \"1.00\", \"shippingValue\": \"0.00\"}]', '1.00', '', '', '0', NULL, NULL, 30, NULL, '2025-09-25 05:44:45', '2025-09-25 05:44:45'),
(14, 'ORD3192', 1, '[{\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831119_68b71d8f8617a.jpg\", \"product_price\": \"1\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Blue\"}]', '[{\"coupon\": \"\", \"subTotal\": \"1.00\", \"couponValue\": \"\", \"finalAmount\": \"1.00\", \"shippingValue\": \"0.00\"}]', '1.00', '', '', '0', NULL, NULL, 31, NULL, '2025-09-25 05:46:59', '2025-09-25 05:46:59'),
(15, 'ORD5442', 1, '[{\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831119_68b71d8f8617a.jpg\", \"product_price\": \"1\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Blue\"}]', '[{\"coupon\": \"\", \"subTotal\": \"1.00\", \"couponValue\": \"\", \"finalAmount\": \"1.00\", \"shippingValue\": \"0.00\"}]', '1.00', '', '', '0', NULL, NULL, 32, NULL, '2025-09-25 05:47:16', '2025-09-25 05:47:16'),
(16, 'ORD4327', 1, '[{\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831119_68b71d8f8617a.jpg\", \"product_price\": \"1\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Blue\"}]', '[{\"coupon\": \"\", \"subTotal\": \"1.00\", \"couponValue\": \"\", \"finalAmount\": \"1.00\", \"shippingValue\": \"0.00\"}]', '1.00', 'success', 'OM2509251118303961383005', '1', NULL, NULL, 33, NULL, '2025-09-25 05:48:28', '2025-09-25 05:49:02'),
(17, 'ORD2724', 1, '[{\"quantity\": 2, \"product_id\": \"274\", \"product_image\": \"1756831118_68b71d8ee686d.jpg\", \"product_price\": \"5499\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Lemon Yellow\"}]', '[{\"coupon\": \"\", \"subTotal\": \"10998.00\", \"couponValue\": \"\", \"finalAmount\": \"10998.00\", \"shippingValue\": \"0.00\"}]', '10998.00', '', '', '0', NULL, NULL, 20, NULL, '2025-10-08 00:44:10', '2025-10-08 00:44:10'),
(18, 'ORD5252', 1, '[{\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831118_68b71d8ee686d.jpg\", \"product_price\": \"5499\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Lemon Yellow\"}]', '[{\"coupon\": \"\", \"subTotal\": \"5499.00\", \"couponValue\": \"\", \"finalAmount\": \"5499.00\", \"shippingValue\": \"0.00\"}]', '5499.00', '', '', '0', NULL, NULL, 34, NULL, '2025-10-13 02:40:51', '2025-10-13 02:40:51'),
(19, 'ORD6180', 1, '[{\"quantity\": \"1\", \"product_id\": \"274\", \"product_image\": \"1756831118_68b71d8ee686d.jpg\", \"product_price\": \"5499\", \"product_title\": \"Dancing Hookah\", \"product_variant\": \"Lemon Yellow\"}]', '[{\"coupon\": \"\", \"subTotal\": \"5499.00\", \"couponValue\": \"\", \"finalAmount\": \"5499.00\", \"shippingValue\": \"0.00\"}]', '5499.00', '', '', '0', NULL, NULL, 20, NULL, '2025-10-13 02:41:16', '2025-10-13 02:41:16'),
(20, 'ORD3242', 4, '[{\"quantity\": \"1\", \"product_id\": \"15\", \"product_image\": \"1753972736_688b800025c93.jpg\", \"product_price\": \"399\", \"product_title\": \"Round ball Acrylic Bong 10 Inches\", \"product_variant\": \"Pink\"}]', '[{\"coupon\": \"\", \"subTotal\": \"399.00\", \"couponValue\": \"\", \"finalAmount\": \"399.00\", \"shippingValue\": \"0.00\"}]', '399.00', 'pending', '', '0', NULL, NULL, 35, NULL, '2025-10-23 07:49:57', '2025-10-23 07:52:02'),
(21, 'ORD6525', 4, '[{\"quantity\": \"1\", \"product_id\": \"15\", \"product_image\": \"1753972736_688b800025c93.jpg\", \"product_price\": \"399\", \"product_title\": \"Round ball Acrylic Bong 10 Inches\", \"product_variant\": \"Pink\"}]', '[{\"coupon\": \"\", \"subTotal\": \"399.00\", \"couponValue\": \"\", \"finalAmount\": \"399.00\", \"shippingValue\": \"0.00\"}]', '399.00', '', '', '0', NULL, NULL, 36, NULL, '2025-10-23 07:54:02', '2025-10-23 07:54:02'),
(22, 'ORD3997', 2, '[{\"quantity\": \"1\", \"product_id\": \"214\", \"product_image\": \"1755169455_689dc2af46b9e.jpg\", \"product_price\": \"99\", \"product_title\": \"Brush 22 cm\", \"product_variant\": \"Black\"}]', '[{\"coupon\": \"\", \"subTotal\": \"99.00\", \"couponValue\": \"\", \"finalAmount\": \"99.00\", \"shippingValue\": \"0.00\"}]', '99.00', 'success', 'OM2510231328015297470025', '1', NULL, NULL, 37, NULL, '2025-10-23 07:57:58', '2025-10-23 08:08:35'),
(23, 'ORD3040', 5, '[{\"quantity\": \"1\", \"product_id\": \"15\", \"product_image\": \"1753972736_688b800025c93.jpg\", \"product_price\": \"399\", \"product_title\": \"Round ball Acrylic Bong 10 Inches\", \"product_variant\": \"Pink\"}]', '[{\"coupon\": \"\", \"subTotal\": \"399.00\", \"couponValue\": \"\", \"finalAmount\": \"399.00\", \"shippingValue\": \"0.00\"}]', '399.00', 'pending', '', '0', NULL, NULL, 38, NULL, '2025-10-23 07:59:37', '2025-10-23 08:00:10'),
(24, 'ORD9939', 5, '[{\"quantity\": \"1\", \"product_id\": \"15\", \"product_image\": \"1753972736_688b800025c93.jpg\", \"product_price\": \"399\", \"product_title\": \"Round ball Acrylic Bong 10 Inches\", \"product_variant\": \"Pink\"}]', '[{\"coupon\": \"\", \"subTotal\": \"399.00\", \"couponValue\": \"\", \"finalAmount\": \"399.00\", \"shippingValue\": \"0.00\"}]', '399.00', '', '', '0', NULL, NULL, 39, NULL, '2025-10-23 08:07:19', '2025-10-23 08:07:19'),
(25, 'ORD8563', 6, '[{\"quantity\": \"1\", \"product_id\": \"301\", \"product_image\": \"1757149732_68bbfa24a1ffd.jpg\", \"product_price\": \"349\", \"product_title\": \"Ice Bazooka Handle\", \"product_variant\": \"Yellow\"}]', '[{\"coupon\": \"\", \"subTotal\": \"349.00\", \"couponValue\": \"\", \"finalAmount\": \"349.00\", \"shippingValue\": \"0.00\"}]', '349.00', 'failed', 'OM2510231339500968200814', '0', NULL, NULL, 40, NULL, '2025-10-23 08:09:47', '2025-10-24 02:52:32'),
(26, 'ORD4686', 0, '[{\"quantity\": \"1\", \"product_id\": \"213\", \"product_image\": \"1755169396_689dc274dc5d7.jpg\", \"product_price\": \"49\", \"product_title\": \"Brush 10 cm\", \"product_variant\": \"Black\"}]', '[{\"coupon\": \"\", \"subTotal\": \"49.00\", \"couponValue\": \"\", \"finalAmount\": \"249.00\", \"shippingValue\": \"200.00\"}]', '249.00', 'failed', 'OM2510231343109896199751', '0', NULL, NULL, 41, NULL, '2025-10-23 08:13:04', '2025-10-23 10:06:27'),
(27, 'ORD2699', 7, '[{\"quantity\": \"1\", \"product_id\": \"213\", \"product_image\": \"1755169396_689dc274dc5d7.jpg\", \"product_price\": \"49\", \"product_title\": \"Brush 10 cm\", \"product_variant\": \"Black\"}]', '[{\"coupon\": \"\", \"subTotal\": \"49.00\", \"couponValue\": \"\", \"finalAmount\": \"49.00\", \"shippingValue\": \"0.00\"}]', '49.00', 'success', 'OM2510240834104717470965', '1', NULL, NULL, 42, NULL, '2025-10-24 03:03:48', '2025-10-24 03:05:08'),
(28, 'ORD1541', 1, '[{\"quantity\": \"1\", \"product_id\": \"213\", \"product_image\": \"1755169396_689dc274dc5d7.jpg\", \"product_price\": \"49\", \"product_title\": \"Brush 10 cm\", \"product_variant\": \"Black\"}]', '[{\"coupon\": \"\", \"subTotal\": \"49.00\", \"couponValue\": \"\", \"finalAmount\": \"49.00\", \"shippingValue\": \"0.00\"}]', '49.00', 'success', 'OM2510240838078753902807', '3', '{\"tracking_id\": \"1234567890\", \"shipping_date\": \"2025-10-25\", \"tracking_link\": \"#\", \"shipping_company\": \"Testing\"}', '2025-10-25', 20, NULL, '2025-10-24 03:08:00', '2025-10-24 03:35:15'),
(29, 'ORD7630', 1, '[{\"quantity\": \"1\", \"product_id\": \"213\", \"product_image\": \"1755169396_689dc274dc5d7.jpg\", \"product_price\": \"49\", \"product_title\": \"Brush 10 cm\", \"product_variant\": \"Black\"}]', '[{\"coupon\": \"\", \"subTotal\": \"49.00\", \"couponValue\": \"\", \"finalAmount\": \"49.00\", \"shippingValue\": \"0.00\"}]', '49.00', 'success', 'OM2510240911558276477640', '1', NULL, NULL, 20, NULL, '2025-10-24 03:41:21', '2025-10-24 03:42:12'),
(30, 'ORD3265', 1, '[{\"quantity\": \"1\", \"product_id\": \"213\", \"product_image\": \"1755169396_689dc274dc5d7.jpg\", \"product_price\": \"49\", \"product_title\": \"Brush 10 cm\", \"product_variant\": \"Black\"}]', '[{\"coupon\": \"\", \"subTotal\": \"49.00\", \"couponValue\": \"\", \"finalAmount\": \"49.00\", \"shippingValue\": \"0.00\"}]', '49.00', 'success', 'OM2510240913539013113664', '3', NULL, '2025-10-25', 20, NULL, '2025-10-24 03:43:47', '2025-10-24 04:36:25'),
(31, 'ORD3235', 1, '[{\"quantity\": \"1\", \"product_id\": \"213\", \"product_image\": \"1755169396_689dc274dc5d7.jpg\", \"product_price\": \"49\", \"product_title\": \"Brush 10 cm\", \"product_variant\": \"Black\"}]', '[{\"coupon\": \"\", \"subTotal\": \"49.00\", \"couponValue\": \"\", \"finalAmount\": \"49.00\", \"shippingValue\": \"0.00\"}]', '49.00', 'success', 'OM2510241020370395116459', '1', NULL, NULL, 20, NULL, '2025-10-24 04:50:25', '2025-10-24 04:51:03'),
(32, 'ORD3555', 1, '[{\"quantity\": \"1\", \"product_id\": \"213\", \"product_image\": \"1755169396_689dc274dc5d7.jpg\", \"product_price\": \"49\", \"product_title\": \"Brush 10 cm\", \"product_variant\": \"Black\"}]', '[{\"coupon\": \"\", \"subTotal\": \"49.00\", \"couponValue\": \"\", \"finalAmount\": \"49.00\", \"shippingValue\": \"0.00\"}]', '49.00', 'success', 'OM2510241030598466477696W', '1', NULL, NULL, 20, NULL, '2025-10-24 05:00:57', '2025-10-24 05:01:25'),
(33, 'ORD9858', 1, '[{\"quantity\": \"1\", \"product_id\": \"213\", \"product_image\": \"1755169396_689dc274dc5d7.jpg\", \"product_price\": \"49\", \"product_title\": \"Brush 10 cm\", \"product_variant\": \"Black\"}]', '[{\"coupon\": \"\", \"subTotal\": \"49.00\", \"couponValue\": \"\", \"finalAmount\": \"49.00\", \"shippingValue\": \"0.00\"}]', '49.00', 'success', 'OM2510241036008413113010', '1', NULL, NULL, 29, NULL, '2025-10-24 05:05:44', '2025-10-24 05:06:22'),
(34, 'ORD6462', 0, '[{\"quantity\": \"1\", \"product_id\": \"298\", \"product_image\": \"1757146052_68bbebc40976a.jpg\", \"product_price\": \"2499\", \"product_title\": \"Shishamatic Chillum &amp; Revolving HMD\", \"product_variant\": \"Default\"}]', '[{\"coupon\": \"\", \"subTotal\": \"2499.00\", \"couponValue\": \"\", \"finalAmount\": \"2499.00\", \"shippingValue\": \"0.00\"}]', '2499.00', '', '', '0', NULL, NULL, 43, NULL, '2025-11-04 07:02:19', '2025-11-04 07:02:19'),
(35, 'ORD2144', 0, '[{\"quantity\": \"1\", \"product_id\": \"298\", \"product_image\": \"1757146052_68bbebc40976a.jpg\", \"product_price\": \"2499\", \"product_title\": \"Shishamatic Chillum &amp; Revolving HMD\", \"product_variant\": \"Default\"}]', '[{\"coupon\": \"\", \"subTotal\": \"2499.00\", \"couponValue\": \"\", \"finalAmount\": \"2499.00\", \"shippingValue\": \"0.00\"}]', '2499.00', '', '', '0', NULL, NULL, 44, NULL, '2025-11-04 07:18:18', '2025-11-04 07:18:18'),
(36, 'ORD8702', 0, '[{\"quantity\": \"1\", \"product_id\": \"298\", \"product_image\": \"1757146052_68bbebc40976a.jpg\", \"product_price\": \"2499\", \"product_title\": \"Shishamatic Chillum &amp; Revolving HMD\", \"product_variant\": \"Default\"}]', '[{\"coupon\": \"\", \"subTotal\": \"2499.00\", \"couponValue\": \"\", \"finalAmount\": \"2499.00\", \"shippingValue\": \"0.00\"}]', '2499.00', '', '', '0', NULL, NULL, 45, NULL, '2025-11-04 07:22:48', '2025-11-04 07:22:48'),
(37, 'ORD6564', 0, '[{\"quantity\": \"1\", \"product_id\": \"298\", \"product_image\": \"1757146052_68bbebc40976a.jpg\", \"product_price\": \"2499\", \"product_title\": \"Shishamatic Chillum &amp; Revolving HMD\", \"product_variant\": \"Default\"}]', '[{\"coupon\": \"\", \"subTotal\": \"2499.00\", \"couponValue\": \"\", \"finalAmount\": \"2499.00\", \"shippingValue\": \"0.00\"}]', '2499.00', '', '', '0', NULL, NULL, 46, NULL, '2025-11-04 07:27:14', '2025-11-04 07:27:14'),
(38, 'ORD3069', 0, '[{\"quantity\": \"1\", \"product_id\": \"298\", \"product_image\": \"1757146052_68bbebc40976a.jpg\", \"product_price\": \"2499\", \"product_title\": \"Shishamatic Chillum &amp; Revolving HMD\", \"product_variant\": \"Default\"}]', '[{\"coupon\": \"\", \"subTotal\": \"2499.00\", \"couponValue\": \"\", \"finalAmount\": \"2499.00\", \"shippingValue\": \"0.00\"}]', '2499.00', '', '', '0', NULL, NULL, 47, NULL, '2025-11-04 07:28:00', '2025-11-04 07:28:00'),
(39, 'ORD1675', 8, '[{\"quantity\": \"1\", \"product_id\": \"212\", \"product_image\": \"1755169276_689dc1fcd1cd6.jpg\", \"product_price\": \"399\", \"product_title\": \"Baba Chillum 16 cm\", \"product_variant\": \"Brown\"}, {\"quantity\": \"2\", \"product_id\": \"215\", \"product_image\": \"1755177157_689de0c5cc523.jpg\", \"product_price\": \"99\", \"product_title\": \"Glass Shooter\", \"product_variant\": \"White\"}]', '[{\"coupon\": \"\", \"subTotal\": \"597.00\", \"couponValue\": \"\", \"finalAmount\": \"597.00\", \"shippingValue\": \"0.00\"}]', '597.00', 'success', 'OM2511042220536939268102W', '1', NULL, NULL, 48, NULL, '2025-11-04 16:50:23', '2025-11-04 16:51:40');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `title`, `slug`, `description`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'home', '<p>Testing paragraph.................................................</p>\r\n<p>&nbsp;</p>\r\n<h1>Buy Hookah Online at Tobac Go&mdash;your trusted shop for the best hookah pot online. explore premium hookah pots, compare hookah price options, and order hookah online with fast delivery.</h1>', 'Buy Hookah Online | Best Hookah Pot Online', 'Buy Hookah Online, Best Hookah Pot, Best Hookah Pot Online, hookah online, hookah pot, hookah price', 'Buy Hookah Online at Tobac Go—your trusted shop for the best hookah pot online. explore premium hookah pots, compare hookah price options, and order hookah online with fast delivery.', '2023-09-06 04:51:49', '2025-11-17 00:47:46'),
(7, 'Shop', 'shop', NULL, 'Shop', 'shop', 'Shop', '2023-11-20 04:50:34', '2023-11-20 04:50:34'),
(8, 'Cart', 'cart', NULL, 'Cart', 'Cart', 'Cart', '2023-12-01 05:16:28', '2023-11-30 23:50:14'),
(9, 'Checkout', 'checkout', NULL, 'Checkout', 'Checkout', 'Checkout', '2023-12-13 04:11:26', '2023-12-13 04:11:26'),
(10, 'Login', 'login', NULL, 'Login', 'Login', 'Login', '2023-12-15 04:45:09', '2023-12-15 04:45:09'),
(11, 'Account', 'account', NULL, 'Account', 'Account', 'Account', '2023-12-18 04:28:07', '2023-12-18 04:28:07'),
(12, 'Forgot Password', 'forgot-password', NULL, 'Forgot Password', 'Forgot Password', 'Forgot Password', '2024-01-16 04:24:27', '2024-01-16 04:24:27'),
(13, 'Create Password', 'create-password', NULL, 'Create Password', 'Create Password', 'Create Password', '2024-01-17 03:43:50', '2024-01-17 03:43:50'),
(14, 'Thankyou', 'thankyou', NULL, 'Thankyou', 'Thankyou', 'Thankyou', '2024-01-22 04:31:36', '2024-01-21 23:02:18'),
(15, 'Contact Us', 'contact-us', '<p>Contact Us</p>', 'Contact Us', 'Contact Us', 'Contact Us', '2024-01-23 03:57:19', '2024-01-23 03:57:19'),
(16, 'About Us', 'about-us', '<section class=\"about-us-section pt-40 pb-40\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-xl-6\"><!--====== Section Image Box ======-->\r\n<div class=\"section-image-box style-one mb-20\" data-aos=\"fade-up\" data-aos-delay=\"30\" data-aos-duration=\"1000\">\r\n<div class=\"image-one\"><img src=\"public/frontend/images/about/about-1.jpg\" alt=\"About Image\">\r\n<div class=\"img-shape\">&nbsp;</div>\r\n</div>\r\n<div class=\"image-two\"><img src=\"public/frontend/images/about/about-2.jpg\" alt=\"About Image\"></div>\r\n<div class=\"experience-box\"><!--<div class=\"icon\">--><!--    <img src=\"public/frontend/images/about/star.svg\" alt=\"Icon\">--><!--</div>-->\r\n<div class=\"text\">\r\n<div class=\"year\">25</div>\r\n<div class=\"duration\">Year&rsquo;s <br>Experience</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6\"><!--====== Section Content Box ======-->\r\n<div class=\"section-content-box style-one\" data-aos=\"fade-up\" data-aos-delay=\"50\" data-aos-duration=\"1200\">\r\n<div class=\"section-title mb-30\">\r\n<div class=\"sub-heading d-inline-flex align-items-center\"><span class=\"sub-title\">About us</span></div>\r\n<h2>Online shopping is buying things from stores on the internet.</h2>\r\n</div>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the our majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable you are going to.</p>\r\n<div class=\"row\">\r\n<div class=\"col-sm-6\">\r\n<ul class=\"list mb-25\">\r\n<li>We are provide 100% best products</li>\r\n<li>Flexible and affordable price</li>\r\n<li>All products is imported</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--====== End About Us Section ======--><!--====== Start Features Section ======-->\r\n<section class=\"features-section pt-0 pb-40\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12\"><!--=== Features Wrapper ===-->\r\n<div class=\"features-wrapper\" data-aos=\"fade-up\" data-aos-delay=\"70\" data-aos-duration=\"1400\"><!--=== Iconic Box Item ===-->\r\n<div class=\"iconic-box-item icon-left-box mb-25\">\r\n<div class=\"icon\">&nbsp;</div>\r\n<div class=\"content\">\r\n<h5>Free Shipping</h5>\r\n<p>You get your items delivered without any extra cost.</p>\r\n</div>\r\n</div>\r\n<!--=== Divider ===-->\r\n<div class=\"divider mb-25\"><img src=\"public/frontend/images/divider.png\" alt=\"divider\"></div>\r\n<!--=== Iconic Box Item ===-->\r\n<div class=\"iconic-box-item icon-left-box mb-25\">\r\n<div class=\"icon\">&nbsp;</div>\r\n<div class=\"content\">\r\n<h5>Great Support 24/7</h5>\r\n<p>Our customer support team is available around the clock</p>\r\n</div>\r\n</div>\r\n<!--=== Divider ===-->\r\n<div class=\"divider mb-25\"><img src=\"public/frontend/images/divider.png\" alt=\"divider\"></div>\r\n<!--=== Iconic Box Item ===-->\r\n<div class=\"iconic-box-item icon-left-box mb-25\">\r\n<div class=\"icon\">&nbsp;</div>\r\n<div class=\"content\">\r\n<h5>Return Available</h5>\r\n<p>Making it easy to return any items if you\'re not satisfied.</p>\r\n</div>\r\n</div>\r\n<!--=== Divider ===-->\r\n<div class=\"divider mb-25\"><img src=\"public/frontend/images/divider.png\" alt=\"divider\"></div>\r\n<!--=== Iconic Box Item ===-->\r\n<div class=\"iconic-box-item icon-left-box mb-25\">\r\n<div class=\"icon\">&nbsp;</div>\r\n<div class=\"content\">\r\n<h5>Secure Payment</h5>\r\n<p>Shop with confidence knowing that our secure payment</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--====== End Features Section ======-->\r\n<section class=\"work-processing-section pt-0 pb-40\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12\"><!--=== Section Title  ===-->\r\n<div class=\"section-title text-center mb-60\" data-aos=\"fade-up\" data-aos-delay=\"30\" data-aos-duration=\"800\">\r\n<div class=\"sub-heading d-inline-flex align-items-center\"><span class=\"sub-title\">Work Processing</span></div>\r\n<h2>How it Work processing</h2>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-xl-3 col-sm-6\"><!--=== Iconic Box Item  ===-->\r\n<div class=\"iconic-box-item style-two mb-40\" data-aos=\"fade-up\" data-aos-delay=\"50\" data-aos-duration=\"1000\">\r\n<div class=\"sn-number\">01</div>\r\n<div class=\"icon\">&nbsp;</div>\r\n<div class=\"content\">\r\n<h6>Browsing &amp; Choosing</h6>\r\n<p>This is where customers visit your online store, browse your products.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-3 col-sm-6\"><!--=== Iconic Box Item  ===-->\r\n<div class=\"iconic-box-item style-two mb-40\" data-aos=\"fade-up\" data-aos-delay=\"70\" data-aos-duration=\"1200\">\r\n<div class=\"sn-number\">02</div>\r\n<div class=\"icon\">&nbsp;</div>\r\n<div class=\"content\">\r\n<h6>Checkout &amp; Payment</h6>\r\n<p>Once they have picked their items, customers proceed to checkout.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-3 col-sm-6\"><!--=== Iconic Box Item  ===-->\r\n<div class=\"iconic-box-item style-two mb-40\" data-aos=\"fade-up\" data-aos-delay=\"90\" data-aos-duration=\"1400\">\r\n<div class=\"sn-number\">03</div>\r\n<div class=\"icon\">&nbsp;</div>\r\n<div class=\"content\">\r\n<h6>Order Fulfillment</h6>\r\n<p>After the order is placed, it\'s sent to your fulfillment team.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-3 col-sm-6\"><!--=== Iconic Box Item  ===-->\r\n<div class=\"iconic-box-item style-two mb-40\" data-aos=\"fade-up\" data-aos-delay=\"110\" data-aos-duration=\"1600\">\r\n<div class=\"sn-number\">04</div>\r\n<div class=\"icon\">&nbsp;</div>\r\n<div class=\"content\">\r\n<h6>Delivery to Customer</h6>\r\n<p>The packed order is then sent off with a shipping carrier</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<!--====== End Working Section  ======-->', 'About Us', 'About Us', 'About Us', '2025-02-12 04:11:52', '2025-02-12 23:08:33'),
(17, 'Blogs', 'blogs', '<p><br></p>', 'Blogs', 'Blogs', 'Blogs', '2025-02-12 04:58:26', '2025-02-12 04:58:26'),
(18, 'Privacy Policy', 'privacy-policy', '<h1>Privacy Policy</h1>\r\n<p>Last updated: August 08, 2025</p>\r\n<p>This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.</p>\r\n<p>We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy.</p>\r\n<h2>Interpretation and Definitions</h2>\r\n<h3>Interpretation</h3>\r\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\r\n<h3>Definitions</h3>\r\n<p>For the purposes of this Privacy Policy:</p>\r\n<ul>\r\n<li>\r\n<p><strong>Account</strong>&nbsp;means a unique account created for You to access our Service or parts of our Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>Affiliate</strong>&nbsp;means an entity that controls, is controlled by or is under common control with a party, where \"control\" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.</p>\r\n</li>\r\n<li>\r\n<p><strong>Company</strong>&nbsp;(referred to as either \"the Company\", \"We\", \"Us\" or \"Our\" in this Agreement) refers to Tobacgo, 38,39, Lower Ground Floor, Street 76, Market, Amarpali Silicon City, Sector 76, Noida, Uttar Pradesh 201306.</p>\r\n</li>\r\n<li>\r\n<p><strong>Cookies</strong>&nbsp;are small files that are placed on Your computer, mobile device or any other device by a website, containing the details of Your browsing history on that website among its many uses.</p>\r\n</li>\r\n<li>\r\n<p><strong>Country</strong>&nbsp;refers to: Uttar Pradesh, India</p>\r\n</li>\r\n<li>\r\n<p><strong>Device</strong>&nbsp;means any device that can access the Service such as a computer, a cellphone or a digital tablet.</p>\r\n</li>\r\n<li>\r\n<p><strong>Personal Data</strong>&nbsp;is any information that relates to an identified or identifiable individual.</p>\r\n</li>\r\n<li>\r\n<p><strong>Service</strong>&nbsp;refers to the Website.</p>\r\n</li>\r\n<li>\r\n<p><strong>Service Provider</strong>&nbsp;means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.</p>\r\n</li>\r\n<li>\r\n<p><strong>Usage Data</strong>&nbsp;refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).</p>\r\n</li>\r\n<li>\r\n<p><strong>Website</strong>&nbsp;refers to Tobacgo, accessible from&nbsp;<a href=\"../../\" target=\"_blank\" rel=\"external nofollow noopener\">https://www.tobacgo.in/</a></p>\r\n</li>\r\n<li>\r\n<p><strong>You</strong>&nbsp;means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\r\n</li>\r\n</ul>\r\n<h2>Collecting and Using Your Personal Data</h2>\r\n<h3>Types of Data Collected</h3>\r\n<h4>Personal Data</h4>\r\n<p>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:</p>\r\n<ul>\r\n<li>\r\n<p>Email address</p>\r\n</li>\r\n<li>\r\n<p>First name and last name</p>\r\n</li>\r\n<li>\r\n<p>Phone number</p>\r\n</li>\r\n<li>\r\n<p>Address, State, Province, ZIP/Postal code, City</p>\r\n</li>\r\n<li>\r\n<p>Usage Data</p>\r\n</li>\r\n</ul>\r\n<h4>Usage Data</h4>\r\n<p>Usage Data is collected automatically when using the Service.</p>\r\n<p>Usage Data may include information such as Your Device\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\r\n<p>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.</p>\r\n<p>We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.</p>\r\n<h4>Tracking Technologies and Cookies</h4>\r\n<p>We use Cookies and similar tracking technologies to track the activity on Our Service and store certain information. Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze Our Service. The technologies We use may include:</p>\r\n<ul>\r\n<li><strong>Cookies or Browser Cookies.</strong>&nbsp;A cookie is a small file placed on Your Device. You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service. Unless you have adjusted Your browser setting so that it will refuse Cookies, our Service may use Cookies.</li>\r\n<li><strong>Web Beacons.</strong>&nbsp;Certain sections of our Service and our emails may contain small electronic files known as web beacons (also referred to as clear gifs, pixel tags, and single-pixel gifs) that permit the Company, for example, to count users who have visited those pages or opened an email and for other related website statistics (for example, recording the popularity of a certain section and verifying system and server integrity).</li>\r\n</ul>\r\n<p>Cookies can be \"Persistent\" or \"Session\" Cookies. Persistent Cookies remain on Your personal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close Your web browser. You can learn more about cookies on&nbsp;<a href=\"https://www.termsfeed.com/blog/cookies/#What_Are_Cookies\" target=\"_blank\" rel=\"noopener\">TermsFeed website</a>&nbsp;article.</p>\r\n<p>We use both Session and Persistent Cookies for the purposes set out below:</p>\r\n<ul>\r\n<li>\r\n<p><strong>Necessary / Essential Cookies</strong></p>\r\n<p>Type: Session Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.</p>\r\n</li>\r\n<li>\r\n<p><strong>Cookies Policy / Notice Acceptance Cookies</strong></p>\r\n<p>Type: Persistent Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies identify if users have accepted the use of cookies on the Website.</p>\r\n</li>\r\n<li>\r\n<p><strong>Functionality Cookies</strong></p>\r\n<p>Type: Persistent Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies allow us to remember choices You make when You use the Website, such as remembering your login details or language preference. The purpose of these Cookies is to provide You with a more personal experience and to avoid You having to re-enter your preferences every time You use the Website.</p>\r\n</li>\r\n</ul>\r\n<p>For more information about the cookies we use and your choices regarding cookies, please visit our Cookies Policy or the Cookies section of our Privacy Policy.</p>\r\n<h3>Use of Your Personal Data</h3>\r\n<p>The Company may use Personal Data for the following purposes:</p>\r\n<ul>\r\n<li>\r\n<p><strong>To provide and maintain our Service</strong>, including to monitor the usage of our Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>To manage Your Account:</strong>&nbsp;to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.</p>\r\n</li>\r\n<li>\r\n<p><strong>For the performance of a contract:</strong>&nbsp;the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>To contact You:</strong>&nbsp;To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application\'s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</p>\r\n</li>\r\n<li>\r\n<p><strong>To provide You</strong>&nbsp;with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.</p>\r\n</li>\r\n<li>\r\n<p><strong>To manage Your requests:</strong>&nbsp;To attend and manage Your requests to Us.</p>\r\n</li>\r\n<li>\r\n<p><strong>For business transfers:</strong>&nbsp;We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.</p>\r\n</li>\r\n<li>\r\n<p><strong>For other purposes</strong>: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.</p>\r\n</li>\r\n</ul>\r\n<p>We may share Your personal information in the following situations:</p>\r\n<ul>\r\n<li><strong>With Service Providers:</strong>&nbsp;We may share Your personal information with Service Providers to monitor and analyze the use of our Service, to contact You.</li>\r\n<li><strong>For business transfers:</strong>&nbsp;We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of Our business to another company.</li>\r\n<li><strong>With Affiliates:</strong>&nbsp;We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.</li>\r\n<li><strong>With business partners:</strong>&nbsp;We may share Your information with Our business partners to offer You certain products, services or promotions.</li>\r\n<li><strong>With other users:</strong>&nbsp;when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside.</li>\r\n<li><strong>With Your consent</strong>: We may disclose Your personal information for any other purpose with Your consent.</li>\r\n</ul>\r\n<h3>Retention of Your Personal Data</h3>\r\n<p>The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</p>\r\n<p>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.</p>\r\n<h3>Transfer of Your Personal Data</h3>\r\n<p>Your information, including Personal Data, is processed at the Company\'s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to &mdash; and maintained on &mdash; computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.</p>\r\n<p>Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.</p>\r\n<p>The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.</p>\r\n<h3>Delete Your Personal Data</h3>\r\n<p>You have the right to delete or request that We assist in deleting the Personal Data that We have collected about You.</p>\r\n<p>Our Service may give You the ability to delete certain information about You from within the Service.</p>\r\n<p>You may update, amend, or delete Your information at any time by signing in to Your Account, if you have one, and visiting the account settings section that allows you to manage Your personal information. You may also contact Us to request access to, correct, or delete any personal information that You have provided to Us.</p>\r\n<p>Please note, however, that We may need to retain certain information when we have a legal obligation or lawful basis to do so.</p>\r\n<h3>Disclosure of Your Personal Data</h3>\r\n<h4>Business Transactions</h4>\r\n<p>If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.</p>\r\n<h4>Law enforcement</h4>\r\n<p>Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</p>\r\n<h4>Other legal requirements</h4>\r\n<p>The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:</p>\r\n<ul>\r\n<li>Comply with a legal obligation</li>\r\n<li>Protect and defend the rights or property of the Company</li>\r\n<li>Prevent or investigate possible wrongdoing in connection with the Service</li>\r\n<li>Protect the personal safety of Users of the Service or the public</li>\r\n<li>Protect against legal liability</li>\r\n</ul>\r\n<h3>Security of Your Personal Data</h3>\r\n<p>The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.</p>\r\n<h2>Children\'s Privacy</h2>\r\n<p>Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.</p>\r\n<p>If We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent\'s consent before We collect and use that information.</p>\r\n<h2>Links to Other Websites</h2>\r\n<p>Our Service may contain links to other websites that are not operated by Us. If You click on a third party link, You will be directed to that third party\'s site. We strongly advise You to review the Privacy Policy of every site You visit.</p>\r\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\r\n<h2>Changes to this Privacy Policy</h2>\r\n<p>We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.</p>\r\n<p>We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the \"Last updated\" date at the top of this Privacy Policy.</p>\r\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\r\n<h2>Contact Us</h2>\r\n<p>If you have any questions about this Privacy Policy, You can contact us:</p>\r\n<ul>\r\n<li>\r\n<p>By email:&nbsp;info@tobacgo.in</p>\r\n</li>\r\n<li>\r\n<p>By visiting this page on our website:&nbsp;<a href=\"../../\" target=\"_blank\" rel=\"external nofollow noopener\">https://www.tobacgo.in/</a></p>\r\n</li>\r\n</ul>', 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', '2025-03-04 04:07:44', '2025-08-08 00:35:28'),
(19, 'Terms Conditions', 'terms-conditions', '<h1>Terms and Conditions</h1>\r\n<p>Last updated: August 08, 2025</p>\r\n<p>This website is Owned &amp; Operated by HARDIK KHANDELWAL AND SONS. Please read these terms and conditions carefully before using Our Service.</p>\r\n<h2>Interpretation and Definitions</h2>\r\n<h3>Interpretation</h3>\r\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\r\n<h3>Definitions</h3>\r\n<p>For the purposes of these Terms and Conditions:</p>\r\n<ul>\r\n<li>\r\n<p><strong>Affiliate</strong>&nbsp;means an entity that controls, is controlled by or is under common control with a party, where \"control\" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.</p>\r\n</li>\r\n<li>\r\n<p><strong>Country</strong>&nbsp;refers to: Uttar Pradesh, India</p>\r\n</li>\r\n<li>\r\n<p><strong>Company</strong> (referred to as either \"the Company\", \"We\", \"Us\" or \"Our\" in this Agreement) refers to Tobac-Go, 38,39, Lower Ground Floor, Street 76, Market, Amarpali Silicon City, Sector 76, Noida, Uttar Pradesh 201306.</p>\r\n</li>\r\n<li>\r\n<p><strong>Device</strong>&nbsp;means any device that can access the Service such as a computer, a cellphone or a digital tablet.</p>\r\n</li>\r\n<li>\r\n<p><strong>Service</strong>&nbsp;refers to the Website.</p>\r\n</li>\r\n<li>\r\n<p><strong>Terms and Conditions</strong>&nbsp;(also referred as \"Terms\") mean these Terms and Conditions that form the entire agreement between You and the Company regarding the use of the Service. This Terms and Conditions agreement has been created with the help of the&nbsp;<a href=\"https://www.termsfeed.com/terms-conditions-generator/\" target=\"_blank\" rel=\"noopener\">Terms and Conditions Generator</a>.</p>\r\n</li>\r\n<li>\r\n<p><strong>Third-party Social Media Service</strong>&nbsp;means any services or content (including data, information, products or services) provided by a third-party that may be displayed, included or made available by the Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>Website</strong>&nbsp;refers to Tobacgo, accessible from&nbsp;<a href=\"../../\" target=\"_blank\" rel=\"external nofollow noopener\">https://www.tobacgo.in/</a></p>\r\n</li>\r\n<li>\r\n<p><strong>You</strong>&nbsp;means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\r\n</li>\r\n</ul>\r\n<h2>Acknowledgment</h2>\r\n<p>These are the Terms and Conditions governing the use of this Service and the agreement that operates between You and the Company. These Terms and Conditions set out the rights and obligations of all users regarding the use of the Service.</p>\r\n<p>Your access to and use of the Service is conditioned on Your acceptance of and compliance with these Terms and Conditions. These Terms and Conditions apply to all visitors, users and others who access or use the Service.</p>\r\n<p>By accessing or using the Service You agree to be bound by these Terms and Conditions. If You disagree with any part of these Terms and Conditions then You may not access the Service.</p>\r\n<p>You represent that you are over the age of 18. The Company does not permit those under 18 to use the Service.</p>\r\n<p>Your access to and use of the Service is also conditioned on Your acceptance of and compliance with the Privacy Policy of the Company. Our Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your personal information when You use the Application or the Website and tells You about Your privacy rights and how the law protects You. Please read Our Privacy Policy carefully before using Our Service.</p>\r\n<h2>Links to Other Websites</h2>\r\n<p>Our Service may contain links to third-party web sites or services that are not owned or controlled by the Company.</p>\r\n<p>The Company has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that the Company shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with the use of or reliance on any such content, goods or services available on or through any such web sites or services.</p>\r\n<p>We strongly advise You to read the terms and conditions and privacy policies of any third-party web sites or services that You visit.</p>\r\n<h2>Termination</h2>\r\n<p>We may terminate or suspend Your access immediately, without prior notice or liability, for any reason whatsoever, including without limitation if You breach these Terms and Conditions.</p>\r\n<p>Upon termination, Your right to use the Service will cease immediately.</p>\r\n<h2>Limitation of Liability</h2>\r\n<p>Notwithstanding any damages that You might incur, the entire liability of the Company and any of its suppliers under any provision of this Terms and Your exclusive remedy for all of the foregoing shall be limited to the amount actually paid by You through the Service or 100 USD if You haven\'t purchased anything through the Service.</p>\r\n<p>To the maximum extent permitted by applicable law, in no event shall the Company or its suppliers be liable for any special, incidental, indirect, or consequential damages whatsoever (including, but not limited to, damages for loss of profits, loss of data or other information, for business interruption, for personal injury, loss of privacy arising out of or in any way related to the use of or inability to use the Service, third-party software and/or third-party hardware used with the Service, or otherwise in connection with any provision of this Terms), even if the Company or any supplier has been advised of the possibility of such damages and even if the remedy fails of its essential purpose.</p>\r\n<p>Some states do not allow the exclusion of implied warranties or limitation of liability for incidental or consequential damages, which means that some of the above limitations may not apply. In these states, each party\'s liability will be limited to the greatest extent permitted by law.</p>\r\n<h2>\"AS IS\" and \"AS AVAILABLE\" Disclaimer</h2>\r\n<p>The Service is provided to You \"AS IS\" and \"AS AVAILABLE\" and with all faults and defects without warranty of any kind. To the maximum extent permitted under applicable law, the Company, on its own behalf and on behalf of its Affiliates and its and their respective licensors and service providers, expressly disclaims all warranties, whether express, implied, statutory or otherwise, with respect to the Service, including all implied warranties of merchantability, fitness for a particular purpose, title and non-infringement, and warranties that may arise out of course of dealing, course of performance, usage or trade practice. Without limitation to the foregoing, the Company provides no warranty or undertaking, and makes no representation of any kind that the Service will meet Your requirements, achieve any intended results, be compatible or work with any other software, applications, systems or services, operate without interruption, meet any performance or reliability standards or be error free or that any errors or defects can or will be corrected.</p>\r\n<p>Without limiting the foregoing, neither the Company nor any of the company\'s provider makes any representation or warranty of any kind, express or implied: (i) as to the operation or availability of the Service, or the information, content, and materials or products included thereon; (ii) that the Service will be uninterrupted or error-free; (iii) as to the accuracy, reliability, or currency of any information or content provided through the Service; or (iv) that the Service, its servers, the content, or e-mails sent from or on behalf of the Company are free of viruses, scripts, trojan horses, worms, malware, timebombs or other harmful components.</p>\r\n<p>Some jurisdictions do not allow the exclusion of certain types of warranties or limitations on applicable statutory rights of a consumer, so some or all of the above exclusions and limitations may not apply to You. But in such a case the exclusions and limitations set forth in this section shall be applied to the greatest extent enforceable under applicable law.</p>\r\n<h2>Governing Law</h2>\r\n<p>The laws of the Country, excluding its conflicts of law rules, shall govern this Terms and Your use of the Service. Your use of the Application may also be subject to other local, state, national, or international laws.</p>\r\n<h2>Disputes Resolution</h2>\r\n<p>If You have any concern or dispute about the Service, You agree to first try to resolve the dispute informally by contacting the Company.</p>\r\n<h2>For European Union (EU) Users</h2>\r\n<p>If You are a European Union consumer, you will benefit from any mandatory provisions of the law of the country in which You are resident.</p>\r\n<h2>United States Legal Compliance</h2>\r\n<p>You represent and warrant that (i) You are not located in a country that is subject to the United States government embargo, or that has been designated by the United States government as a \"terrorist supporting\" country, and (ii) You are not listed on any United States government list of prohibited or restricted parties.</p>\r\n<h2>Severability and Waiver</h2>\r\n<h3>Severability</h3>\r\n<p>If any provision of these Terms is held to be unenforceable or invalid, such provision will be changed and interpreted to accomplish the objectives of such provision to the greatest extent possible under applicable law and the remaining provisions will continue in full force and effect.</p>\r\n<h3>Waiver</h3>\r\n<p>Except as provided herein, the failure to exercise a right or to require performance of an obligation under these Terms shall not affect a party\'s ability to exercise such right or require such performance at any time thereafter nor shall the waiver of a breach constitute a waiver of any subsequent breach.</p>\r\n<h2>Translation Interpretation</h2>\r\n<p>These Terms and Conditions may have been translated if We have made them available to You on our Service. You agree that the original English text shall prevail in the case of a dispute.</p>\r\n<h2>Changes to These Terms and Conditions</h2>\r\n<p>We reserve the right, at Our sole discretion, to modify or replace these Terms at any time. If a revision is material We will make reasonable efforts to provide at least 30 days\' notice prior to any new terms taking effect. What constitutes a material change will be determined at Our sole discretion.</p>\r\n<p>By continuing to access or use Our Service after those revisions become effective, You agree to be bound by the revised terms. If You do not agree to the new terms, in whole or in part, please stop using the website and the Service.</p>\r\n<h2>Contact Us</h2>\r\n<p>If you have any questions about these Terms and Conditions, You can contact us:</p>\r\n<ul>\r\n<li>By email: info@tobacgo.in</li>\r\n</ul>', 'Terms Conditions', 'Terms Conditions', 'Terms Conditions', '2025-03-04 04:32:15', '2025-09-15 00:16:54'),
(20, 'Returns Refunds', 'returns-refunds', '<h1>Return and Refund Policy</h1>\r\n<p>Last updated: August 08, 2025</p>\r\n<p>Thank you for shopping at Tobacgo.</p>\r\n<p>If, for any reason, You are not completely satisfied with a purchase We invite You to review our policy on refunds and returns.&nbsp;</p>\r\n<p>The following terms are applicable for any products that You purchased with Us.</p>\r\n<h2>Interpretation and Definitions</h2>\r\n<h3>Interpretation</h3>\r\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\r\n<h3>Definitions</h3>\r\n<p>For the purposes of this Return and Refund Policy:</p>\r\n<ul>\r\n<li>\r\n<p><strong>Company</strong>&nbsp;(referred to as either \"the Company\", \"We\", \"Us\" or \"Our\" in this Agreement) refers to Tobacgo, 38,39, Lower Ground Floor, Street 76, Market, Amarpali Silicon City, Sector 76, Noida, Uttar Pradesh 201306.</p>\r\n</li>\r\n<li>\r\n<p><strong>Goods</strong>&nbsp;refer to the items offered for sale on the Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>Orders</strong>&nbsp;mean a request by You to purchase Goods from Us.</p>\r\n</li>\r\n<li>\r\n<p><strong>Service</strong>&nbsp;refers to the Website.</p>\r\n</li>\r\n<li>\r\n<p><strong>Website</strong>&nbsp;refers to Tobacgo, accessible from&nbsp;<a href=\"../../\" target=\"_blank\" rel=\"external nofollow noopener\">https://www.tobacgo.in/</a></p>\r\n</li>\r\n<li>\r\n<p><strong>You</strong>&nbsp;means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\r\n</li>\r\n</ul>\r\n<h2>Your Order Cancellation Rights</h2>\r\n<p><strong>Cancellation timeline:</strong></p>\r\n<p>You are entitled to cancel Your Order within 1 day without giving any reason for doing so. After 1 day, the order will be dispacthed.</p>\r\n<p><strong>Return timeline:</strong></p>\r\n<p>The deadline for returning an Order is 2 days from the date on which You received the Goods or on which a third party you have appointed, who is not the carrier, takes possession of the product delivered. For this case, the customer must record a clear video with all parts and ameneties and mail us the same at info@tobacgo.in to get the return process approval.</p>\r\n<p>In order to exercise Your right of cancellation, You must inform Us of your decision by means of a clear statement. You can inform us of your decision by:</p>\r\n<ul>\r\n<li>By email:&nbsp;info@tobacgo.in</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>Refund timeline:</strong></p>\r\n<p>We will reimburse You no later than 7 days from the day on which We receive the returned Goods. We will use the same means of payment as You used for the Order, and You will not incur any fees for such reimbursement.</p>\r\n<h2>Conditions for Returns</h2>\r\n<p>In order for the Goods to be eligible for a return, please make sure that:</p>\r\n<ul>\r\n<li>The Goods were purchased in the given time</li>\r\n<li>The Goods are in the original packaging</li>\r\n<li>The goods are damaged or not functional</li>\r\n</ul>\r\n<p>The following Goods cannot be returned:</p>\r\n<ul>\r\n<li>The supply of Goods made to Your specifications or clearly personalized.</li>\r\n<li>The supply of Goods which according to their nature are not suitable to be returned, deteriorate rapidly or where the date of expiry is over.</li>\r\n<li>The supply of Goods which are not suitable for return due to health protection or hygiene reasons and were unsealed after delivery.</li>\r\n<li>The supply of Goods which are, after delivery, according to their nature, inseparably mixed with other items.</li>\r\n</ul>\r\n<p>We reserve the right to refuse returns of any merchandise that does not meet the above return conditions in our sole discretion.</p>\r\n<p>Only regular priced Goods may be refunded. Unfortunately, Goods on sale cannot be refunded. This exclusion may not apply to You if it is not permitted by applicable law.</p>\r\n<h2>Returning Goods</h2>\r\n<p>You are responsible for the cost and risk of returning the Goods to Us. You should send the Goods at the following address:</p>\r\n<p>Tobac-Go, 38,39, Lower Ground Floor, Street 76, Market, Amarpali Silicon City, Sector 76, Noida, Uttar Pradesh 201306</p>\r\n<p>We cannot be held responsible for Goods damaged or lost in return shipment. Therefore, We recommend an insured and trackable mail service. We are unable to issue a refund without actual receipt of the Goods or proof of received return delivery.</p>\r\n<h2>Gifts</h2>\r\n<p>If the Goods were marked as a gift when purchased and then shipped directly to you, You\'ll receive a gift credit for the value of your return. Once the returned product is received, a gift certificate will be mailed to You.</p>\r\n<p>If the Goods weren\'t marked as a gift when purchased, or the gift giver had the Order shipped to themselves to give it to You later, We will send the refund to the gift giver.</p>\r\n<h3>Contact Us</h3>\r\n<p>If you have any questions about our Returns and Refunds Policy, please contact us:</p>\r\n<ul>\r\n<li>By email: info@tobacgo.in</li>\r\n</ul>', 'Returns Refunds', 'Returns Refunds', 'Returns Refunds', '2025-03-04 04:33:35', '2025-09-15 00:25:45'),
(21, 'Collection', 'collection', NULL, 'Collection', 'Collection', 'Collection', '2025-07-03 05:05:39', '2025-07-03 05:05:39'),
(22, 'Testing', 'testing', '<p>Testing</p>', 'Testing', 'Testing', 'Testing', '2025-07-15 05:25:40', '2025-07-15 05:25:40'),
(23, 'Shipping Policy', 'shipping-policy', '<div class=\"wpembed-content\">\r\n<h1>Shipping policy</h1>\r\n<p>This shipping policy explains how Tobacgo operates its shipping procedures and how we strive to meet your expectations with every order. Whether you&rsquo;re a first-time buyer or a returning customer, we want to ensure that your experience with us is smooth and satisfactory, right from placing your order to the moment it arrives at your doorstep.</p>\r\n<p>Please read this shipping policy together with our <a href=\"../terms-conditions\" target=\"_blank\" rel=\"nofollow noreferrer noopener external\">terms and conditions</a> to familiarize yourself with the rest of our general guidelines.</p>\r\n<div class=\"wpembed-index\">\r\n<h3>Table of contents</h3>\r\n<ol class=\"wpembed-index\">\r\n<li><a href=\"#shipping-and-delivery-options\">Shipping and Delivery Options</a></li>\r\n<li><a href=\"#delayed-orders\">Delayed Orders</a></li>\r\n<li><a href=\"#returns-and-exchanges\">Returns and Exchanges</a></li>\r\n<li><a href=\"#contact-information\">Contact Information</a></li>\r\n</ol>\r\n</div>\r\n<h2 id=\"shipping-and-delivery-options\">Shipping and Delivery Options</h2>\r\n<p>We offer a variety of shipping options to suit the needs of our customers.</p>\r\n<h3>Free Shipping</h3>\r\n<p>As part of our commitment to an exceptional shopping experience, we are pleased to offer free shipping on orders over order amount of Rs. 3000.</p>\r\n<h3>Flat Rate Shipping</h3>\r\n<p>To ensure affordability and simplicity in our shipping process, we provide a flat rate shipping option on all Orders.</p>\r\n<h3>Shipping Methods</h3>\r\n<p>We offer simple shipping method to suit the needs of our customers:</p>\r\n<ul>\r\n<li>Standard</li>\r\n</ul>\r\n<p>We strive for a swift preparation process and orders are typically processed and dispatched within 1 to 3 business days so that customers can receive their items promptly. Usually the orders reach the customers within 3 to 7 days.</p>\r\n<h2 id=\"delayed-orders\">Delayed Orders</h2>\r\n<p>Unexpected delays can occur due to various reasons such as logistic challenges, inclement weather, high demand, or carrier issues. We are committed to handling these situations with transparency and efficiency. In the event of a delay, our priority is to keep you informed. We will promptly notify you with updates on the status of your order and the expected new delivery time. Our goal is to provide clear and accurate information so you can plan accordingly.</p>\r\n<p>Understanding the inconvenience caused by delays, we offer options to maintain your satisfaction. If your order is significantly delayed, you will have the choice to continue with the order, modify it, or cancel it for a full refund. Our customer service team is always available to assist with any changes to your order.</p>\r\n<h2 id=\"returns-and-exchanges\">Returns and Exchanges</h2>\r\n<p>If you have any questions about refunds, returns or exchanges, please review our <a href=\"../returns-refunds\" target=\"_blank\" rel=\"nofollow noreferrer noopener external\">refund policy</a>.</p>\r\n<h2 id=\"contact-information\">Contact Information</h2>\r\n<p>If you have any questions or concerns regarding our shipping policy, we encourage you to contact us using the details below:</p>\r\n<ul>\r\n<li><a href=\"mailto:info@tobacgo.in\" target=\"_blank\" rel=\"nofollow noreferrer noopener external\">info@tobacgo.in</a></li>\r\n</ul>\r\n<p>This document was last updated on August 8, 2025</p>\r\n</div>', 'Shipping Policy', 'Shipping Policy', 'Shipping Policy', '2025-08-08 04:49:04', '2025-08-08 00:26:36'),
(24, 'Signup', 'signup', NULL, 'Signup', 'Signup', 'Signup', '2025-09-24 05:43:18', '2025-09-24 05:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `technology` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `category`, `title`, `technology`, `image`, `url`, `created_at`, `updated_at`) VALUES
(1, 0, 'StellarSeo', 'UX. UI Design. HTML5. Wordpress CMS. CSS3. Javascript', '1693805175.jpg', '#', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `inventory` int(11) NOT NULL DEFAULT '1',
  `popular` int(11) DEFAULT NULL,
  `deals` int(11) DEFAULT NULL,
  `deals_date` date DEFAULT NULL,
  `variance_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `additional_info` text COLLATE utf8mb4_unicode_ci,
  `is_show` int(11) DEFAULT '1',
  `size` json DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category`, `subcategory`, `title`, `slug`, `reg_price`, `sale_price`, `sku`, `unit_type`, `featured`, `inventory`, `popular`, `deals`, `deals_date`, `variance_data`, `image`, `description`, `short_description`, `additional_info`, `is_show`, `size`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(5, 5, 6, 'Football Acrylic Bong 10 Inches', 'football-acrylic-bong-10-inches', NULL, NULL, 'TGACB1001', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '<p>Material: Acrylic shooter may be round or flat<br>Colour: Blue with football theme engraved<br>Product Dimensions Height: 25 cm; Tube Diameter: 4 cm<br>Item Weight: 250 Grams<br>Package Content: 1 Bong With Complete Accessories</p>', NULL, NULL, 1, '[\"Orange\", \"Blue\"]', 'Football Acrylic Bong 10 Inches', 'Football Acrylic Bong 10 Inches', 'Football Acrylic Bong 10 Inches', '2025-07-31 08:43:32', '2025-07-31 08:46:04'),
(13, 5, 6, 'Football Acrylic Bong 12 Inches', 'football-acrylic-bong-12-inches', NULL, NULL, 'TGACB1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>Material: Acrylic shooter may be round or flat<br>Colour: Orange with football theme engraved<br>Product Dimensions Height: 30 cm; Tube Diameter: 5 cm<br>Item Weight: 300 Grams<br>Package Content: 1 Bong With Complete Accessories</p>', NULL, NULL, 1, '[\"Blue\", \"Orange\"]', 'Football Acrylic Bong 12 Inches', 'Football Acrylic Bong 12 Inches', 'Football Acrylic Bong 12 Inches', '2025-07-31 08:55:35', '2025-07-31 08:56:42'),
(14, 5, 6, 'Football Acrylic Bong 16 Inches', 'football-acrylic-bong-16-inches', NULL, NULL, 'TGACB1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>Material: Acrylic shooter may be round or flat<br>Colour: Orange with football theme engraved<br>Product Dimensions Height: 40 cm; Tube Diameter: 5 cm<br>Item Weight: 350 Grams<br>Package Content: 1 Bong With Complete Accessories</p>', NULL, NULL, 1, '[\"Orange\", \"Blue\"]', 'Football Acrylic Bong 16 Inches', 'Football Acrylic Bong 16 Inches', 'Football Acrylic Bong 16 Inches', '2025-07-31 09:01:09', '2025-07-31 09:02:12'),
(15, 5, 6, 'Round ball Acrylic Bong 10 Inches', 'round-ball-acrylic-bong-10-inches', NULL, NULL, 'TGACB1006', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '<p>Material: Acrylic shooter may be round or flat<br>Colour: Red with Bulb theme<br>Product Dimensions Height: 25 cm; Tube Diameter: 4 cm<br>Item Weight: 250 Grams<br>Package Content: 1 Bong With Complete Accessories</p>', NULL, NULL, 1, '[\"Pink\", \"Green\", \"Purple\", \"Orange\", \"Red\", \"Blue\"]', 'Round ball Acrylic Bong 10 Inches', 'Round ball Acrylic Bong 10 Inches', 'Round ball Acrylic Bong 10 Inches', '2025-07-31 09:05:18', '2025-07-31 09:08:56'),
(18, 5, 6, 'Round Ball Crown Acrylic Bong 16 Inches', 'round-ball-crown-acrylic-bong-16-inches', NULL, NULL, 'TGACB1011', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '<p>Material: Acrylic shooter may be round or flat<br>Colour: Green with Crown theme<br>Product Dimensions Height: 40 cm; Tube Diameter: 5 cm<br>Item Weight: 350 Grams<br>Package Content: 1 Bong With Complete Accessories</p>', NULL, NULL, 1, '[\"Green\"]', 'Round Ball Crown Acrylic Bong 16 Inches', 'Round Ball Crown Acrylic Bong 16 Inches', 'Round Ball Crown Acrylic Bong 16 Inches', '2025-07-31 09:41:17', '2025-07-31 09:41:58'),
(19, 5, 6, 'Round ball Acrylic Bong 12 Inches', 'round-ball-acrylic-bong-12-inches', NULL, NULL, 'TGACB1007', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>Material: Acrylic shooter may be round or flat<br>Colour: Red with Bulb theme<br>Product Dimensions Height: 25 cm; Tube Diameter: 4 cm<br>Item Weight: 250 Grams<br>Package Content: 1 Bong With Complete Accessories</p>', NULL, NULL, 1, '[\"Pink\", \"Green\", \"Purple\", \"Orange\", \"Red\", \"Blue\"]', 'Round ball Acrylic Bong 12 Inches', 'Round ball Acrylic Bong 12 Inches', 'Round ball Acrylic Bong 12 Inches', '2025-07-31 09:58:43', '2025-07-31 10:01:10'),
(20, 5, 6, 'Round Ball Crown Acrylic Bong 16 Inches', 'round-ball-crown-acrylic-bong-16-inches', NULL, NULL, 'TGACB1008', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '<p>Material: Acrylic shooter may be round or flat<br>Colour: Green with Crown theme<br>Product Dimensions Height: 40 cm; Tube Diameter: 5 cm<br>Item Weight: 350 Grams<br>Package Content: 1 Bong With Complete Accessories</p>', NULL, NULL, 1, '[\"Pink\", \"Green\", \"Purple\", \"Orange\", \"Red\", \"Blue\"]', 'Round Ball Crown Acrylic Bong 16 Inches', 'Round Ball Crown Acrylic Bong 16 Inches', 'Round Ball Crown Acrylic Bong 16 Inches', '2025-07-31 10:03:00', '2025-07-31 10:04:57'),
(21, 3, 7, 'Red Cherry Solid Color Glass Ashtray 5 Inches', 'red-cherry-solid-color-glass-ashtray-5-inches', NULL, NULL, 'TGAST1001', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\", \"Dark Shade\", \"Gold\", \"Black\", \"Blue\"]', 'Red Cherry Solid Color Glass Ashtray 5 Inches', 'Red Cherry Solid Color Glass Ashtray 5 Inches', 'Red Cherry Solid Color Glass Ashtray 5 Inches', '2025-08-01 01:13:10', '2025-08-01 02:08:55'),
(22, 3, 7, 'Red Cherry Somerville Ashtray 6 Inches', 'red-cherry-somerville-ashtray-6-inches', NULL, NULL, 'TGAST1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Red Cherry Somerville Ashtray 6 Inches', 'Red Cherry Somerville Ashtray 6 Inches', 'Red Cherry Somerville Ashtray 6 Inches', '2025-08-01 01:17:31', '2025-08-01 02:08:25'),
(23, 3, 7, 'Red Cherry Somerville Solid Color Ashtray 6 Inches', 'red-cherry-somerville-solid-color-ashtray-6-inches', NULL, NULL, 'TGAST1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\", \"Gold\", \"Black\"]', 'Red Cherry Somerville Solid Color Ashtray 6 Inches', 'Red Cherry Somerville Solid Color Ashtray 6 Inches', 'Red Cherry Somerville Solid Color Ashtray 6 Inches', '2025-08-01 01:20:13', '2025-08-01 02:01:14'),
(24, 3, 7, 'Bubble Ashtray 5 Inches', 'bubble-ashtray-5-inches', NULL, NULL, 'TGAST1004', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Gold\"]', 'Bubble Ashtray 5 Inches', 'Bubble Ashtray 5 Inches', 'Bubble Ashtray 5 Inches', '2025-08-01 01:26:20', '2025-08-01 02:07:37'),
(25, 3, 7, 'Classic Deep Bowl Ashtray 4 Inches', 'classic-deep-bowl-ashtray-4-inches', NULL, NULL, 'TGAST1005', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\", \"Blue\"]', 'Classic Deep Bowl Ashtray 4 Inches', 'Classic Deep Bowl Ashtray 4 Inches', 'Classic Deep Bowl Ashtray 4 Inches', '2025-08-01 01:27:40', '2025-08-01 02:06:52'),
(26, 3, 7, 'Clear Deep Bowl Ashtray 5 Inches', 'clear-deep-bowl-ashtray-5-inches', NULL, NULL, 'TGAST1006', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Dark Shade\", \"Gold\"]', 'Clear Deep Bowl Ashtray 5 Inches', 'Clear Deep Bowl Ashtray 5 Inches', 'Clear Deep Bowl Ashtray 5 Inches', '2025-08-01 01:29:28', '2025-08-01 02:06:23'),
(27, 3, 7, 'Deli Glassware  Ashtray 5 Inches', 'deli-glassware-ashtray-5-inches', NULL, NULL, 'TGAST1007', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Crystal\"]', 'Deli Glassware  Ashtray 5 Inches', 'Deli Glassware  Ashtray 5 Inches', 'Deli Glassware  Ashtray 5 Inches', '2025-08-01 01:31:36', '2025-08-01 02:03:31'),
(28, 3, 7, 'El Misti Ashtray 5 Inches', 'el-misti-ashtray-5-inches', NULL, NULL, 'TGAST1008', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\", \"Gold\"]', 'El Misti Ashtray 5 Inches', 'El Misti Ashtray 5 Inches', 'El Misti Ashtray 5 Inches', '2025-08-01 01:56:12', '2025-08-01 01:57:00'),
(29, 3, 7, 'El Misti Ashtray 6 Inches', 'el-misti-ashtray-6-inches', NULL, NULL, 'TGAST1009', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Dark Shade\", \"Light Shade\"]', 'El Misti Ashtray 6 Inches', 'El Misti Ashtray 6 Inches', 'El Misti Ashtray 6 Inches', '2025-08-01 12:49:15', '2025-08-01 12:50:11'),
(30, 3, 7, 'Handmade Pearl Ashtray 3 Inches', 'handmade-pearl-ashtray-3-inches', NULL, NULL, 'TGAST1010', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Silver\"]', 'Handmade Pearl Ashtray 3 Inches', 'Handmade Pearl Ashtray 3 Inches', 'Handmade Pearl Ashtray 3 Inches', '2025-08-01 12:51:56', '2025-08-01 12:52:42'),
(31, 3, 7, 'Handmade Pearl Ashtray 4 Inches', 'handmade-pearl-ashtray-4-inches', NULL, NULL, 'TGAST1011', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Silver\"]', 'Handmade Pearl Ashtray 4 Inches', 'Handmade Pearl Ashtray 4 Inches', 'Handmade Pearl Ashtray 4 Inches', '2025-08-01 12:53:30', '2025-08-01 12:54:04'),
(32, 3, 7, 'Jalopy Vacuum Ashtray 5 Inches', 'jalopy-vacuum-ashtray-5-inches', NULL, NULL, 'TGAST1012', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\"]', 'Jalopy Vacuum Ashtray 5 Inches', 'Jalopy Vacuum Ashtray 5 Inches', 'Jalopy Vacuum Ashtray 5 Inches', '2025-08-01 12:55:13', '2025-08-01 12:55:59'),
(33, 3, 7, 'Red Cherry Elkoussi Ashtray 5 Inches', 'red-cherry-elkoussi-ashtray-5-inches', NULL, NULL, 'TGAST1013', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Crystal\"]', 'Red Cherry Elkoussi Ashtray 5 Inches', 'Red Cherry Elkoussi Ashtray 5 Inches', 'Red Cherry Elkoussi Ashtray 5 Inches', '2025-08-01 12:58:41', '2025-08-01 13:02:13'),
(34, 3, 7, 'Red Cherry Glass Ashtray 5 Inches', 'red-cherry-glass-ashtray-5-inches', NULL, NULL, 'TGAST1014', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Dark Shade\"]', 'Red Cherry Glass Ashtray 5 Inches', 'Red Cherry Glass Ashtray 5 Inches', 'Red Cherry Glass Ashtray 5 Inches', '2025-08-01 13:03:20', '2025-08-01 13:04:01'),
(35, 3, 7, 'Red Cherry Paricutin Ashtray 4 Inches', 'red-cherry-paricutin-ashtray-4-inches', NULL, NULL, 'TGAST1015', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Crystal\"]', 'Red Cherry Paricutin Ashtray 4 Inches', 'Red Cherry Paricutin Ashtray 4 Inches', 'Red Cherry Paricutin Ashtray 4 Inches', '2025-08-01 13:05:08', '2025-08-01 13:05:42'),
(36, 3, 7, 'Red Cherry Paricutin Ashtray 6 Inches', 'red-cherry-paricutin-ashtray-6-inches', NULL, NULL, 'TGAST1016', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Gold\"]', 'Red Cherry Paricutin Ashtray 6 Inches', 'Red Cherry Paricutin Ashtray 6 Inches', 'Red Cherry Paricutin Ashtray 6 Inches', '2025-08-01 13:06:31', '2025-08-01 13:07:03'),
(37, 3, 7, 'Blue Flower Vacuum Ashtray 5 Inches', 'blue-flower-vacuum-ashtray-5-inches', NULL, NULL, 'TGAST1017', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\"]', 'Blue Flower Vacuum Ashtray 5 Inches', 'Blue Flower Vacuum Ashtray 5 Inches', 'Blue Flower Vacuum Ashtray 5 Inches', '2025-08-01 13:08:22', '2025-08-01 13:08:58'),
(42, 6, 1, 'Don Antonio Cigar', 'don-antonio-cigar', NULL, NULL, 'TGCDC1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Box of 5\", \"Single Stick\"]', 'Don Antonio Cigar', 'Don Antonio Cigar', 'Don Antonio Cigar', '2025-08-04 01:55:12', '2025-08-04 02:00:52'),
(43, 6, 5, 'King Edward Chocolate Cigar', 'king-edward-chocolate-cigar', NULL, NULL, 'TGCFC1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Box of 5\", \"Single Stick\"]', 'King Edward Chocolate Cigar', 'King Edward Chocolate Cigar', 'King Edward Chocolate Cigar', '2025-08-04 01:57:31', '2025-08-04 02:00:17'),
(44, 6, 4, 'Vasco Da Gama Cigar', 'vasco-da-gama-cigar', NULL, NULL, 'TGCCC1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Box of 26\", \"Single Stick\"]', 'Vasco Da Gama Cigar', 'Vasco Da Gama Cigar', 'Vasco Da Gama Cigar', '2025-08-04 02:06:59', '2025-08-04 02:08:20'),
(45, 6, 4, 'Cubanos Half Corona 25 Cigar', 'cubanos-half-corona-25-cigar', NULL, NULL, 'TGCCC1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Box of 26\", \"Single Stick\"]', 'Cubanos Half Corona 25 Cigar', 'Cubanos Half Corona 25 Cigar', 'Cubanos Half Corona 25 Cigar', '2025-08-04 02:09:07', '2025-08-04 02:10:15'),
(46, 6, 4, 'Kasteelheer 100 Tabak Cigar', 'kasteelheer-100-tabak-cigar', NULL, NULL, 'TGCCC1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Box of 26\", \"Single Stick\"]', 'Kasteelheer 100 Tabak Cigar', 'Kasteelheer 100 Tabak Cigar', 'Kasteelheer 100 Tabak Cigar', '2025-08-04 02:11:37', '2025-08-04 02:16:23'),
(47, 6, 4, 'Luis Martinez Crystal Churchill Cigar', 'luis-martinez-crystal-churchill-cigar', NULL, NULL, 'TGCCC1004', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Single Stick\"]', 'Luis Martinez Crystal Churchill Cigar', 'Luis Martinez Crystal Churchill Cigar', 'Luis Martinez Crystal Churchill Cigar', '2025-08-04 02:21:13', '2025-08-04 02:21:47'),
(48, 4, 23, 'Noddy Hookah', 'noddy-hookah', NULL, NULL, 'TGHFG1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><strong>Additional Specifications Feature Availability</strong><br>Height 11 inches (with Ceramic Chillum)<br>Color Gold<br>Base Material Glass<br>Stem Material Stainless steel<br>Pipe Material Silicone with Metal Handle<br>Bowl Type Ceramic Chillum<br>Accessories Hookah Box Normal, Tong</p>\r\n<p><strong>General Information</strong><br>Field Selection/Details<br>Brand VG France<br>Height 11 inches (with ceramic chillum)<br>Color Gold<br>Material Stainless Steel<br>Design Trending<br>Base Type Sturdy grey glass base<br>Weight 1.5 kg approx.<br>Included&nbsp;<br>Items</p>\r\n<p>Ceramic Chillum, Silicone Pipe, Metal Handle, Tong, Coal Tray</p>', NULL, '<p><strong>Hookah Features</strong><br>Feature Available (Yes/No) Notes/Details<br>Height Yes 11 inches<br>Color Yes gold stem with grey base<br>Inbuilt Diffuser Yes For smoother and quieter smoke sessions holes on stem<br>Locking Stem and Base System Yes Stem and base securely lock with grommets for easy handling<br>X-Function/Back Smoke Exhale Feature Yes&nbsp;<br>Back smoke exhales from the pressure nob given on stem part</p>\r\n<p>Ceramic Bowl Yes Enhances smoking control<br>Durable Silicone Pipe with Metal Handle Yes Heat-resistant for comfort and durability<br>Tongs Included Yes For easy coal management<br>Sturdy Base Yes fine quality glass base<br>Heat-Resistant Coal Tray Yes For safe and efficient coal handling<br>Leak-Proof Design Yes Ensures no leaking and easy maintenance<br>Easy to Clean Yes Perfect for beginners and regular use<br>Portable and Easy to Assemble Yes Ideal for travel and social gatherings<br>Durable Metal Stem Yes Adds a touch of sophistication<br>Suitable for Indoor &amp; Outdoor Use Yes Versatile design for multiple environments</p>\r\n<p><strong>Usage Instructions</strong><br>Step Instructions<br>Step 1: Assembly Secure the stem and base using the grommet locking system. Attach silicone pipe and ceramic chillum.<br>Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.<br>Step 3: Packing the Chillum Pack the ceramic chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the foil or any HMD (not included with this model) which you are using to avoid a burnt smell.<br>Step 4: Heat Management Place coals on the foil/HMD for optimal temperature control.<br>Step 5: Smoking Enjoy smoother smoke with the down stem. Use the X-function/pressure nob to enhance visual appeal.<br>Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</p>', 1, '[\"Dark Shade\", \"Light Shade\"]', 'Noddy Hookah', 'Noddy Hookah', 'Noddy Hookah', '2025-08-04 09:25:54', '2025-08-04 09:37:24'),
(50, 4, 23, 'Sultan Hookah', 'sultan-hookah', NULL, NULL, 'TGHFG1002', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '<p><strong>Additional Specifications</strong><br>Feature Availability<br>Height 32 inches (with Silicone Chillum &amp; HMD)<br>Color Bronze<br>Base Material Glass<br>Stem Material Stainless Steel<br>Pipe Material Silicone with Metal Handle<br>Bowl Type Silicone Chillum<br>Accessories Heat Management Device, Tong</p>\r\n<p><strong>General Information</strong><br>Field Selection/Details<br>Brand VG France<br>Height 32 inches (with Silicone Chillum &amp; HMD)<br>Color Bronze<br>Material Glass, Stainless Steel, Silicone<br>Design Latest<br>Base Type Sturdy Brown Glass Base<br>Weight 7kg approx.</p>\r\n<p>Included items: Silicone Chillum, Diffuser, HMD, Silicone Pipe, Metal Handle, Tong, Coal Tray, Stem Bag, Base Bag</p>', NULL, '<p><strong>Hookah Features</strong><br>Feature Available (Yes/No) Notes/Details<br>Height Yes 32 inches<br>Color Yes bronze stem with brown base<br>Detachable Diffuser Yes For smoother and quieter smoke sessions<br>Locking Stem and Base System Yes Stem and base securely lock for easy lifting and portability<br>X-Function/Back Smoke Exhale Feature Yes Back smoke exhales from the pressure nobs given on lock<br>Silicone Chillum &amp; Heat Management Device (HMD) Yes Enhances smoking control<br>Durable Silicone Pipe with Metal Handle Yes Heat-resistant for comfort and durability<br>Tongs Included Yes For easy coal management<br>Sturdy Glass Base Yes Cut glass design for stability and style<br>Heat-Resistant Coal Tray Yes For safe and efficient coal handling<br>Leak-Proof Design Yes Ensures no leaking and easy maintenance<br>Easy to Clean Yes Perfect for beginners and regular use<br>Portable and Easy to Assemble Yes Ideal for travel and social gatherings<br>Durable Metal Stem Yes Adds a touch of sophistication<br>Suitable for Indoor &amp; Outdoor Use Yes Versatile design for multiple environments</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Usage Instructions</strong><br>Step Instructions<br>Step 1: Assembly Secure the stem and base using the grommet locking system. Attach silicone pipe and ceramic chillum.<br>Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.<br>Step 3: Packing the Chillum Pack the ceramic chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the foil or any HMD (not included with this model) which you are using to avoid a burnt smell.<br>Step 4: Heat Management Place coals on the foil/HMD for optimal temperature control.<br>Step 5: Smoking Enjoy smoother smoke with the down stem. Use the X-function/pressure nob to enhance visual appeal.<br>Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</p>', 1, '[\"Bronze\"]', 'Sultan Hookah', 'Sultan Hookah', 'Sultan Hookah', '2025-08-04 09:36:10', '2025-08-04 09:36:48'),
(51, 4, 23, 'XXX Hookah', 'xxx-hookah', NULL, NULL, 'TGHFG1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><strong>Additional Specifications</strong><br>Feature Availability<br>Height 34 inches (with Silicone Chillum &amp; HMD)<br>Color Bronze<br>Base Material Glass<br>Stem Material Stainless Steel<br>Pipe Material Silicone with Metal Handle<br>Bowl Type Silicone Chillum<br>Accessories Heat Management Device, Tong</p>\r\n<p><strong>General Information</strong><br>Field Selection/Details<br>Brand VG France<br>Height 34 inches (with Silicone Chillum &amp; HMD)<br>Color Bronze<br>Material Glass, Stainless Steel, Silicone<br>Design Latest<br>Base Type Grey Glass Base<br>Weight 7kg approx.</p>\r\n<p>Included Items:&nbsp;<br>Silicone Chillum, Diffuser, HMD, Silicone Pipe, Metal Handle, Tong, Coal Tray</p>', NULL, '<p><strong>Usage Instructions</strong><br>Step Instructions<br>Step 1: Assembly Secure the stem and base using the grommet locking system. Attach silicone pipe and ceramic chillum.<br>Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.<br>Step 3: Packing the Chillum Pack the ceramic chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the foil or any HMD (not included with this model) which you are using to avoid a burnt smell.<br>Step 4: Heat Management Place coals on the foil/HMD for optimal temperature control.<br>Step 5: Smoking Enjoy smoother smoke with the down stem. Use the X-function/pressure nob to enhance visual appeal.<br>Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</p>', 1, '[\"Bronze\"]', 'XXX Hookah', 'XXX Hookah', 'XXX Hookah', '2025-08-04 09:42:10', '2025-08-04 09:43:22'),
(52, 4, 23, '007 Hookah', '007-hookah', NULL, NULL, 'TGHFG1004', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><strong>Additional Specifications</strong><br>Feature Availability<br>Height 16 inches (with Ceramic Chillum)<br>Color Black<br>Base Material Glass<br>Stem Material Stainless Steel<br>Pipe Material Silicone with Metal Handle<br>Bowl Type Ceramic<br>Accessories Tong, Bag</p>\r\n<p><strong>General Information</strong><br>Field Selection/Details<br>Brand VG France<br>Height 16 inches (with Ceramic Chillum)<br>Color Black<br>Material Glass, Stainless Steel, Silicone, Ceramic<br>Design Latest<br>Base Type Sturdy Transparent Glass Base<br>Weight 2kg approx.</p>\r\n<p>Included Items: Ceramic Chillum, Diffuser, Silicone Pipe, Metal Handle, Tong, Coal Tray, Bag</p>', NULL, '<p><strong>Usage Instructions</strong><br>Step Instructions<br>Step 1: Assembly Secure the stem and base using the grommet locking system. Attach silicone pipe and ceramic chillum.<br>Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.<br>Step 3: Packing the Chillum Pack the ceramic chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the foil or any HMD (not included with this model) which you are using to avoid a burnt smell.<br>Step 4: Heat Management Place coals on the foil/HMD for optimal temperature control.<br>Step 5: Smoking Enjoy smoother smoke with the down stem. Use the X-function/pressure nob to enhance visual appeal.<br>Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</p>', 1, '[\"Default\"]', '007 Hookah', '007 Hookah', '007 Hookah', '2025-08-05 01:15:00', '2025-08-08 00:43:18'),
(53, 4, 23, 'Alexander Hookah', 'alexander-hookah', NULL, NULL, 'TGHFG1005', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><strong>Additional Specifications</strong><br>Feature Availability<br>Height 24 inches (with Silicone Chillum &amp; HMD)<br>Color Gold<br>Base Material Glass<br>Stem Material Stainless steel<br>Pipe Material Silicone with Metal Handle<br>Bowl Type Silicone Chillum<br>Accessories Heat Management Device, Tong</p>\r\n<p><strong>General Information</strong><br>Field Selection/Details<br>Brand VG France<br>Height 24 inches (with Silicone Chillum &amp; HMD)<br>Color Gold<br>Material Stainless Steel<br>Design Trending<br>Base Type Sturdy grey glass base<br>Weight 3.5 kg approx.<br>Included Items: Silicone Chillum, HMD, Silicone Pipe, Metal Handle, Tong, Coal Tray, Bag, Diffuser</p>', NULL, '<p><strong>Usage Instructions</strong><br>Step Instructions<br>Step 1: Assembly Secure the stem and base using the grommet locking system. Attach silicone pipe and ceramic chillum.<br>Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.<br>Step 3: Packing the Chillum Pack the ceramic chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the foil or any HMD (not included with this model) which you are using to avoid a burnt smell.<br>Step 4: Heat Management Place coals on the foil/HMD for optimal temperature control.<br>Step 5: Smoking Enjoy smoother smoke with the down stem. Use the X-function/pressure nob to enhance visual appeal.<br>Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</p>', 1, '[\"Gold\"]', 'Alexander Hookah', 'Alexander Hookah', 'Alexander Hookah', '2025-08-05 01:17:57', '2025-08-05 01:18:32'),
(54, 4, 23, 'Baseball Hookah', 'baseball-hookah', NULL, NULL, 'TGHFG1006', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '<p><strong>Additional Specifications</strong><br>Feature Availability<br>Height 30 inches (with Silicone Chillum &amp; HMD)<br>Color Golden<br>Base Material Aluminum<br>Stem Material Aluminum<br>Pipe Material Silicone with Metal Handle<br>Bowl Type Silicone Chillum<br>Accessories Heat Management Device, Tong</p>\r\n<p><strong>General Information</strong><br>Field Selection/Details<br>Brand VG France<br>Height 30 inches (with Silicone Chillum &amp; HMD)<br>Color Golden<br>Material Aluminum<br>Design Trending<br>Base Type Sturdy aluminum base<br>Weight 4kg approx.<br>Included Items: Silicone Chillum, HMD, Silicone Pipe, Metal Handle, Tong, Coal Tray, Bag, Stand at bottom</p>', NULL, '<p><strong>Usage Instructions</strong><br>Step Instructions<br>Step 1: Assembly Secure the stem and base using the grommet locking system. Attach silicone pipe and ceramic chillum.<br>Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.<br>Step 3: Packing the Chillum Pack the ceramic chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the foil or any HMD (not included with this model) which you are using to avoid a burnt smell.<br>Step 4: Heat Management Place coals on the foil/HMD for optimal temperature control.<br>Step 5: Smoking Enjoy smoother smoke with the down stem. Use the X-function/pressure nob to enhance visual appeal.<br>Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</p>', 1, '[\"Gold\"]', 'Baseball Hookah', 'Baseball Hookah', 'Baseball Hookah', '2025-08-05 01:22:06', '2025-08-05 01:24:31'),
(55, 4, 23, 'Dark Knight Hookah', 'dark-knight-hookah', NULL, NULL, 'TGHFG1007', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '<p><strong>Additional Specifications</strong><br>Feature Availability<br>Height 14 inches (with Ceramic Chillum)<br>Color Bronze<br>Base Material Glass<br>Stem Material Stainless Steel<br>Pipe Material Silicone with Metal Handle<br>Bowl Type Ceramic<br>Accessories Tong, Bag</p>\r\n<p><strong>General Information</strong><br>Field Selection/Details<br>Brand VG France<br>Height 14 inches (with Ceramic Chillum)<br>Color Bronze<br>Material Glass, Stainless Steel, Silicone, Ceramic<br>Design Latest<br>Base Type transparent glass base<br>Weight 2kg approx.<br>Included Items: Ceramic Chillum, Diffuser, Silicone Pipe, Metal Handle, Tong, Coal Tray, Bag</p>', NULL, '<p><strong>Usage Instructions</strong><br>Step Instructions<br>Step 1: Assembly Secure the stem and base using the grommet locking system. Attach silicone pipe and ceramic chillum.<br>Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.<br>Step 3: Packing the Chillum Pack the ceramic chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the foil or any HMD (not included with this model) which you are using to avoid a burnt smell.<br>Step 4: Heat Management Place coals on the foil/HMD for optimal temperature control.<br>Step 5: Smoking Enjoy smoother smoke with the down stem. Use the X-function/pressure nob to enhance visual appeal.<br>Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</p>', 1, '[\"Gold\"]', 'Dark Knight Hookah', 'Dark Knight Hookah', 'Dark Knight Hookah', '2025-08-05 01:26:54', '2025-08-05 01:27:50'),
(56, 4, 23, 'Fighter Hookah', 'fighter-hookah', NULL, NULL, 'TGHFG1008', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '<p><strong>Additional Specifications</strong><br>Feature Availability<br>Height 21 inches (with Silicone Chillum &amp; HMD)<br>Color Gold<br>Base Material Glass<br>Stem Material Stainless steel<br>Pipe Material Silicone with Metal Handle<br>Bowl Type Silicone Chillum<br>Accessories Heat Management Device, Tong, Bag</p>\r\n<p><strong>General Information</strong><br>Field Selection/Details<br>Brand VG France<br>Height 21 inches (with Silicone Chillum &amp; HMD)<br>Color Gold<br>Material Stainless Steel<br>Design Trending<br>Base Type Sturdy green glass base<br>Weight 3.2 kg approx.<br>Included Items: Silicone Chillum, HMD, Silicone Pipe, Metal Handle, Tong, Coal Tray, Diffuser, Bag</p>', NULL, '<p><strong>Usage Instructions</strong><br>Step Instructions<br>Step 1: Assembly Secure the stem and base using the grommet locking system. Attach silicone pipe and ceramic chillum.<br>Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.<br>Step 3: Packing the Chillum Pack the ceramic chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the foil or any HMD (not included with this model) which you are using to avoid a burnt smell.<br>Step 4: Heat Management Place coals on the foil/HMD for optimal temperature control.<br>Step 5: Smoking Enjoy smoother smoke with the down stem. Use the X-function/pressure nob to enhance visual appeal.<br>Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</p>', 1, '[\"Gold\", \"Blue\"]', 'Fighter Hookah', 'Fighter Hookah', 'Fighter Hookah', '2025-08-05 01:30:24', '2025-08-05 01:31:48'),
(57, 4, 23, 'Godfather Hookah', 'godfather-hookah', NULL, NULL, 'TGHFG1009', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><strong>Additional Specifications</strong><br>Feature Availability<br>Height 34 inches (with Silicone Chillum &amp; HMD)<br>Color Gold<br>Base Material Glass<br>Stem Material Stainless Steel<br>Pipe Material Silicone with Metal Handle<br>Bowl Type Silicone Chillum<br>Accessories Heat Management Device, Tong</p>\r\n<p><strong>General Information</strong><br>Field Selection/Details<br>Brand VG France<br>Height 34 inches (with Silicone Chillum &amp; HMD)<br>Color Gold<br>Material Glass, Stainless Steel, Silicone<br>Design Latest<br>Base Type Sturdy Stryker Grey Base<br>Weight 2.2kg<br>Included Items: Silicone Chillum, Diffuser, HMD, Silicone Pipe, Metal Handle, Tong, Coal Tray</p>', NULL, '<p><strong>Usage Instructions</strong><br>Step Instructions<br>Step 1: Assembly Secure the stem and base using the grommet locking system. Attach silicone pipe and ceramic chillum.<br>Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.<br>Step 3: Packing the Chillum Pack the ceramic chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the foil or any HMD (not included with this model) which you are using to avoid a burnt smell.<br>Step 4: Heat Management Place coals on the foil/HMD for optimal temperature control.<br>Step 5: Smoking Enjoy smoother smoke with the down stem. Use the X-function/pressure nob to enhance visual appeal.<br>Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</p>', 1, '[\"Gold\"]', 'Godfather Hookah', 'Godfather Hookah', 'Godfather Hookah', '2025-08-05 01:35:35', '2025-08-05 01:36:39'),
(58, 4, 23, 'Versace Hookah', 'versace-hookah', NULL, NULL, 'TGHFG1010', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '<p><strong>Additional Specifications</strong><br>Feature Availability<br>Height 30 inches (with Silicone Chillum &amp; HMD)<br>Color Black<br>Base Material Glass<br>Stem Material Stainless Steel<br>Pipe Material Silicone with Metal Handle<br>Bowl Type Silicone Chillum<br>Accessories Heat Management Device, Tong, LED and Remote</p>\r\n<p><strong>General Information</strong><br>Field Selection/Details<br>Brand VG France<br>Height 30 inches (with Silicone Chillum &amp; HMD)<br>Color Black<br>Material Glass, Stainless Steel, Silicone<br>Design Trending design<br>Base Type Sturdy Long Bottle Shape Cut Glass<br>Weight 7kg approx.<br>Included Items: Silicone Chillum, Diffuser, HMD, Silicone Pipe, Metal Handle, Tong, Coal Tray, 3 bags (1 big and 2 small), LED Light &amp; Remote</p>', NULL, '<p><strong>Usage Instructions</strong><br>Step Instructions<br>Step 1: Assembly Secure the stem and base using the grommet locking system. Attach silicone pipe and ceramic chillum.<br>Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.<br>Step 3: Packing the Chillum Pack the ceramic chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the foil or any HMD (not included with this model) which you are using to avoid a burnt smell.<br>Step 4: Heat Management Place coals on the foil/HMD for optimal temperature control.<br>Step 5: Smoking Enjoy smoother smoke with the down stem. Use the X-function/pressure nob to enhance visual appeal.<br>Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</p>', 1, '[\"Default\"]', 'Versace Hookah', 'Versace Hookah', 'Versace Hookah', '2025-08-05 01:44:29', '2025-08-05 01:45:18'),
(59, 4, 12, 'Red Smoke Hookah', 'red-smoke-hookah', NULL, NULL, 'TGHAA1001', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '<p><strong>Usage Instructions</strong><br>Step Instructions<br>Step 1: Assembly Secure the stem and base using the grommet locking system. Attach silicone pipe and ceramic chillum.<br>Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.<br>Step 3: Packing the Chillum Pack the ceramic chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the foil or any HMD (not included with this model) which you are using to avoid a burnt smell.<br>Step 4: Heat Management Place coals on the foil/HMD for optimal temperature control.<br>Step 5: Smoking Enjoy smoother smoke with the down stem. Use the X-function/pressure nob to enhance visual appeal.<br>Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</p>', '<p>Comes with a leather briefcase</p>', NULL, 1, '[\"Red\"]', 'Red Smoke Hookah', 'Red Smoke Hookah', 'Red Smoke Hookah', '2025-08-05 01:47:52', '2025-08-05 01:48:45'),
(60, 4, 13, 'Bee Hookah', 'bee-hookah', NULL, NULL, 'TGHAS1001', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Bee Hookah', 'Bee Hookah', 'Bee Hookah', '2025-08-06 00:04:29', '2025-08-06 00:05:06'),
(61, 4, 13, 'Bollywood Bling Hookah', 'bollywood-bling-hookah', NULL, NULL, 'TGHAS1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Bollywood Bling Hookah', 'Bollywood Bling Hookah', 'Bollywood Bling Hookah', '2025-08-06 00:06:04', '2025-08-06 00:06:45'),
(62, 4, 13, 'Crown Hookah', 'crown-hookah', NULL, NULL, 'TGHAS1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Brown\"]', 'Crown Hookah', 'Crown Hookah', 'Crown Hookah', '2025-08-06 00:08:06', '2025-08-06 00:08:40'),
(63, 4, 13, 'Golden Butterfly Hookah', 'golden-butterfly-hookah', NULL, NULL, 'TGHAS1004', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Gold\"]', 'Golden Butterfly Hookah', 'Golden Butterfly Hookah', 'Golden Butterfly Hookah', '2025-08-06 00:09:34', '2025-08-06 00:10:10'),
(64, 4, 13, 'Joker Hookah', 'joker-hookah', NULL, NULL, 'TGHAS1005', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong>Usage Instructions</strong><br>Step Instructions<br>Step 1: Assembly Secure the stem and base using the grommet locking system. Attach silicone pipe and ceramic chillum.<br>Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.<br>Step 3: Packing the Chillum Pack the ceramic chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the foil or any HMD (not included with this model) which you are using to avoid a burnt smell.<br>Step 4: Heat Management Place coals on the foil/HMD for optimal temperature control.<br>Step 5: Smoking Enjoy smoother smoke with the down stem. Use the X-function/pressure nob to enhance visual appeal.<br>Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</p>', 1, '[\"Purple\"]', 'Joker Hookah', 'Joker Hookah', 'Joker Hookah', '2025-08-06 01:59:42', '2025-08-06 02:00:20'),
(65, 4, 13, 'Machine Gun Hookah', 'machine-gun-hookah', NULL, NULL, 'TGHAS1006', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><strong>Usage Instructions</strong><br>Step Instructions<br>Step 1: Assembly Secure the stem and base using the grommet locking system. Attach silicone pipe and ceramic chillum.<br>Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.<br>Step 3: Packing the Chillum Pack the ceramic chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the foil or any HMD (not included with this model) which you are using to avoid a burnt smell.<br>Step 4: Heat Management Place coals on the foil/HMD for optimal temperature control.<br>Step 5: Smoking Enjoy smoother smoke with the down stem. Use the X-function/pressure nob to enhance visual appeal.<br>Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</p>', 1, '[\"Default\"]', 'Machine Gun Hookah', 'Machine Gun Hookah', 'Machine Gun Hookah', '2025-08-06 02:01:50', '2025-08-06 02:03:23'),
(66, 10, 25, 'Silicon Chillum and Kloud Combo', 'silicon-chillum-and-kloud-combo', NULL, NULL, 'TGCCK1001', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Silicon Chillum and Kloud Combo', 'Silicon Chillum and Kloud Combo', 'Silicon Chillum and Kloud Combo', '2025-08-11 02:11:59', '2025-10-01 03:05:02'),
(67, 7, 9, 'Smoking Glass Pipe + Filter Screens Combo', 'smoking-glass-pipe-filter-screens-combo', NULL, NULL, 'TGCSP1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Red & Blue Marble 2\", \"Red & Blue Marble\", \"Orange & Green\", \"Red & Blue\", \"Multicolor 2\", \"Multicolor 1\", \"Green\", \"Blue\"]', 'Smoking Glass Pipe + Filter Screens Combo', 'Smoking Glass Pipe + Filter Screens Combo', 'Smoking Glass Pipe + Filter Screens Combo', '2025-08-11 02:19:20', '2025-08-11 02:24:08'),
(68, 7, 9, 'Smoking Glass Pipe + Filter Screens + Cleaning Brush Combo', 'smoking-glass-pipe-filter-screens-cleaning-brush-combo', NULL, NULL, 'TGCSP1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Red & Blue Marble 2\", \"Red & Blue Marble\", \"Orange & Green\", \"Red & Blue\", \"Multicolor 2\", \"Multicolor 1\", \"Green\", \"Blue\"]', 'Smoking Glass Pipe + Filter Screens + Cleaning Brush Combo', 'Smoking Glass Pipe + Filter Screens + Cleaning Brush Combo', 'Smoking Glass Pipe + Filter Screens + Cleaning Brush Combo', '2025-08-11 02:25:53', '2025-08-11 02:29:12'),
(69, 7, 10, 'Wooden Smoking Pipe 10 cm + Filter Screens + Cleaning Brush Combo', 'wooden-smoking-pipe-10-cm-filter-screens-cleaning-brush-combo', NULL, NULL, 'TGCWP1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Wooden Smoking Pipe 10 cm + Filter Screens + Cleaning Brush Combo', 'Wooden Smoking Pipe 10 cm + Filter Screens + Cleaning Brush Combo', 'Wooden Smoking Pipe 10 cm + Filter Screens + Cleaning Brush Combo', '2025-08-11 07:21:16', '2025-08-11 07:23:12'),
(70, 7, 10, 'Wooden Smoking Pipe 10 cm + Filter Screens Combo', 'wooden-smoking-pipe-10-cm-filter-screens-combo', NULL, NULL, 'TGCWP1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Wooden Smoking Pipe 10 cm + Filter Screens Combo', 'Wooden Smoking Pipe 10 cm + Filter Screens Combo', 'Wooden Smoking Pipe 10 cm + Filter Screens Combo', '2025-08-11 07:24:09', '2025-08-11 07:24:38'),
(71, 7, 10, 'Wooden Smoking Pipe 13 cm + Filter Screens + Cleaning Brush Combo', 'wooden-smoking-pipe-13-cm-filter-screens-cleaning-brush-combo', NULL, NULL, 'TGCWP1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Wooden Smoking Pipe 13 cm + Filter Screens + Cleaning Brush Combo', 'Wooden Smoking Pipe 13 cm + Filter Screens + Cleaning Brush Combo', 'Wooden Smoking Pipe 13 cm + Filter Screens + Cleaning Brush Combo', '2025-08-11 07:25:14', '2025-08-11 07:25:48'),
(72, 7, 10, 'Wooden Smoking Pipe 13 cm + Filter Screens Combo', 'wooden-smoking-pipe-13-cm-filter-screens-combo', NULL, NULL, 'TGCWP1004', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Wooden Smoking Pipe 13 cm + Filter Screens Combo', 'Wooden Smoking Pipe 13 cm + Filter Screens Combo', 'Wooden Smoking Pipe 13 cm + Filter Screens Combo', '2025-08-11 07:27:07', '2025-08-11 07:27:40'),
(73, 7, 10, 'Wooden Smoking Pipe 16 cm + Filter Screens + Cleaning Brush Combo', 'wooden-smoking-pipe-16-cm-filter-screens-cleaning-brush-combo', NULL, NULL, 'TGCWP1005', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Wooden Smoking Pipe 16 cm + Filter Screens + Cleaning Brush Combo', 'Wooden Smoking Pipe 16 cm + Filter Screens + Cleaning Brush Combo', 'Wooden Smoking Pipe 16 cm + Filter Screens + Cleaning Brush Combo', '2025-08-11 07:28:08', '2025-08-11 07:28:51'),
(74, 7, 10, 'Wooden Smoking Pipe 16 cm + Filter Screens Combo', 'wooden-smoking-pipe-16-cm-filter-screens-combo', NULL, NULL, 'TGCWP1006', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Wooden Smoking Pipe 16 cm + Filter Screens Combo', 'Wooden Smoking Pipe 16 cm + Filter Screens Combo', 'Wooden Smoking Pipe 16 cm + Filter Screens Combo', '2025-08-11 07:29:22', '2025-08-11 07:29:51'),
(75, 8, 11, '12 inches Percolator', '12-inches-percolator', NULL, NULL, 'TGGBP1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 12 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Showerhead Percolator is a straightforward glass water pipe made by the experts. The domed showerhead perc is paired with a diffused down stem for super smooth hits every sash! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"White\"]', '12 inches Percolator', '12 inches Percolator', '12 inches Percolator', '2025-08-12 00:38:12', '2025-08-12 00:39:01'),
(76, 8, 11, '10 inches Percolator', '10-inches-percolator', NULL, NULL, 'TGGBP1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 10 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Showerhead Perc is a straightforward glass water pipe made by the experts. The domed showerhead perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Baby Pink\"]', '10 inches Percolator', '10 inches Percolator', '10 inches Percolator', '2025-08-12 00:40:25', '2025-08-12 00:41:03'),
(78, 8, 11, 'Elephant 8 Inches Percolator', 'elephant-8-inches-percolator', NULL, NULL, 'TGGBP1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 8 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Elephant Perc is a straightforward glass water pipe made by the experts. The Elephant perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Green\", \"Black\"]', 'Elephant 8 Inches Percolator', 'Elephant 8 Inches Percolator', 'Elephant 8 Inches Percolator', '2025-08-12 00:45:01', '2025-08-12 00:45:50'),
(79, 8, 11, 'Cat Percolator 7 Inches', 'cat-percolator-7-inches', NULL, NULL, 'TGGBP1004', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 7 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Cat Perc is a straightforward glass water pipe made by the experts. The Cat perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Light Blue\", \"Blue\"]', 'Cat Percolator 7 Inches', 'Cat Percolator 7 Inches', 'Cat Percolator 7 Inches', '2025-08-12 00:49:40', '2025-08-12 00:50:27'),
(80, 8, 11, 'Inverted Percolator 13 Inches', 'inverted-percolator-13-inches', NULL, NULL, 'TGGBP1005', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 13 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Inverted Perc is a straightforward glass water pipe made by the experts. The Inverted perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Light Blue\", \"Bottle Green\", \"Green\", \"Blue\"]', 'Inverted Percolator 13 Inches', 'Inverted Percolator 13 Inches', 'Inverted Percolator 13 Inches', '2025-08-12 00:53:02', '2025-08-12 00:54:53'),
(81, 8, 11, 'Platypus 9 Inches Percolator', 'platypus-9-inches-percolator', NULL, NULL, 'TGGBP1006', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 9 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Platypus Perc is a straightforward glass water pipe made by the experts. The Platypus perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Blue\"]', 'Platypus 9 Inches Percolator', 'Platypus 9 Inches Percolator', 'Platypus 9 Inches Percolator', '2025-08-12 00:56:48', '2025-08-12 00:57:25'),
(82, 8, 11, 'Shark Fin 13 Inches Percolator', 'shark-fin-13-inches-percolator', NULL, NULL, 'TGGBP1007', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 13 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Shark Fin Perc is a straightforward glass water pipe made by the experts. The Shark Fin perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Blue\"]', 'Shark Fin 13 Inches Percolator', 'Shark Fin 13 Inches Percolator', 'Shark Fin 13 Inches Percolator', '2025-08-12 00:58:42', '2025-08-12 00:59:13'),
(83, 8, 11, 'Canon 6 Inches Percolator', 'canon-6-inches-percolator', NULL, NULL, 'TGGBP1008', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 6 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Canon Perc is a straightforward glass water pipe made by the experts. The Canon perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Green\", \"Blue\"]', 'Canon 6 Inches Percolator', 'Canon 6 Inches Percolator', 'Canon 6 Inches Percolator', '2025-08-12 01:00:21', '2025-08-12 01:01:13'),
(84, 8, 11, 'Chinese Bowl Bong 15 Inches', 'chinese-bowl-bong-15-inches', NULL, NULL, 'TGGBP1009', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 15 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Chinese Bowl is a straightforward glass water pipe made by the experts. The Chinese Bowl is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Bronze\"]', 'Chinese Bowl Bong 15 Inches', 'Chinese Bowl Bong 15 Inches', 'Chinese Bowl Bong 15 Inches', '2025-08-12 01:03:18', '2025-08-12 01:03:48'),
(85, 8, 11, 'Chinese Feng Shui Percolator 12 inches', 'chinese-feng-shui-percolator-12-inches', NULL, NULL, 'TGGBP1010', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 12 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Chinese Feng shui is a straightforward glass water pipe made by the experts. The Chinese Feng shui perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Clear\"]', 'Chinese Feng Shui Percolator 12 inches', 'Chinese Feng Shui Percolator 12 inches', 'Chinese Feng Shui Percolator 12 inches', '2025-08-12 01:05:37', '2025-08-12 01:06:13');
INSERT INTO `product` (`id`, `category`, `subcategory`, `title`, `slug`, `reg_price`, `sale_price`, `sku`, `unit_type`, `featured`, `inventory`, `popular`, `deals`, `deals_date`, `variance_data`, `image`, `description`, `short_description`, `additional_info`, `is_show`, `size`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(86, 8, 11, 'Inverted Percolator 10 Inches', 'inverted-percolator-10-inches', NULL, NULL, 'TGGBP1011', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 10 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Inverted perc is a straightforward glass water pipe made by the experts. The Inverted perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Clear\"]', 'Inverted Percolator 10 Inches', 'Inverted Percolator 10 Inches', 'Inverted Percolator 10 Inches', '2025-08-12 01:07:52', '2025-08-12 01:08:26'),
(87, 8, 11, 'Double Plain and Inverted Percolator 16 Inches', 'double-plain-and-inverted-percolator-16-inches', NULL, NULL, 'TGGBP1012', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 16 Inch Tall Glass Smoking Pipe Beaker Water Pipe with one Inverted and one plain perc is a straightforward glass water pipe made by the experts. The &nbsp;one Inverted and one plain &nbsp;perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Light Green\"]', 'Double Plain and Inverted Percolator 16 Inches', 'Double Plain and Inverted Percolator 16 Inches', 'Double Plain and Inverted Percolator 16 Inches', '2025-08-12 01:10:06', '2025-08-12 01:10:42'),
(88, 8, 11, 'Inverted Percolator 11 Inches', 'inverted-percolator-11-inches', NULL, NULL, 'TGGBP1013', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 11 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Inverted &nbsp;perc is a straightforward glass water pipe made by the experts. The &nbsp;Inverted perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Green\"]', 'Inverted Percolator 11 Inches', 'Inverted Percolator 11 Inches', 'Inverted Percolator 11 Inches', '2025-08-12 01:12:05', '2025-08-12 01:12:47'),
(90, 8, 11, 'Spiral 6 Inches Percolator', 'spiral-6-inches-percolator', NULL, NULL, 'TGGBP1015', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 6 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Spiral perc is a straightforward glass water pipe made by the experts. The &nbsp;Spiral perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Clear\"]', 'Spiral 6 Inches Percolator', 'Spiral 6 Inches Percolator', 'Spiral 6 Inches Percolator', '2025-08-12 06:37:16', '2025-08-12 06:37:51'),
(91, 8, 11, 'Spiral Percolator 12 Inches', 'spiral-percolator-12-inches', NULL, NULL, 'TGGBP1016', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 12 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Spiral perc is a straightforward glass water pipe made by the experts. The &nbsp;Spiral perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Clear\"]', 'Spiral Percolator 12 Inches', 'Spiral Percolator 12 Inches', 'Spiral Percolator 12 Inches', '2025-08-12 06:39:01', '2025-08-12 06:42:20'),
(92, 8, 11, 'Double Shivaling Percolator 12 Inches', 'double-shivaling-percolator-12-inches', NULL, NULL, 'TGGBP1017', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 12 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Crystal Double Shivaling perc is a straightforward glass water pipe made by the experts. The &nbsp;Crystal Double Shivaling perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Crystal\"]', 'Double Shivaling Percolator 12 Inches', 'Double Shivaling Percolator 12 Inches', 'Double Shivaling Percolator 12 Inches', '2025-08-12 06:41:02', '2025-08-12 06:41:59'),
(93, 8, 11, 'Double Honeycomb Percolator Clear 16 Inches', 'double-honeycomb-percolator-clear-16-inches', NULL, NULL, 'TGGBP1018', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 16 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Double Honeycomb perc is a straightforward glass water pipe made by the experts. The Double Honeycomb perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Clear\", \"Green\"]', 'Double Honeycomb Percolator Clear 16 Inches', 'Double Honeycomb Percolator Clear 16 Inches', 'Double Honeycomb Percolator Clear 16 Inches', '2025-08-12 06:44:05', '2025-08-12 06:45:05'),
(94, 8, 11, 'Double Percolator 15 Inches', 'double-percolator-15-inches', NULL, NULL, 'TGGBP1019', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 15 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Double perc is a straightforward glass water pipe made by the experts. The Double &nbsp;perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Bottle Green\", \"Green\"]', 'Double Percolator 15 Inches', 'Double Percolator 15 Inches', 'Double Percolator 15 Inches', '2025-08-12 06:50:41', '2025-08-12 06:51:47'),
(95, 8, 11, 'Double Percolator 16 Inches', 'double-percolator-16-inches', NULL, NULL, 'TGGBP1020', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 16 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Double perc is a straightforward glass water pipe made by the experts. The Double &nbsp;perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Light Green\", \"Blue\"]', 'Double Percolator 16 Inches', 'Double Percolator 16 Inches', 'Double Percolator 16 Inches', '2025-08-12 06:53:18', '2025-08-12 06:54:19'),
(96, 8, 11, 'Double Percolator 17 Inches', 'double-percolator-17-inches', NULL, NULL, 'TGGBP1021', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 17 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Double perc is a straightforward glass water pipe made by the experts. The Double &nbsp;perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Blue & Green\", \"Green\", \"Blue\"]', 'Double Percolator 17 Inches', 'Double Percolator 17 Inches', 'Double Percolator 17 Inches', '2025-08-12 06:58:59', '2025-08-12 07:03:12'),
(97, 8, 11, 'Double Percolator 18 Inches', 'double-percolator-18-inches', NULL, NULL, 'TGGBP1022', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 18 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Double perc is a straightforward glass water pipe made by the experts. The Double &nbsp;perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Light Green\", \"Blue\"]', 'Double Percolator 18 Inches', 'Double Percolator 18 Inches', 'Double Percolator 18 Inches', '2025-08-12 08:50:22', '2025-08-12 08:52:06'),
(99, 8, 11, 'Double Percolator 18 Inches 2', 'double-percolator-18-inches-2', NULL, NULL, 'TGGBP1023', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 18 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Double perc is a straightforward glass water pipe made by the experts. The Double &nbsp;perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Blue\"]', 'Double Percolator 18 Inches 2', 'Double Percolator 18 Inches 2', 'Double Percolator 18 Inches 2', '2025-08-12 08:55:18', '2025-08-12 08:57:11'),
(100, 8, 11, 'Double Percolator Shivaling and Honeycomb 18 Inches', 'double-percolator-shivaling-and-honeycomb-18-inches', NULL, NULL, 'TGGBP1024', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 18 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Double Shivaling and Honeycomb perc is a straightforward glass water pipe made by the experts. The Double Shivaling and Honeycomb &nbsp;perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Green\"]', 'Double Percolator Shivaling and Honeycomb 18 Inches', 'Double Percolator Shivaling and Honeycomb 18 Inches', 'Double Percolator Shivaling and Honeycomb 18 Inches', '2025-08-13 00:00:02', '2025-08-13 00:00:55'),
(101, 8, 11, 'Double Plain and Inverted Percolator 16 Inches', 'double-plain-and-inverted-percolator-16-inches', NULL, NULL, 'TGGBP1025', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Light Green\"]', 'Double Plain and Inverted Percolator 16 Inches', 'Double Plain and Inverted Percolator 16 Inches', 'Double Plain and Inverted Percolator 16 Inches', '2025-08-13 00:03:14', '2025-08-13 00:03:54'),
(102, 8, 11, 'Fish Percolator 7 Inches', 'fish-percolator-7-inches', NULL, NULL, 'TGGBP1026', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p>This is 7 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Fish perc is a straightforward glass water pipe made by the experts. The Fish Perc is paired with a diffused downstem for super smooth hits every sesh! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</p>', NULL, NULL, 1, '[\"Green\"]', 'Fish Percolator 7 Inches', 'Fish Percolator 7 Inches', 'Fish Percolator 7 Inches', '2025-08-13 00:05:30', '2025-08-13 00:06:06'),
(103, 8, 11, 'Alien 6 inches Percolator', 'alien-6-inches-percolator', NULL, NULL, 'TGGBP1027', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p class=\"pf0\"><span class=\"cf0\">This is 6 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Alien perc is a straightforward glass water pipe made by the experts. The Alien Perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>', NULL, NULL, 1, '[\"Green\"]', 'Alien 6 inches Percolator', 'Alien 6 inches Percolator', 'Alien 6 inches Percolator', '2025-08-13 00:08:06', '2025-08-13 00:08:46'),
(105, 8, 11, 'Elephant 8 Inches Percolator', 'elephant-8-inches-percolator', NULL, NULL, 'TGGBP1028', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 8 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Elephant Perc is a straightforward glass water pipe made by the experts. The Elephant perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>', NULL, NULL, 1, '[\"Green\", \"Black\"]', 'Elephant 8 Inches Percolator', 'Elephant 8 Inches Percolator', 'Elephant 8 Inches Percolator', '2025-08-13 00:13:47', '2025-08-13 00:16:04'),
(106, 8, 11, 'Flower 6 Inches Percolator', 'flower-6-inches-percolator', NULL, NULL, 'TGGBP1029', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 6 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Green Flower perc is a straightforward glass water pipe made by the experts. The Green Flower Perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>', NULL, NULL, 1, '[\"Yellow\", \"Green\"]', 'Flower 6 Inches Percolator', 'Flower 6 Inches Percolator', 'Flower 6 Inches Percolator', '2025-08-13 00:19:33', '2025-08-13 00:20:26'),
(107, 8, 11, 'Green Flower 6 Inches Percolator 2', 'green-flower-6-inches-percolator-2', NULL, NULL, 'TGGBP1030', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p class=\"pf0\"><span class=\"cf0\">This is 6 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Green Flower perc is a straightforward glass water pipe made by the experts. The Green Flower Perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>', NULL, NULL, 1, '[\"Green\"]', 'Green Flower 6 Inches Percolator 2', 'Green Flower 6 Inches Percolator 2', 'Green Flower 6 Inches Percolator 2', '2025-08-13 00:21:30', '2025-08-13 00:21:55'),
(108, 8, 11, 'Print Glass 6 Inches Percolator', 'print-glass-6-inches-percolator', NULL, NULL, 'TGGBP1031', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 6 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Printed Glass perc is a straightforward glass water pipe made by the experts. The Printed Glass Perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>\r\n<p>&nbsp;</p>', NULL, NULL, 1, '[\"Green\"]', 'Print Glass 6 Inches Percolator', 'Print Glass 6 Inches Percolator', 'Print Glass 6 Inches Percolator', '2025-08-13 00:34:48', '2025-08-13 00:35:24'),
(109, 8, 11, 'Single Percolator 6 Inches', 'single-percolator-6-inches', NULL, NULL, 'TGGBP1032', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 6 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Single perc is a straightforward glass water pipe made by the experts. The Single Perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>', NULL, NULL, 1, '[\"Green\"]', 'Single Percolator 6 Inches', 'Single Percolator 6 Inches', 'Single Percolator 6 Inches', '2025-08-13 00:57:40', '2025-08-13 00:58:13'),
(110, 8, 11, 'Inverted Percolator 6 Inches', 'inverted-percolator-6-inches', NULL, NULL, 'TGGBP1033', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 6 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Inverted perc is a straightforward glass water pipe made by the experts. The Inverted Perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>\r\n<p>&nbsp;</p>', NULL, NULL, 1, '[\"Clear\", \"Green\"]', 'Inverted Percolator 6 Inches', 'Inverted Percolator 6 Inches', 'Inverted Percolator 6 Inches', '2025-08-13 01:47:34', '2025-08-13 01:48:18'),
(111, 8, 11, 'Lantern 10 Inches Percolator', 'lantern-10-inches-percolator', NULL, NULL, 'TGGBP1034', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 10 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Lantern perc is a straightforward glass water pipe made by the experts. The Lantern Perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>\r\n<p>&nbsp;</p>', NULL, NULL, 1, '[\"Dark Shade\"]', 'Lantern 10 Inches Percolator', 'Lantern 10 Inches Percolator', 'Lantern 10 Inches Percolator', '2025-08-13 01:49:21', '2025-08-13 01:49:49'),
(112, 8, 11, 'Lightening Percolator 13 Inches', 'lightening-percolator-13-inches', NULL, NULL, 'TGGBP1035', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 13 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Lightening Perc is a straightforward glass water pipe made by the experts. The Lightening perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>\r\n<p>&nbsp;</p>', NULL, NULL, 1, '[\"Dark Shade\"]', 'Lightening Percolator 13 Inches', 'Lightening Percolator 13 Inches', 'Lightening Percolator 13 Inches', '2025-08-13 01:52:30', '2025-08-13 01:52:56'),
(113, 8, 11, 'Perpendicular Double Percolator 16 Inches', 'perpendicular-double-percolator-16-inches', NULL, NULL, 'TGGBP1036', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 16 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Perpendicular Double Perc is a straightforward glass water pipe made by the experts. The Perpendicular Double perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>\r\n<p>&nbsp;</p>', NULL, NULL, 1, '[\"Green\"]', 'Perpendicular Double Percolator 16 Inches', 'Perpendicular Double Percolator 16 Inches', 'Perpendicular Double Percolator 16 Inches', '2025-08-13 01:54:06', '2025-08-13 01:54:34'),
(114, 8, 11, 'Perpendicular Percolator 11 Inches', 'perpendicular-percolator-11-inches', NULL, NULL, 'TGGBP1037', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 11 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Perpendicular Perc is a straightforward glass water pipe made by the experts. The Perpendicular perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>\r\n<p>&nbsp;</p>', NULL, NULL, 1, '[\"Green\", \"Orange\"]', 'Perpendicular Percolator 11 Inches', 'Perpendicular Percolator 11 Inches', 'Perpendicular Percolator 11 Inches', '2025-08-13 01:55:49', '2025-08-13 01:56:38'),
(115, 8, 11, 'Pine Tree 7 Inches Percolator', 'pine-tree-7-inches-percolator', NULL, NULL, 'TGGBP1038', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 7 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Pine tree Perc is a straightforward glass water pipe made by the experts. The Pine tree perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>\r\n<p>&nbsp;</p>', NULL, NULL, 1, '[\"Orange & Green\"]', 'Pine Tree 7 Inches Percolator', 'Pine Tree 7 Inches Percolator', 'Pine Tree 7 Inches Percolator', '2025-08-13 01:57:37', '2025-08-13 01:58:04'),
(116, 8, 11, 'Bong 13 Inches', 'bong-13-inches', NULL, NULL, 'TGGBP1039', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Clear\"]', 'Bong 13 Inches', 'Bong 13 Inches', 'Bong 13 Inches', '2025-08-13 01:59:23', '2025-08-13 02:00:06'),
(117, 8, 11, 'Money Heist Bong 8 Inches', 'money-heist-bong-8-inches', NULL, NULL, 'TGGBP1040', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Clear\"]', 'Money Heist Bong 8 Inches', 'Money Heist Bong 8 Inches', 'Money Heist Bong 8 Inches', '2025-08-13 02:01:05', '2025-08-13 02:01:39'),
(118, 8, 11, 'Platypus 8 Inches Percolator', 'platypus-8-inches-percolator', NULL, NULL, 'TGGBP1041', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p class=\"pf0\"><span class=\"cf0\">This is 8 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Platypus Perc is a straightforward glass water pipe made by the experts. The Platypus perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>', NULL, NULL, 1, '[\"Purple\"]', 'Platypus 8 Inches Percolator', 'Platypus 8 Inches Percolator', 'Platypus 8 Inches Percolator', '2025-08-13 02:03:47', '2025-08-13 02:04:23'),
(119, 8, 11, 'Round 3 Flowers 6 Inches Percolator', 'round-3-flowers-6-inches-percolator', NULL, NULL, 'TGGBP1042', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 8 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Round 3 Flowers Perc is a straightforward glass water pipe made by the experts. The Round 3 Flowers perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>\r\n<p>&nbsp;</p>', NULL, NULL, 1, '[\"Orange\"]', 'Round 3 Flowers 6 Inches Percolator', 'Round 3 Flowers 6 Inches Percolator', 'Round 3 Flowers 6 Inches Percolator', '2025-08-13 02:05:37', '2025-08-13 02:06:08'),
(120, 8, 11, 'Single Percolator 12 Inches', 'single-percolator-12-inches', NULL, NULL, 'TGGBP1043', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 12 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Single Perc is a straightforward glass water pipe made by the experts. The Single perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>', NULL, NULL, 1, '[\"Bottle Green\"]', 'Single Percolator 12 Inches', 'Single Percolator 12 Inches', 'Single Percolator 12 Inches', '2025-08-13 02:08:02', '2025-08-13 02:09:37'),
(121, 8, 11, 'Single Percolator 6 Inches 2', 'single-percolator-6-inches-2', NULL, NULL, 'TGGBP1044', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 6 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Single Perc is a straightforward glass water pipe made by the experts. The Single perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>', NULL, NULL, 1, '[\"Blue\"]', 'Single Percolator 6 Inches 2', 'Single Percolator 6 Inches 2', 'Single Percolator 6 Inches 2', '2025-08-13 02:11:54', '2025-08-13 02:12:21'),
(123, 8, 11, 'Snowman Percolator 7 Inches', 'snowman-percolator-7-inches', NULL, NULL, 'TGGBP1045', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 7 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Snow man Perc is a straightforward glass water pipe made by the experts. The Snow man perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>', NULL, NULL, 1, '[\"Multicolor 1\", \"Green\"]', 'Snowman Percolator 7 Inches', 'Snowman Percolator 7 Inches', 'Snowman Percolator 7 Inches', '2025-08-13 02:13:54', '2025-08-13 02:15:05'),
(124, 8, 11, 'UFO 8 Inches Percolator', 'ufo-8-inches-percolator', NULL, NULL, 'TGGBP1046', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 8 Inch Tall Glass Smoking Pipe Beaker Water Pipe with UFO Perc is a straightforward glass water pipe made by the experts. The UFO perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>\r\n<p>&nbsp;</p>', NULL, NULL, 1, '[\"Green\"]', 'UFO 8 Inches Percolator', 'UFO 8 Inches Percolator', 'UFO 8 Inches Percolator', '2025-08-13 02:18:43', '2025-08-13 02:19:09'),
(125, 8, 11, 'Three Flower 7 Inches Round Percolator', 'three-flower-7-inches-round-percolator', NULL, NULL, 'TGGBP1047', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 7 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Round 3 Flowers Perc is a straightforward glass water pipe made by the experts. The Round 3 Flowers perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>', NULL, NULL, 1, '[\"Multicolor 1\"]', 'Three Flower 7 Inches Round Percolator', 'Three Flower 7 Inches Round Percolator', 'Three Flower 7 Inches Round Percolator', '2025-08-13 02:20:40', '2025-08-13 02:21:13'),
(126, 8, 11, 'Three Flower 8 Inches Percolator', 'three-flower-8-inches-percolator', NULL, NULL, 'TGGBP1048', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 8 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Round 3 Flowers Perc is a straightforward glass water pipe made by the experts. The Round 3 Flowers perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>', NULL, NULL, 1, '[\"Multicolor 1\"]', 'Three Flower 8 Inches Percolator', 'Three Flower 8 Inches Percolator', 'Three Flower 8 Inches Percolator', '2025-08-13 02:22:50', '2025-08-13 02:23:17'),
(127, 8, 11, 'Triple Shivaling Percolator 17 Inches Percolator', 'triple-shivaling-percolator-17-inches-percolator', NULL, NULL, 'TGGBP1049', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 17 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Triple </span><span class=\"cf0\">Shivaling</span><span class=\"cf0\"> Perc is a straightforward glass water pipe made by the experts. The Triple </span><span class=\"cf0\">Shivaling</span><span class=\"cf0\"> perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>', NULL, NULL, 1, '[\"Blue\"]', 'Triple Shivaling Percolator 17 Inches Percolator', 'Triple Shivaling Percolator 17 Inches Percolator', 'Triple Shivaling Percolator 17 Inches Percolator', '2025-08-13 02:24:33', '2025-08-13 02:25:12'),
(128, 8, 11, 'Cactus 6 Inches Percolator', 'cactus-6-inches-percolator', NULL, NULL, 'TGGBP1050', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 6 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Cactus Perc is a straightforward glass water pipe made by the experts. The Cactus perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>\r\n<p>&nbsp;</p>', NULL, NULL, 1, '[\"White\"]', 'Cactus 6 Inches Percolator', 'Cactus 6 Inches Percolator', 'Cactus 6 Inches Percolator', '2025-08-13 02:26:06', '2025-08-13 02:26:38'),
(129, 8, 11, 'Shivaling Percolator 13 Inches', 'shivaling-percolator-13-inches', NULL, NULL, 'TGGBP1051', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 13 Inch Tall Glass Smoking Pipe Beaker Water Pipe with </span><span class=\"cf0\">Shivaling</span><span class=\"cf0\"> Perc is a straightforward glass water pipe made by the experts. The </span><span class=\"cf0\">Shivaling</span><span class=\"cf0\"> perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>\r\n<p>&nbsp;</p>', NULL, NULL, 1, '[\"White\"]', 'Shivaling Percolator 13 Inches', 'Shivaling Percolator 13 Inches', 'Shivaling Percolator 13 Inches', '2025-08-13 02:35:18', '2025-08-13 02:35:48'),
(130, 8, 11, 'Sunflower 6 Inches Percolator', 'sunflower-6-inches-percolator', NULL, NULL, 'TGGBP1052', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">This is 6 Inch Tall Glass Smoking Pipe Beaker Water Pipe with Sun Flower Perc is a straightforward glass water pipe made by the experts. The Sun Flower perc is paired with a diffused </span><span class=\"cf0\">downstem</span><span class=\"cf0\"> for super smooth hits every </span><span class=\"cf0\">sesh</span><span class=\"cf0\">! The classic beaker design is available in single, double styles. It\'s good-looking, bold and will make a impressive addition to your bong collection.</span></p>', NULL, 1, '[\"Yellow\"]', 'Sunflower 6 Inches Percolator', 'Sunflower 6 Inches Percolator', 'Sunflower 6 Inches Percolator', '2025-08-13 02:37:27', '2025-08-13 02:37:59'),
(131, 4, 13, 'Multi Smoke Vent Hookah', 'multi-smoke-vent-hookah', NULL, NULL, 'TGHAS1007', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Black\"]', 'Multi Smoke Vent Hookah', 'Multi Smoke Vent Hookah', 'Multi Smoke Vent Hookah', '2025-08-13 06:15:35', '2025-08-13 06:16:15'),
(132, 4, 13, 'Rainbow Hookah', 'rainbow-hookah', NULL, NULL, 'TGHAS1008', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Multicolor 1\"]', 'Rainbow Hookah', 'Rainbow Hookah', 'Rainbow Hookah', '2025-08-13 06:17:24', '2025-08-13 06:18:04'),
(133, 4, 13, 'Table Hookah', 'table-hookah', NULL, NULL, 'TGHAS1009', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><strong><span class=\"cf0\">Additional Specifications</span></strong></p>\r\n<p><span class=\"cf0\">Feature Availability</span></p>\r\n<p><span class=\"cf0\">Height 17 inches (with Clay Funnel)</span></p>\r\n<p><span class=\"cf0\">Color Black</span></p>\r\n<p><span class=\"cf0\">Base Material Glass</span></p>\r\n<p><span class=\"cf0\">Stem Material Metallic</span></p>\r\n<p><span class=\"cf0\">Pipe Material Silicone with Metal Handle</span></p>\r\n<p><span class=\"cf0\">Bowl Type Clay bowl</span></p>\r\n<p><span class=\"cf0\">Accessories pipe, handle, flavor mixing plate</span></p>\r\n<p>&nbsp;</p>\r\n<p><strong><span class=\"cf0\">General Information</span></strong></p>\r\n<p><span class=\"cf0\">Field Selection/Details</span></p>\r\n<p><span class=\"cf0\">Brand </span><span class=\"cf0\">Dejavuu</span></p>\r\n<p><span class=\"cf0\">Height 17 inches approx. (with Clay </span><span class=\"cf0\">Phunnel</span><span class=\"cf0\">)</span></p>\r\n<p><span class=\"cf0\">Color Black and Wood</span></p>\r\n<p><span class=\"cf0\">Material Glass, Silicone, Wooden</span></p>\r\n<p><span class=\"cf0\">Design Fresh style and design</span></p>\r\n<p><span class=\"cf0\">Base Type Sturdy Cut Glass Base</span></p>\r\n<p><span class=\"cf0\">Weight 3 kg approx.</span></p>\r\n<p><span class=\"cf0\"><strong>Included Items:</strong> Clay </span><span class=\"cf0\">phunnel</span><span class=\"cf0\">, Silicone Pipe, Metal Handle, Diffuser, wooden coated tong, 3 legs, wooden coal tray, flavor mixing plate on wooden tray, 360 degree metal coal tray on top</span></p>', NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Gold\"]', 'Table Hookah', 'Table Hookah', 'Table Hookah', '2025-08-13 06:20:25', '2025-08-13 06:21:00'),
(134, 4, 13, 'Versace Mini Hookah', 'versace-mini-hookah', NULL, NULL, 'TGHAS1010', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Purple\"]', 'Versace Mini Hookah', 'Versace Mini Hookah', 'Versace Mini Hookah', '2025-08-13 06:23:02', '2025-08-13 06:23:32'),
(135, 4, 13, 'Stimulation Hookah', 'stimulation-hookah', NULL, NULL, 'TGHAS1011', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Purple\"]', 'Stimulation Hookah', 'Stimulation Hookah', 'Stimulation Hookah', '2025-08-13 06:24:57', '2025-08-13 06:25:33'),
(136, 4, 14, 'Bottle Hookah', 'bottle-hookah', NULL, NULL, 'TGHCR1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Purple\", \"Red\", \"Blue\"]', 'Bottle Hookah', 'Bottle Hookah', 'Bottle Hookah', '2025-08-13 06:28:19', '2025-08-13 06:29:28'),
(137, 4, 18, 'Skeleton Tripod Hookah', 'skeleton-tripod-hookah', NULL, NULL, 'TGHDM1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Gold\"]', 'Skeleton Tripod Hookah', 'Skeleton Tripod Hookah', 'Skeleton Tripod Hookah', '2025-08-13 06:31:24', '2025-08-13 06:31:55'),
(138, 4, 19, 'King Cobra Hookah', 'king-cobra-hookah', NULL, NULL, 'TGHER1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Brown\"]', 'King Cobra Hookah', 'King Cobra Hookah', 'King Cobra Hookah', '2025-08-13 06:33:03', '2025-08-13 06:33:35'),
(139, 4, 19, 'Silver Glow Hookah', 'silver-glow-hookah', NULL, NULL, 'TGHER1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Silver\"]', 'Silver Glow Hookah', 'Silver Glow Hookah', 'Silver Glow Hookah', '2025-08-13 06:34:32', '2025-08-13 06:46:13'),
(140, 4, 20, 'Bailey Hobo Hookah', 'bailey-hobo-hookah', NULL, NULL, 'TGHHS1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Blue\"]', 'Bailey Hobo Hookah', 'Bailey Hobo Hookah', 'Bailey Hobo Hookah', '2025-08-13 06:48:13', '2025-08-13 06:48:54');
INSERT INTO `product` (`id`, `category`, `subcategory`, `title`, `slug`, `reg_price`, `sale_price`, `sku`, `unit_type`, `featured`, `inventory`, `popular`, `deals`, `deals_date`, `variance_data`, `image`, `description`, `short_description`, `additional_info`, `is_show`, `size`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(141, 4, 21, 'Mya Bijou Hookah', 'mya-bijou-hookah', NULL, NULL, 'TGHMY1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><strong><span class=\"cf0\">Scope of Delivery</span></strong></p>\r\n<p><span class=\"cf0\">traditional ceramic bowl</span></p>\r\n<p><span class=\"cf0\">glass base</span></p>\r\n<p><span class=\"cf0\">metal coal plate</span></p>\r\n<p><span class=\"cf0\">down stem</span></p>\r\n<p><span class=\"cf0\">upper stem</span></p>\r\n<p><span class=\"cf0\">leather coated pipe with wooden handle</span></p>\r\n<p><span class=\"cf0\">MYA tong</span></p>\r\n<p><span class=\"cf0\">Essential grommets (chillum rubber, base rubber &amp; pipe rubber)</span></p>\r\n<p>&nbsp;</p>\r\n<p><strong><span class=\"cf0\">Material</span></strong></p>\r\n<p><span class=\"cf0\">Stem : metal</span></p>\r\n<p><span class=\"cf0\">Base : glass</span></p>\r\n<p><span class=\"cf0\">Bowl : ceramic mixed</span></p>\r\n<p><span class=\"cf0\">Pipe : leather coated</span></p>\r\n<p><span class=\"cf0\">Handle : wooden</span></p>\r\n<p><span class=\"cf0\">Tong : Aluminum (Silver)</span></p>\r\n<p><span class=\"cf0\">Grommets : silicone rubbers</span></p>\r\n<p><span class=\"cf0\">Specifications</span></p>\r\n<p><span class=\"cf0\">100% Original hookah by MYA </span><span class=\"cf0\">Saray</span></p>\r\n<p><span class=\"cf0\">One of the best selling hookahs worldwide after MYA Petite</span></p>\r\n<p><span class=\"cf0\">Small and compact kind of hookah in collection</span></p>\r\n<p><span class=\"cf0\">Amazing quality upper stem</span></p>\r\n<p><span class=\"cf0\">Designer fancy glass base</span></p>\r\n<p><span class=\"cf0\">Comfortable and easy fitting with grommets</span></p>\r\n<p><span class=\"cf0\">Side nob for back smoke exhalation coated as same as base color</span></p>\r\n<p><span class=\"cf0\">User friendly shisha because it is easy to carry outdoor as well</span></p>\r\n<p><span class=\"cf0\">Latest designer hookah in our inventory</span></p>\r\n<p><span class=\"cf0\">Get hassle free experience in outdoor sessions as well</span></p>\r\n<p><span class=\"cf0\">Convenient for open party sessions</span></p>\r\n<p><span class=\"cf0\">Traditional ceramic bowl</span></p>\r\n<p><span class=\"cf0\">Dense smoke assured</span></p>\r\n<p><span class=\"cf0\">Provides good flavor taste supply</span></p>\r\n<p><span class=\"cf0\">Leather coated pipe with wooden handles</span></p>', NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Brown\", \"Green\", \"Blue\"]', 'Mya Bijou Hookah', 'Mya Bijou Hookah', 'Mya Bijou Hookah', '2025-08-13 06:53:05', '2025-08-13 06:54:32'),
(142, 4, 21, 'Mya Chiko Hookah', 'mya-chiko-hookah', NULL, NULL, 'TGHMY1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><strong><span class=\"cf0\">Key features:</span></strong></p>\r\n<p><span class=\"cf0\">100% Original</span></p>\r\n<p><span class=\"cf0\">Latest model by MYA</span></p>\r\n<p><span class=\"cf0\">Fully Acrylic stem</span></p>\r\n<p><span class=\"cf0\">Pentagon style wide glass base</span></p>\r\n<p><span class=\"cf0\">Fancy Design</span></p>\r\n<p><span class=\"cf0\">Leather coated hose</span></p>\r\n<p><span class=\"cf0\">Ceramic bowl</span></p>\r\n<p><span class=\"cf0\">Easy to use and carry</span></p>\r\n<p>&nbsp;</p>\r\n<p><strong><span class=\"cf0\">Why to get it?</span></strong></p>\r\n<p><span class=\"cf0\">Model: Latest model by MYA with the name of Chico hookah. 100% original MYA product.</span></p>\r\n<p><span class=\"cf0\">Design: MYA Chico hookah comes with the latest design.</span></p>\r\n<p><span class=\"cf0\">Base: The base of MYA Chico hookah is specially designed in pentagon style.</span></p>\r\n<p><span class=\"cf0\">Stem: One of the unique features of this amazing model is its unique acrylic stem.</span></p>\r\n<p><span class=\"cf0\">Bowl: Traditional ceramic bowl is available with Chico hookah.</span></p>\r\n<p><span class=\"cf0\">Hose: Decent length leather coated hose is available with it.</span></p>', NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Green\"]', 'Mya Chiko Hookah', 'Mya Chiko Hookah', 'Mya Chiko Hookah', '2025-08-13 06:56:33', '2025-08-13 06:57:00'),
(143, 4, 21, 'Mya Gelato Hookah', 'mya-gelato-hookah', NULL, NULL, 'TGHMY1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><strong><span class=\"cf0\">Scope of Delivery</span></strong></p>\r\n<p><span class=\"cf0\">traditional ceramic bowl</span></p>\r\n<p><span class=\"cf0\">glass base</span></p>\r\n<p><span class=\"cf0\">metal coal plate</span></p>\r\n<p><span class=\"cf0\">down stem</span></p>\r\n<p><span class=\"cf0\">upper stem</span></p>\r\n<p><span class=\"cf0\">leather coated pipe with wooden handle</span></p>\r\n<p><span class=\"cf0\">MYA tong</span></p>\r\n<p><span class=\"cf0\">essential grommets (base rubber &amp; pipe rubber)\"</span></p>\r\n<p>&nbsp;</p>\r\n<p><strong><span class=\"cf0\">Material</span></strong></p>\r\n<p><span class=\"cf0\">Stem : metal</span></p>\r\n<p><span class=\"cf0\">Base : glass</span></p>\r\n<p><span class=\"cf0\">Bowl : ceramic mixed</span></p>\r\n<p><span class=\"cf0\">Pipe : leather</span></p>\r\n<p><span class=\"cf0\">Handle : metal</span></p>\r\n<p><span class=\"cf0\">Tong : Aluminum (Silver)</span></p>\r\n<p><span class=\"cf0\">Grommets : silicone rubbers</span></p>\r\n<p><span class=\"cf0\">Specifications</span></p>\r\n<p><span class=\"cf0\">100% Original hookah by MYA</span></p>\r\n<p><span class=\"cf0\">Strong aluminum upper stem</span></p>\r\n<p><span class=\"cf0\">Good looking glass base</span></p>\r\n<p><span class=\"cf0\">Comfortable fitting with grommets</span></p>\r\n<p><span class=\"cf0\">Side nob for back smoke exhalation</span></p>\r\n<p><span class=\"cf0\">User friendly shisha because it is easy to carry outside as well</span></p>\r\n<p><span class=\"cf0\">Super smoke offering</span></p>\r\n<p><span class=\"cf0\">Get hassle free experience in outdoor sessions as well</span></p>\r\n<p><span class=\"cf0\">Convenient for open party sessions</span></p>\r\n<p><span class=\"cf0\">Traditional ceramic bowl</span></p>\r\n<p><span class=\"cf0\">Dense smoke assured</span></p>\r\n<p><span class=\"cf0\">Provides good flavor taste supply</span></p>\r\n<p><span class=\"cf0\">Leather coated pipe with wooden handles</span></p>', NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Light Blue\"]', 'Mya Gelato Hookah', 'Mya Gelato Hookah', 'Mya Gelato Hookah', '2025-08-13 06:58:29', '2025-08-13 06:58:58'),
(144, 4, 21, 'Mya Heera Hookah', 'mya-heera-hookah', NULL, NULL, 'TGHMY1004', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><strong><span class=\"cf0\">Scope of Delivery</span></strong></p>\r\n<p><span class=\"cf0\">traditional ceramic bowl</span></p>\r\n<p><span class=\"cf0\">glass base</span></p>\r\n<p><span class=\"cf0\">metal coal plate</span></p>\r\n<p><span class=\"cf0\">down stem</span></p>\r\n<p><span class=\"cf0\">upper stem</span></p>\r\n<p><span class=\"cf0\">leather coated pipe with wooden handle</span></p>\r\n<p><span class=\"cf0\">MYA tong</span></p>\r\n<p><span class=\"cf0\">essential grommets (chillum rubber, base rubber &amp; pipe rubber)</span></p>\r\n<p>&nbsp;</p>\r\n<p><strong><span class=\"cf0\">Material</span></strong></p>\r\n<p><span class=\"cf0\">Stem : metal</span></p>\r\n<p><span class=\"cf0\">Base : glass</span></p>\r\n<p><span class=\"cf0\">Bowl : ceramic</span></p>\r\n<p><span class=\"cf0\">Pipe : leather coated</span></p>\r\n<p><span class=\"cf0\">Handle : wooden</span></p>\r\n<p><span class=\"cf0\">Tong : Aluminum (Silver)</span></p>\r\n<p><span class=\"cf0\">Grommets : silicone rubbers</span></p>\r\n<p><span class=\"cf0\">Specifications</span></p>\r\n<p><span class=\"cf0\">100% Original hookah by MYA </span><span class=\"cf0\">Saray</span></p>\r\n<p><span class=\"cf0\">Small but sweet hookah in collection</span></p>\r\n<p><span class=\"cf0\">Fine quality upper stem</span></p>\r\n<p><span class=\"cf0\">Designer glass base</span></p>\r\n<p><span class=\"cf0\">Comfortable and easy fitting with grommets</span></p>\r\n<p><span class=\"cf0\">Side nob for back smoke exhalation coated as well</span></p>\r\n<p><span class=\"cf0\">User friendly shisha because it is easy to carry outdoor as well</span></p>\r\n<p><span class=\"cf0\">Latest designer hookah in our inventory</span></p>\r\n<p><span class=\"cf0\">Get hassle free experience in outdoor sessions as well</span></p>\r\n<p><span class=\"cf0\">Convenient for open party sessions</span></p>\r\n<p><span class=\"cf0\">Traditional ceramic bowl</span></p>\r\n<p><span class=\"cf0\">Dense smoke assured</span></p>\r\n<p><span class=\"cf0\">Provides good flavor taste supply</span></p>\r\n<p><span class=\"cf0\">Leather coated pipe with wooden handles</span></p>', NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Black\"]', 'Mya Heera Hookah', 'Mya Heera Hookah', 'Mya Heera Hookah', '2025-08-13 07:01:23', '2025-08-13 07:01:53'),
(145, 4, 21, 'Mya Hyla Hookah', 'mya-hyla-hookah', NULL, NULL, 'TGHMY1005', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><strong><span class=\"cf0\">Scope of Delivery</span></strong></p>\r\n<p><span class=\"cf0\">traditional ceramic bowl</span></p>\r\n<p><span class=\"cf0\">glass base</span></p>\r\n<p><span class=\"cf0\">metal coal plate</span></p>\r\n<p><span class=\"cf0\">down stem</span></p>\r\n<p><span class=\"cf0\">upper stem</span></p>\r\n<p><span class=\"cf0\">leather coated pipe with wooden handle</span></p>\r\n<p><span class=\"cf0\">MYA tong</span></p>\r\n<p><span class=\"cf0\">essential grommets (chillum rubber, base rubber &amp; pipe rubber)</span></p>\r\n<p>&nbsp;</p>\r\n<p><strong><span class=\"cf0\">Material</span></strong></p>\r\n<p><span class=\"cf0\">Stem : good quality PVC material</span></p>\r\n<p><span class=\"cf0\">Base : glass</span></p>\r\n<p><span class=\"cf0\">Bowl : ceramic mixed</span></p>\r\n<p><span class=\"cf0\">Pipe : leather coated</span></p>\r\n<p><span class=\"cf0\">Handle : wooden</span></p>\r\n<p><span class=\"cf0\">Tong : Aluminum (Silver)</span></p>\r\n<p><span class=\"cf0\">Grommets : silicone rubbers</span></p>\r\n<p><span class=\"cf0\">Specifications</span></p>\r\n<p><span class=\"cf0\">New hookah launched by MYA in India with 10.5+ inches height</span></p>\r\n<p><span class=\"cf0\">Small and compact kind of hookah in collection</span></p>\r\n<p><span class=\"cf0\">Totally transparent base with good quality PVC material upper stem</span></p>\r\n<p><span class=\"cf0\">X function hookah (back smoke exhales from below plate and top of the stem)</span></p>\r\n<p><span class=\"cf0\">Comfortable and easy fitting with grommets</span></p>\r\n<p><span class=\"cf0\">User friendly shisha because it is easy to carry outdoor as well</span></p>\r\n<p><span class=\"cf0\">Latest designer hookah in our inventory</span></p>\r\n<p><span class=\"cf0\">Get hassle free experience in outdoor sessions as well</span></p>\r\n<p><span class=\"cf0\">Convenient for open party sessions</span></p>\r\n<p><span class=\"cf0\">Traditional ceramic bowl</span></p>\r\n<p><span class=\"cf0\">Dense smoke assured</span></p>\r\n<p><span class=\"cf0\">Provides good flavor taste supply</span></p>\r\n<p><span class=\"cf0\">Leather coated pipe with wooden handles</span></p>', NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Brown\"]', 'Mya Hyla Hookah', 'Mya Hyla Hookah', 'Mya Hyla Hookah', '2025-08-13 07:14:55', '2025-08-13 07:15:34'),
(146, 4, 21, 'Mya Minnion Hookah', 'mya-minnion-hookah', NULL, NULL, 'TGHMY1006', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><strong><span class=\"cf0\">Scope of Delivery</span></strong></p>\r\n<p><span class=\"cf0\">traditional ceramic bowl</span></p>\r\n<p><span class=\"cf0\">glass base</span></p>\r\n<p><span class=\"cf0\">metal coal plate</span></p>\r\n<p><span class=\"cf0\">down stem</span></p>\r\n<p><span class=\"cf0\">upper stem</span></p>\r\n<p><span class=\"cf0\">leather coated pipe with wooden handle</span></p>\r\n<p><span class=\"cf0\">MYA tong</span></p>\r\n<p><span class=\"cf0\">essential grommets (chillum rubber, base rubber &amp; pipe rubber)</span></p>\r\n<p>&nbsp;</p>\r\n<p><strong><span class=\"cf0\">Material</span></strong></p>\r\n<p><span class=\"cf0\">Stem : metal</span></p>\r\n<p><span class=\"cf0\">Base : glass</span></p>\r\n<p><span class=\"cf0\">Bowl : ceramic mixed</span></p>\r\n<p><span class=\"cf0\">Pipe : leather coated</span></p>\r\n<p><span class=\"cf0\">Handle : wooden</span></p>\r\n<p><span class=\"cf0\">Tong : Aluminum (Silver)</span></p>\r\n<p><span class=\"cf0\">Grommets : silicone rubbers</span></p>\r\n<p><span class=\"cf0\">Specifications</span></p>\r\n<p><span class=\"cf0\">100% Original hookah by MYA </span><span class=\"cf0\">Saray</span></p>\r\n<p><span class=\"cf0\">MYA Minion most cutest hookah</span></p>\r\n<p><span class=\"cf0\">Small in size which makes it premium</span></p>\r\n<p><span class=\"cf0\">Fine quality upper portion</span></p>\r\n<p><span class=\"cf0\">Different designer </span><span class=\"cf0\">matka</span><span class=\"cf0\"> glass base</span></p>\r\n<p><span class=\"cf0\">Comfortable and easy fitting with grommets</span></p>\r\n<p><span class=\"cf0\">Side nob for back smoke exhalation coated as same as base color</span></p>\r\n<p><span class=\"cf0\">User friendly shisha because it is easy to carry outdoor as well</span></p>\r\n<p><span class=\"cf0\">Latest designer hookah in our inventory</span></p>\r\n<p><span class=\"cf0\">Get hassle free experience in outdoor sessions as well</span></p>\r\n<p><span class=\"cf0\">Convenient for open party sessions</span></p>\r\n<p><span class=\"cf0\">Traditional ceramic bowl</span></p>\r\n<p><span class=\"cf0\">Dense smoke assured</span></p>\r\n<p><span class=\"cf0\">Provides good flavor taste supply</span></p>\r\n<p><span class=\"cf0\">Leather coated pipe with wooden handles</span></p>', NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Light Brown\", \"Light Green\"]', 'Mya Minnion Hookah', 'Mya Minnion Hookah', 'Mya Minnion Hookah', '2025-08-13 07:18:07', '2025-08-13 07:18:58'),
(147, 4, 21, 'Mya Petite Hookah', 'mya-petite-hookah', NULL, NULL, 'TGHMY1007', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Portability: You can easily carry MYA Petite Hookah anywhere and enjoy your smoking session anytime.</span></p>\r\n<p><span class=\"cf0\">Chillum: Mya Petite comes along with high quality ceramic chillum which allows good smoke flow and enhances your smoking session.</span></p>\r\n<p><span class=\"cf0\">Pipe/ Hose: You can get leather coated wooden tip hookah pipe with this hookah which provides you long-lasting flavorful dense smoke. You can easily wash or clean this pipe.</span></p>\r\n<p><span class=\"cf0\">Dimensions:</span></p>\r\n<p><span class=\"cf0\">Hookah height: 8inches</span></p>\r\n<p><span class=\"cf0\">Brand: MYA</span></p>\r\n<p><span class=\"cf0\">Easy to wash and clean</span></p>\r\n<p><span class=\"cf0\">Easy to handle</span></p>\r\n<p><span class=\"cf0\">No residue smell after wash</span></p>\r\n<p><span class=\"cf0\">Easy to assemble and disassemble</span></p>\r\n<p><span class=\"cf0\">Produce smooth and dense smoke</span></p>\r\n<p><span class=\"cf0\">Smoke discharge pressure nob</span></p>\r\n<p><span class=\"cf0\">Premium stainless steel down stem</span></p>\r\n<p><span class=\"cf0\">Components: Glass Base, Coal plate, Leather coated wooden tip hookah pipe, Mya ceramic chillum/ bowl, Tong</span></p>', NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Brown\", \"Blue\"]', 'Mya Petite Hookah', 'Mya Petite Hookah', 'Mya Petite Hookah', '2025-08-13 07:20:26', '2025-08-13 07:21:16'),
(148, 4, 21, 'Mya QT Hookah', 'mya-qt-hookah', NULL, NULL, 'TGHMY1008', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Brand: MYA</span></p>\r\n<p><span class=\"cf0\">Available in a golden edition</span></p>\r\n<p><span class=\"cf0\">Easy to wash and clean</span></p>\r\n<p><span class=\"cf0\">No residue smell after wash</span></p>\r\n<p><span class=\"cf0\">Produce heavy and dense smoke</span></p>\r\n<p><span class=\"cf0\">Smoke discharge pressure nob</span></p>\r\n<p><span class=\"cf0\">Strong designer glass base</span></p>\r\n<p><span class=\"cf0\">Components: Glass base, Coal plate, Stainless steel stem, Leather coated wooden tip hookah pipe, Mya ceramic chillum/ bowl, Tong\"</span></p>\r\n<p><span class=\"cf0\">Glass Base: MYA Heavy QT has a very attractive design and a strong glass base.</span></p>\r\n<p><span class=\"cf0\">Chillum: Mya Heavy QT is come along with premium quality ceramic chillum which allows good smoke flow and enhances your smoking session.</span></p>\r\n<p><span class=\"cf0\">Pipe/ Hose: You can get leather coated wooden tip hookah pipe with this hookah which provides you long-lasting flavorful dense smoke. You can easily wash or clean this pipe.</span></p>\r\n<p><span class=\"cf0\">Dimensions: Hookah height: 14inches Pipe: 1m</span></p>', NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Brown\", \"Blue\"]', 'Mya QT Hookah', 'Mya QT Hookah', 'Mya QT Hookah', '2025-08-13 07:23:51', '2025-08-13 07:24:36'),
(149, 4, 22, 'Golden Tower Hookah', 'golden-tower-hookah', NULL, NULL, 'TGHTG1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Gold\"]', 'Golden Tower Hookah', 'Golden Tower Hookah', 'Golden Tower Hookah', '2025-08-13 08:08:02', '2025-08-13 08:08:37'),
(150, 4, 22, 'Spikes Hookah', 'spikes-hookah', NULL, NULL, 'TGHTG1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Black\"]', 'Spikes Hookah', 'Spikes Hookah', 'Spikes Hookah', '2025-08-13 08:09:27', '2025-08-13 08:09:56'),
(151, 4, 22, 'Spring Baseball Hookah', 'spring-baseball-hookah', NULL, NULL, 'TGHTG1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Black\"]', 'Spring Baseball Hookah', 'Spring Baseball Hookah', 'Spring Baseball Hookah', '2025-08-13 08:10:35', '2025-08-13 08:11:03'),
(152, 4, 22, 'X Smoke Hookah', 'x-smoke-hookah', NULL, NULL, 'TGHTG1004', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Black\"]', 'X Smoke Hookah', 'X Smoke Hookah', 'X Smoke Hookah', '2025-08-13 08:11:39', '2025-08-13 08:12:06'),
(153, 4, 16, 'Deja Vu Rainbow Hookah', 'deja-vu-rainbow-hookah', NULL, NULL, 'TGHDV1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Multicolor 1\"]', 'Deja Vu Rainbow Hookah', 'Deja Vu Rainbow Hookah', 'Deja Vu Rainbow Hookah', '2025-08-13 08:14:54', '2025-08-13 08:15:27'),
(154, 4, 17, 'Crystal Hookah', 'crystal-hookah', NULL, NULL, 'TGHDS1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Black\"]', 'Crystal Hookah', 'Crystal Hookah', 'Crystal Hookah', '2025-08-13 08:26:09', '2025-08-13 08:26:45'),
(155, 4, 15, 'Glow Tower Marble Hookah', 'glow-tower-marble-hookah', NULL, NULL, 'TGHCY1001', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"White\"]', 'Glow Tower Marble Hookah', 'Glow Tower Marble Hookah', 'Glow Tower Marble Hookah', '2025-08-13 08:28:42', '2025-08-13 08:29:22'),
(156, 4, 15, 'Madrid Hookah', 'madrid-hookah', NULL, NULL, 'TGHCY1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Gold\"]', 'Madrid Hookah', 'Madrid Hookah', 'Madrid Hookah', '2025-08-13 08:30:57', '2025-08-13 08:31:29'),
(157, 4, 15, 'Bora Bora Hookah', 'bora-bora-hookah', NULL, NULL, 'TGHCY1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Multicolor 1\"]', 'Bora Bora Hookah', 'Bora Bora Hookah', 'Bora Bora Hookah', '2025-08-13 08:32:24', '2025-08-13 08:32:52'),
(158, 4, 15, 'Conquer Series (Britto) Hookah', 'conquer-series-britto-hookah', NULL, NULL, 'TGHCY1004', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Dark Shade\"]', 'Conquer Series (Britto) Hookah', 'Conquer Series (Britto) Hookah', 'Conquer Series (Britto) Hookah', '2025-08-13 08:33:47', '2025-08-13 08:34:23'),
(159, 4, 15, 'Conquer Series (Kaka) Hookah', 'conquer-series-kaka-hookah', NULL, NULL, 'TGHCY1005', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Usage Instructions</span></p>\r\n<p><span class=\"cf0\">Step Instructions</span></p>\r\n<p><span class=\"cf0\">Step 1: Assembly Secure the stem and base using the locking system. Attach silicone pipe and chillum.</span></p>\r\n<p><span class=\"cf0\">Step 2: Water Level Fill the base with water so the water level is 2 cm above the diffuser for optimal smoke filtration.</span></p>\r\n<p><span class=\"cf0\">Step 3: Packing the Chillum Pack the silicone chillum evenly, ensuring proper vacuum with no air gaps. The flavor should be packed firmly, leaving no space between the flavor and the edges of the chillum. Make sure the flavor does not touch the HMD to avoid a burnt smell.</span></p>\r\n<p><span class=\"cf0\">Step 4: Heat Management Place coals in the HMD for optimal temperature control.</span></p>\r\n<p><span class=\"cf0\">Step 5: Smoking Enjoy smoother smoke with the inbuilt diffuser. Use the X-function to enhance visual appeal.</span></p>\r\n<p><span class=\"cf0\">Step 6: Cleaning Disassemble and rinse all parts. Use warm water and soap for best results.</span></p>', 1, '[\"Gold\"]', 'Cocoyaya Conquer Series (Kaka) Hookah', 'Cocoyaya Conquer Series (Kaka) Hookah', 'Cocoyaya Conquer Series (Kaka) Hookah', '2025-08-13 08:35:06', '2025-08-13 08:35:35'),
(160, 9, 24, 'Cocoyaya Hot Plate 500 W', 'cocoyaya-hot-plate-500-w', NULL, NULL, 'TGHAC1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p class=\"pf0\"><span class=\"cf0\">Power: 500w</span></p>\r\n<p class=\"pf0\"><span class=\"cf0\">Easy to handle</span></p>\r\n<p class=\"pf0\"><span class=\"cf0\">Easily portable</span></p>\r\n<p class=\"pf0\"><span class=\"cf0\">Easy to clean</span></p>\r\n<p class=\"pf0\"><span class=\"cf0\">Various Heat Operations</span></p>\r\n<p class=\"pf0\"><span class=\"cf0\">One Auto-thermostat</span></p>\r\n<p class=\"pf0\"><span class=\"cf0\">Non-Stick Coating</span></p>\r\n<p class=\"pf0\"><span class=\"cf0\">100mm Cooking Plate</span></p>\r\n<p class=\"pf0\"><span class=\"cf0\">Ignite charcoal instantly</span></p>\r\n<p class=\"pf0\"><span class=\"cf0\">Holds 5-8 charcoal (according to charcoal size)</span></p>', '<p><!--StartFragment --></p>\r\n<p class=\"pf0\"><span class=\"cf0\">Now, you don&rsquo;t have to wait long to ignite your hookah charcoal because this hot plate can instantly ignite your charcoal. You can ignite multiple charcoals at one time with this product.</span></p>', '<p><!--StartFragment --></p>\r\n<p class=\"pf0\"><span class=\"cf0\">Coil: Hot plate has a high-grade non-stick coil which is powder-coated so, it can transfer the electric energy to heat energy easily and take less ignition time.</span></p>\r\n<p class=\"pf0\"><span class=\"cf0\">Qualities: This plate can hold and ignite 5-8 hookah charcoal at the same time. Depends on the charcoal size.</span></p>\r\n<p class=\"pf0\"><span class=\"cf0\">Ignition: The coil of this hot plate is designed to ignite your coal in approximately 5 minutes so you don&rsquo;t have to wait long for your coal.</span></p>', 1, '[\"Default\"]', 'Cocoyaya Hot Plate 500 W', 'Cocoyaya Hot Plate 500 W', 'Cocoyaya Hot Plate 500 W', '2025-08-13 08:38:41', '2025-08-13 08:39:15'),
(161, 9, 24, 'Cocoyaya Mouth Filters Set of 5', 'cocoyaya-mouth-filters-set-of-5', NULL, NULL, 'TGHAC1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Hygienic smoking in groups</span></p>\r\n<p><span class=\"cf0\">Easy to use</span></p>\r\n<p><span class=\"cf0\">Easily compatible</span></p>\r\n<p><span class=\"cf0\">Sterile till using</span></p>\r\n<p><span class=\"cf0\">High quality food grade plastic</span></p>\r\n<p><span class=\"cf0\">Pack of 5 nozzles</span></p>', NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Hygiene: Long Plastic Nozzles make your group hookah smoking hygienic whenever you share a pipe/hose with another person and reduce the chance of infection transmission.</span></p>\r\n<p><span class=\"cf0\">Quality: These hookah nozzles are made with high food grade plastic which is packed in the packet to keep it sterile till using.</span></p>\r\n<p><span class=\"cf0\">Compatibility: Long Plastic Nozzles has a standard size so, these nozzles are easily compatible with any pipe/hose.</span></p>', 1, '[\"Default\"]', 'Cocoyaya Mouth Filters Set of 5', 'Cocoyaya Mouth Filters Set of 5', 'Cocoyaya Mouth Filters Set of 5', '2025-08-13 08:42:39', '2025-08-13 08:43:10'),
(162, 9, 24, 'Cocoyaya Mouth Filters Set of 50', 'cocoyaya-mouth-filters-set-of-50', NULL, NULL, 'TGHAC1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Hygienic smoking in groups</span></p>\r\n<p><span class=\"cf0\">Easy to use</span></p>\r\n<p><span class=\"cf0\">Easily compatible</span></p>\r\n<p><span class=\"cf0\">Sterile till using</span></p>\r\n<p><span class=\"cf0\">High quality food grade plastic</span></p>\r\n<p><span class=\"cf0\">Pack of 50 nozzles</span></p>', NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Hygiene: Long Plastic Nozzles make your group hookah smoking hygienic whenever you share a pipe/hose with another person and reduce the chance of infection transmission.</span></p>\r\n<p><span class=\"cf0\">Quality: These hookah nozzles are made with high food grade plastic which is packed in the packet to keep it sterile till using.</span></p>\r\n<p><span class=\"cf0\">Compatibility: Long Plastic Nozzles has a standard size so, these nozzles are easily compatible with any pipe/hose.</span></p>', 1, '[\"Default\"]', 'Cocoyaya Mouth Filters Set of 50', 'Cocoyaya Mouth Filters Set of 50', 'Cocoyaya Mouth Filters Set of 50', '2025-08-13 08:42:41', '2025-08-13 08:43:33'),
(163, 9, 24, 'Kloud', 'kloud', NULL, NULL, 'TGHAC1004', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Eliminate the need for foil</span></p>\r\n<p><span class=\"cf0\">Need very little charcoal rotation</span></p>\r\n<p><span class=\"cf0\">Help to produce smooth flavorful smoke</span></p>\r\n<p><span class=\"cf0\">Reduce ash and chemical gases that pass from charcoal</span></p>\r\n<p><span class=\"cf0\">Long-lasting shisha session</span></p>\r\n<p><span class=\"cf0\">Hold approx. 3 charcoal</span></p>\r\n<p><span class=\"cf0\">Premium quality aluminum product</span></p>', NULL, NULL, 1, '[\"Default\"]', 'Kloud', 'Kloud', 'Kloud', '2025-08-13 08:44:36', '2025-08-13 08:45:01'),
(164, 9, 24, 'Alsuhana Magic Coal', 'alsuhana-magic-coal', NULL, NULL, 'TGHAC1005', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Round shape magic coal</span></p>\r\n<p><span class=\"cf0\">Quick light (even with a matchstick)</span></p>\r\n<p><span class=\"cf0\">Generate dense smoke</span></p>\r\n<p><span class=\"cf0\">Ignites quickly</span></p>\r\n<p><span class=\"cf0\">Deposit low ashes</span></p>\r\n<p><span class=\"cf0\">Finest experience of burning</span></p>\r\n<p><span class=\"cf0\">Lasts till fully burned</span></p>\r\n<p><span class=\"cf0\">Each piece of 35mm</span></p>\r\n<p><span class=\"cf0\">1 Roll = 10 discs</span></p>', '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Alsuhana</span><span class=\"cf0\"> is the best-selling quick light polo magic charcoal in India. It comes in a yellow packet. </span><span class=\"cf0\">This premium charcoal is made with natural ingredients which are odorless and harmless.</span></p>', '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Quality: </span><span class=\"cf0\">Alsuhana</span><span class=\"cf0\"> magic coal is prepared from natural ingredients which contain 0% chemical. The size of each disc is 35mm. It lasts till fully burned.</span></p>\r\n<p><span class=\"cf0\">Ignite Quickly: </span><span class=\"cf0\">Alsuhana</span><span class=\"cf0\"> polo magic coal ignite quickly. You can burn it event with a matchstick or a lighter also.</span></p>\r\n<p><span class=\"cf0\">Easy to carry: You can easily carry this box anywhere to enjoy outdoor hookah sessions. Best for tour, trips and picnics purposes.</span></p>', 1, '[\"Black\"]', 'Alsuhana Magic Coal', 'Alsuhana Magic Coal', 'Alsuhana Magic Coal', '2025-08-13 08:47:15', '2025-08-13 08:47:44'),
(165, 9, 24, 'Cocoyaya Coconut Charcoal 250 g', 'cocoyaya-coconut-charcoal-250-g', NULL, NULL, 'TGHAC1006', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">One of the most renowned brand for Coconut Charcoals </span></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"cf0\">- It\'s a 250g pack </span></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"cf0\">- Consists 18 pcs of coconut charcoal in the box</span></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"cf0\">- Size of each piece : 2.5 cm x 2.5 cm x 2.5 cm</span></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"cf0\">- Indonesian Quality Coconut Charcoals</span></p>', NULL, NULL, 1, '[\"Black\"]', 'Cocoyaya Coconut Charcoal 250 g', 'Cocoyaya Coconut Charcoal 250 g', 'Cocoyaya Coconut Charcoal 250 g', '2025-08-13 08:48:57', '2025-08-13 08:49:23');
INSERT INTO `product` (`id`, `category`, `subcategory`, `title`, `slug`, `reg_price`, `sale_price`, `sku`, `unit_type`, `featured`, `inventory`, `popular`, `deals`, `deals_date`, `variance_data`, `image`, `description`, `short_description`, `additional_info`, `is_show`, `size`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(166, 9, 24, 'Cocoyaya Hookah Foil', 'cocoyaya-hookah-foil', NULL, NULL, 'TGHAC1007', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '<p><!--StartFragment --></p>\r\n<p><span class=\"cf0\">Wattage:500 W</span></p>\r\n<p><span class=\"cf0\">24 Micron thick foil</span></p>\r\n<p><span class=\"cf0\">Easy to use</span></p>\r\n<p><span class=\"cf0\">Precut foil pieces</span></p>\r\n<p><span class=\"cf0\">Compatible with any hookah chillum</span></p>\r\n<p><span class=\"cf0\">Good heat distribution</span></p>\r\n<p><span class=\"cf0\">Save flavor from heat</span></p>\r\n<p><span class=\"cf0\">Absorbs huge amount of heat</span></p>', NULL, NULL, 1, '[\"Default\"]', 'Cocoyaya Hookah Foil', 'Cocoyaya Hookah Foil', 'Cocoyaya Hookah Foil', '2025-08-13 08:50:53', '2025-08-13 08:51:19'),
(167, 10, 25, 'Glass Chillum', 'glass-chillum', NULL, NULL, 'TGHCL1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Green\", \"Blue\"]', 'Glass Chillum', 'Glass Chillum', 'Glass Chillum', '2025-08-13 09:12:06', '2025-08-13 09:13:03'),
(168, 10, 25, 'Mya Clay Chillum', 'mya-clay-chillum', NULL, NULL, 'TGHCL1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Green\", \"Black\", \"Red\", \"Blue\"]', 'Mya Clay Chillum', 'Mya Clay Chillum', 'Mya Clay Chillum', '2025-08-13 09:13:50', '2025-08-13 09:20:40'),
(169, 10, 25, 'Pikachu Ceramic Chillum', 'pikachu-ceramic-chillum', NULL, NULL, 'TGHCL1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Yellow\"]', 'Pikachu Ceramic Chillum', 'Pikachu Ceramic Chillum', 'Pikachu Ceramic Chillum', '2025-08-13 09:21:33', '2025-08-13 09:22:04'),
(170, 10, 25, 'Ceramic Chillum', 'ceramic-chillum', NULL, NULL, 'TGHCL1004', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Yellow\", \"Brown\", \"Blue\"]', 'Ceramic Chillum', 'Ceramic Chillum', 'Ceramic Chillum', '2025-08-13 09:23:27', '2025-08-13 09:25:13'),
(171, 10, 25, 'Clay Chillum', 'clay-chillum', NULL, NULL, 'TGHCL1005', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Light Brown\"]', 'Clay Chillum', 'Clay Chillum', 'Clay Chillum', '2025-08-13 09:27:10', '2025-08-13 09:27:55'),
(172, 12, 37, 'Wooden Smoking Pipe 10 cm', 'wooden-smoking-pipe-10-cm', NULL, NULL, 'TGSAW1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Wooden Smoking Pipe 10 cm', 'Wooden Smoking Pipe 10 cm', 'Wooden Smoking Pipe 10 cm', '2025-08-13 09:30:04', '2025-08-13 09:32:19'),
(173, 12, 37, 'Wooden Smoking Pipe 16 cm', 'wooden-smoking-pipe-16-cm', NULL, NULL, 'TGSAW1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Wooden Smoking Pipe 16 cm', 'Wooden Smoking Pipe 16 cm', 'Wooden Smoking Pipe 16 cm', '2025-08-13 09:31:29', '2025-08-13 09:33:12'),
(174, 12, 37, 'Wooden Smoking Pipe 13 cm', 'wooden-smoking-pipe-13-cm', NULL, NULL, 'TGSAW1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Wooden Smoking Pipe 13 cm', 'Wooden Smoking Pipe 13 cm', 'Wooden Smoking Pipe 13 cm', '2025-08-13 09:31:34', '2025-08-13 09:32:45'),
(175, 12, 32, 'Crusher 1 50mm', 'crusher-1-50mm', NULL, NULL, 'TGSAC1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 1 50mm', 'Crusher 1 50mm', 'Crusher 1 50mm', '2025-08-14 01:24:34', '2025-08-14 01:25:07'),
(176, 12, 32, 'Crusher 2 50mm', 'crusher-2-50mm', NULL, NULL, 'TGSAC1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 2 50mm', 'Crusher 2 50mm', 'Crusher 2 50mm', '2025-08-14 01:25:30', '2025-08-14 01:26:03'),
(177, 12, 32, 'Crusher 3 40mm', 'crusher-3-40mm', NULL, NULL, 'TGSAC1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 3 40mm', 'Crusher 3 40mm', 'Crusher 3 40mm', '2025-08-14 01:26:50', '2025-08-14 01:27:17'),
(178, 12, 32, 'Crusher 3 50mm', 'crusher-3-50mm', NULL, NULL, 'TGSAC1004', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 3 50mm', 'Crusher 3 50mm', 'Crusher 3 50mm', '2025-08-14 01:27:38', '2025-08-14 01:28:00'),
(180, 12, 32, 'Crusher 4 50mm', 'crusher-4-50mm', NULL, NULL, 'TGSAC1005', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 4 50mm', 'Crusher 4 50mm', 'Crusher 4 50mm', '2025-08-14 01:32:33', '2025-08-14 01:32:59'),
(181, 12, 32, 'Crusher 5 50mm', 'crusher-5-50mm', NULL, NULL, 'TGSAC1006', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 5 50mm', 'Crusher 5 50mm', 'Crusher 5 50mm', '2025-08-14 01:33:29', '2025-08-14 01:33:52'),
(182, 12, 32, 'Crusher 6 50mm', 'crusher-6-50mm', NULL, NULL, 'TGSAC1007', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 6 50mm', 'Crusher 6 50mm', 'Crusher 6 50mm', '2025-08-14 01:34:11', '2025-08-14 01:34:32'),
(183, 12, 32, 'Crusher 7 40mm', 'crusher-7-40mm', NULL, NULL, 'TGSAC1008', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 7 40mm', 'Crusher 7 40mm', 'Crusher 7 40mm', '2025-08-14 01:34:55', '2025-08-14 01:35:59'),
(184, 12, 32, 'Crusher 7 50mm', 'crusher-7-50mm', NULL, NULL, 'TGSAC1009', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 7 50mm', 'Crusher 7 50mm', 'Crusher 7 50mm', '2025-08-14 01:36:18', '2025-08-14 01:36:54'),
(185, 12, 32, 'Crusher 8 50mm', 'crusher-8-50mm', NULL, NULL, 'TGSAC1010', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 8 50mm', 'Crusher 8 50mm', 'Crusher 8 50mm', '2025-08-14 01:37:19', '2025-08-14 01:37:47'),
(186, 12, 32, 'Crusher 9 50mm', 'crusher-9-50mm', NULL, NULL, 'TGSAC1011', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 9 50mm', 'Crusher 9 50mm', 'Crusher 9 50mm', '2025-08-14 01:39:24', '2025-08-14 01:39:49'),
(187, 12, 32, 'Crusher 10 50mm', 'crusher-10-50mm', NULL, NULL, 'TGSAC1012', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 10 50mm', 'Crusher 10 50mm', 'Crusher 10 50mm', '2025-08-14 01:40:10', '2025-08-14 01:40:31'),
(188, 12, 32, 'Crusher 11 40mm', 'crusher-11-40mm', NULL, NULL, 'TGSAC1013', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 11 40mm', 'Crusher 11 40mm', 'Crusher 11 40mm', '2025-08-14 01:40:50', '2025-08-14 01:41:18'),
(189, 12, 32, 'Crusher 12 50mm', 'crusher-12-50mm', NULL, NULL, 'TGSAC1014', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 12 50mm', 'Crusher 12 50mm', 'Crusher 12 50mm', '2025-08-14 01:42:57', '2025-08-14 01:43:25'),
(190, 12, 32, 'Crusher 13 40mm', 'crusher-13-40mm', NULL, NULL, 'TGSAC1015', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 13 40mm', 'Crusher 13 40mm', 'Crusher 13 40mm', '2025-08-14 01:43:53', '2025-08-14 01:44:19'),
(191, 12, 32, 'Crusher 13 50mm', 'crusher-13-50mm', NULL, NULL, 'TGSAC1016', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 13 50mm', 'Crusher 13 50mm', 'Crusher 13 50mm', '2025-08-14 01:44:47', '2025-08-14 01:45:21'),
(192, 12, 32, 'Crusher 14 50mm', 'crusher-14-50mm', NULL, NULL, 'TGSAC1017', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 14 50mm', 'Crusher 14 50mm', 'Crusher 14 50mm', '2025-08-14 01:45:44', '2025-08-14 01:46:10'),
(193, 12, 32, 'Crusher 15 40mm', 'crusher-15-40mm', NULL, NULL, 'TGSAC1018', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 15 40mm', 'Crusher 15 40mm', 'Crusher 15 40mm', '2025-08-14 01:46:32', '2025-08-14 01:47:07'),
(194, 12, 32, 'Crusher 16 40mm', 'crusher-16-40mm', NULL, NULL, 'TGSAC1019', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 16 40mm', 'Crusher 16 40mm', 'Crusher 16 40mm', '2025-08-14 01:47:33', '2025-08-14 01:48:09'),
(195, 12, 32, 'Crusher 16 50mm', 'crusher-16-50mm', NULL, NULL, 'TGSAC1020', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 16 50mm', 'Crusher 16 50mm', 'Crusher 16 50mm', '2025-08-14 01:48:37', '2025-08-14 01:49:16'),
(196, 12, 32, 'Crusher 17 50mm', 'crusher-17-50mm', NULL, NULL, 'TGSAC1021', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 17 50mm', 'Crusher 17 50mm', 'Crusher 17 50mm', '2025-08-14 01:51:06', '2025-08-14 01:53:01'),
(197, 12, 32, 'Crusher 18 40mm', 'crusher-18-40mm', NULL, NULL, 'TGSAC1022', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 18 40mm', 'Crusher 18 40mm', 'Crusher 18 40mm', '2025-08-14 01:53:29', '2025-08-14 01:53:53'),
(198, 12, 32, 'Crusher 19 50mm', 'crusher-19-50mm', NULL, NULL, 'TGSAC1023', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 19 50mm', 'Crusher 19 50mm', 'Crusher 19 50mm', '2025-08-14 01:54:23', '2025-08-14 01:54:50'),
(199, 12, 32, 'Crusher 20 50mm', 'crusher-20-50mm', NULL, NULL, 'TGSAC1024', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 20 50mm', 'Crusher 20 50mm', 'Crusher 20 50mm', '2025-08-14 01:55:08', '2025-08-14 01:55:33'),
(200, 12, 32, 'Crusher 21 40mm', 'crusher-21-40mm', NULL, NULL, 'TGSAC1025', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 21 40mm', 'Crusher 21 40mm', 'Crusher 21 40mm', '2025-08-14 01:55:56', '2025-08-14 01:56:51'),
(201, 12, 32, 'Crusher 22 40mm', 'crusher-22-40mm', NULL, NULL, 'TGSAC1026', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 22 40mm', 'Crusher 22 40mm', 'Crusher 22 40mm', '2025-08-14 01:57:29', '2025-08-14 01:57:56'),
(202, 12, 32, 'Crusher 23 40mm', 'crusher-23-40mm', NULL, NULL, 'TGSAC1027', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 23 40mm', 'Crusher 23 40mm', 'Crusher 23 40mm', '2025-08-14 01:58:24', '2025-08-14 01:58:48'),
(203, 12, 32, 'Crusher 23 50mm', 'crusher-23-50mm', NULL, NULL, 'TGSAC1028', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 23 50mm', 'Crusher 23 50mm', 'Crusher 23 50mm', '2025-08-14 01:59:06', '2025-08-14 01:59:27'),
(204, 12, 32, 'Crusher 24 40mm', 'crusher-24-40mm', NULL, NULL, 'TGSAC1029', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 24 40mm', 'Crusher 24 40mm', 'Crusher 24 40mm', '2025-08-14 01:59:43', '2025-08-14 02:00:05'),
(205, 12, 32, 'Crusher 25 50mm', 'crusher-25-50mm', NULL, NULL, 'TGSAC1030', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Crusher 25 50mm', 'Crusher 25 50mm', 'Crusher 25 50mm', '2025-08-14 02:00:31', '2025-08-14 02:00:53'),
(206, 12, 33, 'Filter Screens', 'filter-screens', NULL, NULL, 'TGSAF1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Filter Screens', 'Filter Screens', 'Filter Screens', '2025-08-14 05:16:44', '2025-08-14 05:17:10'),
(208, 12, 35, 'Metal Shooter 11 cm', 'metal-shooter-11-cm', NULL, NULL, 'TGSAM1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Green\", \"Gold\", \"Black\", \"Red\", \"Blue\"]', 'Metal Shooter 11 cm', 'Metal Shooter 11 cm', 'Metal Shooter 11 cm', '2025-08-14 05:21:05', '2025-08-14 05:22:29'),
(209, 12, 36, 'Smoking Glass Pipe', 'smoking-glass-pipe', NULL, NULL, 'TGSAG1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Red & Blue Marble 2\", \"Red & Blue Marble\", \"Orange & Green\", \"Red & Blue\", \"Multicolor 2\", \"Multicolor 1\", \"Green\", \"Blue\"]', 'Smoking Glass Pipe', 'Smoking Glass Pipe', 'Smoking Glass Pipe', '2025-08-14 05:24:11', '2025-08-14 05:26:53'),
(211, 12, 30, 'Baba Chillum 11 cm', 'baba-chillum-11-cm', NULL, NULL, 'TGSAB1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Brown\", \"Black\"]', 'Baba Chillum 11 cm', 'Baba Chillum 11 cm', 'Baba Chillum 11 cm', '2025-08-14 05:29:28', '2025-08-14 05:30:28'),
(212, 12, 30, 'Baba Chillum 16 cm', 'baba-chillum-16-cm', NULL, NULL, 'TGSAB1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Brown\", \"Black\"]', 'Baba Chillum 16 cm', 'Baba Chillum 16 cm', 'Baba Chillum 16 cm', '2025-08-14 05:30:36', '2025-08-14 05:31:16'),
(213, 12, 31, 'Brush 10 cm', 'brush-10-cm', NULL, NULL, 'TGSAB1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Brush 10 cm', 'Brush 10 cm', 'Brush 10 cm', '2025-08-14 05:32:38', '2025-08-14 05:33:16'),
(214, 12, 31, 'Brush 22 cm', 'brush-22-cm', NULL, NULL, 'TGSAB1004', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Brush 22 cm', 'Brush 22 cm', 'Brush 22 cm', '2025-08-14 05:33:48', '2025-08-14 05:34:15'),
(215, 12, 34, 'Glass Shooter', 'glass-shooter', NULL, NULL, 'TGSAG1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\"]', 'Glass Shooter', 'Glass Shooter', 'Glass Shooter', '2025-08-14 07:41:32', '2025-08-14 07:42:37'),
(216, 12, 36, 'Glass Pipe', 'glass-pipe', NULL, NULL, 'TGSAP1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\"]', 'Glass Pipe', 'Glass Pipe', 'Glass Pipe', '2025-08-14 07:44:32', '2025-08-14 07:45:37'),
(217, 12, 34, 'Long Shooter', 'long-shooter', NULL, NULL, 'TGSAG1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\"]', 'Long Shooter', 'Long Shooter', 'Long Shooter', '2025-08-14 07:46:21', '2025-08-14 07:50:00'),
(218, 12, 34, 'Two Piece Glass Shooter', 'two-piece-glass-shooter', NULL, NULL, 'TGSAG1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\"]', 'Two Piece Glass Shooter', 'Two Piece Glass Shooter', 'Two Piece Glass Shooter', '2025-08-14 07:50:33', '2025-08-21 04:00:35'),
(219, 11, 29, 'Lighter 1', 'lighter-1', NULL, NULL, 'TGLTR1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Blue\"]', 'Lighter 1', 'Lighter 1', 'Lighter 1', '2025-08-14 07:54:13', '2025-08-14 07:54:41'),
(220, 11, 29, 'Lighter 2', 'lighter-2', NULL, NULL, 'TGLTR1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\"]', 'Lighter 2', 'Lighter 2', 'Lighter 2', '2025-08-14 07:55:00', '2025-08-14 07:55:20'),
(221, 11, 29, 'Lighter 3', 'lighter-3', NULL, NULL, 'TGLTR1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\"]', 'Lighter 3', 'Lighter 3', 'Lighter 3', '2025-08-14 07:55:46', '2025-08-14 07:56:07'),
(222, 11, 29, 'Lighter 4', 'lighter-4', NULL, NULL, 'TGLTR1004', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Red\"]', 'Lighter 4', 'Lighter 4', 'Lighter 4', '2025-08-14 07:56:30', '2025-08-14 07:56:50'),
(223, 11, 29, 'Lighter 5', 'lighter-5', NULL, NULL, 'TGLTR1005', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\"]', 'Lighter 5', 'Lighter 5', 'Lighter 5', '2025-08-14 07:57:11', '2025-08-14 07:57:34'),
(224, 11, 29, 'Lighter 6', 'lighter-6', NULL, NULL, 'TGLTR1006', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Matte Grey\", \"White\", \"Gold\"]', 'Lighter 6', 'Lighter 6', 'Lighter 6', '2025-08-14 07:59:11', '2025-08-14 08:00:50'),
(225, 11, 29, 'Lighter 7', 'lighter-7', NULL, NULL, 'TGLTR1007', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Lighter 7', 'Lighter 7', 'Lighter 7', '2025-08-14 08:07:26', '2025-08-14 08:08:01'),
(226, 11, 29, 'Lighter 8', 'lighter-8', NULL, NULL, 'TGLTR1008', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Lighter 8', 'Lighter 8', 'Lighter 8', '2025-08-14 08:08:43', '2025-08-14 08:09:13'),
(227, 11, 29, 'Lighter 9', 'lighter-9', NULL, NULL, 'TGLTR1009', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Lighter 9', 'Lighter 9', 'Lighter 9', '2025-08-14 08:09:30', '2025-08-14 08:10:01'),
(228, 11, 29, 'Lighter 10', 'lighter-10', NULL, NULL, 'TGLTR1010', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Lighter 10', 'Lighter 10', 'Lighter 10', '2025-08-14 08:10:24', '2025-08-14 08:10:56'),
(229, 11, 29, 'Lighter 11', 'lighter-11', NULL, NULL, 'TGLTR1011', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Lighter 11', 'Lighter 11', 'Lighter 11', '2025-08-14 08:13:57', '2025-08-14 08:14:22'),
(230, 11, 29, 'Lighter 12', 'lighter-12', NULL, NULL, 'TGLTR1012', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Yellow\"]', 'Lighter 12', 'Lighter 12', 'Lighter 12', '2025-08-14 08:14:51', '2025-08-14 08:16:11'),
(231, 11, 29, 'Lighter 13', 'lighter-13', NULL, NULL, 'TGLTR1013', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Gold\"]', 'Lighter 13', 'Lighter 13', 'Lighter 13', '2025-08-14 08:18:29', '2025-08-14 08:25:28'),
(232, 11, 29, 'Lighter 14', 'lighter-14', NULL, NULL, 'TGLTR1014', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Gold\"]', 'Lighter 14', 'Lighter 14', 'Lighter 14', '2025-08-14 08:26:10', '2025-08-14 08:26:37'),
(233, 11, 29, 'Lighter 15', 'lighter-15', NULL, NULL, 'TGLTR1015', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Gold\"]', 'Lighter 15', 'Lighter 15', 'Lighter 15', '2025-08-14 08:27:00', '2025-08-14 08:27:29'),
(234, 11, 29, 'Lighter 16', 'lighter-16', NULL, NULL, 'TGLTR1016', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Yellow\", \"Black\", \"Blue\"]', 'Lighter 16', 'Lighter 16', 'Lighter 16', '2025-08-14 08:28:03', '2025-08-14 08:34:40'),
(235, 11, 29, 'Lighter 17', 'lighter-17', NULL, NULL, 'TGLTR1017', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Gold\"]', 'Lighter 17', 'Lighter 17', 'Lighter 17', '2025-08-14 08:35:17', '2025-08-14 08:35:46'),
(236, 11, 29, 'Lighter 18', 'lighter-18', NULL, NULL, 'TGLTR1018', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Gold\"]', 'Lighter 18', 'Lighter 18', 'Lighter 18', '2025-08-14 08:36:11', '2025-08-14 08:37:49'),
(237, 11, 29, 'Lighter 19', 'lighter-19', NULL, NULL, 'TGLTR1019', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Lighter 19', 'Lighter 19', 'Lighter 19', '2025-08-14 08:36:43', '2025-08-14 08:38:23'),
(238, 11, 29, 'Lighter 20', 'lighter-20', NULL, NULL, 'TGLTR1020', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\", \"Gold\"]', 'Lighter 20', 'Lighter 20', 'Lighter 20', '2025-08-14 08:37:11', '2025-08-14 08:39:25'),
(239, 11, 29, 'Lighter 21', 'lighter-21', NULL, NULL, 'TGLTR1021', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\", \"Red\"]', 'Lighter 21', 'Lighter 21', 'Lighter 21', '2025-08-14 08:42:38', '2025-08-14 08:43:33'),
(240, 11, 29, 'Lighter 22', 'lighter-22', NULL, NULL, 'TGLTR1022', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Yellow\"]', 'Lighter 22', 'Lighter 22', 'Lighter 22', '2025-08-14 08:44:04', '2025-08-14 08:44:46'),
(241, 11, 29, 'Lighter 23', 'lighter-23', NULL, NULL, 'TGLTR1023', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Gold\"]', 'Lighter 23', 'Lighter 23', 'Lighter 23', '2025-08-14 08:45:41', '2025-08-14 08:46:13'),
(242, 11, 29, 'Lighter 24', 'lighter-24', NULL, NULL, 'TGLTR1024', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\"]', 'Lighter 24', 'Lighter 24', 'Lighter 24', '2025-08-14 08:46:51', '2025-08-14 08:47:28'),
(243, 11, 29, 'Lighter 25', 'lighter-25', NULL, NULL, 'TGLTR1025', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Gold\"]', 'Lighter 25', 'Lighter 25', 'Lighter 25', '2025-08-14 08:47:54', '2025-08-14 08:48:36'),
(244, 11, 29, 'Lighter 26', 'lighter-26', NULL, NULL, 'TGLTR1026', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\"]', 'Lighter 26', 'Lighter 26', 'Lighter 26', '2025-08-14 08:49:45', '2025-08-14 08:50:17'),
(245, 11, 29, 'Lighter 27', 'lighter-27', NULL, NULL, 'TGLTR1027', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Green\", \"Purple\", \"Black\", \"Red\"]', 'Lighter 27', 'Lighter 27', 'Lighter 27', '2025-08-14 08:50:52', '2025-08-14 08:52:28'),
(246, 11, 29, 'Lighter 28', 'lighter-28', NULL, NULL, 'TGLTR1028', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Lighter 28', 'Lighter 28', 'Lighter 28', '2025-08-14 08:52:56', '2025-08-14 08:53:33'),
(247, 11, 29, 'Lighter 29', 'lighter-29', NULL, NULL, 'TGLTR1029', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Green\", \"Red\"]', 'Lighter 29', 'Lighter 29', 'Lighter 29', '2025-08-14 08:54:20', '2025-08-14 08:55:46'),
(248, 11, 29, 'Lighter 30', 'lighter-30', NULL, NULL, 'TGLTR1030', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\"]', 'Lighter 30', 'Lighter 30', 'Lighter 30', '2025-08-14 08:56:47', '2025-08-14 08:57:13'),
(249, 11, 29, 'Lighter 31', 'lighter-31', NULL, NULL, 'TGLTR1031', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Pink\", \"Green\", \"Red\", \"Blue\"]', 'Lighter 31', 'Lighter 31', 'Lighter 31', '2025-08-14 08:59:22', '2025-08-14 09:01:11'),
(250, 11, 29, 'Lighter 32', 'lighter-32', NULL, NULL, 'TGLTR1032', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\", \"Gold\", \"Blue\"]', 'Lighter 32', 'Lighter 32', 'Lighter 32', '2025-08-14 09:01:47', '2025-08-14 09:02:59'),
(251, 11, 29, 'Lighter 33', 'lighter-33', NULL, NULL, 'TGLTR1033', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Grey\", \"Cream\", \"White\", \"Gold\"]', 'Lighter 33', 'Lighter 33', 'Lighter 33', '2025-08-14 09:05:00', '2025-08-14 09:06:50'),
(252, 11, 29, 'Lighter 34', 'lighter-34', NULL, NULL, 'TGLTR1034', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\"]', 'Lighter 34', 'Lighter 34', 'Lighter 34', '2025-08-14 09:07:18', '2025-08-14 09:07:50'),
(253, 11, 29, 'Lighter 35', 'lighter-35', NULL, NULL, 'TGLTR1035', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\"]', 'Lighter 35', 'Lighter 35', 'Lighter 35', '2025-08-14 09:08:11', '2025-08-14 09:08:40'),
(254, 11, 29, 'Lighter 36', 'lighter-36', NULL, NULL, 'TGLTR1036', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Lighter 36', 'Lighter 36', 'Lighter 36', '2025-08-14 09:09:05', '2025-08-14 09:09:27'),
(255, 11, 29, 'Lighter 37', 'lighter-37', NULL, NULL, 'TGLTR1037', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Lighter 37', 'Lighter 37', 'Lighter 37', '2025-08-14 09:09:51', '2025-08-14 09:10:25'),
(256, 11, 29, 'Lighter 38', 'lighter-38', NULL, NULL, 'TGLTR1038', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Light Brown\"]', 'Lighter 38', 'Lighter 38', 'Lighter 38', '2025-08-14 09:11:14', '2025-08-14 09:11:41'),
(257, 11, 29, 'Lighter 39', 'lighter-39', NULL, NULL, 'TGLTR1039', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Light Brown\"]', 'Lighter 39', 'Lighter 39', 'Lighter 39', '2025-08-14 09:12:06', '2025-08-14 09:12:34'),
(258, 11, 29, 'Lighter 40', 'lighter-40', NULL, NULL, 'TGLTR1040', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Lighter 40', 'Lighter 40', 'Lighter 40', '2025-08-14 09:12:55', '2025-08-14 09:13:25'),
(259, 11, 29, 'Lighter 41', 'lighter-41', NULL, NULL, 'TGLTR1041', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Grey\", \"White\", \"Gold\"]', 'Lighter 41', 'Lighter 41', 'Lighter 41', '2025-08-14 09:14:49', '2025-08-14 09:16:10'),
(260, 11, 29, 'Lighter 42', 'lighter-42', NULL, NULL, 'TGLTR1042', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Grey\", \"Brown\", \"Gold\", \"Blue\"]', 'Lighter 42', 'Lighter 42', 'Lighter 42', '2025-08-14 09:16:39', '2025-08-14 09:18:03'),
(261, 11, 29, 'Lighter 43', 'lighter-43', NULL, NULL, 'TGLTR1043', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Lighter 43', 'Lighter 43', 'Lighter 43', '2025-08-14 09:18:20', '2025-08-14 09:18:47'),
(263, 4, 14, 'Tobac-Go Aurora Car Hookah', 'tobac-go-aurora-car-hookah', NULL, NULL, 'TGHCR1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Tobac-Go Aurora Car Hookah', 'Tobac-Go Aurora Car Hookah', 'Tobac-Go Aurora Car Hookah', '2025-09-02 10:38:23', '2025-09-02 10:39:27'),
(264, 4, 14, 'Tobac-Go Batman Car Hookah', 'tobac-go-batman-car-hookah', NULL, NULL, 'TGHCR1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Tobac-Go Batman Car Hookah', 'Tobac-Go Batman Car Hookah', 'Tobac-Go Batman Car Hookah', '2025-09-02 10:40:25', '2025-09-02 10:40:53'),
(265, 4, 14, 'Tobac-Go Black Panther Car Hookah', 'tobac-go-black-panther-car-hookah', NULL, NULL, 'TGHCR1004', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Tobac-Go Black Panther Car Hookah', 'Tobac-Go Black Panther Car Hookah', 'Tobac-Go Black Panther Car Hookah', '2025-09-02 10:41:27', '2025-09-02 10:43:12'),
(266, 4, 14, 'Tobac-Go Ghost Rider Car Hookah', 'tobac-go-ghost-rider-car-hookah', NULL, NULL, 'TGHCR1005', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Tobac-Go Ghost Rider Car Hookah', 'Tobac-Go Ghost Rider Car Hookah', 'Tobac-Go Ghost Rider Car Hookah', '2025-09-02 10:43:37', '2025-09-02 10:44:05'),
(267, 4, 14, 'Tobac-Go Haunted Night Car Hookah', 'tobac-go-haunted-night-car-hookah', NULL, NULL, 'TGHCR1006', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Tobac-Go Haunted Night Car Hookah', 'Tobac-Go Haunted Night Car Hookah', 'Tobac-Go Haunted Night Car Hookah', '2025-09-02 10:45:28', '2025-09-02 10:45:59'),
(268, 4, 14, 'Tobac-Go Northern Lights Car Hookah', 'tobac-go-northern-lights-car-hookah', NULL, NULL, 'TGHCR1007', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Tobac-Go Northern Lights Car Hookah', 'Tobac-Go Northern Lights Car Hookah', 'Tobac-Go Northern Lights Car Hookah', '2025-09-02 10:46:19', '2025-09-02 10:46:44'),
(269, 4, 14, 'Tobac-Go Raining Fire Car Hookah', 'tobac-go-raining-fire-car-hookah', NULL, NULL, 'TGHCR1008', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Tobac-Go Raining Fire Car Hookah', 'Tobac-Go Raining Fire Car Hookah', 'Tobac-Go Raining Fire Car Hookah', '2025-09-02 10:47:06', '2025-09-02 10:47:30'),
(270, 4, 15, 'Fly Series', 'fly-series', NULL, NULL, 'TGHCY1006', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Fly Series Hookah', 'Fly Series Hookah', 'Fly Series Hookah', '2025-09-02 10:49:07', '2025-09-02 10:50:11'),
(271, 4, 15, 'Gamalya Hookah', 'gamalya-hookah', NULL, NULL, 'TGHCY1007', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Gamalya Hookah', 'Gamalya Hookah', 'Gamalya Hookah', '2025-09-02 10:51:21', '2025-09-02 10:52:02'),
(272, 4, 15, 'Maurya Hookah', 'maurya-hookah', NULL, NULL, 'TGHCY1008', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Maurya Hookah', 'Maurya Hookah', 'Maurya Hookah', '2025-09-02 10:52:27', '2025-09-02 10:53:21'),
(273, 4, 15, 'Yara Hookah', 'yara-hookah', NULL, NULL, 'TGHCY1009', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Yara Hookah', 'Yara Hookah', 'Yara Hookah', '2025-09-02 10:53:46', '2025-09-02 10:54:32'),
(274, 4, 38, 'Dancing Hookah', 'dancing-hookah', NULL, NULL, 'TGHTO1001', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Lemon Yellow\", \"Grey\", \"Orange\", \"Blue\"]', 'Dancing Hookah', 'Dancing Hookah', 'Dancing Hookah', '2025-09-02 11:06:44', '2025-09-25 00:13:55'),
(275, 4, 38, 'Dragon  Hookah', 'dragon-hookah', NULL, NULL, 'TGHTO1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Sea Green\", \"Purple\", \"Red\", \"Blue\"]', 'Dragon  Hookah', 'Dragon  Hookah', 'Dragon  Hookah', '2025-09-02 11:09:47', '2025-09-02 11:11:39'),
(276, 4, 38, 'Fly Series Hookah', 'fly-series-hookah', NULL, NULL, 'TGHTO1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Rose Gold\", \"Silver\", \"Gold\", \"Black\"]', 'Fly Series Hookah', 'Fly Series Hookah', 'Fly Series Hookah', '2025-09-02 11:12:38', '2025-09-02 11:14:29'),
(277, 4, 38, 'Hawk Hookah', 'hawk-hookah', NULL, NULL, 'TGHTO1004', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Grey\", \"Yellow\", \"Blue\"]', 'Hawk Hookah', 'Hawk Hookah', 'Hawk Hookah', '2025-09-02 11:15:21', '2025-09-02 11:16:41'),
(278, 4, 38, 'HD3 Hookah', 'hd3-hookah', NULL, NULL, 'TGHTO1005', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Coffee\", \"Sea Green\", \"Silver\", \"Blue\"]', 'HD3 Hookah', 'HD3 Hookah', 'HD3 Hookah', '2025-09-02 11:17:39', '2025-09-02 11:19:28'),
(279, 4, 38, 'HD5 Hookah', 'hd5-hookah', NULL, NULL, 'TGHTO1006', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Coffee\", \"Sea Green\", \"Silver\", \"Red\", \"Blue\"]', 'HD5 Hookah', 'HD5 Hookah', 'HD5 Hookah', '2025-09-02 11:20:35', '2025-09-02 11:23:32'),
(280, 4, 38, 'Ken Hookah', 'ken-hookah', NULL, NULL, 'TGHTO1007', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Coffee\", \"Green\", \"Red\", \"Blue\"]', 'Ken Hookah', 'Ken Hookah', 'Ken Hookah', '2025-09-02 11:24:29', '2025-09-02 11:26:19'),
(281, 4, 38, 'Lighting Capsule', 'lighting-capsule', NULL, NULL, 'TGHTO1008', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Lighting Capsule', 'Lighting Capsule', 'Lighting Capsule', '2025-09-02 11:26:43', '2025-09-02 11:27:30'),
(282, 4, 38, 'Lotus Hookah', 'lotus-hookah', NULL, NULL, 'TGHTO1009', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Coffee\", \"Lemon Yellow\", \"Grey\", \"Blue\"]', 'Lotus Hookah', 'Lotus Hookah', 'Lotus Hookah', '2025-09-02 11:28:37', '2025-09-02 11:30:16'),
(283, 4, 38, 'Mercury Hookah', 'mercury-hookah', NULL, NULL, 'TGHTO1010', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Lemon Yellow\", \"Purple\", \"Red\"]', 'Mercury Hookah', 'Mercury Hookah', 'Mercury Hookah', '2025-09-02 11:52:37', '2025-09-02 11:54:22'),
(284, 4, 38, 'Rocket Hookah', 'rocket-hookah', NULL, NULL, 'TGHTO1011', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Red\"]', 'Rocket Hookah', 'Rocket Hookah', 'Rocket Hookah', '2025-09-02 11:54:55', '2025-09-02 11:55:39'),
(285, 4, 38, 'Saen Hookah', 'saen-hookah', NULL, NULL, 'TGHTO1012', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Grey\", \"Yellow\", \"Green\", \"Purple\", \"Blue\"]', 'Saen Hookah', 'Saen Hookah', 'Saen Hookah', '2025-09-02 11:56:32', '2025-09-02 11:58:27'),
(286, 4, 38, 'Spaceship Hookah', 'spaceship-hookah', NULL, NULL, 'TGHTO1013', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Coffee\", \"Sea Green\", \"Orange\", \"Blue\"]', 'Spaceship Hookah', 'Spaceship Hookah', 'Spaceship Hookah', '2025-09-02 11:59:13', '2025-09-02 12:00:47'),
(287, 4, 38, 'Steel Life Hookah', 'steel-life-hookah', NULL, NULL, 'TGHTO1014', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Steel Life Hookah', 'Steel Life Hookah', 'Steel Life Hookah', '2025-09-02 12:01:12', '2025-09-02 12:02:02'),
(288, 4, 38, 'Trumpet Hookah', 'trumpet-hookah', NULL, NULL, 'TGHTO1015', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Yellow\", \"White\", \"Red\", \"Blue\"]', 'Trumpet Hookah', 'Trumpet Hookah', 'Trumpet Hookah', '2025-09-02 12:02:47', '2025-09-02 12:04:36'),
(289, 4, 38, 'War Life Hookah', 'war-life-hookah', NULL, NULL, 'TGHTO1016', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Gold\", \"Black\", \"Red\", \"Blue\"]', 'War Life Hookah', 'War Life Hookah', 'War Life Hookah', '2025-09-02 12:05:30', '2025-09-02 12:07:28'),
(290, 4, 38, 'Warrior Skull Hookah', 'warrior-skull-hookah', NULL, NULL, 'TGHTO1017', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Bronze\", \"Gold\"]', 'Warrior Skull Hookah', 'Warrior Skull Hookah', 'Warrior Skull Hookah', '2025-09-02 12:08:32', '2025-09-02 12:09:39'),
(291, 4, 38, 'Witches Hand Hookah', 'witches-hand-hookah', NULL, NULL, 'TGHTO1018', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Bronze\", \"White\", \"Gold\"]', 'Witches Hand Hookah', 'Witches Hand Hookah', 'Witches Hand Hookah', '2025-09-02 12:11:00', '2025-09-02 12:12:49'),
(292, 4, 23, 'Burj Al-Arab Hookah', 'burj-al-arab-hookah', NULL, NULL, 'TGHFG1011', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Burj Al-Arab Hookah', 'Burj Al-Arab Hookah', 'Burj Al-Arab Hookah', '2025-09-02 12:13:49', '2025-09-02 12:14:30'),
(293, 9, 24, 'Hookah Suction Pump', 'hookah-suction-pump', NULL, NULL, 'TGHAC1008', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"White\"]', 'Hookah Suction Pump', 'Hookah Suction Pump', 'Hookah Suction Pump', '2025-09-06 02:23:11', '2025-09-06 02:23:58'),
(294, 9, 24, 'Stainless Steel Kloud', 'stainless-steel-kloud', NULL, NULL, 'TGHAC1009', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Gold\"]', 'Stainless Steel Kloud', 'Stainless Steel Kloud', 'Stainless Steel Kloud', '2025-09-06 02:24:53', '2025-09-06 02:25:45'),
(295, 10, 25, 'Astronaut Chillum', 'astronaut-chillum', NULL, NULL, 'TGHCL1006', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Silver\", \"Gold\"]', 'Astronaut Chillum', 'Astronaut Chillum', 'Astronaut Chillum', '2025-09-06 02:28:37', '2025-10-01 03:19:31'),
(296, 10, 25, 'Quasar Silicon Chillum & HMD', 'quasar-silicon-chillum-hmd', NULL, NULL, 'TGHCL1007', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Quasar Silicon Chillum & HMD', 'Quasar Silicon Chillum & HMD', 'Quasar Silicon Chillum & HMD', '2025-09-06 02:34:24', '2025-09-06 02:35:29'),
(297, 10, 25, 'Quasar Silicon Glass Chillum & HMD', 'quasar-silicon-glass-chillum-hmd', NULL, NULL, 'TGHCL1008', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Quasar Silicon Glass Chillum & HMD', 'Quasar Silicon Glass Chillum & HMD', 'Quasar Silicon Glass Chillum & HMD', '2025-09-06 02:35:50', '2025-09-06 02:36:34'),
(298, 10, 25, 'Shishamatic Chillum & Revolving HMD', 'shishamatic-chillum-revolving-hmd', NULL, NULL, 'TGHCL1009', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Default\"]', 'Shishamatic Chillum & Revolving HMD', 'Shishamatic Chillum & Revolving HMD', 'Shishamatic Chillum & Revolving HMD', '2025-09-06 02:36:55', '2025-09-06 02:37:32'),
(299, 10, 25, 'Silicon Steel Chillum & HMD', 'silicon-steel-chillum-hmd', NULL, NULL, 'TGHCL1010', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Gold\", \"Black\"]', 'Silicon Steel Chillum & HMD', 'Silicon Steel Chillum & HMD', 'Silicon Steel Chillum & HMD', '2025-09-06 02:37:58', '2025-09-06 02:38:59'),
(300, 10, 25, 'Skull Gold Chillum', 'skull-gold-chillum', NULL, NULL, 'TGHCL1011', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Gold\"]', 'Skull Gold Chillum', 'Skull Gold Chillum', 'Skull Gold Chillum', '2025-09-06 02:39:23', '2025-10-01 03:13:11'),
(301, 13, 39, 'Ice Bazooka Handle', 'ice-bazooka-handle', NULL, NULL, 'TGPNH1001', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Yellow\", \"Green\", \"Purple\", \"White\", \"Black\", \"Red\", \"Blue\"]', 'Ice Bazooka Handle', 'Ice Bazooka Handle', 'Ice Bazooka Handle', '2025-09-06 03:34:39', '2025-09-06 03:38:52'),
(302, 13, 39, 'Ice Gel Handle and Silicon Pipe', 'ice-gel-handle-and-silicon-pipe', NULL, NULL, 'TGPNH1002', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Yellow\", \"Silver\", \"Green\", \"Purple\", \"Black\", \"Red\", \"Blue\"]', 'Ice Gel Handle and Silicon Pipe', 'Ice Gel Handle and Silicon Pipe', 'Ice Gel Handle and Silicon Pipe', '2025-09-06 03:41:14', '2025-09-06 03:44:25'),
(303, 13, 39, 'Ice Handles', 'ice-handles', NULL, NULL, 'TGPNH1003', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Multicolor 1\"]', 'Ice Handles', 'Ice Handles', 'Ice Handles', '2025-09-06 03:44:59', '2025-09-06 03:45:40'),
(304, 13, 39, 'Ice Pipe', 'ice-pipe', NULL, NULL, 'TGPNH1004', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Green\", \"Blue\"]', 'Ice Pipe', 'Ice Pipe', 'Ice Pipe', '2025-09-06 03:46:14', '2025-09-06 03:47:24'),
(305, 13, 39, 'Orbita Handle', 'orbita-handle', NULL, NULL, 'TGPNH1005', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Orbita Handle', 'Orbita Handle', 'Orbita Handle', '2025-09-06 03:50:36', '2025-09-06 03:51:07'),
(306, 13, 39, 'Silicon Pipe & Handle Blue', 'silicon-pipe-handle-blue', NULL, NULL, 'TGPNH1006', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Blue\"]', 'Silicon Pipe & Handle Blue', 'Silicon Pipe & Handle Blue', 'Silicon Pipe & Handle Blue', '2025-09-06 03:51:40', '2025-09-06 03:53:57'),
(307, 13, 39, 'Silicon Pipe & Handle Check and Dice', 'silicon-pipe-handle-check-and-dice', NULL, NULL, 'TGPNH1007', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Lemon Yellow\"]', 'Silicon Pipe & Handle Check and Dice', 'Silicon Pipe & Handle Check and Dice', 'Silicon Pipe & Handle Check and Dice', '2025-09-06 03:52:48', '2025-09-06 03:53:27'),
(308, 13, 39, 'Silicon Pipe & Handle Green', 'silicon-pipe-handle-green', NULL, NULL, 'TGPNH1008', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Green\"]', 'Silicon Pipe & Handle Green', 'Silicon Pipe & Handle Green', 'Silicon Pipe & Handle Green', '2025-09-06 03:54:28', '2025-09-06 03:54:56'),
(309, 13, 39, 'Silicon Pipe & Handle Red', 'silicon-pipe-handle-red', NULL, NULL, 'TGPNH1009', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Red\"]', 'Silicon Pipe & Handle Red', 'Silicon Pipe & Handle Red', 'Silicon Pipe & Handle Red', '2025-09-06 03:55:19', '2025-09-06 03:55:42'),
(310, 13, 39, 'Silicon Pipe & Handle Yellow and Gold', 'silicon-pipe-handle-yellow-and-gold', NULL, NULL, 'TGPNH1010', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Yellow\"]', 'Silicon Pipe & Handle Yellow and Gold', 'Silicon Pipe & Handle Yellow and Gold', 'Silicon Pipe & Handle Yellow and Gold', '2025-09-06 03:56:18', '2025-09-06 03:56:41'),
(311, 13, 39, 'Spring Pipe', 'spring-pipe', NULL, NULL, 'TGPNH1011', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Sea Green\", \"Black\", \"Blue\"]', 'Spring Pipe', 'Spring Pipe', 'Spring Pipe', '2025-09-06 03:57:16', '2025-10-12 03:22:23'),
(312, 10, 25, 'Skull Gold Chillum + HMD Combo', 'skull-gold-chillum-hmd-combo', NULL, NULL, 'TGHCL1012', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Gold\"]', 'Skull Gold Chillum + HMD Combo', 'Skull Gold Chillum + HMD Combo', 'Skull Gold Chillum + HMD Combo', '2025-10-01 03:14:46', '2025-10-01 03:16:49'),
(313, 10, 25, 'Astronaut Chillum + HMD Combo', 'astronaut-chillum-hmd-combo', NULL, NULL, 'TGHCL1013', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Silver\", \"Gold\"]', 'Astronaut Chillum + HMD Combo', 'Astronaut Chillum + HMD Combo', 'Astronaut Chillum + HMD Combo', '2025-10-01 03:18:41', '2025-10-01 03:20:44'),
(314, 10, 25, 'Silicon Chillum', 'silicon-chillum', NULL, NULL, 'TGHCL1014', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '[\"Black\"]', 'Silicon Chillum', 'Silicon Chillum', 'Silicon Chillum', '2025-10-01 03:23:41', '2025-11-17 01:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `other_image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `variant_id`, `other_image`, `created_at`, `updated_at`) VALUES
(24, 2, 1, '1753679875_68870803c873e_social-media.png', '2025-07-27 23:47:55', '2025-07-27 23:47:55'),
(25, 2, 1, '1753679875_68870803cec20_cinema.png', '2025-07-27 23:47:55', '2025-07-27 23:47:55'),
(26, 2, 2, '1753679875_68870803dba02_billboard1.png', '2025-07-27 23:47:55', '2025-07-27 23:47:55'),
(27, 2, 2, '1753679875_68870803e349e_social-media.png', '2025-07-27 23:47:55', '2025-07-27 23:47:55'),
(28, 2, 2, '1753679875_68870803ea32e_cinema.png', '2025-07-27 23:47:55', '2025-07-27 23:47:55'),
(29, 2, 2, '1753680850_68870bd279f68_press-release.png', '2025-07-28 00:04:10', '2025-07-28 00:04:10'),
(30, 2, 2, '1753680850_68870bd280669_magazine.png', '2025-07-28 00:04:10', '2025-07-28 00:04:10'),
(31, 2, 1, '1753680872_68870be8bcd38_tv.png', '2025-07-28 00:04:32', '2025-07-28 00:04:32'),
(32, 2, 1, '1753680872_68870be8c424f_DayCare.png', '2025-07-28 00:04:32', '2025-07-28 00:04:32'),
(33, 3, 3, '1753681379_68870de32a609_fame.png', '2025-07-28 00:12:59', '2025-07-28 00:12:59'),
(34, 3, 3, '1753681379_68870de33193e_airplane.png', '2025-07-28 00:12:59', '2025-07-28 00:12:59'),
(36, 3, 4, '1753681379_68870de346f66_press-release.png', '2025-07-28 00:12:59', '2025-07-28 00:12:59'),
(37, 3, 4, '1753681379_68870de34f015_magazine.png', '2025-07-28 00:12:59', '2025-07-28 00:12:59'),
(38, 3, 5, '1753681379_68870de35ee87_billboard1.png', '2025-07-28 00:12:59', '2025-07-28 00:12:59'),
(39, 3, 5, '1753681379_68870de364fce_social-media.png', '2025-07-28 00:12:59', '2025-07-28 00:12:59'),
(41, 5, 8, '1753971364_688b7aa446ca6_3.jpg', '2025-07-31 08:46:04', '2025-07-31 08:46:04'),
(42, 5, 8, '1753971364_688b7aa454f5c_4.jpg', '2025-07-31 08:46:04', '2025-07-31 08:46:04'),
(43, 5, 9, '1753971364_688b7aa4700e8_3.jpg', '2025-07-31 08:46:04', '2025-07-31 08:46:04'),
(44, 5, 9, '1753971364_688b7aa47e00f_4.jpg', '2025-07-31 08:46:04', '2025-07-31 08:46:04'),
(45, 5, 9, '1753971364_688b7aa48b50d_5.jpg', '2025-07-31 08:46:04', '2025-07-31 08:46:04'),
(46, 13, 10, '1753972002_688b7d224b79d_1.jpg', '2025-07-31 08:56:42', '2025-07-31 08:56:42'),
(47, 13, 10, '1753972002_688b7d22553b6_3.jpg', '2025-07-31 08:56:42', '2025-07-31 08:56:42'),
(48, 13, 11, '1753972002_688b7d226f579_3.jpg', '2025-07-31 08:56:42', '2025-07-31 08:56:42'),
(49, 13, 11, '1753972002_688b7d227d91d_4.jpg', '2025-07-31 08:56:42', '2025-07-31 08:56:42'),
(50, 13, 11, '1753972002_688b7d2288cd9_5.jpg', '2025-07-31 08:56:42', '2025-07-31 08:56:42'),
(51, 14, 12, '1753972332_688b7e6c3dc78_3.jpg', '2025-07-31 09:02:12', '2025-07-31 09:02:12'),
(52, 14, 12, '1753972332_688b7e6c4daf1_4.jpg', '2025-07-31 09:02:12', '2025-07-31 09:02:12'),
(53, 14, 13, '1753972332_688b7e6c6d130_3.jpg', '2025-07-31 09:02:12', '2025-07-31 09:02:12'),
(54, 14, 13, '1753972332_688b7e6c78e8e_4.jpg', '2025-07-31 09:02:12', '2025-07-31 09:02:12'),
(55, 14, 13, '1753972332_688b7e6c8651a_5.jpg', '2025-07-31 09:02:12', '2025-07-31 09:02:12'),
(56, 15, 14, '1753972736_688b800037e0d_3.jpg', '2025-07-31 09:08:56', '2025-07-31 09:08:56'),
(57, 15, 14, '1753972736_688b800046e2e_4.jpg', '2025-07-31 09:08:56', '2025-07-31 09:08:56'),
(58, 15, 15, '1753972736_688b800058b04_3.jpg', '2025-07-31 09:08:56', '2025-07-31 09:08:56'),
(59, 15, 15, '1753972736_688b800061cbe_4.jpg', '2025-07-31 09:08:56', '2025-07-31 09:08:56'),
(60, 15, 16, '1753972736_688b800073f1b_3.jpg', '2025-07-31 09:08:56', '2025-07-31 09:08:56'),
(61, 15, 16, '1753972736_688b800080f26_4.jpg', '2025-07-31 09:08:56', '2025-07-31 09:08:56'),
(62, 15, 17, '1753972736_688b80009cdd3_3.jpg', '2025-07-31 09:08:56', '2025-07-31 09:08:56'),
(63, 15, 17, '1753972736_688b8000aa3b0_4.jpg', '2025-07-31 09:08:56', '2025-07-31 09:08:56'),
(64, 15, 18, '1753972736_688b8000c2c2f_3.jpg', '2025-07-31 09:08:56', '2025-07-31 09:08:56'),
(65, 15, 18, '1753972736_688b8000cc547_4.jpg', '2025-07-31 09:08:56', '2025-07-31 09:08:56'),
(66, 15, 19, '1753972736_688b8000df38f_3.jpg', '2025-07-31 09:08:56', '2025-07-31 09:08:56'),
(67, 15, 19, '1753972736_688b8000e9d79_4.jpg', '2025-07-31 09:08:56', '2025-07-31 09:08:56'),
(68, 18, 32, '1753974718_688b87bea9abc_3.jpg', '2025-07-31 09:41:58', '2025-07-31 09:41:58'),
(69, 18, 32, '1753974718_688b87beb5060_4.jpg', '2025-07-31 09:41:58', '2025-07-31 09:41:58'),
(70, 19, 33, '1753975870_688b8c3ed1d05_1.jpg', '2025-07-31 10:01:10', '2025-07-31 10:01:10'),
(71, 19, 33, '1753975870_688b8c3edc956_3.jpg', '2025-07-31 10:01:10', '2025-07-31 10:01:10'),
(72, 19, 33, '1753975870_688b8c3ee89f9_4.jpg', '2025-07-31 10:01:11', '2025-07-31 10:01:11'),
(73, 19, 34, '1753975871_688b8c3f0cb2a_1.jpg', '2025-07-31 10:01:11', '2025-07-31 10:01:11'),
(74, 19, 34, '1753975871_688b8c3f1943e_3.jpg', '2025-07-31 10:01:11', '2025-07-31 10:01:11'),
(75, 19, 34, '1753975871_688b8c3f2488e_4.jpg', '2025-07-31 10:01:11', '2025-07-31 10:01:11'),
(76, 19, 35, '1753975871_688b8c3f3f1cf_1.jpg', '2025-07-31 10:01:11', '2025-07-31 10:01:11'),
(77, 19, 35, '1753975871_688b8c3f4df5a_3.jpg', '2025-07-31 10:01:11', '2025-07-31 10:01:11'),
(78, 19, 35, '1753975871_688b8c3f5d7a3_4.jpg', '2025-07-31 10:01:11', '2025-07-31 10:01:11'),
(79, 19, 36, '1753975871_688b8c3f7b913_1.jpg', '2025-07-31 10:01:11', '2025-07-31 10:01:11'),
(80, 19, 36, '1753975871_688b8c3f89435_3.jpg', '2025-07-31 10:01:11', '2025-07-31 10:01:11'),
(81, 19, 36, '1753975871_688b8c3f96ea6_4.jpg', '2025-07-31 10:01:11', '2025-07-31 10:01:11'),
(82, 19, 37, '1753975871_688b8c3fb3341_1.jpg', '2025-07-31 10:01:11', '2025-07-31 10:01:11'),
(83, 19, 37, '1753975871_688b8c3fc0d64_3.jpg', '2025-07-31 10:01:11', '2025-07-31 10:01:11'),
(84, 19, 37, '1753975871_688b8c3fcce0b_4.jpg', '2025-07-31 10:01:11', '2025-07-31 10:01:11'),
(85, 20, 39, '1753976097_688b8d213ac1f_1.jpg', '2025-07-31 10:04:57', '2025-07-31 10:04:57'),
(86, 20, 39, '1753976097_688b8d214a3e2_3.jpg', '2025-07-31 10:04:57', '2025-07-31 10:04:57'),
(87, 20, 39, '1753976097_688b8d21591c5_4.jpg', '2025-07-31 10:04:57', '2025-07-31 10:04:57'),
(88, 20, 40, '1753976097_688b8d2175dad_1.jpg', '2025-07-31 10:04:57', '2025-07-31 10:04:57'),
(89, 20, 40, '1753976097_688b8d21831a5_3.jpg', '2025-07-31 10:04:57', '2025-07-31 10:04:57'),
(90, 20, 40, '1753976097_688b8d218de91_4.jpg', '2025-07-31 10:04:57', '2025-07-31 10:04:57'),
(91, 20, 41, '1753976097_688b8d21a2a29_1.jpg', '2025-07-31 10:04:57', '2025-07-31 10:04:57'),
(92, 20, 41, '1753976097_688b8d21af479_3.jpg', '2025-07-31 10:04:57', '2025-07-31 10:04:57'),
(93, 20, 41, '1753976097_688b8d21bef97_4.jpg', '2025-07-31 10:04:57', '2025-07-31 10:04:57'),
(94, 20, 42, '1753976097_688b8d21d58c7_1.jpg', '2025-07-31 10:04:57', '2025-07-31 10:04:57'),
(95, 20, 42, '1753976097_688b8d21e423e_3.jpg', '2025-07-31 10:04:57', '2025-07-31 10:04:57'),
(96, 20, 42, '1753976098_688b8d220041f_4.jpg', '2025-07-31 10:04:58', '2025-07-31 10:04:58'),
(97, 20, 43, '1753976098_688b8d221c4cd_1.jpg', '2025-07-31 10:04:58', '2025-07-31 10:04:58'),
(98, 20, 43, '1753976098_688b8d222b3d0_3.jpg', '2025-07-31 10:04:58', '2025-07-31 10:04:58'),
(99, 20, 43, '1753976098_688b8d2237966_4.jpg', '2025-07-31 10:04:58', '2025-07-31 10:04:58'),
(100, 21, 45, '1754030768_688c62b0e8aa7_2.jpg', '2025-08-01 01:16:09', '2025-08-01 01:16:09'),
(101, 21, 46, '1754030769_688c62b10dd71_2.jpg', '2025-08-01 01:16:09', '2025-08-01 01:16:09'),
(102, 21, 47, '1754030769_688c62b12e470_2.jpg', '2025-08-01 01:16:09', '2025-08-01 01:16:09'),
(103, 21, 48, '1754030769_688c62b14e784_2.jpg', '2025-08-01 01:16:09', '2025-08-01 01:16:09'),
(104, 21, 49, '1754030769_688c62b16f779_2.jpg', '2025-08-01 01:16:09', '2025-08-01 01:16:09'),
(105, 22, 50, '1754030887_688c63270125d_2.jpg', '2025-08-01 01:18:07', '2025-08-01 01:18:07'),
(106, 23, 53, '1754031282_688c64b2a7621_2.jpg', '2025-08-01 01:24:42', '2025-08-01 01:24:42'),
(107, 23, 52, '1754031283_688c64b310c9a_2.jpg', '2025-08-01 01:24:43', '2025-08-01 01:24:43'),
(108, 23, 51, '1754031283_688c64b325b3e_2.jpg', '2025-08-01 01:24:43', '2025-08-01 01:24:43'),
(109, 24, 54, '1754031406_688c652eeeb9b_2.jpg', '2025-08-01 01:26:47', '2025-08-01 01:26:47'),
(110, 25, 55, '1754031508_688c659481576_2.jpg', '2025-08-01 01:28:28', '2025-08-01 01:28:28'),
(111, 25, 56, '1754031508_688c659498c73_2.jpg', '2025-08-01 01:28:28', '2025-08-01 01:28:28'),
(112, 26, 57, '1754031614_688c65fe21f0b_2.jpg', '2025-08-01 01:30:14', '2025-08-01 01:30:14'),
(113, 26, 58, '1754031614_688c65fe35b9a_2.jpg', '2025-08-01 01:30:14', '2025-08-01 01:30:14'),
(114, 27, 59, '1754031725_688c666d22ca6_2.jpg', '2025-08-01 01:32:05', '2025-08-01 01:32:05'),
(115, 28, 60, '1754033220_688c6c448fe17_2.jpg', '2025-08-01 01:57:00', '2025-08-01 01:57:00'),
(116, 28, 61, '1754033220_688c6c44a7350_2.jpg', '2025-08-01 01:57:00', '2025-08-01 01:57:00'),
(117, 29, 62, '1754072411_688d055b997ea_2.jpg', '2025-08-01 12:50:11', '2025-08-01 12:50:11'),
(118, 29, 63, '1754072411_688d055bb6afa_2.jpg', '2025-08-01 12:50:11', '2025-08-01 12:50:11'),
(119, 30, 64, '1754072562_688d05f249a6d_2.jpg', '2025-08-01 12:52:42', '2025-08-01 12:52:42'),
(120, 30, 64, '1754072562_688d05f25aa91_3.jpg', '2025-08-01 12:52:42', '2025-08-01 12:52:42'),
(121, 31, 65, '1754072644_688d0644f0875_2.jpg', '2025-08-01 12:54:05', '2025-08-01 12:54:05'),
(122, 31, 65, '1754072645_688d0645085b4_3.jpg', '2025-08-01 12:54:05', '2025-08-01 12:54:05'),
(123, 32, 66, '1754072759_688d06b7d9ab2_3.jpg', '2025-08-01 12:55:59', '2025-08-01 12:55:59'),
(124, 32, 66, '1754072759_688d06b7e95a9_4.jpg', '2025-08-01 12:56:00', '2025-08-01 12:56:00'),
(125, 32, 66, '1754072760_688d06b802198_5.jpg', '2025-08-01 12:56:00', '2025-08-01 12:56:00'),
(126, 32, 66, '1754072760_688d06b80bc9a_6.jpg', '2025-08-01 12:56:00', '2025-08-01 12:56:00'),
(127, 33, 67, '1754073133_688d082d88806_2.jpg', '2025-08-01 13:02:13', '2025-08-01 13:02:13'),
(128, 34, 68, '1754073241_688d089926ec3_2.jpg', '2025-08-01 13:04:01', '2025-08-01 13:04:01'),
(129, 35, 69, '1754073342_688d08feda3cc_2.jpg', '2025-08-01 13:05:42', '2025-08-01 13:05:42'),
(130, 36, 70, '1754073423_688d094f818fc_2.jpg', '2025-08-01 13:07:03', '2025-08-01 13:07:03'),
(131, 37, 71, '1754073538_688d09c2486ec_3.jpg', '2025-08-01 13:08:58', '2025-08-01 13:08:58'),
(132, 37, 71, '1754073538_688d09c2523a8_4.jpg', '2025-08-01 13:08:58', '2025-08-01 13:08:58'),
(133, 37, 71, '1754073538_688d09c25dd40_5.jpg', '2025-08-01 13:08:58', '2025-08-01 13:08:58'),
(134, 37, 71, '1754073538_688d09c268418_6.jpg', '2025-08-01 13:08:58', '2025-08-01 13:08:58'),
(135, 38, 72, '1754291701_68905df5af782_3.jpg', '2025-08-04 01:45:01', '2025-08-04 01:45:01'),
(136, 39, 73, '1754291796_68905e549556c_3.jpg', '2025-08-04 01:46:36', '2025-08-04 01:46:36'),
(137, 39, 73, '1754291796_68905e54a1a8c_4.jpg', '2025-08-04 01:46:36', '2025-08-04 01:46:36'),
(138, 39, 73, '1754291796_68905e54ac6de_5.jpg', '2025-08-04 01:46:36', '2025-08-04 01:46:36'),
(139, 39, 73, '1754291796_68905e54b6565_6.jpg', '2025-08-04 01:46:36', '2025-08-04 01:46:36'),
(140, 40, 74, '1754291924_68905ed431f2f_3.jpg', '2025-08-04 01:48:44', '2025-08-04 01:48:44'),
(141, 40, 74, '1754291924_68905ed44264a_4.jpg', '2025-08-04 01:48:44', '2025-08-04 01:48:44'),
(142, 42, 76, '1754292386_689060a2cb418_3.jpg', '2025-08-04 01:56:26', '2025-08-04 01:56:26'),
(143, 42, 77, '1754292386_689060a2e829e_3.jpg', '2025-08-04 01:56:26', '2025-08-04 01:56:26'),
(144, 43, 78, '1754292617_68906189826ab_3.jpg', '2025-08-04 02:00:17', '2025-08-04 02:00:17'),
(145, 43, 78, '1754292617_6890618992f8d_4.jpg', '2025-08-04 02:00:17', '2025-08-04 02:00:17'),
(146, 43, 78, '1754292617_68906189a7834_5.jpg', '2025-08-04 02:00:17', '2025-08-04 02:00:17'),
(147, 43, 78, '1754292617_68906189bf65b_6.jpg', '2025-08-04 02:00:17', '2025-08-04 02:00:17'),
(148, 43, 79, '1754292618_6890618a0216e_3.jpg', '2025-08-04 02:00:18', '2025-08-04 02:00:18'),
(149, 43, 79, '1754292618_6890618a106cd_4.jpg', '2025-08-04 02:00:18', '2025-08-04 02:00:18'),
(150, 43, 79, '1754292618_6890618a1f689_5.jpg', '2025-08-04 02:00:18', '2025-08-04 02:00:18'),
(151, 43, 79, '1754292618_6890618a2d839_6.jpg', '2025-08-04 02:00:18', '2025-08-04 02:00:18'),
(152, 44, 80, '1754293100_6890636cca837_3.jpg', '2025-08-04 02:08:20', '2025-08-04 02:08:20'),
(153, 44, 80, '1754293100_6890636cd5a4e_4.jpg', '2025-08-04 02:08:20', '2025-08-04 02:08:20'),
(154, 44, 81, '1754293100_6890636cf0fa3_3.jpg', '2025-08-04 02:08:21', '2025-08-04 02:08:21'),
(155, 44, 81, '1754293101_6890636d08421_4.jpg', '2025-08-04 02:08:21', '2025-08-04 02:08:21'),
(156, 45, 82, '1754293215_689063dfb9252_3.jpg', '2025-08-04 02:10:15', '2025-08-04 02:10:15'),
(157, 45, 82, '1754293215_689063dfc5ec4_4.jpg', '2025-08-04 02:10:15', '2025-08-04 02:10:15'),
(158, 45, 83, '1754293215_689063dfe0b32_3.jpg', '2025-08-04 02:10:15', '2025-08-04 02:10:15'),
(159, 45, 83, '1754293215_689063dfeea43_4.jpg', '2025-08-04 02:10:16', '2025-08-04 02:10:16'),
(160, 46, 84, '1754293583_6890654fad489_3.jpg', '2025-08-04 02:16:23', '2025-08-04 02:16:23'),
(161, 46, 84, '1754293583_6890654fbdbc1_4.jpg', '2025-08-04 02:16:23', '2025-08-04 02:16:23'),
(162, 46, 85, '1754293583_6890654fe0b7d_3.jpg', '2025-08-04 02:16:23', '2025-08-04 02:16:23'),
(163, 46, 85, '1754293583_6890654ff31ba_4.jpg', '2025-08-04 02:16:24', '2025-08-04 02:16:24'),
(164, 47, 86, '1754293908_6890669406424_3.jpg', '2025-08-04 02:21:48', '2025-08-04 02:21:48'),
(165, 47, 86, '1754293908_68906694195a2_4.jpg', '2025-08-04 02:21:48', '2025-08-04 02:21:48'),
(166, 48, 87, '1754319428_6890ca44286ea_2.jpg', '2025-08-04 09:27:08', '2025-08-04 09:27:08'),
(167, 48, 87, '1754319428_6890ca4432676_3.jpg', '2025-08-04 09:27:08', '2025-08-04 09:27:08'),
(168, 48, 87, '1754319428_6890ca443c636_4.jpg', '2025-08-04 09:27:08', '2025-08-04 09:27:08'),
(169, 48, 88, '1754319428_6890ca44536d9_3.jpg', '2025-08-04 09:27:08', '2025-08-04 09:27:08'),
(170, 48, 88, '1754319428_6890ca445ff14_4.jpg', '2025-08-04 09:27:08', '2025-08-04 09:27:08'),
(171, 48, 88, '1754319428_6890ca446a9a2_5.jpg', '2025-08-04 09:27:08', '2025-08-04 09:27:08'),
(172, 49, 89, '1754319721_6890cb699680a_3.jpg', '2025-08-04 09:32:01', '2025-08-04 09:32:01'),
(173, 49, 89, '1754319721_6890cb69a6408_4.jpg', '2025-08-04 09:32:01', '2025-08-04 09:32:01'),
(174, 49, 89, '1754319721_6890cb69b8cba_5.jpg', '2025-08-04 09:32:01', '2025-08-04 09:32:01'),
(175, 50, 90, '1754320008_6890cc88a85ca_3.jpg', '2025-08-04 09:36:48', '2025-08-04 09:36:48'),
(176, 50, 90, '1754320008_6890cc88b3d70_4.jpg', '2025-08-04 09:36:48', '2025-08-04 09:36:48'),
(177, 50, 90, '1754320008_6890cc88c181f_5.jpg', '2025-08-04 09:36:48', '2025-08-04 09:36:48'),
(178, 51, 91, '1754320402_6890ce12f3d5b_3.jpg', '2025-08-04 09:43:23', '2025-08-04 09:43:23'),
(179, 51, 91, '1754320403_6890ce130e670_4.jpg', '2025-08-04 09:43:23', '2025-08-04 09:43:23'),
(180, 52, 92, '1754376335_6891a88fd23c0_2.jpg', '2025-08-05 01:15:35', '2025-08-05 01:15:35'),
(181, 52, 92, '1754376335_6891a88fdc25b_3.jpg', '2025-08-05 01:15:35', '2025-08-05 01:15:35'),
(182, 52, 92, '1754376335_6891a88fe5f17_4.jpg', '2025-08-05 01:15:35', '2025-08-05 01:15:35'),
(183, 53, 93, '1754376512_6891a940bb5c6_2.jpg', '2025-08-05 01:18:32', '2025-08-05 01:18:32'),
(184, 53, 93, '1754376512_6891a940c857b_3.jpg', '2025-08-05 01:18:32', '2025-08-05 01:18:32'),
(185, 53, 93, '1754376512_6891a940d4b75_4.jpg', '2025-08-05 01:18:32', '2025-08-05 01:18:32'),
(186, 54, 94, '1754376871_6891aaa77a2ad_2.jpg', '2025-08-05 01:24:31', '2025-08-05 01:24:31'),
(187, 54, 94, '1754376871_6891aaa78a46a_3.jpg', '2025-08-05 01:24:31', '2025-08-05 01:24:31'),
(188, 54, 94, '1754376871_6891aaa7994b2_4.jpg', '2025-08-05 01:24:31', '2025-08-05 01:24:31'),
(189, 55, 95, '1754377070_6891ab6eecf64_2.jpg', '2025-08-05 01:27:51', '2025-08-05 01:27:51'),
(190, 55, 95, '1754377071_6891ab6f03064_3.jpg', '2025-08-05 01:27:51', '2025-08-05 01:27:51'),
(191, 55, 95, '1754377071_6891ab6f0ccd5_4.jpg', '2025-08-05 01:27:51', '2025-08-05 01:27:51'),
(192, 56, 96, '1754377308_6891ac5cd7283_2.jpg', '2025-08-05 01:31:48', '2025-08-05 01:31:48'),
(193, 56, 96, '1754377308_6891ac5ce1aca_3.jpg', '2025-08-05 01:31:48', '2025-08-05 01:31:48'),
(194, 56, 96, '1754377308_6891ac5ceb5ba_4.jpg', '2025-08-05 01:31:49', '2025-08-05 01:31:49'),
(195, 56, 97, '1754377309_6891ac5d0b11b_2.jpg', '2025-08-05 01:31:49', '2025-08-05 01:31:49'),
(196, 56, 97, '1754377309_6891ac5d151c3_3.jpg', '2025-08-05 01:31:49', '2025-08-05 01:31:49'),
(197, 56, 97, '1754377309_6891ac5d1e381_4.jpg', '2025-08-05 01:31:49', '2025-08-05 01:31:49'),
(198, 57, 98, '1754377599_6891ad7fd61d4_3.jpg', '2025-08-05 01:36:39', '2025-08-05 01:36:39'),
(199, 57, 98, '1754377599_6891ad7fe58d4_4.jpg', '2025-08-05 01:36:40', '2025-08-05 01:36:40'),
(200, 57, 98, '1754377600_6891ad8000a11_5.jpg', '2025-08-05 01:36:40', '2025-08-05 01:36:40'),
(201, 58, 99, '1754378118_6891af86833a9_3.jpg', '2025-08-05 01:45:18', '2025-08-05 01:45:18'),
(202, 58, 99, '1754378118_6891af8692536_4.jpg', '2025-08-05 01:45:18', '2025-08-05 01:45:18'),
(203, 58, 99, '1754378118_6891af869fde2_5.jpg', '2025-08-05 01:45:18', '2025-08-05 01:45:18'),
(204, 58, 99, '1754378118_6891af86aab02_6.jpg', '2025-08-05 01:45:18', '2025-08-05 01:45:18'),
(205, 58, 99, '1754378118_6891af86b523c_7.jpg', '2025-08-05 01:45:18', '2025-08-05 01:45:18'),
(206, 58, 99, '1754378118_6891af86beb07_8.jpg', '2025-08-05 01:45:18', '2025-08-05 01:45:18'),
(207, 59, 100, '1754378326_6891b05602252_3.jpg', '2025-08-05 01:48:46', '2025-08-05 01:48:46'),
(208, 59, 100, '1754378326_6891b0560f7fb_4.jpg', '2025-08-05 01:48:46', '2025-08-05 01:48:46'),
(209, 59, 100, '1754378326_6891b056199f4_5.jpg', '2025-08-05 01:48:46', '2025-08-05 01:48:46'),
(210, 60, 101, '1754458506_6892e98a7c128_3.jpg', '2025-08-06 00:05:06', '2025-08-06 00:05:06'),
(211, 60, 101, '1754458506_6892e98a8698d_4.jpg', '2025-08-06 00:05:06', '2025-08-06 00:05:06'),
(212, 60, 101, '1754458506_6892e98a96ce5_5.jpg', '2025-08-06 00:05:06', '2025-08-06 00:05:06'),
(213, 61, 102, '1754458605_6892e9edce56e_3.jpg', '2025-08-06 00:06:45', '2025-08-06 00:06:45'),
(214, 61, 102, '1754458605_6892e9ede041c_4.jpg', '2025-08-06 00:06:46', '2025-08-06 00:06:46'),
(215, 62, 103, '1754458720_6892ea60bae93_3.jpg', '2025-08-06 00:08:40', '2025-08-06 00:08:40'),
(216, 62, 103, '1754458720_6892ea60d0469_4.jpg', '2025-08-06 00:08:40', '2025-08-06 00:08:40'),
(217, 62, 103, '1754458720_6892ea60e4ea1_5.jpg', '2025-08-06 00:08:41', '2025-08-06 00:08:41'),
(218, 63, 104, '1754458810_6892eaba731b5_3.jpg', '2025-08-06 00:10:10', '2025-08-06 00:10:10'),
(219, 63, 104, '1754458810_6892eaba8292f_4.jpg', '2025-08-06 00:10:10', '2025-08-06 00:10:10'),
(220, 63, 104, '1754458810_6892eaba91dda_5.jpg', '2025-08-06 00:10:10', '2025-08-06 00:10:10'),
(221, 64, 105, '1754465420_6893048ccf7f1_3.jpg', '2025-08-06 02:00:20', '2025-08-06 02:00:20'),
(222, 64, 105, '1754465420_6893048cd92f7_4.jpg', '2025-08-06 02:00:20', '2025-08-06 02:00:20'),
(223, 64, 105, '1754465420_6893048ce30ec_5.jpg', '2025-08-06 02:00:20', '2025-08-06 02:00:20'),
(224, 65, 106, '1754465603_689305435a160_3.jpg', '2025-08-06 02:03:23', '2025-08-06 02:03:23'),
(225, 65, 106, '1754465603_68930543647ee_4.jpg', '2025-08-06 02:03:23', '2025-08-06 02:03:23'),
(226, 65, 106, '1754465603_6893054373c4a_5.jpg', '2025-08-06 02:03:23', '2025-08-06 02:03:23'),
(227, 66, 107, '1754898160_68999ef0238a1_1.jpg', '2025-08-11 02:12:40', '2025-08-11 02:12:40'),
(228, 66, 107, '1754898160_68999ef02e860_3.jpg', '2025-08-11 02:12:40', '2025-08-11 02:12:40'),
(229, 66, 107, '1754898160_68999ef0390a6_5.jpg', '2025-08-11 02:12:40', '2025-08-11 02:12:40'),
(230, 66, 107, '1754898160_68999ef043203_6.jpg', '2025-08-11 02:12:40', '2025-08-11 02:12:40'),
(231, 67, 108, '1754898848_6899a1a06e5be_12.jpg', '2025-08-11 02:24:08', '2025-08-11 02:24:08'),
(232, 67, 108, '1754898848_6899a1a07dd44_1.jpg', '2025-08-11 02:24:08', '2025-08-11 02:24:08'),
(233, 67, 108, '1754898848_6899a1a08e4e9_3.jpg', '2025-08-11 02:24:08', '2025-08-11 02:24:08'),
(234, 67, 108, '1754898848_6899a1a09dddc_4.jpg', '2025-08-11 02:24:08', '2025-08-11 02:24:08'),
(235, 67, 109, '1754898848_6899a1a0b93c9_12.jpg', '2025-08-11 02:24:08', '2025-08-11 02:24:08'),
(236, 67, 109, '1754898848_6899a1a0c5c26_1.jpg', '2025-08-11 02:24:08', '2025-08-11 02:24:08'),
(237, 67, 109, '1754898848_6899a1a0cec32_3.jpg', '2025-08-11 02:24:08', '2025-08-11 02:24:08'),
(238, 67, 109, '1754898848_6899a1a0d837d_4.jpg', '2025-08-11 02:24:08', '2025-08-11 02:24:08'),
(239, 67, 110, '1754898848_6899a1a0ec380_12.jpg', '2025-08-11 02:24:09', '2025-08-11 02:24:09'),
(240, 67, 110, '1754898849_6899a1a10290a_3.jpg', '2025-08-11 02:24:09', '2025-08-11 02:24:09'),
(241, 67, 110, '1754898849_6899a1a10f711_4.jpg', '2025-08-11 02:24:09', '2025-08-11 02:24:09'),
(242, 67, 111, '1754898849_6899a1a126949_12.jpg', '2025-08-11 02:24:09', '2025-08-11 02:24:09'),
(243, 67, 111, '1754898849_6899a1a12f737_1.jpg', '2025-08-11 02:24:09', '2025-08-11 02:24:09'),
(244, 67, 111, '1754898849_6899a1a138c20_3.jpg', '2025-08-11 02:24:09', '2025-08-11 02:24:09'),
(245, 67, 111, '1754898849_6899a1a142cb8_4.jpg', '2025-08-11 02:24:09', '2025-08-11 02:24:09'),
(246, 68, 116, '1754899152_6899a2d07f0ab_12.jpg', '2025-08-11 02:29:12', '2025-08-11 02:29:12'),
(247, 68, 116, '1754899152_6899a2d08ce49_1.jpg', '2025-08-11 02:29:12', '2025-08-11 02:29:12'),
(248, 68, 116, '1754899152_6899a2d09af3e_4.jpg', '2025-08-11 02:29:12', '2025-08-11 02:29:12'),
(249, 68, 116, '1754899152_6899a2d0a4745_52.jpg', '2025-08-11 02:29:12', '2025-08-11 02:29:12'),
(250, 68, 116, '1754899152_6899a2d0ae9ee_5.jpg', '2025-08-11 02:29:12', '2025-08-11 02:29:12'),
(251, 68, 117, '1754899152_6899a2d0c96c3_12.jpg', '2025-08-11 02:29:12', '2025-08-11 02:29:12'),
(252, 68, 117, '1754899152_6899a2d0d35eb_3.jpg', '2025-08-11 02:29:12', '2025-08-11 02:29:12'),
(253, 68, 117, '1754899152_6899a2d0e3e4f_4.jpg', '2025-08-11 02:29:12', '2025-08-11 02:29:12'),
(254, 68, 117, '1754899152_6899a2d0efc30_53.jpg', '2025-08-11 02:29:13', '2025-08-11 02:29:13'),
(255, 68, 117, '1754899153_6899a2d105ec9_5.jpg', '2025-08-11 02:29:13', '2025-08-11 02:29:13'),
(256, 68, 118, '1754899153_6899a2d123294_12.jpg', '2025-08-11 02:29:13', '2025-08-11 02:29:13'),
(257, 68, 118, '1754899153_6899a2d13147a_1.jpg', '2025-08-11 02:29:13', '2025-08-11 02:29:13'),
(258, 68, 118, '1754899153_6899a2d13cf56_3.jpg', '2025-08-11 02:29:13', '2025-08-11 02:29:13'),
(259, 68, 118, '1754899153_6899a2d148416_4.jpg', '2025-08-11 02:29:13', '2025-08-11 02:29:13'),
(260, 68, 118, '1754899153_6899a2d154c70_53.jpg', '2025-08-11 02:29:13', '2025-08-11 02:29:13'),
(261, 68, 118, '1754899153_6899a2d15f68d_5.jpg', '2025-08-11 02:29:13', '2025-08-11 02:29:13'),
(262, 69, 124, '1754916792_6899e7b819c97_12.jpg', '2025-08-11 07:23:12', '2025-08-11 07:23:12'),
(263, 69, 124, '1754916792_6899e7b82a236_1.jpg', '2025-08-11 07:23:12', '2025-08-11 07:23:12'),
(264, 69, 124, '1754916792_6899e7b837bc4_3.jpg', '2025-08-11 07:23:12', '2025-08-11 07:23:12'),
(265, 69, 124, '1754916792_6899e7b846c1f_4.jpg', '2025-08-11 07:23:12', '2025-08-11 07:23:12'),
(266, 70, 125, '1754916878_6899e80e228eb_12.jpg', '2025-08-11 07:24:38', '2025-08-11 07:24:38'),
(267, 70, 125, '1754916878_6899e80e38dd4_3.jpg', '2025-08-11 07:24:38', '2025-08-11 07:24:38'),
(268, 70, 125, '1754916878_6899e80e475ab_4.jpg', '2025-08-11 07:24:38', '2025-08-11 07:24:38'),
(269, 70, 125, '1754916878_6899e80e51761_5.jpg', '2025-08-11 07:24:38', '2025-08-11 07:24:38'),
(270, 71, 126, '1754916948_6899e85463d01_12.jpg', '2025-08-11 07:25:48', '2025-08-11 07:25:48'),
(271, 71, 126, '1754916948_6899e8546fd75_1.jpg', '2025-08-11 07:25:48', '2025-08-11 07:25:48'),
(272, 71, 126, '1754916948_6899e8547cf81_3.jpg', '2025-08-11 07:25:48', '2025-08-11 07:25:48'),
(273, 71, 126, '1754916948_6899e85489e47_4.jpg', '2025-08-11 07:25:48', '2025-08-11 07:25:48'),
(274, 72, 127, '1754917060_6899e8c4b2cf3_1.jpg', '2025-08-11 07:27:40', '2025-08-11 07:27:40'),
(275, 72, 127, '1754917060_6899e8c4bef63_3.jpg', '2025-08-11 07:27:40', '2025-08-11 07:27:40'),
(276, 72, 127, '1754917060_6899e8c4cdff6_4.jpg', '2025-08-11 07:27:40', '2025-08-11 07:27:40'),
(277, 73, 128, '1754917131_6899e90b3df07_12.jpg', '2025-08-11 07:28:51', '2025-08-11 07:28:51'),
(278, 73, 128, '1754917131_6899e90b49d66_1.jpg', '2025-08-11 07:28:51', '2025-08-11 07:28:51'),
(279, 73, 128, '1754917131_6899e90b5677f_3.jpg', '2025-08-11 07:28:51', '2025-08-11 07:28:51'),
(280, 73, 128, '1754917131_6899e90b625cb_4.jpg', '2025-08-11 07:28:51', '2025-08-11 07:28:51'),
(281, 73, 128, '1754917131_6899e90b6e1eb_5.jpg', '2025-08-11 07:28:51', '2025-08-11 07:28:51'),
(282, 74, 129, '1754917191_6899e947bbd09_12.jpg', '2025-08-11 07:29:51', '2025-08-11 07:29:51'),
(283, 74, 129, '1754917191_6899e947c76b5_3.jpg', '2025-08-11 07:29:51', '2025-08-11 07:29:51'),
(284, 74, 129, '1754917191_6899e947d2736_4.jpg', '2025-08-11 07:29:51', '2025-08-11 07:29:51'),
(285, 75, 130, '1754978941_689ada7d47dd3_2.jpg', '2025-08-12 00:39:01', '2025-08-12 00:39:01'),
(286, 75, 130, '1754978941_689ada7d552f8_3.jpg', '2025-08-12 00:39:01', '2025-08-12 00:39:01'),
(287, 75, 130, '1754978941_689ada7d608fb_4.jpg', '2025-08-12 00:39:01', '2025-08-12 00:39:01'),
(288, 75, 130, '1754978941_689ada7d6ecbe_5.jpg', '2025-08-12 00:39:01', '2025-08-12 00:39:01'),
(289, 76, 131, '1754979063_689adaf7e4c19_2.jpg', '2025-08-12 00:41:03', '2025-08-12 00:41:03'),
(290, 76, 131, '1754979063_689adaf7f2975_3.jpg', '2025-08-12 00:41:04', '2025-08-12 00:41:04'),
(291, 76, 131, '1754979064_689adaf80e3e2_4.jpg', '2025-08-12 00:41:04', '2025-08-12 00:41:04'),
(292, 76, 131, '1754979064_689adaf81e0c3_5.jpg', '2025-08-12 00:41:04', '2025-08-12 00:41:04'),
(293, 77, 132, '1754979193_689adb7960f07_2.jpg', '2025-08-12 00:43:13', '2025-08-12 00:43:13'),
(294, 77, 132, '1754979193_689adb796dca6_3.jpg', '2025-08-12 00:43:13', '2025-08-12 00:43:13'),
(295, 77, 132, '1754979193_689adb7979788_4.jpg', '2025-08-12 00:43:13', '2025-08-12 00:43:13'),
(296, 77, 132, '1754979193_689adb7988bd8_5.jpg', '2025-08-12 00:43:13', '2025-08-12 00:43:13'),
(297, 78, 133, '1754979350_689adc162d738_2.jpg', '2025-08-12 00:45:50', '2025-08-12 00:45:50'),
(298, 78, 133, '1754979350_689adc1639da7_3.jpg', '2025-08-12 00:45:50', '2025-08-12 00:45:50'),
(299, 78, 133, '1754979350_689adc1646eb5_4.jpg', '2025-08-12 00:45:50', '2025-08-12 00:45:50'),
(300, 78, 133, '1754979350_689adc16550de_5.jpg', '2025-08-12 00:45:50', '2025-08-12 00:45:50'),
(301, 78, 134, '1754979350_689adc166b18e_2.jpg', '2025-08-12 00:45:50', '2025-08-12 00:45:50'),
(302, 78, 134, '1754979350_689adc1678ecd_3.jpg', '2025-08-12 00:45:50', '2025-08-12 00:45:50'),
(303, 78, 134, '1754979350_689adc1682832_4.jpg', '2025-08-12 00:45:50', '2025-08-12 00:45:50'),
(304, 78, 134, '1754979350_689adc168bb2d_5.jpg', '2025-08-12 00:45:50', '2025-08-12 00:45:50'),
(305, 79, 135, '1754979627_689add2bf24b9_2.jpg', '2025-08-12 00:50:28', '2025-08-12 00:50:28'),
(306, 79, 135, '1754979628_689add2c0e1e5_3.jpg', '2025-08-12 00:50:28', '2025-08-12 00:50:28'),
(307, 79, 135, '1754979628_689add2c17abc_4.jpg', '2025-08-12 00:50:28', '2025-08-12 00:50:28'),
(308, 79, 135, '1754979628_689add2c21466_5.jpg', '2025-08-12 00:50:28', '2025-08-12 00:50:28'),
(309, 79, 136, '1754979628_689add2c3eb32_2.jpg', '2025-08-12 00:50:28', '2025-08-12 00:50:28'),
(310, 79, 136, '1754979628_689add2c4e65b_3.jpg', '2025-08-12 00:50:28', '2025-08-12 00:50:28'),
(311, 79, 136, '1754979628_689add2c5a33b_4.jpg', '2025-08-12 00:50:28', '2025-08-12 00:50:28'),
(312, 79, 136, '1754979628_689add2c693c7_5.jpg', '2025-08-12 00:50:28', '2025-08-12 00:50:28'),
(313, 80, 137, '1754979893_689ade351c807_2.jpg', '2025-08-12 00:54:53', '2025-08-12 00:54:53'),
(314, 80, 137, '1754979893_689ade352bb91_3.jpg', '2025-08-12 00:54:53', '2025-08-12 00:54:53'),
(315, 80, 137, '1754979893_689ade353a964_4.jpg', '2025-08-12 00:54:53', '2025-08-12 00:54:53'),
(316, 80, 137, '1754979893_689ade354501c_5.jpg', '2025-08-12 00:54:53', '2025-08-12 00:54:53'),
(317, 80, 138, '1754979893_689ade3561b7e_2.jpg', '2025-08-12 00:54:53', '2025-08-12 00:54:53'),
(318, 80, 138, '1754979893_689ade3570537_3.jpg', '2025-08-12 00:54:53', '2025-08-12 00:54:53'),
(319, 80, 138, '1754979893_689ade357c98a_4.jpg', '2025-08-12 00:54:53', '2025-08-12 00:54:53'),
(320, 80, 138, '1754979893_689ade358908c_5.jpg', '2025-08-12 00:54:53', '2025-08-12 00:54:53'),
(321, 80, 139, '1754979893_689ade359f7c6_2.jpg', '2025-08-12 00:54:53', '2025-08-12 00:54:53'),
(322, 80, 139, '1754979893_689ade35abfc7_3.jpg', '2025-08-12 00:54:53', '2025-08-12 00:54:53'),
(323, 80, 139, '1754979893_689ade35b84c5_4.jpg', '2025-08-12 00:54:53', '2025-08-12 00:54:53'),
(324, 80, 139, '1754979893_689ade35c5ff2_5.jpg', '2025-08-12 00:54:53', '2025-08-12 00:54:53'),
(325, 80, 140, '1754979893_689ade35e284e_2.jpg', '2025-08-12 00:54:53', '2025-08-12 00:54:53'),
(326, 80, 140, '1754979893_689ade35ee463_3.jpg', '2025-08-12 00:54:54', '2025-08-12 00:54:54'),
(327, 80, 140, '1754979894_689ade3603947_4.jpg', '2025-08-12 00:54:54', '2025-08-12 00:54:54'),
(328, 80, 140, '1754979894_689ade360e154_5.jpg', '2025-08-12 00:54:54', '2025-08-12 00:54:54'),
(329, 81, 141, '1754980045_689adecd1a114_2.jpg', '2025-08-12 00:57:25', '2025-08-12 00:57:25'),
(330, 81, 141, '1754980045_689adecd258aa_3.jpg', '2025-08-12 00:57:25', '2025-08-12 00:57:25'),
(331, 81, 141, '1754980045_689adecd31832_4.jpg', '2025-08-12 00:57:25', '2025-08-12 00:57:25'),
(332, 81, 141, '1754980045_689adecd3d337_5.jpg', '2025-08-12 00:57:25', '2025-08-12 00:57:25'),
(333, 82, 142, '1754980153_689adf3976726_2.jpg', '2025-08-12 00:59:13', '2025-08-12 00:59:13'),
(334, 82, 142, '1754980153_689adf397fbba_3.jpg', '2025-08-12 00:59:13', '2025-08-12 00:59:13'),
(335, 82, 142, '1754980153_689adf398d7f0_4.jpg', '2025-08-12 00:59:13', '2025-08-12 00:59:13'),
(336, 82, 142, '1754980153_689adf399a3e3_5.jpg', '2025-08-12 00:59:13', '2025-08-12 00:59:13'),
(337, 83, 143, '1754980273_689adfb1d3efe_2.jpg', '2025-08-12 01:01:13', '2025-08-12 01:01:13'),
(338, 83, 143, '1754980273_689adfb1e1098_3.jpg', '2025-08-12 01:01:13', '2025-08-12 01:01:13'),
(339, 83, 143, '1754980273_689adfb1ed5ad_4.jpg', '2025-08-12 01:01:14', '2025-08-12 01:01:14'),
(340, 83, 143, '1754980274_689adfb2078e3_5.jpg', '2025-08-12 01:01:14', '2025-08-12 01:01:14'),
(341, 83, 144, '1754980274_689adfb21c0bb_2.jpg', '2025-08-12 01:01:14', '2025-08-12 01:01:14'),
(342, 83, 144, '1754980274_689adfb226518_3.jpg', '2025-08-12 01:01:14', '2025-08-12 01:01:14'),
(343, 83, 144, '1754980274_689adfb22fffb_4.jpg', '2025-08-12 01:01:14', '2025-08-12 01:01:14'),
(344, 84, 145, '1754980428_689ae04c520a5_3.jpg', '2025-08-12 01:03:48', '2025-08-12 01:03:48'),
(345, 84, 145, '1754980428_689ae04c5d7e5_4.jpg', '2025-08-12 01:03:48', '2025-08-12 01:03:48'),
(346, 84, 145, '1754980428_689ae04c66ce1_5.jpg', '2025-08-12 01:03:48', '2025-08-12 01:03:48'),
(347, 84, 145, '1754980428_689ae04c6ff04_6.jpg', '2025-08-12 01:03:48', '2025-08-12 01:03:48'),
(348, 85, 146, '1754980573_689ae0dd64dfa_2.jpg', '2025-08-12 01:06:13', '2025-08-12 01:06:13'),
(349, 85, 146, '1754980573_689ae0dd74891_3.jpg', '2025-08-12 01:06:13', '2025-08-12 01:06:13'),
(350, 85, 146, '1754980573_689ae0dd8424a_4.jpg', '2025-08-12 01:06:13', '2025-08-12 01:06:13'),
(351, 85, 146, '1754980573_689ae0dd93510_5.jpg', '2025-08-12 01:06:13', '2025-08-12 01:06:13'),
(352, 86, 147, '1754980706_689ae16270621_2.jpg', '2025-08-12 01:08:26', '2025-08-12 01:08:26'),
(353, 86, 147, '1754980706_689ae1627c253_3.jpg', '2025-08-12 01:08:26', '2025-08-12 01:08:26'),
(354, 86, 147, '1754980706_689ae1628a809_4.jpg', '2025-08-12 01:08:26', '2025-08-12 01:08:26'),
(355, 86, 147, '1754980706_689ae162991b0_5.jpg', '2025-08-12 01:08:26', '2025-08-12 01:08:26'),
(356, 87, 148, '1754980842_689ae1eace10e_2.jpg', '2025-08-12 01:10:42', '2025-08-12 01:10:42'),
(357, 87, 148, '1754980842_689ae1eadafc5_3.jpg', '2025-08-12 01:10:42', '2025-08-12 01:10:42'),
(358, 87, 148, '1754980842_689ae1eae71b5_4.jpg', '2025-08-12 01:10:42', '2025-08-12 01:10:42'),
(359, 87, 148, '1754980842_689ae1eaf1139_5.jpg', '2025-08-12 01:10:43', '2025-08-12 01:10:43'),
(360, 88, 149, '1754980967_689ae267dca7b_2.jpg', '2025-08-12 01:12:47', '2025-08-12 01:12:47'),
(361, 88, 149, '1754980967_689ae267eb0d2_3.jpg', '2025-08-12 01:12:48', '2025-08-12 01:12:48'),
(362, 88, 149, '1754980968_689ae26804fea_4.jpg', '2025-08-12 01:12:48', '2025-08-12 01:12:48'),
(363, 88, 149, '1754980968_689ae2680e407_5.jpg', '2025-08-12 01:12:48', '2025-08-12 01:12:48'),
(364, 89, 150, '1755000340_689b2e14b73a4_2.jpg', '2025-08-12 06:35:40', '2025-08-12 06:35:40'),
(365, 89, 150, '1755000340_689b2e14c809d_3.jpg', '2025-08-12 06:35:40', '2025-08-12 06:35:40'),
(366, 89, 150, '1755000340_689b2e14d274f_4.jpg', '2025-08-12 06:35:40', '2025-08-12 06:35:40'),
(367, 89, 150, '1755000340_689b2e14dc334_5.jpg', '2025-08-12 06:35:40', '2025-08-12 06:35:40'),
(368, 90, 151, '1755000471_689b2e97451b9_2.jpg', '2025-08-12 06:37:51', '2025-08-12 06:37:51'),
(369, 90, 151, '1755000471_689b2e9752eaf_3.jpg', '2025-08-12 06:37:51', '2025-08-12 06:37:51'),
(370, 90, 151, '1755000471_689b2e9760505_4.jpg', '2025-08-12 06:37:51', '2025-08-12 06:37:51'),
(371, 90, 151, '1755000471_689b2e97713a7_5.jpg', '2025-08-12 06:37:51', '2025-08-12 06:37:51'),
(372, 91, 152, '1755000573_689b2efdd4711_2.jpg', '2025-08-12 06:39:33', '2025-08-12 06:39:33'),
(373, 91, 152, '1755000573_689b2efde3f19_3.jpg', '2025-08-12 06:39:33', '2025-08-12 06:39:33'),
(374, 91, 152, '1755000573_689b2efdf27c4_4.jpg', '2025-08-12 06:39:34', '2025-08-12 06:39:34'),
(375, 91, 152, '1755000574_689b2efe0d09c_5.jpg', '2025-08-12 06:39:34', '2025-08-12 06:39:34'),
(376, 92, 153, '1755000719_689b2f8f69c78_2.jpg', '2025-08-12 06:41:59', '2025-08-12 06:41:59'),
(377, 92, 153, '1755000719_689b2f8f76245_3.jpg', '2025-08-12 06:41:59', '2025-08-12 06:41:59'),
(378, 92, 153, '1755000719_689b2f8f84dd1_4.jpg', '2025-08-12 06:41:59', '2025-08-12 06:41:59'),
(379, 92, 153, '1755000719_689b2f8f92370_5.jpg', '2025-08-12 06:41:59', '2025-08-12 06:41:59'),
(380, 93, 154, '1755000905_689b304930326_2.jpg', '2025-08-12 06:45:05', '2025-08-12 06:45:05'),
(381, 93, 154, '1755000905_689b30493df09_3.jpg', '2025-08-12 06:45:05', '2025-08-12 06:45:05'),
(382, 93, 154, '1755000905_689b304946f87_4.jpg', '2025-08-12 06:45:05', '2025-08-12 06:45:05'),
(383, 93, 154, '1755000905_689b304953d07_5.jpg', '2025-08-12 06:45:05', '2025-08-12 06:45:05'),
(384, 93, 155, '1755000905_689b30496f64a_2.jpg', '2025-08-12 06:45:05', '2025-08-12 06:45:05'),
(385, 93, 155, '1755000905_689b30497e6f2_3.jpg', '2025-08-12 06:45:05', '2025-08-12 06:45:05'),
(386, 93, 155, '1755000905_689b30498a1cd_4.jpg', '2025-08-12 06:45:05', '2025-08-12 06:45:05'),
(387, 93, 155, '1755000905_689b304996616_5.jpg', '2025-08-12 06:45:05', '2025-08-12 06:45:05'),
(388, 94, 156, '1755001307_689b31db333de_2.jpg', '2025-08-12 06:51:47', '2025-08-12 06:51:47'),
(389, 94, 156, '1755001307_689b31db3ed17_3.jpg', '2025-08-12 06:51:47', '2025-08-12 06:51:47'),
(390, 94, 156, '1755001307_689b31db4cc4a_4.jpg', '2025-08-12 06:51:47', '2025-08-12 06:51:47'),
(391, 94, 156, '1755001307_689b31db5b436_5.jpg', '2025-08-12 06:51:47', '2025-08-12 06:51:47'),
(392, 94, 157, '1755001307_689b31db7bc9a_2.jpg', '2025-08-12 06:51:47', '2025-08-12 06:51:47'),
(393, 94, 157, '1755001307_689b31db8c351_3.jpg', '2025-08-12 06:51:47', '2025-08-12 06:51:47'),
(394, 94, 157, '1755001307_689b31db9ce43_4.jpg', '2025-08-12 06:51:47', '2025-08-12 06:51:47'),
(395, 95, 158, '1755001459_689b327345b81_3.jpg', '2025-08-12 06:54:19', '2025-08-12 06:54:19'),
(396, 95, 158, '1755001459_689b32735382d_4.jpg', '2025-08-12 06:54:19', '2025-08-12 06:54:19'),
(397, 95, 158, '1755001459_689b3273638db_5.jpg', '2025-08-12 06:54:19', '2025-08-12 06:54:19'),
(398, 95, 158, '1755001459_689b327373436_6.jpg', '2025-08-12 06:54:19', '2025-08-12 06:54:19'),
(399, 95, 159, '1755001459_689b327392686_2.jpg', '2025-08-12 06:54:19', '2025-08-12 06:54:19'),
(400, 95, 159, '1755001459_689b3273a265d_3.jpg', '2025-08-12 06:54:19', '2025-08-12 06:54:19'),
(401, 95, 159, '1755001459_689b3273b35d5_4.jpg', '2025-08-12 06:54:19', '2025-08-12 06:54:19'),
(402, 95, 159, '1755001459_689b3273c26e1_5.jpg', '2025-08-12 06:54:19', '2025-08-12 06:54:19'),
(403, 96, 160, '1755001992_689b348880f52_2.jpg', '2025-08-12 07:03:12', '2025-08-12 07:03:12'),
(404, 96, 160, '1755001992_689b34889344d_3.jpg', '2025-08-12 07:03:12', '2025-08-12 07:03:12'),
(405, 96, 160, '1755001992_689b3488a6751_4.jpg', '2025-08-12 07:03:12', '2025-08-12 07:03:12'),
(406, 96, 160, '1755001992_689b3488bd67f_5.jpg', '2025-08-12 07:03:12', '2025-08-12 07:03:12'),
(407, 96, 161, '1755001992_689b3488e6016_3.jpg', '2025-08-12 07:03:13', '2025-08-12 07:03:13'),
(408, 96, 161, '1755001993_689b348905cc7_4.jpg', '2025-08-12 07:03:13', '2025-08-12 07:03:13'),
(409, 96, 161, '1755001993_689b34891bc37_5.jpg', '2025-08-12 07:03:13', '2025-08-12 07:03:13'),
(410, 96, 161, '1755001993_689b34892d5a7_6.jpg', '2025-08-12 07:03:13', '2025-08-12 07:03:13'),
(411, 96, 162, '1755001993_689b3489518fa_3.jpg', '2025-08-12 07:03:13', '2025-08-12 07:03:13'),
(412, 96, 162, '1755001993_689b3489635d5_4.jpg', '2025-08-12 07:03:13', '2025-08-12 07:03:13'),
(413, 96, 162, '1755001993_689b3489744ed_5.jpg', '2025-08-12 07:03:13', '2025-08-12 07:03:13'),
(414, 96, 162, '1755001993_689b348985944_6.jpg', '2025-08-12 07:03:13', '2025-08-12 07:03:13'),
(415, 97, 163, '1755008526_689b4e0eae7e8_3.jpg', '2025-08-12 08:52:06', '2025-08-12 08:52:06'),
(416, 97, 163, '1755008526_689b4e0eda861_4.jpg', '2025-08-12 08:52:07', '2025-08-12 08:52:07'),
(417, 97, 163, '1755008527_689b4e0f069dd_5.jpg', '2025-08-12 08:52:07', '2025-08-12 08:52:07'),
(418, 97, 163, '1755008527_689b4e0f16457_6.jpg', '2025-08-12 08:52:07', '2025-08-12 08:52:07'),
(419, 97, 164, '1755008527_689b4e0f33f01_3.jpg', '2025-08-12 08:52:07', '2025-08-12 08:52:07'),
(420, 97, 164, '1755008527_689b4e0f456d6_4.jpg', '2025-08-12 08:52:07', '2025-08-12 08:52:07'),
(421, 97, 164, '1755008527_689b4e0f5bab3_5.jpg', '2025-08-12 08:52:07', '2025-08-12 08:52:07'),
(422, 97, 164, '1755008527_689b4e0f6b20e_6.jpg', '2025-08-12 08:52:07', '2025-08-12 08:52:07'),
(423, 98, 165, '1755008679_689b4ea722718_3.jpg', '2025-08-12 08:54:39', '2025-08-12 08:54:39'),
(424, 98, 165, '1755008679_689b4ea7330a9_4.jpg', '2025-08-12 08:54:39', '2025-08-12 08:54:39'),
(425, 98, 165, '1755008679_689b4ea740430_5.jpg', '2025-08-12 08:54:39', '2025-08-12 08:54:39'),
(426, 98, 165, '1755008679_689b4ea75026a_6.jpg', '2025-08-12 08:54:39', '2025-08-12 08:54:39'),
(427, 99, 166, '1755008831_689b4f3f6cc86_3.jpg', '2025-08-12 08:57:11', '2025-08-12 08:57:11'),
(428, 99, 166, '1755008831_689b4f3f7efd8_4.jpg', '2025-08-12 08:57:11', '2025-08-12 08:57:11'),
(429, 99, 166, '1755008831_689b4f3f9024c_5.jpg', '2025-08-12 08:57:11', '2025-08-12 08:57:11'),
(430, 99, 166, '1755008831_689b4f3fa4b8e_6.jpg', '2025-08-12 08:57:11', '2025-08-12 08:57:11'),
(431, 100, 167, '1755063055_689c230f32f94_3.jpg', '2025-08-13 00:00:55', '2025-08-13 00:00:55'),
(432, 100, 167, '1755063055_689c230f44e4c_4.jpg', '2025-08-13 00:00:55', '2025-08-13 00:00:55'),
(433, 100, 167, '1755063055_689c230f55293_5.jpg', '2025-08-13 00:00:55', '2025-08-13 00:00:55'),
(434, 100, 167, '1755063055_689c230f61449_6.jpg', '2025-08-13 00:00:55', '2025-08-13 00:00:55'),
(435, 101, 168, '1755063234_689c23c2455ec_2.jpg', '2025-08-13 00:03:54', '2025-08-13 00:03:54'),
(436, 101, 168, '1755063234_689c23c24e84a_3.jpg', '2025-08-13 00:03:54', '2025-08-13 00:03:54'),
(437, 101, 168, '1755063234_689c23c2589aa_4.jpg', '2025-08-13 00:03:54', '2025-08-13 00:03:54'),
(438, 101, 168, '1755063234_689c23c262a48_5.jpg', '2025-08-13 00:03:54', '2025-08-13 00:03:54'),
(439, 102, 169, '1755063367_689c244709140_2.jpg', '2025-08-13 00:06:07', '2025-08-13 00:06:07'),
(440, 102, 169, '1755063367_689c244717b4a_3.jpg', '2025-08-13 00:06:07', '2025-08-13 00:06:07'),
(441, 102, 169, '1755063367_689c2447258c6_4.jpg', '2025-08-13 00:06:07', '2025-08-13 00:06:07'),
(442, 102, 169, '1755063367_689c244734d66_5.jpg', '2025-08-13 00:06:07', '2025-08-13 00:06:07'),
(443, 103, 170, '1755063526_689c24e655db5_22.jpg', '2025-08-13 00:08:46', '2025-08-13 00:08:46'),
(444, 103, 170, '1755063526_689c24e663139_32.jpg', '2025-08-13 00:08:46', '2025-08-13 00:08:46'),
(445, 103, 170, '1755063526_689c24e670657_42.jpg', '2025-08-13 00:08:46', '2025-08-13 00:08:46'),
(446, 105, 172, '1755063964_689c269ceab40_2.jpg', '2025-08-13 00:16:05', '2025-08-13 00:16:05'),
(447, 105, 172, '1755063965_689c269d02bd4_3.jpg', '2025-08-13 00:16:05', '2025-08-13 00:16:05'),
(448, 105, 172, '1755063965_689c269d0cef4_4.jpg', '2025-08-13 00:16:05', '2025-08-13 00:16:05'),
(449, 105, 172, '1755063965_689c269d15f43_5.jpg', '2025-08-13 00:16:05', '2025-08-13 00:16:05'),
(450, 105, 173, '1755063965_689c269d27b10_2.jpg', '2025-08-13 00:16:05', '2025-08-13 00:16:05'),
(451, 105, 173, '1755063965_689c269d3136d_3.jpg', '2025-08-13 00:16:05', '2025-08-13 00:16:05'),
(452, 105, 173, '1755063965_689c269d3c82f_4.jpg', '2025-08-13 00:16:05', '2025-08-13 00:16:05'),
(453, 105, 173, '1755063965_689c269d45dc4_5.jpg', '2025-08-13 00:16:05', '2025-08-13 00:16:05'),
(454, 106, 174, '1755064226_689c27a2a766a_2.jpg', '2025-08-13 00:20:26', '2025-08-13 00:20:26'),
(455, 106, 174, '1755064226_689c27a2b6c6f_3.jpg', '2025-08-13 00:20:26', '2025-08-13 00:20:26'),
(456, 106, 174, '1755064226_689c27a2c8a37_4.jpg', '2025-08-13 00:20:26', '2025-08-13 00:20:26'),
(457, 106, 175, '1755064226_689c27a2df377_2.jpg', '2025-08-13 00:20:26', '2025-08-13 00:20:26'),
(458, 106, 175, '1755064226_689c27a2ed624_3.jpg', '2025-08-13 00:20:27', '2025-08-13 00:20:27'),
(459, 106, 175, '1755064227_689c27a304253_4.jpg', '2025-08-13 00:20:27', '2025-08-13 00:20:27'),
(460, 107, 176, '1755064316_689c27fc0603d_2.jpg', '2025-08-13 00:21:56', '2025-08-13 00:21:56'),
(461, 107, 176, '1755064316_689c27fc1154c_3.jpg', '2025-08-13 00:21:56', '2025-08-13 00:21:56'),
(462, 107, 176, '1755064316_689c27fc1b21e_4.jpg', '2025-08-13 00:21:56', '2025-08-13 00:21:56'),
(463, 108, 177, '1755065124_689c2b2460349_2.jpg', '2025-08-13 00:35:24', '2025-08-13 00:35:24'),
(464, 108, 177, '1755065124_689c2b246e0ff_3.jpg', '2025-08-13 00:35:24', '2025-08-13 00:35:24'),
(465, 108, 177, '1755065124_689c2b247b44e_4.jpg', '2025-08-13 00:35:24', '2025-08-13 00:35:24'),
(466, 109, 178, '1755066493_689c307d7deba_2.jpg', '2025-08-13 00:58:13', '2025-08-13 00:58:13'),
(467, 109, 178, '1755066493_689c307d88ef2_3.jpg', '2025-08-13 00:58:13', '2025-08-13 00:58:13'),
(468, 109, 178, '1755066493_689c307d96672_4.jpg', '2025-08-13 00:58:13', '2025-08-13 00:58:13'),
(469, 109, 178, '1755066493_689c307da3b7c_5.jpg', '2025-08-13 00:58:13', '2025-08-13 00:58:13'),
(470, 110, 179, '1755069498_689c3c3a212d6_2.jpg', '2025-08-13 01:48:18', '2025-08-13 01:48:18'),
(471, 110, 179, '1755069498_689c3c3a2b700_3.jpg', '2025-08-13 01:48:18', '2025-08-13 01:48:18'),
(472, 110, 179, '1755069498_689c3c3a360c2_4.jpg', '2025-08-13 01:48:18', '2025-08-13 01:48:18'),
(473, 110, 179, '1755069498_689c3c3a40d05_5.jpg', '2025-08-13 01:48:18', '2025-08-13 01:48:18'),
(474, 110, 180, '1755069498_689c3c3a56b5a_2.jpg', '2025-08-13 01:48:18', '2025-08-13 01:48:18'),
(475, 110, 180, '1755069498_689c3c3a65026_3.jpg', '2025-08-13 01:48:18', '2025-08-13 01:48:18'),
(476, 110, 180, '1755069498_689c3c3a73aa6_4.jpg', '2025-08-13 01:48:18', '2025-08-13 01:48:18'),
(477, 110, 180, '1755069498_689c3c3a82234_5.jpg', '2025-08-13 01:48:18', '2025-08-13 01:48:18'),
(478, 111, 181, '1755069589_689c3c95b87f5_2.jpg', '2025-08-13 01:49:49', '2025-08-13 01:49:49'),
(479, 111, 181, '1755069589_689c3c95c8ff7_3.jpg', '2025-08-13 01:49:49', '2025-08-13 01:49:49'),
(480, 111, 181, '1755069589_689c3c95db749_4.jpg', '2025-08-13 01:49:49', '2025-08-13 01:49:49'),
(481, 111, 181, '1755069589_689c3c95eb726_5.jpg', '2025-08-13 01:49:50', '2025-08-13 01:49:50'),
(482, 112, 182, '1755069776_689c3d50bbd12_2.jpg', '2025-08-13 01:52:56', '2025-08-13 01:52:56'),
(483, 112, 182, '1755069776_689c3d50c4d4e_3.jpg', '2025-08-13 01:52:56', '2025-08-13 01:52:56'),
(484, 112, 182, '1755069776_689c3d50cdbd2_4.jpg', '2025-08-13 01:52:56', '2025-08-13 01:52:56'),
(485, 112, 182, '1755069776_689c3d50da297_5.jpg', '2025-08-13 01:52:56', '2025-08-13 01:52:56'),
(486, 113, 183, '1755069875_689c3db309985_2.jpg', '2025-08-13 01:54:35', '2025-08-13 01:54:35'),
(487, 113, 183, '1755069875_689c3db318406_3.jpg', '2025-08-13 01:54:35', '2025-08-13 01:54:35'),
(488, 113, 183, '1755069875_689c3db3232df_4.jpg', '2025-08-13 01:54:35', '2025-08-13 01:54:35'),
(489, 113, 183, '1755069875_689c3db32d4f8_5.jpg', '2025-08-13 01:54:35', '2025-08-13 01:54:35'),
(490, 114, 184, '1755069998_689c3e2e47522_2.jpg', '2025-08-13 01:56:38', '2025-08-13 01:56:38'),
(491, 114, 184, '1755069998_689c3e2e54fe9_3.jpg', '2025-08-13 01:56:38', '2025-08-13 01:56:38'),
(492, 114, 184, '1755069998_689c3e2e636f0_4.jpg', '2025-08-13 01:56:38', '2025-08-13 01:56:38'),
(493, 114, 184, '1755069998_689c3e2e716ad_5.jpg', '2025-08-13 01:56:38', '2025-08-13 01:56:38'),
(494, 114, 185, '1755069998_689c3e2e907da_2.jpg', '2025-08-13 01:56:38', '2025-08-13 01:56:38'),
(495, 114, 185, '1755069998_689c3e2ea2032_3.jpg', '2025-08-13 01:56:38', '2025-08-13 01:56:38'),
(496, 114, 185, '1755069998_689c3e2eb2752_4.jpg', '2025-08-13 01:56:38', '2025-08-13 01:56:38'),
(497, 114, 185, '1755069998_689c3e2ec3adc_5.jpg', '2025-08-13 01:56:38', '2025-08-13 01:56:38'),
(498, 115, 186, '1755070084_689c3e8490af6_2.jpg', '2025-08-13 01:58:04', '2025-08-13 01:58:04'),
(499, 115, 186, '1755070084_689c3e84a1f6c_3.jpg', '2025-08-13 01:58:04', '2025-08-13 01:58:04'),
(500, 115, 186, '1755070084_689c3e84b0e63_4.jpg', '2025-08-13 01:58:04', '2025-08-13 01:58:04'),
(501, 115, 186, '1755070084_689c3e84c567b_5.jpg', '2025-08-13 01:58:04', '2025-08-13 01:58:04'),
(502, 116, 187, '1755070206_689c3efea374b_2.jpg', '2025-08-13 02:00:06', '2025-08-13 02:00:06'),
(503, 116, 187, '1755070206_689c3efeb08fa_3.jpg', '2025-08-13 02:00:06', '2025-08-13 02:00:06'),
(504, 116, 187, '1755070206_689c3efebe458_4.jpg', '2025-08-13 02:00:06', '2025-08-13 02:00:06'),
(505, 116, 187, '1755070206_689c3efecbd84_5.jpg', '2025-08-13 02:00:06', '2025-08-13 02:00:06'),
(506, 117, 188, '1755070299_689c3f5bf0962_2.jpg', '2025-08-13 02:01:40', '2025-08-13 02:01:40'),
(507, 117, 188, '1755070300_689c3f5c0b943_3.jpg', '2025-08-13 02:01:40', '2025-08-13 02:01:40'),
(508, 117, 188, '1755070300_689c3f5c18de1_4.jpg', '2025-08-13 02:01:40', '2025-08-13 02:01:40'),
(509, 117, 188, '1755070300_689c3f5c2416b_5.jpg', '2025-08-13 02:01:40', '2025-08-13 02:01:40'),
(510, 118, 189, '1755070463_689c3fffe0ec8_2.jpg', '2025-08-13 02:04:23', '2025-08-13 02:04:23'),
(511, 118, 189, '1755070464_689c4000008dd_3.jpg', '2025-08-13 02:04:24', '2025-08-13 02:04:24'),
(512, 118, 189, '1755070464_689c40000ea6c_4.jpg', '2025-08-13 02:04:24', '2025-08-13 02:04:24'),
(513, 118, 189, '1755070464_689c40001b83b_5.jpg', '2025-08-13 02:04:24', '2025-08-13 02:04:24'),
(514, 119, 190, '1755070568_689c4068388ff_2.jpg', '2025-08-13 02:06:08', '2025-08-13 02:06:08'),
(515, 119, 190, '1755070568_689c4068420f9_3.jpg', '2025-08-13 02:06:08', '2025-08-13 02:06:08'),
(516, 119, 190, '1755070568_689c406850b9b_4.jpg', '2025-08-13 02:06:08', '2025-08-13 02:06:08'),
(517, 120, 191, '1755070777_689c41396b477_2.jpg', '2025-08-13 02:09:37', '2025-08-13 02:09:37'),
(518, 120, 191, '1755070777_689c41397b3fe_3.jpg', '2025-08-13 02:09:37', '2025-08-13 02:09:37'),
(519, 120, 191, '1755070777_689c41398cdd9_4.jpg', '2025-08-13 02:09:37', '2025-08-13 02:09:37'),
(520, 120, 191, '1755070777_689c41399dbd6_5.jpg', '2025-08-13 02:09:37', '2025-08-13 02:09:37'),
(521, 121, 192, '1755070942_689c41de028e2_2.jpg', '2025-08-13 02:12:22', '2025-08-13 02:12:22'),
(522, 121, 192, '1755070942_689c41de162a8_3.jpg', '2025-08-13 02:12:22', '2025-08-13 02:12:22'),
(523, 121, 192, '1755070942_689c41de2a295_4.jpg', '2025-08-13 02:12:22', '2025-08-13 02:12:22'),
(524, 121, 192, '1755070942_689c41de38548_5.jpg', '2025-08-13 02:12:22', '2025-08-13 02:12:22'),
(525, 123, 193, '1755071105_689c428195966_2.jpg', '2025-08-13 02:15:05', '2025-08-13 02:15:05'),
(526, 123, 193, '1755071105_689c4281a56bd_3.jpg', '2025-08-13 02:15:05', '2025-08-13 02:15:05'),
(527, 123, 193, '1755071105_689c4281b6d60_4.jpg', '2025-08-13 02:15:05', '2025-08-13 02:15:05'),
(528, 123, 193, '1755071105_689c4281c5fed_5.jpg', '2025-08-13 02:15:05', '2025-08-13 02:15:05'),
(529, 123, 194, '1755071105_689c4281ec04d_2.jpg', '2025-08-13 02:15:06', '2025-08-13 02:15:06'),
(530, 123, 194, '1755071106_689c428205bd9_3.jpg', '2025-08-13 02:15:06', '2025-08-13 02:15:06'),
(531, 123, 194, '1755071106_689c428215fbc_4.jpg', '2025-08-13 02:15:06', '2025-08-13 02:15:06'),
(532, 123, 194, '1755071106_689c428228603_5.jpg', '2025-08-13 02:15:06', '2025-08-13 02:15:06'),
(533, 124, 195, '1755071349_689c4375d86c6_2.jpg', '2025-08-13 02:19:09', '2025-08-13 02:19:09'),
(534, 124, 195, '1755071349_689c4375e37b5_3.jpg', '2025-08-13 02:19:09', '2025-08-13 02:19:09'),
(535, 124, 195, '1755071349_689c4375ee01b_4.jpg', '2025-08-13 02:19:10', '2025-08-13 02:19:10'),
(536, 124, 195, '1755071350_689c43760aa6d_5.jpg', '2025-08-13 02:19:10', '2025-08-13 02:19:10'),
(537, 125, 196, '1755071473_689c43f14da1b_2.jpg', '2025-08-13 02:21:13', '2025-08-13 02:21:13'),
(538, 125, 196, '1755071473_689c43f15cb1c_3.jpg', '2025-08-13 02:21:13', '2025-08-13 02:21:13'),
(539, 125, 196, '1755071473_689c43f169ffd_4.jpg', '2025-08-13 02:21:13', '2025-08-13 02:21:13'),
(540, 125, 196, '1755071473_689c43f1731cc_5.jpg', '2025-08-13 02:21:13', '2025-08-13 02:21:13'),
(541, 126, 197, '1755071597_689c446dd4764_2.jpg', '2025-08-13 02:23:17', '2025-08-13 02:23:17'),
(542, 126, 197, '1755071597_689c446de0ce5_3.jpg', '2025-08-13 02:23:17', '2025-08-13 02:23:17'),
(543, 126, 197, '1755071597_689c446defbd2_4.jpg', '2025-08-13 02:23:18', '2025-08-13 02:23:18'),
(544, 126, 197, '1755071598_689c446e0b8c3_5.jpg', '2025-08-13 02:23:18', '2025-08-13 02:23:18'),
(545, 127, 198, '1755071712_689c44e058bbf_2.jpg', '2025-08-13 02:25:12', '2025-08-13 02:25:12'),
(546, 127, 198, '1755071712_689c44e06a59c_3.jpg', '2025-08-13 02:25:12', '2025-08-13 02:25:12'),
(547, 127, 198, '1755071712_689c44e07a48f_4.jpg', '2025-08-13 02:25:12', '2025-08-13 02:25:12'),
(548, 127, 198, '1755071712_689c44e08a9b0_5.jpg', '2025-08-13 02:25:12', '2025-08-13 02:25:12'),
(549, 128, 199, '1755071798_689c453643d4d_2.jpg', '2025-08-13 02:26:38', '2025-08-13 02:26:38'),
(550, 128, 199, '1755071798_689c45365099d_3.jpg', '2025-08-13 02:26:38', '2025-08-13 02:26:38'),
(551, 128, 199, '1755071798_689c4536601b6_4.jpg', '2025-08-13 02:26:38', '2025-08-13 02:26:38'),
(552, 129, 200, '1755072348_689c475c6086a_2.jpg', '2025-08-13 02:35:48', '2025-08-13 02:35:48'),
(553, 129, 200, '1755072348_689c475c6a959_3.jpg', '2025-08-13 02:35:48', '2025-08-13 02:35:48'),
(554, 129, 200, '1755072348_689c475c7a811_4.jpg', '2025-08-13 02:35:48', '2025-08-13 02:35:48'),
(555, 129, 200, '1755072348_689c475c8ac7d_5.jpg', '2025-08-13 02:35:48', '2025-08-13 02:35:48'),
(556, 130, 201, '1755072479_689c47df4b20a_2.jpg', '2025-08-13 02:37:59', '2025-08-13 02:37:59');
INSERT INTO `product_images` (`id`, `product_id`, `variant_id`, `other_image`, `created_at`, `updated_at`) VALUES
(557, 130, 201, '1755072479_689c47df5ca24_3.jpg', '2025-08-13 02:37:59', '2025-08-13 02:37:59'),
(558, 130, 201, '1755072479_689c47df6d88b_4.jpg', '2025-08-13 02:37:59', '2025-08-13 02:37:59'),
(559, 131, 202, '1755085575_689c7b07a686e_3.jpg', '2025-08-13 06:16:15', '2025-08-13 06:16:15'),
(560, 131, 202, '1755085575_689c7b07ba168_4.jpg', '2025-08-13 06:16:15', '2025-08-13 06:16:15'),
(561, 131, 202, '1755085575_689c7b07c8c36_5.jpg', '2025-08-13 06:16:15', '2025-08-13 06:16:15'),
(562, 132, 203, '1755085684_689c7b747c46b_3.jpg', '2025-08-13 06:18:04', '2025-08-13 06:18:04'),
(563, 132, 203, '1755085684_689c7b748b0cc_4.jpg', '2025-08-13 06:18:04', '2025-08-13 06:18:04'),
(564, 132, 203, '1755085684_689c7b749dc32_5.jpg', '2025-08-13 06:18:04', '2025-08-13 06:18:04'),
(565, 133, 204, '1755085860_689c7c242d749_3.jpg', '2025-08-13 06:21:00', '2025-08-13 06:21:00'),
(566, 133, 204, '1755085860_689c7c2437bcd_4.jpg', '2025-08-13 06:21:00', '2025-08-13 06:21:00'),
(567, 133, 204, '1755085860_689c7c244327f_5.jpg', '2025-08-13 06:21:00', '2025-08-13 06:21:00'),
(568, 134, 205, '1755086012_689c7cbca0f97_3.jpg', '2025-08-13 06:23:32', '2025-08-13 06:23:32'),
(569, 134, 205, '1755086012_689c7cbcad3a4_4.jpg', '2025-08-13 06:23:32', '2025-08-13 06:23:32'),
(570, 134, 205, '1755086012_689c7cbcba209_5.jpg', '2025-08-13 06:23:32', '2025-08-13 06:23:32'),
(571, 135, 206, '1755086133_689c7d3526c09_3.jpg', '2025-08-13 06:25:33', '2025-08-13 06:25:33'),
(572, 135, 206, '1755086133_689c7d353095b_4.jpg', '2025-08-13 06:25:33', '2025-08-13 06:25:33'),
(573, 135, 206, '1755086133_689c7d353a3ff_5.jpg', '2025-08-13 06:25:33', '2025-08-13 06:25:33'),
(574, 136, 207, '1755086369_689c7e21008bd_2.jpg', '2025-08-13 06:29:29', '2025-08-13 06:29:29'),
(575, 136, 207, '1755086369_689c7e210a2db_3.jpg', '2025-08-13 06:29:29', '2025-08-13 06:29:29'),
(576, 136, 207, '1755086369_689c7e211375a_4.jpg', '2025-08-13 06:29:29', '2025-08-13 06:29:29'),
(577, 136, 208, '1755086369_689c7e212580a_2.jpg', '2025-08-13 06:29:29', '2025-08-13 06:29:29'),
(578, 136, 208, '1755086369_689c7e212f7f8_3.jpg', '2025-08-13 06:29:29', '2025-08-13 06:29:29'),
(579, 136, 208, '1755086369_689c7e2139cc0_4.jpg', '2025-08-13 06:29:29', '2025-08-13 06:29:29'),
(580, 136, 209, '1755086369_689c7e214ced3_2.jpg', '2025-08-13 06:29:29', '2025-08-13 06:29:29'),
(581, 136, 209, '1755086369_689c7e2157003_3.jpg', '2025-08-13 06:29:29', '2025-08-13 06:29:29'),
(582, 136, 209, '1755086369_689c7e2160bcd_4.jpg', '2025-08-13 06:29:29', '2025-08-13 06:29:29'),
(583, 137, 210, '1755086516_689c7eb40a98a_3.jpg', '2025-08-13 06:31:56', '2025-08-13 06:31:56'),
(584, 137, 210, '1755086516_689c7eb413cf5_4.jpg', '2025-08-13 06:31:56', '2025-08-13 06:31:56'),
(585, 137, 210, '1755086516_689c7eb41cf60_5.jpg', '2025-08-13 06:31:56', '2025-08-13 06:31:56'),
(586, 138, 211, '1755086615_689c7f17bf60e_312.jpg', '2025-08-13 06:33:35', '2025-08-13 06:33:35'),
(587, 138, 211, '1755086615_689c7f17cded4_412.jpg', '2025-08-13 06:33:35', '2025-08-13 06:33:35'),
(588, 138, 211, '1755086615_689c7f17db69c_511.jpg', '2025-08-13 06:33:35', '2025-08-13 06:33:35'),
(589, 139, 212, '1755087373_689c820d50710_311.jpg', '2025-08-13 06:46:13', '2025-08-13 06:46:13'),
(590, 139, 212, '1755087373_689c820d5ef5d_411.jpg', '2025-08-13 06:46:13', '2025-08-13 06:46:13'),
(591, 139, 212, '1755087373_689c820d6b7aa_510.jpg', '2025-08-13 06:46:13', '2025-08-13 06:46:13'),
(592, 140, 213, '1755087534_689c82ae21186_2.jpg', '2025-08-13 06:48:54', '2025-08-13 06:48:54'),
(593, 140, 213, '1755087534_689c82ae2b133_3.jpg', '2025-08-13 06:48:54', '2025-08-13 06:48:54'),
(594, 140, 213, '1755087534_689c82ae3490d_4.jpg', '2025-08-13 06:48:54', '2025-08-13 06:48:54'),
(595, 140, 213, '1755087534_689c82ae3e24e_5.jpg', '2025-08-13 06:48:54', '2025-08-13 06:48:54'),
(596, 141, 214, '1755087872_689c84001ef14_3.jpg', '2025-08-13 06:54:32', '2025-08-13 06:54:32'),
(597, 141, 214, '1755087872_689c84002bdc8_4.jpg', '2025-08-13 06:54:32', '2025-08-13 06:54:32'),
(598, 141, 214, '1755087872_689c840038a6a_5.jpg', '2025-08-13 06:54:32', '2025-08-13 06:54:32'),
(599, 141, 215, '1755087872_689c840056061_3.jpg', '2025-08-13 06:54:32', '2025-08-13 06:54:32'),
(600, 141, 215, '1755087872_689c840064079_4.jpg', '2025-08-13 06:54:32', '2025-08-13 06:54:32'),
(601, 141, 215, '1755087872_689c84006df19_5.jpg', '2025-08-13 06:54:32', '2025-08-13 06:54:32'),
(602, 141, 216, '1755087872_689c840087fd2_3.jpg', '2025-08-13 06:54:32', '2025-08-13 06:54:32'),
(603, 141, 216, '1755087872_689c8400971d0_4.jpg', '2025-08-13 06:54:32', '2025-08-13 06:54:32'),
(604, 141, 216, '1755087872_689c8400a5acb_5.jpg', '2025-08-13 06:54:32', '2025-08-13 06:54:32'),
(605, 142, 217, '1755088020_689c8494e99e2_3.jpg', '2025-08-13 06:57:01', '2025-08-13 06:57:01'),
(606, 142, 217, '1755088021_689c849505640_4.jpg', '2025-08-13 06:57:01', '2025-08-13 06:57:01'),
(607, 142, 217, '1755088021_689c849516756_5.jpg', '2025-08-13 06:57:01', '2025-08-13 06:57:01'),
(608, 143, 218, '1755088139_689c850b0765f_2.jpg', '2025-08-13 06:58:59', '2025-08-13 06:58:59'),
(609, 143, 218, '1755088139_689c850b13986_3.jpg', '2025-08-13 06:58:59', '2025-08-13 06:58:59'),
(610, 143, 218, '1755088139_689c850b22ef6_4.jpg', '2025-08-13 06:58:59', '2025-08-13 06:58:59'),
(611, 143, 218, '1755088139_689c850b2e99a_5.jpg', '2025-08-13 06:58:59', '2025-08-13 06:58:59'),
(612, 144, 219, '1755088314_689c85ba0ca70_3.jpg', '2025-08-13 07:01:54', '2025-08-13 07:01:54'),
(613, 144, 219, '1755088314_689c85ba1d623_4.jpg', '2025-08-13 07:01:54', '2025-08-13 07:01:54'),
(614, 144, 219, '1755088314_689c85ba2e6ed_5.jpg', '2025-08-13 07:01:54', '2025-08-13 07:01:54'),
(615, 145, 220, '1755089134_689c88eed331e_3.jpg', '2025-08-13 07:15:34', '2025-08-13 07:15:34'),
(616, 145, 220, '1755089134_689c88eede423_4.jpg', '2025-08-13 07:15:34', '2025-08-13 07:15:34'),
(617, 145, 220, '1755089134_689c88eee7a1c_5.jpg', '2025-08-13 07:15:34', '2025-08-13 07:15:34'),
(618, 146, 221, '1755089338_689c89bac311c_3.jpg', '2025-08-13 07:18:58', '2025-08-13 07:18:58'),
(619, 146, 221, '1755089338_689c89bad1a2e_4.jpg', '2025-08-13 07:18:58', '2025-08-13 07:18:58'),
(620, 146, 221, '1755089338_689c89bae13e9_5.jpg', '2025-08-13 07:18:58', '2025-08-13 07:18:58'),
(621, 146, 222, '1755089339_689c89bb083c3_3.jpg', '2025-08-13 07:18:59', '2025-08-13 07:18:59'),
(622, 146, 222, '1755089339_689c89bb16a90_4.jpg', '2025-08-13 07:18:59', '2025-08-13 07:18:59'),
(623, 146, 222, '1755089339_689c89bb227d9_5.jpg', '2025-08-13 07:18:59', '2025-08-13 07:18:59'),
(624, 147, 223, '1755089476_689c8a4466e7f_3.jpg', '2025-08-13 07:21:16', '2025-08-13 07:21:16'),
(625, 147, 223, '1755089476_689c8a4470de8_4.jpg', '2025-08-13 07:21:16', '2025-08-13 07:21:16'),
(626, 147, 223, '1755089476_689c8a447a66e_5.jpg', '2025-08-13 07:21:16', '2025-08-13 07:21:16'),
(627, 147, 224, '1755089476_689c8a448d2ef_3.jpg', '2025-08-13 07:21:16', '2025-08-13 07:21:16'),
(628, 147, 224, '1755089476_689c8a4496c95_4.jpg', '2025-08-13 07:21:16', '2025-08-13 07:21:16'),
(629, 147, 224, '1755089476_689c8a44a4570_5.jpg', '2025-08-13 07:21:16', '2025-08-13 07:21:16'),
(630, 148, 225, '1755089676_689c8b0cd3809_2.jpg', '2025-08-13 07:24:36', '2025-08-13 07:24:36'),
(631, 148, 225, '1755089676_689c8b0ce2ed3_3.jpg', '2025-08-13 07:24:36', '2025-08-13 07:24:36'),
(632, 148, 225, '1755089676_689c8b0cf26f5_4.jpg', '2025-08-13 07:24:37', '2025-08-13 07:24:37'),
(633, 148, 225, '1755089677_689c8b0d0e330_5.jpg', '2025-08-13 07:24:37', '2025-08-13 07:24:37'),
(634, 148, 226, '1755089677_689c8b0d2aaee_2.jpg', '2025-08-13 07:24:37', '2025-08-13 07:24:37'),
(635, 148, 226, '1755089677_689c8b0d36f94_3.jpg', '2025-08-13 07:24:37', '2025-08-13 07:24:37'),
(636, 148, 226, '1755089677_689c8b0d41680_4.jpg', '2025-08-13 07:24:37', '2025-08-13 07:24:37'),
(637, 149, 227, '1755092317_689c955d4635e_3.jpg', '2025-08-13 08:08:37', '2025-08-13 08:08:37'),
(638, 149, 227, '1755092317_689c955d56017_4.jpg', '2025-08-13 08:08:37', '2025-08-13 08:08:37'),
(639, 149, 227, '1755092317_689c955d6914e_5.jpg', '2025-08-13 08:08:37', '2025-08-13 08:08:37'),
(640, 150, 228, '1755092396_689c95ac26850_3.jpg', '2025-08-13 08:09:56', '2025-08-13 08:09:56'),
(641, 150, 228, '1755092396_689c95ac3076b_4.jpg', '2025-08-13 08:09:56', '2025-08-13 08:09:56'),
(642, 150, 228, '1755092396_689c95ac3e106_5.jpg', '2025-08-13 08:09:56', '2025-08-13 08:09:56'),
(643, 151, 229, '1755092463_689c95ef4033d_3.jpg', '2025-08-13 08:11:03', '2025-08-13 08:11:03'),
(644, 151, 229, '1755092463_689c95ef4bd5b_4.jpg', '2025-08-13 08:11:03', '2025-08-13 08:11:03'),
(645, 151, 229, '1755092463_689c95ef5632f_5.jpg', '2025-08-13 08:11:03', '2025-08-13 08:11:03'),
(646, 152, 230, '1755092526_689c962e131e8_3.jpg', '2025-08-13 08:12:06', '2025-08-13 08:12:06'),
(647, 152, 230, '1755092526_689c962e1ecbe_4.jpg', '2025-08-13 08:12:06', '2025-08-13 08:12:06'),
(648, 152, 230, '1755092526_689c962e2a66d_5.jpg', '2025-08-13 08:12:06', '2025-08-13 08:12:06'),
(649, 153, 231, '1755092727_689c96f72bde3_3.jpg', '2025-08-13 08:15:27', '2025-08-13 08:15:27'),
(650, 153, 231, '1755092727_689c96f73905c_4.jpg', '2025-08-13 08:15:27', '2025-08-13 08:15:27'),
(651, 153, 231, '1755092727_689c96f7464bf_5.jpg', '2025-08-13 08:15:27', '2025-08-13 08:15:27'),
(652, 154, 232, '1755093405_689c999dd05d1_2.jpg', '2025-08-13 08:26:45', '2025-08-13 08:26:45'),
(653, 154, 232, '1755093405_689c999ddb467_3.jpg', '2025-08-13 08:26:45', '2025-08-13 08:26:45'),
(654, 154, 232, '1755093405_689c999de61fc_4.jpg', '2025-08-13 08:26:45', '2025-08-13 08:26:45'),
(655, 155, 233, '1755093562_689c9a3a612b3_3.jpg', '2025-08-13 08:29:22', '2025-08-13 08:29:22'),
(656, 155, 233, '1755093562_689c9a3a6b451_4.jpg', '2025-08-13 08:29:22', '2025-08-13 08:29:22'),
(657, 155, 233, '1755093562_689c9a3a7a436_5.jpg', '2025-08-13 08:29:22', '2025-08-13 08:29:22'),
(658, 155, 233, '1755093562_689c9a3a89520_6.jpg', '2025-08-13 08:29:22', '2025-08-13 08:29:22'),
(659, 155, 233, '1755093562_689c9a3a9495e_7.jpg', '2025-08-13 08:29:22', '2025-08-13 08:29:22'),
(660, 155, 233, '1755093562_689c9a3aa307c_8.jpg', '2025-08-13 08:29:22', '2025-08-13 08:29:22'),
(661, 155, 233, '1755093562_689c9a3ab346a_9.jpg', '2025-08-13 08:29:22', '2025-08-13 08:29:22'),
(662, 155, 233, '1755093562_689c9a3ac445b_10.jpg', '2025-08-13 08:29:22', '2025-08-13 08:29:22'),
(663, 156, 234, '1755093689_689c9ab9b6d16_3.jpg', '2025-08-13 08:31:29', '2025-08-13 08:31:29'),
(664, 156, 234, '1755093689_689c9ab9c5cdd_4.jpg', '2025-08-13 08:31:29', '2025-08-13 08:31:29'),
(665, 156, 234, '1755093689_689c9ab9d1101_5.jpg', '2025-08-13 08:31:29', '2025-08-13 08:31:29'),
(666, 157, 235, '1755093772_689c9b0c9f404_3.jpg', '2025-08-13 08:32:52', '2025-08-13 08:32:52'),
(667, 157, 235, '1755093772_689c9b0cad873_4.jpg', '2025-08-13 08:32:52', '2025-08-13 08:32:52'),
(668, 157, 235, '1755093772_689c9b0cbd35f_5.jpg', '2025-08-13 08:32:52', '2025-08-13 08:32:52'),
(669, 157, 235, '1755093772_689c9b0ccbc8a_6.jpg', '2025-08-13 08:32:52', '2025-08-13 08:32:52'),
(670, 158, 236, '1755093863_689c9b6724cee_3.jpg', '2025-08-13 08:34:23', '2025-08-13 08:34:23'),
(671, 158, 236, '1755093863_689c9b6735415_4.jpg', '2025-08-13 08:34:23', '2025-08-13 08:34:23'),
(672, 158, 236, '1755093863_689c9b67456f6_5.jpg', '2025-08-13 08:34:23', '2025-08-13 08:34:23'),
(673, 159, 237, '1755093935_689c9baf12e4a_3.jpg', '2025-08-13 08:35:35', '2025-08-13 08:35:35'),
(674, 159, 237, '1755093935_689c9baf1c3d8_4.jpg', '2025-08-13 08:35:35', '2025-08-13 08:35:35'),
(675, 159, 237, '1755093935_689c9baf2641f_5.jpg', '2025-08-13 08:35:35', '2025-08-13 08:35:35'),
(676, 160, 238, '1755094156_689c9c8c0d4d4_3.jpg', '2025-08-13 08:39:16', '2025-08-13 08:39:16'),
(677, 160, 238, '1755094156_689c9c8c1b4bb_4.jpg', '2025-08-13 08:39:16', '2025-08-13 08:39:16'),
(678, 160, 238, '1755094156_689c9c8c2b4ab_5.jpg', '2025-08-13 08:39:16', '2025-08-13 08:39:16'),
(679, 161, 239, '1755094390_689c9d76a18ed_3.jpg', '2025-08-13 08:43:10', '2025-08-13 08:43:10'),
(680, 161, 239, '1755094390_689c9d76b092e_4.jpg', '2025-08-13 08:43:10', '2025-08-13 08:43:10'),
(681, 162, 240, '1755094413_689c9d8dae30d_3.jpg', '2025-08-13 08:43:33', '2025-08-13 08:43:33'),
(682, 162, 240, '1755094413_689c9d8db97a4_4.jpg', '2025-08-13 08:43:33', '2025-08-13 08:43:33'),
(683, 163, 241, '1755094501_689c9de56ef21_3.jpg', '2025-08-13 08:45:01', '2025-08-13 08:45:01'),
(684, 163, 241, '1755094501_689c9de579c9e_4.jpg', '2025-08-13 08:45:01', '2025-08-13 08:45:01'),
(685, 164, 242, '1755094664_689c9e885a734_3.jpg', '2025-08-13 08:47:44', '2025-08-13 08:47:44'),
(686, 164, 242, '1755094664_689c9e8864580_4.jpg', '2025-08-13 08:47:44', '2025-08-13 08:47:44'),
(687, 165, 243, '1755094764_689c9eec0f070_3.jpg', '2025-08-13 08:49:24', '2025-08-13 08:49:24'),
(688, 165, 243, '1755094764_689c9eec21074_4.jpg', '2025-08-13 08:49:24', '2025-08-13 08:49:24'),
(689, 165, 243, '1755094764_689c9eec30c19_5.jpg', '2025-08-13 08:49:24', '2025-08-13 08:49:24'),
(690, 166, 244, '1755094879_689c9f5f27584_3.jpg', '2025-08-13 08:51:19', '2025-08-13 08:51:19'),
(691, 167, 245, '1755096183_689ca4776e128_3.jpg', '2025-08-13 09:13:03', '2025-08-13 09:13:03'),
(692, 167, 245, '1755096183_689ca47779a81_4.jpg', '2025-08-13 09:13:03', '2025-08-13 09:13:03'),
(693, 167, 245, '1755096183_689ca477830a4_5.jpg', '2025-08-13 09:13:03', '2025-08-13 09:13:03'),
(694, 167, 246, '1755096183_689ca4779d8d2_3.jpg', '2025-08-13 09:13:03', '2025-08-13 09:13:03'),
(695, 167, 246, '1755096183_689ca477aa02b_4.jpg', '2025-08-13 09:13:03', '2025-08-13 09:13:03'),
(696, 167, 246, '1755096183_689ca477b8808_5.jpg', '2025-08-13 09:13:03', '2025-08-13 09:13:03'),
(697, 168, 247, '1755096640_689ca6405fe05_3.jpg', '2025-08-13 09:20:40', '2025-08-13 09:20:40'),
(698, 168, 247, '1755096640_689ca6406c068_4.jpg', '2025-08-13 09:20:40', '2025-08-13 09:20:40'),
(699, 168, 247, '1755096640_689ca640795ca_5.jpg', '2025-08-13 09:20:40', '2025-08-13 09:20:40'),
(700, 168, 247, '1755096640_689ca64084c5b_6.jpg', '2025-08-13 09:20:40', '2025-08-13 09:20:40'),
(701, 168, 248, '1755096640_689ca6409c797_3.jpg', '2025-08-13 09:20:40', '2025-08-13 09:20:40'),
(702, 168, 248, '1755096640_689ca640b2f24_4.jpg', '2025-08-13 09:20:40', '2025-08-13 09:20:40'),
(703, 168, 248, '1755096640_689ca640c2e46_5.jpg', '2025-08-13 09:20:40', '2025-08-13 09:20:40'),
(704, 168, 248, '1755096640_689ca640cfdaa_6.jpg', '2025-08-13 09:20:40', '2025-08-13 09:20:40'),
(705, 168, 249, '1755096640_689ca640e5639_3.jpg', '2025-08-13 09:20:40', '2025-08-13 09:20:40'),
(706, 168, 249, '1755096640_689ca640ee78a_4.jpg', '2025-08-13 09:20:41', '2025-08-13 09:20:41'),
(707, 168, 249, '1755096641_689ca64104286_5.jpg', '2025-08-13 09:20:41', '2025-08-13 09:20:41'),
(708, 168, 249, '1755096641_689ca6410d192_6.jpg', '2025-08-13 09:20:41', '2025-08-13 09:20:41'),
(709, 168, 250, '1755096641_689ca6412008f_3.jpg', '2025-08-13 09:20:41', '2025-08-13 09:20:41'),
(710, 168, 250, '1755096641_689ca64129a7a_4.jpg', '2025-08-13 09:20:41', '2025-08-13 09:20:41'),
(711, 168, 250, '1755096641_689ca64135b8a_5.jpg', '2025-08-13 09:20:41', '2025-08-13 09:20:41'),
(712, 168, 250, '1755096641_689ca64146ef3_6.jpg', '2025-08-13 09:20:41', '2025-08-13 09:20:41'),
(713, 169, 251, '1755096724_689ca694205f4_3.jpg', '2025-08-13 09:22:04', '2025-08-13 09:22:04'),
(714, 169, 251, '1755096724_689ca6942a75d_4.jpg', '2025-08-13 09:22:04', '2025-08-13 09:22:04'),
(715, 169, 251, '1755096724_689ca69436519_5.jpg', '2025-08-13 09:22:04', '2025-08-13 09:22:04'),
(716, 170, 252, '1755096880_689ca730cb9b4_3.jpg', '2025-08-13 09:24:40', '2025-08-13 09:24:40'),
(717, 170, 252, '1755096880_689ca730d7f5b_4.jpg', '2025-08-13 09:24:40', '2025-08-13 09:24:40'),
(718, 170, 252, '1755096880_689ca730e3a55_5.jpg', '2025-08-13 09:24:40', '2025-08-13 09:24:40'),
(719, 170, 253, '1755096881_689ca731097c6_2.jpg', '2025-08-13 09:24:41', '2025-08-13 09:24:41'),
(720, 170, 253, '1755096881_689ca731134db_3.jpg', '2025-08-13 09:24:41', '2025-08-13 09:24:41'),
(721, 170, 253, '1755096881_689ca7311d4ba_4.jpg', '2025-08-13 09:24:41', '2025-08-13 09:24:41'),
(722, 170, 253, '1755096881_689ca7312d153_5.jpg', '2025-08-13 09:24:41', '2025-08-13 09:24:41'),
(723, 170, 254, '1755096881_689ca73144790_3.jpg', '2025-08-13 09:24:41', '2025-08-13 09:24:41'),
(724, 170, 254, '1755096881_689ca7314dbd9_4.jpg', '2025-08-13 09:24:41', '2025-08-13 09:24:41'),
(725, 170, 254, '1755096881_689ca73157131_5.jpg', '2025-08-13 09:24:41', '2025-08-13 09:24:41'),
(726, 171, 255, '1755097075_689ca7f3b1330_3.jpg', '2025-08-13 09:27:55', '2025-08-13 09:27:55'),
(727, 171, 255, '1755097075_689ca7f3bde3b_4.jpg', '2025-08-13 09:27:55', '2025-08-13 09:27:55'),
(728, 171, 255, '1755097075_689ca7f3cc410_5.jpg', '2025-08-13 09:27:55', '2025-08-13 09:27:55'),
(729, 172, 256, '1755097339_689ca8fbaf1c0_3.jpg', '2025-08-13 09:32:19', '2025-08-13 09:32:19'),
(730, 172, 256, '1755097339_689ca8fbb95c1_4.jpg', '2025-08-13 09:32:19', '2025-08-13 09:32:19'),
(731, 172, 256, '1755097339_689ca8fbc5d91_5.jpg', '2025-08-13 09:32:19', '2025-08-13 09:32:19'),
(732, 174, 257, '1755097366_689ca916104fa_3.jpg', '2025-08-13 09:32:46', '2025-08-13 09:32:46'),
(733, 174, 257, '1755097366_689ca91620635_4.jpg', '2025-08-13 09:32:46', '2025-08-13 09:32:46'),
(734, 173, 258, '1755097392_689ca9302d87d_3.jpg', '2025-08-13 09:33:12', '2025-08-13 09:33:12'),
(735, 173, 258, '1755097392_689ca93038eaf_4.jpg', '2025-08-13 09:33:12', '2025-08-13 09:33:12'),
(736, 175, 259, '1755154507_689d884b777a7_3.jpg', '2025-08-14 01:25:07', '2025-08-14 01:25:07'),
(737, 175, 259, '1755154507_689d884b835d0_4.jpg', '2025-08-14 01:25:07', '2025-08-14 01:25:07'),
(738, 175, 259, '1755154507_689d884b97ce8_5.jpg', '2025-08-14 01:25:07', '2025-08-14 01:25:07'),
(739, 175, 259, '1755154507_689d884baa9c2_6.jpg', '2025-08-14 01:25:07', '2025-08-14 01:25:07'),
(740, 176, 260, '1755154563_689d888399f30_3.jpg', '2025-08-14 01:26:03', '2025-08-14 01:26:03'),
(741, 176, 260, '1755154563_689d8883a5b28_4.jpg', '2025-08-14 01:26:03', '2025-08-14 01:26:03'),
(742, 176, 260, '1755154563_689d8883b76f6_5.jpg', '2025-08-14 01:26:03', '2025-08-14 01:26:03'),
(743, 176, 260, '1755154563_689d8883c8881_6.jpg', '2025-08-14 01:26:03', '2025-08-14 01:26:03'),
(744, 177, 261, '1755154638_689d88ce0f855_3.jpg', '2025-08-14 01:27:18', '2025-08-14 01:27:18'),
(745, 177, 261, '1755154638_689d88ce1c8d1_4.jpg', '2025-08-14 01:27:18', '2025-08-14 01:27:18'),
(746, 177, 261, '1755154638_689d88ce2b22d_5.jpg', '2025-08-14 01:27:18', '2025-08-14 01:27:18'),
(747, 177, 261, '1755154638_689d88ce39107_6.jpg', '2025-08-14 01:27:18', '2025-08-14 01:27:18'),
(748, 178, 262, '1755154680_689d88f8f1a7f_3.jpg', '2025-08-14 01:28:01', '2025-08-14 01:28:01'),
(749, 178, 262, '1755154681_689d88f907e5a_4.jpg', '2025-08-14 01:28:01', '2025-08-14 01:28:01'),
(750, 178, 262, '1755154681_689d88f910fb7_5.jpg', '2025-08-14 01:28:01', '2025-08-14 01:28:01'),
(751, 178, 262, '1755154681_689d88f91ac99_6.jpg', '2025-08-14 01:28:01', '2025-08-14 01:28:01'),
(752, 180, 263, '1755154980_689d8a24186d4_3.jpg', '2025-08-14 01:33:00', '2025-08-14 01:33:00'),
(753, 180, 263, '1755154980_689d8a24299f5_4.jpg', '2025-08-14 01:33:00', '2025-08-14 01:33:00'),
(754, 180, 263, '1755154980_689d8a24385ef_6.jpg', '2025-08-14 01:33:00', '2025-08-14 01:33:00'),
(755, 181, 264, '1755155032_689d8a58d486e_3.jpg', '2025-08-14 01:33:52', '2025-08-14 01:33:52'),
(756, 181, 264, '1755155032_689d8a58e1190_4.jpg', '2025-08-14 01:33:52', '2025-08-14 01:33:52'),
(757, 181, 264, '1755155032_689d8a58ef58e_5.jpg', '2025-08-14 01:33:53', '2025-08-14 01:33:53'),
(758, 181, 264, '1755155033_689d8a590691b_6.jpg', '2025-08-14 01:33:53', '2025-08-14 01:33:53'),
(759, 182, 265, '1755155072_689d8a80e7f7e_3.jpg', '2025-08-14 01:34:32', '2025-08-14 01:34:32'),
(760, 182, 265, '1755155072_689d8a80f3e08_4.jpg', '2025-08-14 01:34:33', '2025-08-14 01:34:33'),
(761, 182, 265, '1755155073_689d8a81097f4_5.jpg', '2025-08-14 01:34:33', '2025-08-14 01:34:33'),
(762, 182, 265, '1755155073_689d8a81145a4_6.jpg', '2025-08-14 01:34:33', '2025-08-14 01:34:33'),
(763, 183, 266, '1755155159_689d8ad77d251_3.jpg', '2025-08-14 01:35:59', '2025-08-14 01:35:59'),
(764, 183, 266, '1755155159_689d8ad789497_4.jpg', '2025-08-14 01:35:59', '2025-08-14 01:35:59'),
(765, 183, 266, '1755155159_689d8ad796f9d_5.jpg', '2025-08-14 01:35:59', '2025-08-14 01:35:59'),
(766, 183, 266, '1755155159_689d8ad7a3f06_6.jpg', '2025-08-14 01:35:59', '2025-08-14 01:35:59'),
(767, 184, 267, '1755155214_689d8b0e15327_3.jpg', '2025-08-14 01:36:54', '2025-08-14 01:36:54'),
(768, 184, 267, '1755155214_689d8b0e226e0_4.jpg', '2025-08-14 01:36:54', '2025-08-14 01:36:54'),
(769, 184, 267, '1755155214_689d8b0e2bb48_5.jpg', '2025-08-14 01:36:54', '2025-08-14 01:36:54'),
(770, 184, 267, '1755155214_689d8b0e35c8c_6.jpg', '2025-08-14 01:36:54', '2025-08-14 01:36:54'),
(771, 185, 268, '1755155267_689d8b43b09fc_3.jpg', '2025-08-14 01:37:47', '2025-08-14 01:37:47'),
(772, 185, 268, '1755155267_689d8b43bf354_4.jpg', '2025-08-14 01:37:47', '2025-08-14 01:37:47'),
(773, 185, 268, '1755155267_689d8b43ce239_5.jpg', '2025-08-14 01:37:47', '2025-08-14 01:37:47'),
(774, 185, 268, '1755155267_689d8b43d7d9d_6.jpg', '2025-08-14 01:37:47', '2025-08-14 01:37:47'),
(775, 186, 269, '1755155389_689d8bbdf2746_3.jpg', '2025-08-14 01:39:50', '2025-08-14 01:39:50'),
(776, 186, 269, '1755155390_689d8bbe0a94c_4.jpg', '2025-08-14 01:39:50', '2025-08-14 01:39:50'),
(777, 186, 269, '1755155390_689d8bbe1591f_5.jpg', '2025-08-14 01:39:50', '2025-08-14 01:39:50'),
(778, 186, 269, '1755155390_689d8bbe245b9_6.jpg', '2025-08-14 01:39:50', '2025-08-14 01:39:50'),
(779, 187, 270, '1755155431_689d8be7f05f0_3.jpg', '2025-08-14 01:40:32', '2025-08-14 01:40:32'),
(780, 187, 270, '1755155432_689d8be80a35e_4.jpg', '2025-08-14 01:40:32', '2025-08-14 01:40:32'),
(781, 187, 270, '1755155432_689d8be817c56_5.jpg', '2025-08-14 01:40:32', '2025-08-14 01:40:32'),
(782, 187, 270, '1755155432_689d8be823977_6.jpg', '2025-08-14 01:40:32', '2025-08-14 01:40:32'),
(783, 188, 271, '1755155478_689d8c161dc49_3.jpg', '2025-08-14 01:41:18', '2025-08-14 01:41:18'),
(784, 188, 271, '1755155478_689d8c1627155_4.jpg', '2025-08-14 01:41:18', '2025-08-14 01:41:18'),
(785, 188, 271, '1755155478_689d8c16336cf_5.jpg', '2025-08-14 01:41:18', '2025-08-14 01:41:18'),
(786, 188, 271, '1755155478_689d8c163f2f6_6.jpg', '2025-08-14 01:41:18', '2025-08-14 01:41:18'),
(787, 189, 272, '1755155605_689d8c9537682_3.jpg', '2025-08-14 01:43:25', '2025-08-14 01:43:25'),
(788, 189, 272, '1755155605_689d8c954488c_4.jpg', '2025-08-14 01:43:25', '2025-08-14 01:43:25'),
(789, 189, 272, '1755155605_689d8c9555377_5.jpg', '2025-08-14 01:43:25', '2025-08-14 01:43:25'),
(790, 189, 272, '1755155605_689d8c9564752_6.jpg', '2025-08-14 01:43:25', '2025-08-14 01:43:25'),
(791, 190, 273, '1755155659_689d8ccb9107c_3.jpg', '2025-08-14 01:44:19', '2025-08-14 01:44:19'),
(792, 190, 273, '1755155659_689d8ccb9cc4b_4.jpg', '2025-08-14 01:44:19', '2025-08-14 01:44:19'),
(793, 190, 273, '1755155659_689d8ccbabe18_5.jpg', '2025-08-14 01:44:19', '2025-08-14 01:44:19'),
(794, 190, 273, '1755155659_689d8ccbba473_6.jpg', '2025-08-14 01:44:19', '2025-08-14 01:44:19'),
(795, 191, 274, '1755155721_689d8d098b6be_3.jpg', '2025-08-14 01:45:21', '2025-08-14 01:45:21'),
(796, 191, 274, '1755155721_689d8d099c054_4.jpg', '2025-08-14 01:45:21', '2025-08-14 01:45:21'),
(797, 191, 274, '1755155721_689d8d09aa134_5.jpg', '2025-08-14 01:45:21', '2025-08-14 01:45:21'),
(798, 191, 274, '1755155721_689d8d09b95c3_6.jpg', '2025-08-14 01:45:21', '2025-08-14 01:45:21'),
(799, 192, 275, '1755155770_689d8d3a7913d_3.jpg', '2025-08-14 01:46:10', '2025-08-14 01:46:10'),
(800, 192, 275, '1755155770_689d8d3a87354_4.jpg', '2025-08-14 01:46:10', '2025-08-14 01:46:10'),
(801, 192, 275, '1755155770_689d8d3a94fd7_5.jpg', '2025-08-14 01:46:10', '2025-08-14 01:46:10'),
(802, 192, 275, '1755155770_689d8d3aa6496_6.jpg', '2025-08-14 01:46:10', '2025-08-14 01:46:10'),
(803, 193, 276, '1755155827_689d8d7320b7b_3.jpg', '2025-08-14 01:47:07', '2025-08-14 01:47:07'),
(804, 193, 276, '1755155827_689d8d732a8f4_4.jpg', '2025-08-14 01:47:07', '2025-08-14 01:47:07'),
(805, 193, 276, '1755155827_689d8d7335b71_5.jpg', '2025-08-14 01:47:07', '2025-08-14 01:47:07'),
(806, 193, 276, '1755155827_689d8d73432e4_6.jpg', '2025-08-14 01:47:07', '2025-08-14 01:47:07'),
(807, 194, 277, '1755155889_689d8db14db55_3.jpg', '2025-08-14 01:48:09', '2025-08-14 01:48:09'),
(808, 194, 277, '1755155889_689d8db15b5a2_4.jpg', '2025-08-14 01:48:09', '2025-08-14 01:48:09'),
(809, 194, 277, '1755155889_689d8db1660cb_5.jpg', '2025-08-14 01:48:09', '2025-08-14 01:48:09'),
(810, 194, 277, '1755155889_689d8db1712bb_6.jpg', '2025-08-14 01:48:09', '2025-08-14 01:48:09'),
(811, 195, 278, '1755155956_689d8df436703_3.jpg', '2025-08-14 01:49:16', '2025-08-14 01:49:16'),
(812, 195, 278, '1755155956_689d8df442903_4.jpg', '2025-08-14 01:49:16', '2025-08-14 01:49:16'),
(813, 195, 278, '1755155956_689d8df44c410_5.jpg', '2025-08-14 01:49:16', '2025-08-14 01:49:16'),
(814, 195, 278, '1755155956_689d8df456478_6.jpg', '2025-08-14 01:49:16', '2025-08-14 01:49:16'),
(819, 196, 279, '1755156181_689d8ed53ccbf_3.jpg', '2025-08-14 01:53:01', '2025-08-14 01:53:01'),
(820, 196, 279, '1755156181_689d8ed54651d_4.jpg', '2025-08-14 01:53:01', '2025-08-14 01:53:01'),
(821, 196, 279, '1755156181_689d8ed54fb12_5.jpg', '2025-08-14 01:53:01', '2025-08-14 01:53:01'),
(822, 196, 279, '1755156181_689d8ed55a8b1_6.jpg', '2025-08-14 01:53:01', '2025-08-14 01:53:01'),
(823, 197, 280, '1755156233_689d8f09ee48b_3.jpg', '2025-08-14 01:53:54', '2025-08-14 01:53:54'),
(824, 197, 280, '1755156234_689d8f0a05b64_4.jpg', '2025-08-14 01:53:54', '2025-08-14 01:53:54'),
(825, 197, 280, '1755156234_689d8f0a103bf_5.jpg', '2025-08-14 01:53:54', '2025-08-14 01:53:54'),
(826, 197, 280, '1755156234_689d8f0a1ed91_6.jpg', '2025-08-14 01:53:54', '2025-08-14 01:53:54'),
(827, 198, 281, '1755156290_689d8f426ae12_3.jpg', '2025-08-14 01:54:50', '2025-08-14 01:54:50'),
(828, 198, 281, '1755156290_689d8f42754be_4.jpg', '2025-08-14 01:54:50', '2025-08-14 01:54:50'),
(829, 198, 281, '1755156290_689d8f42814bd_5.jpg', '2025-08-14 01:54:50', '2025-08-14 01:54:50'),
(830, 198, 281, '1755156290_689d8f428ca5f_6.jpg', '2025-08-14 01:54:50', '2025-08-14 01:54:50'),
(831, 199, 282, '1755156333_689d8f6d68d37_3.jpg', '2025-08-14 01:55:33', '2025-08-14 01:55:33'),
(832, 199, 282, '1755156333_689d8f6d784f9_4.jpg', '2025-08-14 01:55:33', '2025-08-14 01:55:33'),
(833, 199, 282, '1755156333_689d8f6d87959_5.jpg', '2025-08-14 01:55:33', '2025-08-14 01:55:33'),
(834, 199, 282, '1755156333_689d8f6d95492_6.jpg', '2025-08-14 01:55:33', '2025-08-14 01:55:33'),
(835, 200, 283, '1755156411_689d8fbbb1b17_3.jpg', '2025-08-14 01:56:51', '2025-08-14 01:56:51'),
(836, 200, 283, '1755156411_689d8fbbbb2ff_4.jpg', '2025-08-14 01:56:51', '2025-08-14 01:56:51'),
(837, 200, 283, '1755156411_689d8fbbc55c2_5.jpg', '2025-08-14 01:56:51', '2025-08-14 01:56:51'),
(838, 200, 283, '1755156411_689d8fbbceedd_6.jpg', '2025-08-14 01:56:51', '2025-08-14 01:56:51'),
(839, 201, 284, '1755156476_689d8ffc36ff6_3.jpg', '2025-08-14 01:57:56', '2025-08-14 01:57:56'),
(840, 201, 284, '1755156476_689d8ffc40eae_4.jpg', '2025-08-14 01:57:56', '2025-08-14 01:57:56'),
(841, 201, 284, '1755156476_689d8ffc49fd2_5.jpg', '2025-08-14 01:57:56', '2025-08-14 01:57:56'),
(842, 201, 284, '1755156476_689d8ffc53383_6.jpg', '2025-08-14 01:57:56', '2025-08-14 01:57:56'),
(843, 202, 285, '1755156528_689d9030559bc_3.jpg', '2025-08-14 01:58:48', '2025-08-14 01:58:48'),
(844, 202, 285, '1755156528_689d9030613c9_4.jpg', '2025-08-14 01:58:48', '2025-08-14 01:58:48'),
(845, 202, 285, '1755156528_689d90306ca1d_5.jpg', '2025-08-14 01:58:48', '2025-08-14 01:58:48'),
(846, 202, 285, '1755156528_689d903077701_6.jpg', '2025-08-14 01:58:48', '2025-08-14 01:58:48'),
(847, 203, 286, '1755156567_689d90579372f_3.jpg', '2025-08-14 01:59:27', '2025-08-14 01:59:27'),
(848, 203, 286, '1755156567_689d9057a3de8_4.jpg', '2025-08-14 01:59:27', '2025-08-14 01:59:27'),
(849, 203, 286, '1755156567_689d9057b022f_5.jpg', '2025-08-14 01:59:27', '2025-08-14 01:59:27'),
(850, 203, 286, '1755156567_689d9057bd3ce_6.jpg', '2025-08-14 01:59:27', '2025-08-14 01:59:27'),
(851, 204, 287, '1755156605_689d907d5d090_3.jpg', '2025-08-14 02:00:05', '2025-08-14 02:00:05'),
(852, 204, 287, '1755156605_689d907d69625_4.jpg', '2025-08-14 02:00:05', '2025-08-14 02:00:05'),
(853, 204, 287, '1755156605_689d907d7746a_5.jpg', '2025-08-14 02:00:05', '2025-08-14 02:00:05'),
(854, 204, 287, '1755156605_689d907d8419e_6.jpg', '2025-08-14 02:00:05', '2025-08-14 02:00:05'),
(855, 205, 288, '1755156653_689d90ad4a98e_3.jpg', '2025-08-14 02:00:53', '2025-08-14 02:00:53'),
(856, 205, 288, '1755156653_689d90ad56682_4.jpg', '2025-08-14 02:00:53', '2025-08-14 02:00:53'),
(857, 205, 288, '1755156653_689d90ad643d0_5.jpg', '2025-08-14 02:00:53', '2025-08-14 02:00:53'),
(858, 206, 289, '1755168430_689dbeae74010_3.jpg', '2025-08-14 05:17:10', '2025-08-14 05:17:10'),
(859, 208, 290, '1755168749_689dbfed48f1c_3.jpg', '2025-08-14 05:22:29', '2025-08-14 05:22:29'),
(860, 208, 290, '1755168749_689dbfed58240_4.jpg', '2025-08-14 05:22:29', '2025-08-14 05:22:29'),
(861, 208, 291, '1755168749_689dbfed6f5c6_3.jpg', '2025-08-14 05:22:29', '2025-08-14 05:22:29'),
(862, 208, 291, '1755168749_689dbfed7fef8_4.jpg', '2025-08-14 05:22:29', '2025-08-14 05:22:29'),
(863, 208, 292, '1755168749_689dbfed98903_3.jpg', '2025-08-14 05:22:29', '2025-08-14 05:22:29'),
(864, 208, 292, '1755168749_689dbfeda45d5_4.jpg', '2025-08-14 05:22:29', '2025-08-14 05:22:29'),
(865, 208, 293, '1755168749_689dbfedb75e7_3.jpg', '2025-08-14 05:22:29', '2025-08-14 05:22:29'),
(866, 208, 293, '1755168749_689dbfedc0e2c_4.jpg', '2025-08-14 05:22:29', '2025-08-14 05:22:29'),
(867, 208, 294, '1755168749_689dbfedd6372_3.jpg', '2025-08-14 05:22:29', '2025-08-14 05:22:29'),
(868, 208, 294, '1755168749_689dbfede3f48_4.jpg', '2025-08-14 05:22:29', '2025-08-14 05:22:29'),
(869, 209, 295, '1755169013_689dc0f557924_3.jpg', '2025-08-14 05:26:53', '2025-08-14 05:26:53'),
(870, 209, 295, '1755169013_689dc0f561295_4.jpg', '2025-08-14 05:26:53', '2025-08-14 05:26:53'),
(871, 209, 296, '1755169013_689dc0f574669_3.jpg', '2025-08-14 05:26:53', '2025-08-14 05:26:53'),
(872, 209, 296, '1755169013_689dc0f580716_4.jpg', '2025-08-14 05:26:53', '2025-08-14 05:26:53'),
(873, 209, 297, '1755169013_689dc0f59a26e_3.jpg', '2025-08-14 05:26:53', '2025-08-14 05:26:53'),
(874, 209, 297, '1755169013_689dc0f5a764d_4.jpg', '2025-08-14 05:26:53', '2025-08-14 05:26:53'),
(875, 209, 298, '1755169013_689dc0f5c084b_3.jpg', '2025-08-14 05:26:53', '2025-08-14 05:26:53'),
(876, 209, 298, '1755169013_689dc0f5d0463_4.jpg', '2025-08-14 05:26:53', '2025-08-14 05:26:53'),
(877, 209, 299, '1755169013_689dc0f5e86bc_3.jpg', '2025-08-14 05:26:54', '2025-08-14 05:26:54'),
(878, 209, 299, '1755169014_689dc0f60244e_4.jpg', '2025-08-14 05:26:54', '2025-08-14 05:26:54'),
(879, 209, 300, '1755169014_689dc0f6176c3_3.jpg', '2025-08-14 05:26:54', '2025-08-14 05:26:54'),
(880, 209, 300, '1755169014_689dc0f62087a_4.jpg', '2025-08-14 05:26:54', '2025-08-14 05:26:54'),
(881, 209, 301, '1755169014_689dc0f6331fe_3.jpg', '2025-08-14 05:26:54', '2025-08-14 05:26:54'),
(882, 211, 303, '1755169228_689dc1cc37111_3.jpg', '2025-08-14 05:30:28', '2025-08-14 05:30:28'),
(883, 211, 303, '1755169228_689dc1cc40a9c_4.jpg', '2025-08-14 05:30:28', '2025-08-14 05:30:28'),
(884, 211, 304, '1755169228_689dc1cc5b1e4_3.jpg', '2025-08-14 05:30:28', '2025-08-14 05:30:28'),
(885, 211, 304, '1755169228_689dc1cc6739f_4.jpg', '2025-08-14 05:30:28', '2025-08-14 05:30:28'),
(886, 212, 305, '1755169276_689dc1fcdc3d1_3.jpg', '2025-08-14 05:31:16', '2025-08-14 05:31:16'),
(887, 212, 305, '1755169276_689dc1fce56c0_4.jpg', '2025-08-14 05:31:16', '2025-08-14 05:31:16'),
(888, 212, 306, '1755169277_689dc1fd03548_3.jpg', '2025-08-14 05:31:17', '2025-08-14 05:31:17'),
(889, 212, 306, '1755169277_689dc1fd0de1b_4.jpg', '2025-08-14 05:31:17', '2025-08-14 05:31:17'),
(890, 213, 307, '1755169396_689dc274e7729_3.jpg', '2025-08-14 05:33:17', '2025-08-14 05:33:17'),
(891, 213, 307, '1755169397_689dc27501041_4.jpg', '2025-08-14 05:33:17', '2025-08-14 05:33:17'),
(892, 214, 308, '1755169455_689dc2af5864d_3.jpg', '2025-08-14 05:34:15', '2025-08-14 05:34:15'),
(893, 214, 308, '1755169455_689dc2af62426_4.jpg', '2025-08-14 05:34:15', '2025-08-14 05:34:15'),
(894, 214, 308, '1755169455_689dc2af6b7aa_5.jpg', '2025-08-14 05:34:15', '2025-08-14 05:34:15'),
(895, 215, 309, '1755177158_689de0c613386_3.jpg', '2025-08-14 07:42:38', '2025-08-14 07:42:38'),
(896, 215, 309, '1755177158_689de0c6283bd_4.jpg', '2025-08-14 07:42:38', '2025-08-14 07:42:38'),
(897, 216, 310, '1755177337_689de17971e27_2.jpg', '2025-08-14 07:45:37', '2025-08-14 07:45:37'),
(898, 216, 310, '1755177337_689de1797e1d1_4.jpg', '2025-08-14 07:45:37', '2025-08-14 07:45:37'),
(899, 216, 310, '1755177337_689de17988bf2_5.jpg', '2025-08-14 07:45:37', '2025-08-14 07:45:37'),
(900, 217, 311, '1755177600_689de2805cd28_2.jpg', '2025-08-14 07:50:00', '2025-08-14 07:50:00'),
(901, 217, 311, '1755177600_689de2806fca8_4.jpg', '2025-08-14 07:50:00', '2025-08-14 07:50:00'),
(902, 218, 312, '1755177668_689de2c40c096_3.jpg', '2025-08-14 07:51:08', '2025-08-14 07:51:08'),
(903, 218, 312, '1755177668_689de2c41b5b8_4.jpg', '2025-08-14 07:51:08', '2025-08-14 07:51:08'),
(904, 218, 312, '1755177668_689de2c42a5ae_5.jpg', '2025-08-14 07:51:08', '2025-08-14 07:51:08'),
(905, 219, 313, '1755177881_689de399ab919_2.jpg', '2025-08-14 07:54:41', '2025-08-14 07:54:41'),
(906, 220, 314, '1755177920_689de3c026a58_2.jpg', '2025-08-14 07:55:20', '2025-08-14 07:55:20'),
(907, 220, 314, '1755177920_689de3c035648_3.jpg', '2025-08-14 07:55:20', '2025-08-14 07:55:20'),
(908, 221, 315, '1755177967_689de3efb0134_2.jpg', '2025-08-14 07:56:07', '2025-08-14 07:56:07'),
(909, 221, 315, '1755177967_689de3efb9a6b_3.jpg', '2025-08-14 07:56:07', '2025-08-14 07:56:07'),
(910, 222, 316, '1755178010_689de41a932c5_2.jpg', '2025-08-14 07:56:50', '2025-08-14 07:56:50'),
(911, 222, 316, '1755178010_689de41aa3f76_3.jpg', '2025-08-14 07:56:50', '2025-08-14 07:56:50'),
(912, 223, 317, '1755178054_689de446584ee_2.jpg', '2025-08-14 07:57:34', '2025-08-14 07:57:34'),
(913, 223, 317, '1755178054_689de44669d90_3.jpg', '2025-08-14 07:57:34', '2025-08-14 07:57:34'),
(914, 224, 318, '1755178250_689de50a64efb_2.jpg', '2025-08-14 08:00:50', '2025-08-14 08:00:50'),
(915, 224, 318, '1755178250_689de50a73961_3.jpg', '2025-08-14 08:00:50', '2025-08-14 08:00:50'),
(916, 224, 319, '1755178250_689de50a92089_2.jpg', '2025-08-14 08:00:50', '2025-08-14 08:00:50'),
(917, 224, 319, '1755178250_689de50aa16a1_3.jpg', '2025-08-14 08:00:50', '2025-08-14 08:00:50'),
(918, 224, 320, '1755178250_689de50ac0cbb_2.jpg', '2025-08-14 08:00:50', '2025-08-14 08:00:50'),
(919, 224, 320, '1755178250_689de50acfa33_3.jpg', '2025-08-14 08:00:50', '2025-08-14 08:00:50'),
(920, 224, 320, '1755178250_689de50adf3f5_4.jpg', '2025-08-14 08:00:50', '2025-08-14 08:00:50'),
(921, 225, 321, '1755178681_689de6b9cd31e_2.jpg', '2025-08-14 08:08:01', '2025-08-14 08:08:01'),
(922, 225, 321, '1755178681_689de6b9dcddc_3.jpg', '2025-08-14 08:08:01', '2025-08-14 08:08:01'),
(923, 225, 321, '1755178681_689de6b9eb00c_4.jpg', '2025-08-14 08:08:02', '2025-08-14 08:08:02'),
(924, 226, 322, '1755178753_689de701ab1f5_2.jpg', '2025-08-14 08:09:13', '2025-08-14 08:09:13'),
(925, 226, 322, '1755178753_689de701b6635_3.jpg', '2025-08-14 08:09:13', '2025-08-14 08:09:13'),
(926, 227, 323, '1755178801_689de7312edac_2.jpg', '2025-08-14 08:10:01', '2025-08-14 08:10:01'),
(927, 227, 323, '1755178801_689de7313c7c5_3.jpg', '2025-08-14 08:10:01', '2025-08-14 08:10:01'),
(928, 228, 324, '1755178856_689de76861daf_2.jpg', '2025-08-14 08:10:56', '2025-08-14 08:10:56'),
(929, 228, 324, '1755178856_689de768712ec_3.jpg', '2025-08-14 08:10:56', '2025-08-14 08:10:56'),
(930, 229, 325, '1755179062_689de8363dde7_2.jpg', '2025-08-14 08:14:22', '2025-08-14 08:14:22'),
(931, 229, 325, '1755179062_689de8364c487_3.jpg', '2025-08-14 08:14:22', '2025-08-14 08:14:22'),
(932, 230, 326, '1755179172_689de8a4062a5_2.jpg', '2025-08-14 08:16:12', '2025-08-14 08:16:12'),
(933, 230, 326, '1755179172_689de8a411a78_3.jpg', '2025-08-14 08:16:12', '2025-08-14 08:16:12'),
(934, 231, 327, '1755179728_689dead05e845_3.jpg', '2025-08-14 08:25:28', '2025-08-14 08:25:28'),
(935, 231, 327, '1755179728_689dead069fe6_4.jpg', '2025-08-14 08:25:28', '2025-08-14 08:25:28'),
(936, 232, 328, '1755179797_689deb155cdff_3.jpg', '2025-08-14 08:26:37', '2025-08-14 08:26:37'),
(937, 232, 328, '1755179797_689deb1567f76_4.jpg', '2025-08-14 08:26:37', '2025-08-14 08:26:37'),
(938, 232, 328, '1755179797_689deb1573bce_5.jpg', '2025-08-14 08:26:37', '2025-08-14 08:26:37'),
(939, 233, 329, '1755179849_689deb49b0b51_3.jpg', '2025-08-14 08:27:29', '2025-08-14 08:27:29'),
(940, 233, 329, '1755179849_689deb49bf34d_4.jpg', '2025-08-14 08:27:29', '2025-08-14 08:27:29'),
(941, 233, 329, '1755179849_689deb49cd97f_5.jpg', '2025-08-14 08:27:29', '2025-08-14 08:27:29'),
(942, 234, 330, '1755180280_689decf84fb4c_2.jpg', '2025-08-14 08:34:40', '2025-08-14 08:34:40'),
(943, 234, 330, '1755180280_689decf859d6f_3.jpg', '2025-08-14 08:34:40', '2025-08-14 08:34:40'),
(944, 234, 330, '1755180280_689decf8664ff_4.jpg', '2025-08-14 08:34:40', '2025-08-14 08:34:40'),
(945, 234, 331, '1755180280_689decf885bed_2.jpg', '2025-08-14 08:34:40', '2025-08-14 08:34:40'),
(946, 234, 331, '1755180280_689decf895206_3.jpg', '2025-08-14 08:34:40', '2025-08-14 08:34:40'),
(947, 234, 331, '1755180280_689decf8a537d_4.jpg', '2025-08-14 08:34:40', '2025-08-14 08:34:40'),
(948, 234, 332, '1755180280_689decf8bf9a8_2.jpg', '2025-08-14 08:34:40', '2025-08-14 08:34:40'),
(949, 234, 332, '1755180280_689decf8cd92d_3.jpg', '2025-08-14 08:34:40', '2025-08-14 08:34:40'),
(950, 234, 332, '1755180280_689decf8d9c9d_4.jpg', '2025-08-14 08:34:40', '2025-08-14 08:34:40'),
(951, 235, 333, '1755180346_689ded3a1d590_2.jpg', '2025-08-14 08:35:46', '2025-08-14 08:35:46'),
(952, 235, 333, '1755180346_689ded3a27c7b_3.jpg', '2025-08-14 08:35:46', '2025-08-14 08:35:46'),
(953, 235, 333, '1755180346_689ded3a350d7_4.jpg', '2025-08-14 08:35:46', '2025-08-14 08:35:46'),
(954, 236, 334, '1755180469_689dedb54a9b7_2.jpg', '2025-08-14 08:37:49', '2025-08-14 08:37:49'),
(955, 236, 334, '1755180469_689dedb556d95_3.jpg', '2025-08-14 08:37:49', '2025-08-14 08:37:49'),
(956, 236, 334, '1755180469_689dedb560b10_4.jpg', '2025-08-14 08:37:49', '2025-08-14 08:37:49'),
(957, 237, 335, '1755180503_689dedd7a9f3d_2.jpg', '2025-08-14 08:38:23', '2025-08-14 08:38:23'),
(958, 237, 335, '1755180503_689dedd7b7fa7_3.jpg', '2025-08-14 08:38:23', '2025-08-14 08:38:23'),
(959, 238, 336, '1755180565_689dee1578b26_2.jpg', '2025-08-14 08:39:25', '2025-08-14 08:39:25'),
(960, 238, 336, '1755180565_689dee1582803_3.jpg', '2025-08-14 08:39:25', '2025-08-14 08:39:25'),
(961, 238, 337, '1755180565_689dee159dc6a_3.jpg', '2025-08-14 08:39:25', '2025-08-14 08:39:25'),
(962, 238, 337, '1755180565_689dee15a9e8a_4.jpg', '2025-08-14 08:39:25', '2025-08-14 08:39:25'),
(963, 239, 338, '1755180813_689def0d574f9_3.jpg', '2025-08-14 08:43:33', '2025-08-14 08:43:33'),
(964, 239, 338, '1755180813_689def0d65f02_4.jpg', '2025-08-14 08:43:33', '2025-08-14 08:43:33'),
(965, 239, 338, '1755180813_689def0d6fea0_5.jpg', '2025-08-14 08:43:33', '2025-08-14 08:43:33'),
(966, 239, 339, '1755180813_689def0d84aad_3.jpg', '2025-08-14 08:43:33', '2025-08-14 08:43:33'),
(967, 239, 339, '1755180813_689def0d8ea26_4.jpg', '2025-08-14 08:43:33', '2025-08-14 08:43:33'),
(968, 239, 339, '1755180813_689def0d98646_5.jpg', '2025-08-14 08:43:33', '2025-08-14 08:43:33'),
(969, 240, 340, '1755180886_689def56e26f1_3.jpg', '2025-08-14 08:44:46', '2025-08-14 08:44:46'),
(970, 240, 340, '1755180886_689def56f1abb_4.jpg', '2025-08-14 08:44:47', '2025-08-14 08:44:47'),
(971, 240, 340, '1755180887_689def570c0ef_5.jpg', '2025-08-14 08:44:47', '2025-08-14 08:44:47'),
(972, 241, 341, '1755180973_689defadb3a47_3.jpg', '2025-08-14 08:46:13', '2025-08-14 08:46:13'),
(973, 241, 341, '1755180973_689defadc800c_4.jpg', '2025-08-14 08:46:13', '2025-08-14 08:46:13'),
(974, 241, 341, '1755180973_689defaddc3d1_5.jpg', '2025-08-14 08:46:13', '2025-08-14 08:46:13'),
(975, 242, 342, '1755181048_689deff8d3361_3.jpg', '2025-08-14 08:47:28', '2025-08-14 08:47:28'),
(976, 242, 342, '1755181048_689deff8dcb15_4.jpg', '2025-08-14 08:47:28', '2025-08-14 08:47:28'),
(977, 242, 342, '1755181048_689deff8e5deb_5.jpg', '2025-08-14 08:47:28', '2025-08-14 08:47:28'),
(978, 243, 343, '1755181116_689df03c5e9f0_3.jpg', '2025-08-14 08:48:36', '2025-08-14 08:48:36'),
(979, 243, 343, '1755181116_689df03c683de_4.jpg', '2025-08-14 08:48:36', '2025-08-14 08:48:36'),
(980, 244, 344, '1755181217_689df0a120703_3.jpg', '2025-08-14 08:50:17', '2025-08-14 08:50:17'),
(981, 244, 344, '1755181217_689df0a12adce_4.jpg', '2025-08-14 08:50:17', '2025-08-14 08:50:17'),
(982, 244, 344, '1755181217_689df0a133f6a_5.jpg', '2025-08-14 08:50:17', '2025-08-14 08:50:17'),
(983, 245, 345, '1755181348_689df12410068_3.jpg', '2025-08-14 08:52:28', '2025-08-14 08:52:28'),
(984, 245, 345, '1755181348_689df1241bac9_4.jpg', '2025-08-14 08:52:28', '2025-08-14 08:52:28'),
(985, 245, 345, '1755181348_689df12424c45_5.jpg', '2025-08-14 08:52:28', '2025-08-14 08:52:28'),
(986, 245, 346, '1755181348_689df1243c323_3.jpg', '2025-08-14 08:52:28', '2025-08-14 08:52:28'),
(987, 245, 346, '1755181348_689df12445dca_4.jpg', '2025-08-14 08:52:28', '2025-08-14 08:52:28'),
(988, 245, 346, '1755181348_689df1244efef_5.jpg', '2025-08-14 08:52:28', '2025-08-14 08:52:28'),
(989, 245, 347, '1755181348_689df12462344_3.jpg', '2025-08-14 08:52:28', '2025-08-14 08:52:28'),
(990, 245, 347, '1755181348_689df1246d590_4.jpg', '2025-08-14 08:52:28', '2025-08-14 08:52:28'),
(991, 245, 347, '1755181348_689df12479cf5_5.jpg', '2025-08-14 08:52:28', '2025-08-14 08:52:28'),
(992, 245, 348, '1755181348_689df12492a75_3.jpg', '2025-08-14 08:52:28', '2025-08-14 08:52:28'),
(993, 245, 348, '1755181348_689df124a444c_4.jpg', '2025-08-14 08:52:28', '2025-08-14 08:52:28'),
(994, 245, 348, '1755181348_689df124b6a78_5.jpg', '2025-08-14 08:52:28', '2025-08-14 08:52:28'),
(995, 246, 349, '1755181413_689df1655b287_2.jpg', '2025-08-14 08:53:33', '2025-08-14 08:53:33'),
(996, 246, 349, '1755181413_689df16564bf8_3.jpg', '2025-08-14 08:53:33', '2025-08-14 08:53:33'),
(997, 247, 350, '1755181546_689df1eaaf4ed_2.jpg', '2025-08-14 08:55:46', '2025-08-14 08:55:46'),
(998, 247, 350, '1755181546_689df1eabf549_3.jpg', '2025-08-14 08:55:46', '2025-08-14 08:55:46'),
(999, 247, 351, '1755181546_689df1ead8e33_2.jpg', '2025-08-14 08:55:46', '2025-08-14 08:55:46'),
(1000, 247, 351, '1755181546_689df1eae7dfa_3.jpg', '2025-08-14 08:55:46', '2025-08-14 08:55:46'),
(1001, 248, 352, '1755181633_689df24144a74_2.jpg', '2025-08-14 08:57:13', '2025-08-14 08:57:13'),
(1002, 248, 352, '1755181633_689df2414f109_3.jpg', '2025-08-14 08:57:13', '2025-08-14 08:57:13'),
(1003, 249, 353, '1755181871_689df32f3de39_2.jpg', '2025-08-14 09:01:11', '2025-08-14 09:01:11'),
(1004, 249, 353, '1755181871_689df32f48470_3.jpg', '2025-08-14 09:01:11', '2025-08-14 09:01:11'),
(1005, 249, 354, '1755181871_689df32f5dba7_2.jpg', '2025-08-14 09:01:11', '2025-08-14 09:01:11'),
(1006, 249, 354, '1755181871_689df32f67dd6_3.jpg', '2025-08-14 09:01:11', '2025-08-14 09:01:11'),
(1007, 249, 355, '1755181871_689df32f7bb3e_2.jpg', '2025-08-14 09:01:11', '2025-08-14 09:01:11'),
(1008, 249, 355, '1755181871_689df32f85209_3.jpg', '2025-08-14 09:01:11', '2025-08-14 09:01:11'),
(1009, 249, 356, '1755181871_689df32f9d95d_2.jpg', '2025-08-14 09:01:11', '2025-08-14 09:01:11'),
(1010, 249, 356, '1755181871_689df32fb15bf_3.jpg', '2025-08-14 09:01:11', '2025-08-14 09:01:11'),
(1011, 250, 357, '1755181979_689df39b3efa2_2.jpg', '2025-08-14 09:02:59', '2025-08-14 09:02:59'),
(1012, 250, 357, '1755181979_689df39b4bf27_3.jpg', '2025-08-14 09:02:59', '2025-08-14 09:02:59'),
(1013, 250, 358, '1755181979_689df39b60d86_2.jpg', '2025-08-14 09:02:59', '2025-08-14 09:02:59'),
(1014, 250, 358, '1755181979_689df39b6a348_3.jpg', '2025-08-14 09:02:59', '2025-08-14 09:02:59'),
(1015, 250, 359, '1755181979_689df39b7c7ef_2.jpg', '2025-08-14 09:02:59', '2025-08-14 09:02:59'),
(1016, 250, 359, '1755181979_689df39b85a9a_3.jpg', '2025-08-14 09:02:59', '2025-08-14 09:02:59'),
(1017, 251, 360, '1755182210_689df482d31c8_2.jpg', '2025-08-14 09:06:50', '2025-08-14 09:06:50'),
(1018, 251, 360, '1755182210_689df482e3081_3.jpg', '2025-08-14 09:06:50', '2025-08-14 09:06:50'),
(1019, 251, 361, '1755182211_689df4830e3f7_2.jpg', '2025-08-14 09:06:51', '2025-08-14 09:06:51'),
(1020, 251, 361, '1755182211_689df4831e33c_3.jpg', '2025-08-14 09:06:51', '2025-08-14 09:06:51'),
(1021, 251, 362, '1755182211_689df48340f0c_2.jpg', '2025-08-14 09:06:51', '2025-08-14 09:06:51'),
(1022, 251, 362, '1755182211_689df4835079f_3.jpg', '2025-08-14 09:06:51', '2025-08-14 09:06:51'),
(1023, 251, 363, '1755182211_689df48371819_2.jpg', '2025-08-14 09:06:51', '2025-08-14 09:06:51'),
(1024, 251, 363, '1755182211_689df4837eed6_3.jpg', '2025-08-14 09:06:51', '2025-08-14 09:06:51'),
(1025, 252, 364, '1755182270_689df4be4d986_2.jpg', '2025-08-14 09:07:50', '2025-08-14 09:07:50'),
(1026, 252, 364, '1755182270_689df4be58c5f_3.jpg', '2025-08-14 09:07:50', '2025-08-14 09:07:50'),
(1027, 253, 365, '1755182320_689df4f079784_2.jpg', '2025-08-14 09:08:40', '2025-08-14 09:08:40'),
(1028, 253, 365, '1755182320_689df4f087fbd_3.jpg', '2025-08-14 09:08:40', '2025-08-14 09:08:40'),
(1029, 254, 366, '1755182367_689df51fb14fa_2.jpg', '2025-08-14 09:09:27', '2025-08-14 09:09:27'),
(1030, 254, 366, '1755182367_689df51fbf07c_3.jpg', '2025-08-14 09:09:27', '2025-08-14 09:09:27'),
(1031, 255, 367, '1755182425_689df55954bea_2.jpg', '2025-08-14 09:10:25', '2025-08-14 09:10:25'),
(1032, 255, 367, '1755182425_689df5595e155_3.jpg', '2025-08-14 09:10:25', '2025-08-14 09:10:25'),
(1033, 256, 368, '1755182501_689df5a5bcb94_2.jpg', '2025-08-14 09:11:41', '2025-08-14 09:11:41'),
(1034, 256, 368, '1755182501_689df5a5c95b2_3.jpg', '2025-08-14 09:11:41', '2025-08-14 09:11:41'),
(1035, 257, 369, '1755182554_689df5da67478_2.jpg', '2025-08-14 09:12:34', '2025-08-14 09:12:34'),
(1036, 257, 369, '1755182554_689df5da72365_3.jpg', '2025-08-14 09:12:34', '2025-08-14 09:12:34'),
(1037, 258, 370, '1755182605_689df60d8fbd9_2.jpg', '2025-08-14 09:13:25', '2025-08-14 09:13:25'),
(1038, 258, 370, '1755182605_689df60d9adc1_3.jpg', '2025-08-14 09:13:25', '2025-08-14 09:13:25'),
(1039, 258, 370, '1755182605_689df60da71ab_4.jpg', '2025-08-14 09:13:25', '2025-08-14 09:13:25'),
(1040, 258, 370, '1755182605_689df60db0e0a_5.jpg', '2025-08-14 09:13:25', '2025-08-14 09:13:25'),
(1041, 259, 371, '1755182770_689df6b261cb0_2.jpg', '2025-08-14 09:16:10', '2025-08-14 09:16:10'),
(1042, 259, 371, '1755182770_689df6b26f2d9_3.jpg', '2025-08-14 09:16:10', '2025-08-14 09:16:10'),
(1043, 259, 371, '1755182770_689df6b27920e_4.jpg', '2025-08-14 09:16:10', '2025-08-14 09:16:10'),
(1044, 259, 371, '1755182770_689df6b285be2_5.jpg', '2025-08-14 09:16:10', '2025-08-14 09:16:10'),
(1045, 259, 372, '1755182770_689df6b299f2c_2.jpg', '2025-08-14 09:16:10', '2025-08-14 09:16:10'),
(1046, 259, 372, '1755182770_689df6b2a3dcc_3.jpg', '2025-08-14 09:16:10', '2025-08-14 09:16:10'),
(1047, 259, 372, '1755182770_689df6b2ae1f5_4.jpg', '2025-08-14 09:16:10', '2025-08-14 09:16:10'),
(1048, 259, 372, '1755182770_689df6b2b968e_5.jpg', '2025-08-14 09:16:10', '2025-08-14 09:16:10'),
(1049, 259, 373, '1755182770_689df6b2d32da_2.jpg', '2025-08-14 09:16:10', '2025-08-14 09:16:10'),
(1050, 259, 373, '1755182770_689df6b2df518_3.jpg', '2025-08-14 09:16:10', '2025-08-14 09:16:10'),
(1051, 259, 373, '1755182770_689df6b2e8478_4.jpg', '2025-08-14 09:16:10', '2025-08-14 09:16:10'),
(1052, 259, 373, '1755182770_689df6b2f14b3_5.jpg', '2025-08-14 09:16:11', '2025-08-14 09:16:11'),
(1053, 260, 374, '1755182883_689df7233af50_2.jpg', '2025-08-14 09:18:03', '2025-08-14 09:18:03'),
(1054, 260, 374, '1755182883_689df72344303_3.jpg', '2025-08-14 09:18:03', '2025-08-14 09:18:03'),
(1055, 260, 374, '1755182883_689df7234d722_4.jpg', '2025-08-14 09:18:03', '2025-08-14 09:18:03'),
(1056, 260, 374, '1755182883_689df72356a6d_5.jpg', '2025-08-14 09:18:03', '2025-08-14 09:18:03'),
(1057, 260, 375, '1755182883_689df72369ebb_2.jpg', '2025-08-14 09:18:03', '2025-08-14 09:18:03'),
(1058, 260, 375, '1755182883_689df723743f6_3.jpg', '2025-08-14 09:18:03', '2025-08-14 09:18:03'),
(1059, 260, 375, '1755182883_689df7237df8f_4.jpg', '2025-08-14 09:18:03', '2025-08-14 09:18:03'),
(1060, 260, 376, '1755182883_689df723922a2_2.jpg', '2025-08-14 09:18:03', '2025-08-14 09:18:03'),
(1061, 260, 376, '1755182883_689df7239d4ac_3.jpg', '2025-08-14 09:18:03', '2025-08-14 09:18:03'),
(1062, 260, 376, '1755182883_689df723a904b_4.jpg', '2025-08-14 09:18:03', '2025-08-14 09:18:03'),
(1063, 260, 377, '1755182883_689df723bbaa0_2.jpg', '2025-08-14 09:18:03', '2025-08-14 09:18:03'),
(1064, 260, 377, '1755182883_689df723c75db_3.jpg', '2025-08-14 09:18:03', '2025-08-14 09:18:03'),
(1065, 260, 377, '1755182883_689df723d1bf9_4.jpg', '2025-08-14 09:18:03', '2025-08-14 09:18:03'),
(1066, 261, 378, '1755182927_689df74f7ca0c_3.jpg', '2025-08-14 09:18:47', '2025-08-14 09:18:47'),
(1067, 261, 378, '1755182927_689df74f860fb_4.jpg', '2025-08-14 09:18:47', '2025-08-14 09:18:47'),
(1068, 262, 379, '1755583813_68a415453df6c_flavoursfinal.jpg', '2025-08-19 00:40:13', '2025-08-19 00:40:13'),
(1069, 263, 380, '1756829367_68b716b74d861_RV708572.jpg', '2025-09-02 10:39:27', '2025-09-02 10:39:27'),
(1070, 263, 380, '1756829367_68b716b75bf2e_RV708574.jpg', '2025-09-02 10:39:27', '2025-09-02 10:39:27'),
(1071, 264, 381, '1756829453_68b7170d5192c_RV708561.jpg', '2025-09-02 10:40:53', '2025-09-02 10:40:53'),
(1072, 264, 381, '1756829453_68b7170d60ddc_RV708563.jpg', '2025-09-02 10:40:53', '2025-09-02 10:40:53'),
(1073, 264, 381, '1756829453_68b7170d6ec7a_RV708567.jpg', '2025-09-02 10:40:53', '2025-09-02 10:40:53'),
(1074, 265, 382, '1756829593_68b71799031c4_RV708595.jpg', '2025-09-02 10:43:13', '2025-09-02 10:43:13'),
(1075, 265, 382, '1756829593_68b717990d9be_RV708597.jpg', '2025-09-02 10:43:13', '2025-09-02 10:43:13'),
(1076, 265, 382, '1756829593_68b717991b14e_RV708598.jpg', '2025-09-02 10:43:13', '2025-09-02 10:43:13'),
(1077, 266, 383, '1756829645_68b717cda47dc_RV708568.jpg', '2025-09-02 10:44:05', '2025-09-02 10:44:05'),
(1078, 266, 383, '1756829645_68b717cdb5ed5_RV708570.jpg', '2025-09-02 10:44:05', '2025-09-02 10:44:05'),
(1079, 266, 383, '1756829645_68b717cdc6be2_RV708571.jpg', '2025-09-02 10:44:05', '2025-09-02 10:44:05'),
(1080, 267, 384, '1756829759_68b7183f533bd_RV708599.jpg', '2025-09-02 10:45:59', '2025-09-02 10:45:59'),
(1081, 267, 384, '1756829759_68b7183f5c90a_RV708600.jpg', '2025-09-02 10:45:59', '2025-09-02 10:45:59'),
(1082, 267, 384, '1756829759_68b7183f67a36_RV708603.jpg', '2025-09-02 10:45:59', '2025-09-02 10:45:59');
INSERT INTO `product_images` (`id`, `product_id`, `variant_id`, `other_image`, `created_at`, `updated_at`) VALUES
(1083, 268, 385, '1756829804_68b7186cb074d_RV708586.jpg', '2025-09-02 10:46:44', '2025-09-02 10:46:44'),
(1084, 268, 385, '1756829804_68b7186cbfaf5_RV708588.jpg', '2025-09-02 10:46:44', '2025-09-02 10:46:44'),
(1085, 268, 385, '1756829804_68b7186cc9b91_RV708589.jpg', '2025-09-02 10:46:44', '2025-09-02 10:46:44'),
(1086, 269, 386, '1756829850_68b7189a4811b_RV708590.jpg', '2025-09-02 10:47:30', '2025-09-02 10:47:30'),
(1087, 269, 386, '1756829850_68b7189a5135b_RV708591.jpg', '2025-09-02 10:47:30', '2025-09-02 10:47:30'),
(1088, 269, 386, '1756829850_68b7189a5a471_RV708594.jpg', '2025-09-02 10:47:30', '2025-09-02 10:47:30'),
(1089, 270, 387, '1756830011_68b7193bb6c78_RV708840.jpg', '2025-09-02 10:50:11', '2025-09-02 10:50:11'),
(1090, 270, 387, '1756830011_68b7193bc5b23_RV708841.jpg', '2025-09-02 10:50:11', '2025-09-02 10:50:11'),
(1091, 270, 387, '1756830011_68b7193bd2cb0_RV708842.jpg', '2025-09-02 10:50:11', '2025-09-02 10:50:11'),
(1092, 271, 388, '1756830122_68b719aa39492_RV708854.jpg', '2025-09-02 10:52:02', '2025-09-02 10:52:02'),
(1093, 271, 388, '1756830122_68b719aa4b48c_RV708855.jpg', '2025-09-02 10:52:02', '2025-09-02 10:52:02'),
(1094, 271, 388, '1756830122_68b719aa5bfbd_RV708856.jpg', '2025-09-02 10:52:02', '2025-09-02 10:52:02'),
(1095, 272, 389, '1756830201_68b719f918805_RV708827.jpg', '2025-09-02 10:53:21', '2025-09-02 10:53:21'),
(1096, 272, 389, '1756830201_68b719f923d67_RV708829.jpg', '2025-09-02 10:53:21', '2025-09-02 10:53:21'),
(1097, 273, 390, '1756830272_68b71a4041240_RV708833.jpg', '2025-09-02 10:54:32', '2025-09-02 10:54:32'),
(1098, 273, 390, '1756830272_68b71a404e04e_RV708834.jpg', '2025-09-02 10:54:32', '2025-09-02 10:54:32'),
(1099, 273, 390, '1756830272_68b71a405b89b_RV708835.jpg', '2025-09-02 10:54:32', '2025-09-02 10:54:32'),
(1100, 273, 390, '1756830272_68b71a40692d6_RV708836.jpg', '2025-09-02 10:54:32', '2025-09-02 10:54:32'),
(1101, 274, 391, '1756831119_68b71d8f0a4ec_RV708741.jpg', '2025-09-02 11:08:39', '2025-09-02 11:08:39'),
(1102, 274, 391, '1756831119_68b71d8f15628_RV708742.jpg', '2025-09-02 11:08:39', '2025-09-02 11:08:39'),
(1103, 274, 391, '1756831119_68b71d8f215d0_RV708743.jpg', '2025-09-02 11:08:39', '2025-09-02 11:08:39'),
(1104, 274, 392, '1756831119_68b71d8f3f548_RV708737.jpg', '2025-09-02 11:08:39', '2025-09-02 11:08:39'),
(1105, 274, 392, '1756831119_68b71d8f4edc9_RV708738.jpg', '2025-09-02 11:08:39', '2025-09-02 11:08:39'),
(1106, 274, 393, '1756831119_68b71d8f6a506_RV708752.jpg', '2025-09-02 11:08:39', '2025-09-02 11:08:39'),
(1107, 274, 393, '1756831119_68b71d8f79184_RV708753.jpg', '2025-09-02 11:08:39', '2025-09-02 11:08:39'),
(1108, 274, 394, '1756831119_68b71d8f9596b_RV708747.jpg', '2025-09-02 11:08:39', '2025-09-02 11:08:39'),
(1109, 274, 394, '1756831119_68b71d8fa6466_RV708748.jpg', '2025-09-02 11:08:39', '2025-09-02 11:08:39'),
(1110, 275, 395, '1756831299_68b71e4321506_RV708714.jpg', '2025-09-02 11:11:39', '2025-09-02 11:11:39'),
(1111, 275, 395, '1756831299_68b71e4333440_RV708726.jpg', '2025-09-02 11:11:39', '2025-09-02 11:11:39'),
(1112, 275, 396, '1756831299_68b71e4354f13_RV708724.jpg', '2025-09-02 11:11:39', '2025-09-02 11:11:39'),
(1113, 275, 396, '1756831299_68b71e436717f_RV708725.jpg', '2025-09-02 11:11:39', '2025-09-02 11:11:39'),
(1114, 275, 397, '1756831299_68b71e437ec38_RV708715.jpg', '2025-09-02 11:11:39', '2025-09-02 11:11:39'),
(1115, 275, 397, '1756831299_68b71e4388fae_RV708727.jpg', '2025-09-02 11:11:39', '2025-09-02 11:11:39'),
(1116, 275, 398, '1756831299_68b71e43ac43d_RV708731.jpg', '2025-09-02 11:11:39', '2025-09-02 11:11:39'),
(1117, 275, 398, '1756831299_68b71e43bb5de_RV708732.jpg', '2025-09-02 11:11:39', '2025-09-02 11:11:39'),
(1118, 276, 399, '1756831469_68b71eed21560_RV708635.jpg', '2025-09-02 11:14:29', '2025-09-02 11:14:29'),
(1119, 276, 399, '1756831469_68b71eed2d202_RV708637.jpg', '2025-09-02 11:14:29', '2025-09-02 11:14:29'),
(1120, 276, 399, '1756831469_68b71eed3d27c_RV708639.jpg', '2025-09-02 11:14:29', '2025-09-02 11:14:29'),
(1121, 276, 400, '1756831469_68b71eed5d870_RV708622.jpg', '2025-09-02 11:14:29', '2025-09-02 11:14:29'),
(1122, 276, 400, '1756831469_68b71eed6e1d9_RV708625.jpg', '2025-09-02 11:14:29', '2025-09-02 11:14:29'),
(1123, 276, 400, '1756831469_68b71eed7e4b2_RV708626.jpg', '2025-09-02 11:14:29', '2025-09-02 11:14:29'),
(1124, 276, 401, '1756831469_68b71eed9a98f_RV708617.jpg', '2025-09-02 11:14:29', '2025-09-02 11:14:29'),
(1125, 276, 401, '1756831469_68b71eeda7b40_RV708618.jpg', '2025-09-02 11:14:29', '2025-09-02 11:14:29'),
(1126, 276, 401, '1756831469_68b71eedb4aed_RV708620.jpg', '2025-09-02 11:14:29', '2025-09-02 11:14:29'),
(1127, 276, 402, '1756831469_68b71eedceeb5_RV708630.jpg', '2025-09-02 11:14:29', '2025-09-02 11:14:29'),
(1128, 276, 402, '1756831469_68b71eeddbcc9_RV708632.jpg', '2025-09-02 11:14:29', '2025-09-02 11:14:29'),
(1129, 276, 402, '1756831469_68b71eede637a_RV708634.jpg', '2025-09-02 11:14:30', '2025-09-02 11:14:30'),
(1130, 277, 403, '1756831601_68b71f71606ce_RV708699.jpg', '2025-09-02 11:16:41', '2025-09-02 11:16:41'),
(1131, 277, 403, '1756831601_68b71f71708a3_RV708700.jpg', '2025-09-02 11:16:41', '2025-09-02 11:16:41'),
(1132, 277, 404, '1756831601_68b71f718cce3_RV708685.jpg', '2025-09-02 11:16:41', '2025-09-02 11:16:41'),
(1133, 277, 404, '1756831601_68b71f719e7a5_RV708687.jpg', '2025-09-02 11:16:41', '2025-09-02 11:16:41'),
(1134, 277, 405, '1756831601_68b71f71bfd4e_RV708691.jpg', '2025-09-02 11:16:41', '2025-09-02 11:16:41'),
(1135, 277, 405, '1756831601_68b71f71d024d_RV708692.jpg', '2025-09-02 11:16:41', '2025-09-02 11:16:41'),
(1136, 278, 406, '1756831768_68b720187afd4_RV708450.jpg', '2025-09-02 11:19:28', '2025-09-02 11:19:28'),
(1137, 278, 406, '1756831768_68b720188f442_RV708452.jpg', '2025-09-02 11:19:28', '2025-09-02 11:19:28'),
(1138, 278, 407, '1756831768_68b72018be359_RV708437.jpg', '2025-09-02 11:19:28', '2025-09-02 11:19:28'),
(1139, 278, 407, '1756831768_68b72018d10cb_RV708440.jpg', '2025-09-02 11:19:28', '2025-09-02 11:19:28'),
(1140, 278, 408, '1756831768_68b72018f2c70_RV708459.jpg', '2025-09-02 11:19:29', '2025-09-02 11:19:29'),
(1141, 278, 408, '1756831769_68b720190ee3f_RV708462.jpg', '2025-09-02 11:19:29', '2025-09-02 11:19:29'),
(1142, 278, 409, '1756831769_68b7201922e6d_RV708445.jpg', '2025-09-02 11:19:29', '2025-09-02 11:19:29'),
(1143, 278, 409, '1756831769_68b720192c72f_RV708447.jpg', '2025-09-02 11:19:29', '2025-09-02 11:19:29'),
(1144, 279, 410, '1756832012_68b7210c755d3_RV708490.jpg', '2025-09-02 11:23:32', '2025-09-02 11:23:32'),
(1145, 279, 410, '1756832012_68b7210c7fe17_RV708492.jpg', '2025-09-02 11:23:32', '2025-09-02 11:23:32'),
(1146, 279, 411, '1756832012_68b7210c91e3d_RV708466.jpg', '2025-09-02 11:23:32', '2025-09-02 11:23:32'),
(1147, 279, 411, '1756832012_68b7210c9b375_RV708468.jpg', '2025-09-02 11:23:32', '2025-09-02 11:23:32'),
(1148, 279, 412, '1756832012_68b7210cadd61_RV708471.jpg', '2025-09-02 11:23:32', '2025-09-02 11:23:32'),
(1149, 279, 412, '1756832012_68b7210cb7267_RV708473.jpg', '2025-09-02 11:23:32', '2025-09-02 11:23:32'),
(1150, 279, 413, '1756832012_68b7210ccb71c_RV708477.jpg', '2025-09-02 11:23:32', '2025-09-02 11:23:32'),
(1151, 279, 413, '1756832012_68b7210cd5b79_RV708479.jpg', '2025-09-02 11:23:32', '2025-09-02 11:23:32'),
(1152, 279, 414, '1756832012_68b7210ce96b0_RV708482.jpg', '2025-09-02 11:23:32', '2025-09-02 11:23:32'),
(1153, 279, 414, '1756832012_68b7210cf2c3b_RV708486.jpg', '2025-09-02 11:23:33', '2025-09-02 11:23:33'),
(1154, 280, 415, '1756832180_68b721b401c79_RV708520.jpg', '2025-09-02 11:26:20', '2025-09-02 11:26:20'),
(1155, 280, 415, '1756832180_68b721b4171c8_RV708522.jpg', '2025-09-02 11:26:20', '2025-09-02 11:26:20'),
(1156, 280, 416, '1756832180_68b721b436857_RV708525.jpg', '2025-09-02 11:26:20', '2025-09-02 11:26:20'),
(1157, 280, 416, '1756832180_68b721b446ac1_RV708527.jpg', '2025-09-02 11:26:20', '2025-09-02 11:26:20'),
(1158, 280, 417, '1756832180_68b721b45ac81_RV708514.jpg', '2025-09-02 11:26:20', '2025-09-02 11:26:20'),
(1159, 280, 417, '1756832180_68b721b464a87_RV7085172.jpg', '2025-09-02 11:26:20', '2025-09-02 11:26:20'),
(1160, 280, 418, '1756832180_68b721b47c774_RV708530.jpg', '2025-09-02 11:26:20', '2025-09-02 11:26:20'),
(1161, 280, 418, '1756832180_68b721b488b9f_RV708532.jpg', '2025-09-02 11:26:20', '2025-09-02 11:26:20'),
(1162, 281, 419, '1756832250_68b721fab1ee7_RV708820.jpg', '2025-09-02 11:27:30', '2025-09-02 11:27:30'),
(1163, 281, 419, '1756832250_68b721fabc8fe_RV708823.jpg', '2025-09-02 11:27:30', '2025-09-02 11:27:30'),
(1164, 281, 419, '1756832250_68b721fac87e9_RV708824.jpg', '2025-09-02 11:27:30', '2025-09-02 11:27:30'),
(1165, 282, 420, '1756832416_68b722a0e7036_RV708796.jpg', '2025-09-02 11:30:16', '2025-09-02 11:30:16'),
(1166, 282, 420, '1756832416_68b722a0f093e_RV708799.jpg', '2025-09-02 11:30:17', '2025-09-02 11:30:17'),
(1167, 282, 420, '1756832417_68b722a105c6b_RV708800.jpg', '2025-09-02 11:30:17', '2025-09-02 11:30:17'),
(1168, 282, 420, '1756832417_68b722a10f13e_RV708801.jpg', '2025-09-02 11:30:17', '2025-09-02 11:30:17'),
(1169, 282, 421, '1756832417_68b722a127a08_RV708784.jpg', '2025-09-02 11:30:17', '2025-09-02 11:30:17'),
(1170, 282, 421, '1756832417_68b722a1313be_RV708786.jpg', '2025-09-02 11:30:17', '2025-09-02 11:30:17'),
(1171, 282, 421, '1756832417_68b722a13b488_RV708787.jpg', '2025-09-02 11:30:17', '2025-09-02 11:30:17'),
(1172, 282, 421, '1756832417_68b722a144961_RV708788.jpg', '2025-09-02 11:30:17', '2025-09-02 11:30:17'),
(1173, 282, 422, '1756832417_68b722a156c2f_RV708790.jpg', '2025-09-02 11:30:17', '2025-09-02 11:30:17'),
(1174, 282, 422, '1756832417_68b722a15fd28_RV708793.jpg', '2025-09-02 11:30:17', '2025-09-02 11:30:17'),
(1175, 282, 422, '1756832417_68b722a169552_RV708794.jpg', '2025-09-02 11:30:17', '2025-09-02 11:30:17'),
(1176, 282, 422, '1756832417_68b722a17295c_RV708795.jpg', '2025-09-02 11:30:17', '2025-09-02 11:30:17'),
(1177, 282, 423, '1756832417_68b722a1854d1_RV708781.jpg', '2025-09-02 11:30:17', '2025-09-02 11:30:17'),
(1178, 282, 423, '1756832417_68b722a18ee05_RV708782.jpg', '2025-09-02 11:30:17', '2025-09-02 11:30:17'),
(1179, 282, 423, '1756832417_68b722a19976b_RV708783.jpg', '2025-09-02 11:30:17', '2025-09-02 11:30:17'),
(1180, 282, 423, '1756832417_68b722a1a34b9_RV708784.jpg', '2025-09-02 11:30:17', '2025-09-02 11:30:17'),
(1181, 283, 424, '1756833862_68b728461a917_RV708642.jpg', '2025-09-02 11:54:22', '2025-09-02 11:54:22'),
(1182, 283, 424, '1756833862_68b7284628739_RV708643.jpg', '2025-09-02 11:54:22', '2025-09-02 11:54:22'),
(1183, 283, 425, '1756833862_68b7284644298_RV708653.jpg', '2025-09-02 11:54:22', '2025-09-02 11:54:22'),
(1184, 283, 425, '1756833862_68b728464dec8_RV708654.jpg', '2025-09-02 11:54:22', '2025-09-02 11:54:22'),
(1185, 283, 426, '1756833862_68b72846615ab_RV708648.jpg', '2025-09-02 11:54:22', '2025-09-02 11:54:22'),
(1186, 283, 426, '1756833862_68b728466f3c1_RV708649.jpg', '2025-09-02 11:54:22', '2025-09-02 11:54:22'),
(1187, 284, 427, '1756833939_68b72893e649a_RV708818.jpg', '2025-09-02 11:55:39', '2025-09-02 11:55:39'),
(1188, 284, 427, '1756833939_68b72893f3d39_RV708819.jpg', '2025-09-02 11:55:40', '2025-09-02 11:55:40'),
(1189, 285, 428, '1756834107_68b7293b9733f_RV708412.jpg', '2025-09-02 11:58:27', '2025-09-02 11:58:27'),
(1190, 285, 428, '1756834107_68b7293ba7e87_RV708413.jpg', '2025-09-02 11:58:27', '2025-09-02 11:58:27'),
(1191, 285, 428, '1756834107_68b7293bb7ef6_RV708414.jpg', '2025-09-02 11:58:27', '2025-09-02 11:58:27'),
(1192, 285, 429, '1756834107_68b7293bdf31c_RV708423.jpg', '2025-09-02 11:58:27', '2025-09-02 11:58:27'),
(1193, 285, 429, '1756834108_68b7293c00a24_RV708424.jpg', '2025-09-02 11:58:28', '2025-09-02 11:58:28'),
(1194, 285, 429, '1756834108_68b7293c1c8a5_RV708425.jpg', '2025-09-02 11:58:28', '2025-09-02 11:58:28'),
(1195, 285, 430, '1756834108_68b7293c59f27_RV708433.jpg', '2025-09-02 11:58:28', '2025-09-02 11:58:28'),
(1196, 285, 430, '1756834108_68b7293c76318_RV708434.jpg', '2025-09-02 11:58:28', '2025-09-02 11:58:28'),
(1197, 285, 430, '1756834108_68b7293c8964a_RV708435.jpg', '2025-09-02 11:58:28', '2025-09-02 11:58:28'),
(1198, 285, 431, '1756834108_68b7293cbb6db_RV708428.jpg', '2025-09-02 11:58:28', '2025-09-02 11:58:28'),
(1199, 285, 431, '1756834108_68b7293cdd629_RV708429.jpg', '2025-09-02 11:58:28', '2025-09-02 11:58:28'),
(1200, 285, 431, '1756834108_68b7293cf3e07_RV708430.jpg', '2025-09-02 11:58:29', '2025-09-02 11:58:29'),
(1201, 285, 432, '1756834109_68b7293d1c584_RV708417.jpg', '2025-09-02 11:58:29', '2025-09-02 11:58:29'),
(1202, 285, 432, '1756834109_68b7293d26e8a_RV708419.jpg', '2025-09-02 11:58:29', '2025-09-02 11:58:29'),
(1203, 285, 432, '1756834109_68b7293d3618c_RV708420.jpg', '2025-09-02 11:58:29', '2025-09-02 11:58:29'),
(1204, 286, 433, '1756834247_68b729c741ebf_RV708509.jpg', '2025-09-02 12:00:47', '2025-09-02 12:00:47'),
(1205, 286, 433, '1756834247_68b729c74b5d0_RV708510.jpg', '2025-09-02 12:00:47', '2025-09-02 12:00:47'),
(1206, 286, 434, '1756834247_68b729c75d93d_RV708500.jpg', '2025-09-02 12:00:47', '2025-09-02 12:00:47'),
(1207, 286, 434, '1756834247_68b729c766d5e_RV708502.jpg', '2025-09-02 12:00:47', '2025-09-02 12:00:47'),
(1208, 286, 435, '1756834247_68b729c779423_RV708495.jpg', '2025-09-02 12:00:47', '2025-09-02 12:00:47'),
(1209, 286, 435, '1756834247_68b729c7825de_RV708497.jpg', '2025-09-02 12:00:47', '2025-09-02 12:00:47'),
(1210, 286, 436, '1756834247_68b729c795d1a_RV708504.jpg', '2025-09-02 12:00:47', '2025-09-02 12:00:47'),
(1211, 286, 436, '1756834247_68b729c7a3a93_RV708507.jpg', '2025-09-02 12:00:47', '2025-09-02 12:00:47'),
(1212, 287, 437, '1756834322_68b72a12d8754_RV708704.jpg', '2025-09-02 12:02:02', '2025-09-02 12:02:02'),
(1213, 287, 437, '1756834322_68b72a12e42dd_RV708706.jpg', '2025-09-02 12:02:02', '2025-09-02 12:02:02'),
(1214, 287, 437, '1756834322_68b72a12ee150_RV708708.jpg', '2025-09-02 12:02:03', '2025-09-02 12:02:03'),
(1215, 288, 438, '1756834476_68b72aac58a64_RV708553.jpg', '2025-09-02 12:04:36', '2025-09-02 12:04:36'),
(1216, 288, 438, '1756834476_68b72aac69159_RV708554.jpg', '2025-09-02 12:04:36', '2025-09-02 12:04:36'),
(1217, 288, 438, '1756834476_68b72aac739f5_RV708555.jpg', '2025-09-02 12:04:36', '2025-09-02 12:04:36'),
(1218, 288, 439, '1756834476_68b72aac886db_RV708556.jpg', '2025-09-02 12:04:36', '2025-09-02 12:04:36'),
(1219, 288, 439, '1756834476_68b72aac9448e_RV708559.jpg', '2025-09-02 12:04:36', '2025-09-02 12:04:36'),
(1220, 288, 439, '1756834476_68b72aac9fde2_RV708560.jpg', '2025-09-02 12:04:36', '2025-09-02 12:04:36'),
(1221, 288, 440, '1756834476_68b72aacbacb3_RV708548.jpg', '2025-09-02 12:04:36', '2025-09-02 12:04:36'),
(1222, 288, 440, '1756834476_68b72aaccaa08_RV708550.jpg', '2025-09-02 12:04:36', '2025-09-02 12:04:36'),
(1223, 288, 441, '1756834476_68b72aace6261_RV708542.jpg', '2025-09-02 12:04:36', '2025-09-02 12:04:36'),
(1224, 288, 441, '1756834476_68b72aacf027d_RV708545.jpg', '2025-09-02 12:04:37', '2025-09-02 12:04:37'),
(1225, 289, 442, '1756834648_68b72b589d0a6_RV708754.jpg', '2025-09-02 12:07:28', '2025-09-02 12:07:28'),
(1226, 289, 442, '1756834648_68b72b58a9596_RV708759.jpg', '2025-09-02 12:07:28', '2025-09-02 12:07:28'),
(1227, 289, 443, '1756834648_68b72b58c5ef0_RV708766.jpg', '2025-09-02 12:07:28', '2025-09-02 12:07:28'),
(1228, 289, 443, '1756834648_68b72b58d4b0d_RV708769.jpg', '2025-09-02 12:07:28', '2025-09-02 12:07:28'),
(1229, 289, 443, '1756834648_68b72b58e41fe_RV708770.jpg', '2025-09-02 12:07:28', '2025-09-02 12:07:28'),
(1230, 289, 444, '1756834649_68b72b590486b_RV708774.jpg', '2025-09-02 12:07:29', '2025-09-02 12:07:29'),
(1231, 289, 444, '1756834649_68b72b5913861_RV708777.jpg', '2025-09-02 12:07:29', '2025-09-02 12:07:29'),
(1232, 289, 444, '1756834649_68b72b59204f8_RV708778.jpg', '2025-09-02 12:07:29', '2025-09-02 12:07:29'),
(1233, 289, 445, '1756834649_68b72b593bcd9_RV708760.jpg', '2025-09-02 12:07:29', '2025-09-02 12:07:29'),
(1234, 289, 445, '1756834649_68b72b594a23f_RV708764.jpg', '2025-09-02 12:07:29', '2025-09-02 12:07:29'),
(1235, 290, 446, '1756834779_68b72bdb280df_RV708612.jpg', '2025-09-02 12:09:39', '2025-09-02 12:09:39'),
(1236, 290, 446, '1756834779_68b72bdb32240_RV708613.jpg', '2025-09-02 12:09:39', '2025-09-02 12:09:39'),
(1237, 290, 446, '1756834779_68b72bdb3b73c_RV708614.jpg', '2025-09-02 12:09:39', '2025-09-02 12:09:39'),
(1238, 290, 447, '1756834779_68b72bdb51602_RV708607.jpg', '2025-09-02 12:09:39', '2025-09-02 12:09:39'),
(1239, 290, 447, '1756834779_68b72bdb5aa0d_RV708608.jpg', '2025-09-02 12:09:39', '2025-09-02 12:09:39'),
(1240, 290, 447, '1756834779_68b72bdb64499_RV708609.jpg', '2025-09-02 12:09:39', '2025-09-02 12:09:39'),
(1241, 291, 448, '1756834969_68b72c998e62b_RV708669.jpg', '2025-09-02 12:12:49', '2025-09-02 12:12:49'),
(1242, 291, 448, '1756834969_68b72c999a88a_RV708672.jpg', '2025-09-02 12:12:49', '2025-09-02 12:12:49'),
(1243, 291, 449, '1756834969_68b72c99aec03_RV708663.jpg', '2025-09-02 12:12:49', '2025-09-02 12:12:49'),
(1244, 291, 449, '1756834969_68b72c99b8b9a_RV708666.jpg', '2025-09-02 12:12:49', '2025-09-02 12:12:49'),
(1245, 291, 449, '1756834969_68b72c99c29ec_RV708667.jpg', '2025-09-02 12:12:49', '2025-09-02 12:12:49'),
(1246, 291, 450, '1756834969_68b72c99d84bc_RV708674.jpg', '2025-09-02 12:12:49', '2025-09-02 12:12:49'),
(1247, 291, 450, '1756834969_68b72c99e750d_RV708676.jpg', '2025-09-02 12:12:49', '2025-09-02 12:12:49'),
(1248, 292, 451, '1756835070_68b72cfe59db2_RV708847.jpg', '2025-09-02 12:14:30', '2025-09-02 12:14:30'),
(1249, 292, 451, '1756835070_68b72cfe6565c_RV708848.jpg', '2025-09-02 12:14:30', '2025-09-02 12:14:30'),
(1250, 292, 451, '1756835070_68b72cfe73c7c_RV708849.jpg', '2025-09-02 12:14:30', '2025-09-02 12:14:30'),
(1251, 292, 451, '1756835070_68b72cfe82b15_RV708850.jpg', '2025-09-02 12:14:30', '2025-09-02 12:14:30'),
(1252, 293, 452, '1757145238_68bbe896b20aa_RV709045a.jpg', '2025-09-06 02:23:58', '2025-09-06 02:23:58'),
(1253, 293, 452, '1757145238_68bbe896c6604_RV709045b.jpg', '2025-09-06 02:23:58', '2025-09-06 02:23:58'),
(1254, 293, 452, '1757145238_68bbe896d97a5_RV709046.jpg', '2025-09-06 02:23:58', '2025-09-06 02:23:58'),
(1255, 294, 453, '1757145345_68bbe901453ae_RV709035.jpg', '2025-09-06 02:25:45', '2025-09-06 02:25:45'),
(1256, 294, 453, '1757145345_68bbe901541b0_RV709036.jpg', '2025-09-06 02:25:45', '2025-09-06 02:25:45'),
(1257, 295, 454, '1757145813_68bbead55c616_RV709037.jpg', '2025-09-06 02:33:33', '2025-09-06 02:33:33'),
(1260, 295, 455, '1757145813_68bbead5ad654_RV709030.jpg', '2025-09-06 02:33:33', '2025-09-06 02:33:33'),
(1263, 296, 456, '1757145929_68bbeb4917163_RV708904copy.jpg', '2025-09-06 02:35:29', '2025-09-06 02:35:29'),
(1264, 296, 456, '1757145929_68bbeb4920589_RV708906copy.jpg', '2025-09-06 02:35:29', '2025-09-06 02:35:29'),
(1265, 296, 456, '1757145929_68bbeb49297ea_RV708907copy2.jpg', '2025-09-06 02:35:29', '2025-09-06 02:35:29'),
(1266, 296, 456, '1757145929_68bbeb4932b96_RV708907copy.jpg', '2025-09-06 02:35:29', '2025-09-06 02:35:29'),
(1267, 297, 457, '1757145994_68bbeb8a713ab_RV708909copy.jpg', '2025-09-06 02:36:34', '2025-09-06 02:36:34'),
(1268, 297, 457, '1757145994_68bbeb8a7e41a_RV708910.jpg', '2025-09-06 02:36:34', '2025-09-06 02:36:34'),
(1269, 297, 457, '1757145994_68bbeb8a901dc_RV708911copy.jpg', '2025-09-06 02:36:34', '2025-09-06 02:36:34'),
(1270, 297, 457, '1757145994_68bbeb8aa1a6b_RV708913.jpg', '2025-09-06 02:36:34', '2025-09-06 02:36:34'),
(1271, 298, 458, '1757146052_68bbebc4213db_RV709079.jpg', '2025-09-06 02:37:32', '2025-09-06 02:37:32'),
(1272, 298, 458, '1757146052_68bbebc42f68a_RV709080copy.jpg', '2025-09-06 02:37:32', '2025-09-06 02:37:32'),
(1273, 298, 458, '1757146052_68bbebc43ebf2_RV709081.jpg', '2025-09-06 02:37:32', '2025-09-06 02:37:32'),
(1274, 298, 458, '1757146052_68bbebc457228_RV709082.jpg', '2025-09-06 02:37:32', '2025-09-06 02:37:32'),
(1275, 299, 459, '1757146139_68bbec1bec171_RV709026.jpg', '2025-09-06 02:39:00', '2025-09-06 02:39:00'),
(1276, 299, 459, '1757146140_68bbec1c0ea60_RV709028.jpg', '2025-09-06 02:39:00', '2025-09-06 02:39:00'),
(1277, 299, 459, '1757146140_68bbec1c26d1a_RV709029.jpg', '2025-09-06 02:39:00', '2025-09-06 02:39:00'),
(1278, 299, 460, '1757146140_68bbec1c54280_RV709019.jpg', '2025-09-06 02:39:00', '2025-09-06 02:39:00'),
(1279, 299, 460, '1757146140_68bbec1c6f22e_RV709021.jpg', '2025-09-06 02:39:00', '2025-09-06 02:39:00'),
(1280, 299, 460, '1757146140_68bbec1c8b5a7_RV709022.jpg', '2025-09-06 02:39:00', '2025-09-06 02:39:00'),
(1281, 300, 461, '1757146193_68bbec5110cfc_RV709041.jpg', '2025-09-06 02:39:53', '2025-09-06 02:39:53'),
(1284, 301, 462, '1757149732_68bbfa24b4053_RV708969.jpg', '2025-09-06 03:38:52', '2025-09-06 03:38:52'),
(1285, 301, 462, '1757149732_68bbfa24be00d_RV708970.jpg', '2025-09-06 03:38:52', '2025-09-06 03:38:52'),
(1286, 301, 463, '1757149732_68bbfa24d6343_RV708990.jpg', '2025-09-06 03:38:52', '2025-09-06 03:38:52'),
(1287, 301, 463, '1757149732_68bbfa24dfec1_RV708991.jpg', '2025-09-06 03:38:52', '2025-09-06 03:38:52'),
(1288, 301, 464, '1757149732_68bbfa24f3458_RV709006.jpg', '2025-09-06 03:38:53', '2025-09-06 03:38:53'),
(1289, 301, 464, '1757149733_68bbfa250e98a_RV709007.jpg', '2025-09-06 03:38:53', '2025-09-06 03:38:53'),
(1290, 301, 465, '1757149733_68bbfa252cbc8_RV708974.jpg', '2025-09-06 03:38:53', '2025-09-06 03:38:53'),
(1291, 301, 465, '1757149733_68bbfa253cc1a_RV708977.jpg', '2025-09-06 03:38:53', '2025-09-06 03:38:53'),
(1292, 301, 466, '1757149733_68bbfa2554dae_RV708997.jpg', '2025-09-06 03:38:53', '2025-09-06 03:38:53'),
(1293, 301, 466, '1757149733_68bbfa2563d2d_RV709000.jpg', '2025-09-06 03:38:53', '2025-09-06 03:38:53'),
(1294, 301, 467, '1757149733_68bbfa257fe7d_RV709014.jpg', '2025-09-06 03:38:53', '2025-09-06 03:38:53'),
(1295, 301, 467, '1757149733_68bbfa258e462_RV709015.jpg', '2025-09-06 03:38:53', '2025-09-06 03:38:53'),
(1296, 301, 468, '1757149733_68bbfa25ae51e_RV708981.jpg', '2025-09-06 03:38:53', '2025-09-06 03:38:53'),
(1297, 302, 469, '1757150066_68bbfb720a59c_RV708924.jpg', '2025-09-06 03:44:26', '2025-09-06 03:44:26'),
(1298, 302, 469, '1757150066_68bbfb7213cb7_RV708925.jpg', '2025-09-06 03:44:26', '2025-09-06 03:44:26'),
(1299, 302, 469, '1757150066_68bbfb721e1bd_RV708926.jpg', '2025-09-06 03:44:26', '2025-09-06 03:44:26'),
(1300, 302, 470, '1757150066_68bbfb723293f_RV708932.jpg', '2025-09-06 03:44:26', '2025-09-06 03:44:26'),
(1301, 302, 470, '1757150066_68bbfb7240c9b_RV708933.jpg', '2025-09-06 03:44:26', '2025-09-06 03:44:26'),
(1302, 302, 470, '1757150066_68bbfb724a5c9_RV708934.jpg', '2025-09-06 03:44:26', '2025-09-06 03:44:26'),
(1303, 302, 471, '1757150066_68bbfb72667e8_RV708930.jpg', '2025-09-06 03:44:26', '2025-09-06 03:44:26'),
(1304, 302, 471, '1757150066_68bbfb7273df2_RV708931.jpg', '2025-09-06 03:44:26', '2025-09-06 03:44:26'),
(1305, 302, 471, '1757150066_68bbfb72825c1_RV708932.jpg', '2025-09-06 03:44:26', '2025-09-06 03:44:26'),
(1306, 302, 472, '1757150066_68bbfb729651c_RV708952.jpg', '2025-09-06 03:44:26', '2025-09-06 03:44:26'),
(1307, 302, 472, '1757150066_68bbfb72a68f6_RV708957.jpg', '2025-09-06 03:44:26', '2025-09-06 03:44:26'),
(1308, 302, 472, '1757150066_68bbfb72b1103_RV708959.jpg', '2025-09-06 03:44:26', '2025-09-06 03:44:26'),
(1309, 302, 473, '1757150066_68bbfb72c3a2b_RV708939.jpg', '2025-09-06 03:44:26', '2025-09-06 03:44:26'),
(1310, 302, 473, '1757150066_68bbfb72d059e_RV708940.jpg', '2025-09-06 03:44:26', '2025-09-06 03:44:26'),
(1311, 302, 473, '1757150066_68bbfb72dc868_RV708941.jpg', '2025-09-06 03:44:26', '2025-09-06 03:44:26'),
(1312, 303, 476, '1757150140_68bbfbbc36ebe_1.jpg', '2025-09-06 03:45:40', '2025-09-06 03:45:40'),
(1313, 304, 477, '1757150244_68bbfc246900d_RV709063.jpg', '2025-09-06 03:47:24', '2025-09-06 03:47:24'),
(1314, 304, 477, '1757150244_68bbfc247a134_RV709065.jpg', '2025-09-06 03:47:24', '2025-09-06 03:47:24'),
(1315, 304, 477, '1757150244_68bbfc24898da_RV709066.jpg', '2025-09-06 03:47:24', '2025-09-06 03:47:24'),
(1316, 304, 478, '1757150244_68bbfc24a8bb4_RV709068.jpg', '2025-09-06 03:47:24', '2025-09-06 03:47:24'),
(1317, 304, 478, '1757150244_68bbfc24b897d_RV709070.jpg', '2025-09-06 03:47:24', '2025-09-06 03:47:24'),
(1318, 304, 478, '1757150244_68bbfc24c9050_RV709071.jpg', '2025-09-06 03:47:24', '2025-09-06 03:47:24'),
(1319, 305, 479, '1757150467_68bbfd03d7f7a_RV70866011.jpg', '2025-09-06 03:51:07', '2025-09-06 03:51:07'),
(1320, 305, 479, '1757150467_68bbfd03e9ad5_RV708914copy.jpg', '2025-09-06 03:51:08', '2025-09-06 03:51:08'),
(1321, 305, 479, '1757150468_68bbfd0405fc3_RV708915.jpg', '2025-09-06 03:51:08', '2025-09-06 03:51:08'),
(1322, 305, 479, '1757150468_68bbfd0413b86_RV708918copy.jpg', '2025-09-06 03:51:08', '2025-09-06 03:51:08'),
(1323, 306, 480, '1757150540_68bbfd4c403bf_RV709048.jpg', '2025-09-06 03:52:20', '2025-09-06 03:52:20'),
(1324, 306, 480, '1757150540_68bbfd4c50078_RV709049.jpg', '2025-09-06 03:52:20', '2025-09-06 03:52:20'),
(1325, 307, 481, '1757150607_68bbfd8fc573f_RV709057.jpg', '2025-09-06 03:53:27', '2025-09-06 03:53:27'),
(1326, 307, 481, '1757150607_68bbfd8fd06fd_RV709058.jpg', '2025-09-06 03:53:27', '2025-09-06 03:53:27'),
(1327, 308, 482, '1757150696_68bbfde852343_RV709051.jpg', '2025-09-06 03:54:56', '2025-09-06 03:54:56'),
(1328, 308, 482, '1757150696_68bbfde85dea7_RV709052.jpg', '2025-09-06 03:54:56', '2025-09-06 03:54:56'),
(1329, 309, 483, '1757150742_68bbfe1693512_RV709060copy.jpg', '2025-09-06 03:55:42', '2025-09-06 03:55:42'),
(1330, 309, 483, '1757150742_68bbfe16a1ae5_RV709062.jpg', '2025-09-06 03:55:42', '2025-09-06 03:55:42'),
(1331, 310, 484, '1757150801_68bbfe51e352a_RV709054.jpg', '2025-09-06 03:56:41', '2025-09-06 03:56:41'),
(1332, 310, 484, '1757150801_68bbfe51f1f7d_RV709055.jpg', '2025-09-06 03:56:42', '2025-09-06 03:56:42'),
(1333, 311, 485, '1757150887_68bbfea7e2b04_RV709076.jpg', '2025-09-06 03:58:07', '2025-09-06 03:58:07'),
(1334, 311, 485, '1757150887_68bbfea7f0720_RV709077.jpg', '2025-09-06 03:58:08', '2025-09-06 03:58:08'),
(1335, 311, 486, '1757150888_68bbfea81967f_RV709073.jpg', '2025-09-06 03:58:08', '2025-09-06 03:58:08'),
(1336, 311, 486, '1757150888_68bbfea8287e6_RV709074.jpg', '2025-09-06 03:58:08', '2025-09-06 03:58:08'),
(1337, 312, 813, '1759308364_68dcea4c82dc6_RV709043.jpg', '2025-10-01 03:16:04', '2025-10-01 03:16:04'),
(1338, 312, 813, '1759308364_68dcea4c928bd_RV709044.jpg', '2025-10-01 03:16:04', '2025-10-01 03:16:04'),
(1339, 313, 816, '1759308644_68dceb6495d6e_RV709032.jpg', '2025-10-01 03:20:44', '2025-10-01 03:20:44'),
(1340, 313, 816, '1759308644_68dceb64a3a38_RV709033.jpg', '2025-10-01 03:20:44', '2025-10-01 03:20:44'),
(1341, 313, 817, '1759308644_68dceb64ba09b_RV709032.jpg', '2025-10-01 03:20:44', '2025-10-01 03:20:44'),
(1342, 313, 817, '1759308644_68dceb64c4428_RV709033.jpg', '2025-10-01 03:20:44', '2025-10-01 03:20:44'),
(1343, 314, 819, '1759309089_68dced21b6b14_1754898160_68999ef043203_6.jpg', '2025-10-01 03:28:09', '2025-10-01 03:28:09'),
(1344, 315, 825, '1759894414_68e5db8e88b37_Gemini_Generated_Image_wfex6rwfex6rwfex.png', '2025-10-07 22:03:34', '2025-10-07 22:03:34'),
(1345, 317, 827, '1759896074_68e5e20a3e33a_sustainable.jpg', '2025-10-07 22:31:14', '2025-10-07 22:31:14'),
(1346, 318, 828, '1759896163_68e5e2634347e_textile-printing.jpg', '2025-10-07 22:32:43', '2025-10-07 22:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_variance_data`
--

CREATE TABLE `product_variance_data` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `reg_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_variant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_variance_data`
--

INSERT INTO `product_variance_data` (`id`, `product_id`, `reg_price`, `sale_price`, `product_variant`, `image`, `created_at`) VALUES
(1, 2, '6000', '1009', 'Red', '1753680833_68870bc11fa9d.png', '2025-07-28 10:47:55'),
(2, 2, '4000', '1209', 'Blue', '1753680824_68870bb855bed.png', '2025-07-28 10:47:55'),
(3, 3, '2000', '200', 'Black', '1753681379_68870de321286.png', '2025-07-28 11:12:59'),
(4, 3, '3000', '120', 'Red', '1753681379_68870de33e959.png', '2025-07-28 11:12:59'),
(5, 3, '4000', '200', 'Blue', '1753681379_68870de357659.png', '2025-07-28 11:12:59'),
(6, 4, '1111', '1000', 'Black', '1753683089_6887149108336.JPG', '2025-07-28 11:41:29'),
(7, 4, '1111', '1000', 'Red', '1753683089_688714911b74f.jpg', '2025-07-28 11:41:29'),
(8, 5, '470', '399', 'Orange', '1753971364_688b7aa42e641.jpg', '2025-07-31 19:46:04'),
(9, 5, '470', '399', 'Blue', '1753971364_688b7aa4635ef.jpg', '2025-07-31 19:46:04'),
(10, 13, '587', '499', 'Orange', '1753972002_688b7d223db04.jpg', '2025-07-31 19:56:42'),
(11, 13, '587', '499', 'Blue', '1753972002_688b7d2262f5e.jpg', '2025-07-31 19:56:42'),
(12, 14, '940', '799', 'Orange', '1753972332_688b7e6c29e3a.jpg', '2025-07-31 20:02:12'),
(13, 14, '940', '799', 'Blue', '1753972332_688b7e6c5b9df.jpg', '2025-07-31 20:02:12'),
(14, 15, '470', '399', 'Pink', '1753972736_688b800025c93.jpg', '2025-07-31 20:08:56'),
(15, 15, '470', '399', 'Green', '1753972736_688b80004fcf9.jpg', '2025-07-31 20:08:56'),
(16, 15, '470', '399', 'Purple', '1753972736_688b80006abf9.jpg', '2025-07-31 20:08:56'),
(17, 15, '470', '399', 'Orange', '1753972736_688b80008e1d1.jpg', '2025-07-31 20:08:56'),
(18, 15, '470', '399', 'Red', '1753972736_688b8000b9a52.jpg', '2025-07-31 20:08:56'),
(19, 15, '470', '399', 'Blue', '1753972736_688b8000d5cb9.jpg', '2025-07-31 20:08:56'),
(32, 18, '940', '799', 'Green', '1753974718_688b87be9631a.jpg', '2025-07-31 20:41:58'),
(33, 19, '587', '499', 'Pink', '1753975870_688b8c3eb8e51.jpg', '2025-07-31 21:01:10'),
(34, 19, '587', '499', 'Green', '1753975871_688b8c3f0134a.jpg', '2025-07-31 21:01:11'),
(35, 19, '587', '499', 'Purple', '1753975871_688b8c3f302c9.jpg', '2025-07-31 21:01:11'),
(36, 19, '587', '499', 'Orange', '1753975871_688b8c3f6c7a9.jpg', '2025-07-31 21:01:11'),
(37, 19, '587', '499', 'Red', '1753975871_688b8c3fa55ef.jpg', '2025-07-31 21:01:11'),
(38, 19, '587', '499', 'Blue', NULL, '2025-07-31 21:01:11'),
(39, 20, '940', '799', 'Pink', '1753976097_688b8d2128313.jpg', '2025-07-31 21:04:57'),
(40, 20, '940', '799', 'Green', '1753976097_688b8d2168c43.jpg', '2025-07-31 21:04:57'),
(41, 20, '940', '799', 'Purple', '1753976097_688b8d219755e.jpg', '2025-07-31 21:04:57'),
(42, 20, '940', '799', 'Orange', '1753976097_688b8d21c9fbd.jpg', '2025-07-31 21:04:57'),
(43, 20, '940', '799', 'Red', '1753976098_688b8d220cfbb.jpg', '2025-07-31 21:04:58'),
(44, 20, '940', '799', 'Blue', NULL, '2025-07-31 21:04:58'),
(45, 21, '587', '499', 'White', '1754030768_688c62b0cd04a.jpg', '2025-08-01 12:16:08'),
(46, 21, '587', '499', 'Dark Shade', '1754030769_688c62b101ac3.jpg', '2025-08-01 12:16:09'),
(47, 21, '587', '499', 'Gold', '1754030769_688c62b11d690.jpg', '2025-08-01 12:16:09'),
(48, 21, '587', '499', 'Black', '1754030769_688c62b13e250.jpg', '2025-08-01 12:16:09'),
(49, 21, '587', '499', 'Blue', '1754030769_688c62b15f001.jpg', '2025-08-01 12:16:09'),
(50, 22, '705', '599', 'Black', '1754030886_688c6326e5fe3.jpg', '2025-08-01 12:18:07'),
(51, 23, '705', '599', 'White', '1754031283_688c64b31b240.jpg', '2025-08-01 12:20:37'),
(52, 23, '705', '599', 'Gold', '1754031282_688c64b2f2072.jpg', '2025-08-01 12:20:37'),
(53, 23, '705', '599', 'Black', '1754031282_688c64b24ce26.jpg', '2025-08-01 12:20:37'),
(54, 24, '470', '399', 'Gold', '1754031406_688c652edcedc.jpg', '2025-08-01 12:26:46'),
(55, 25, '470', '399', 'White', '1754031508_688c659476d52.jpg', '2025-08-01 12:28:28'),
(56, 25, '470', '399', 'Blue', '1754031508_688c65948b5d0.jpg', '2025-08-01 12:28:28'),
(57, 26, '587', '499', 'Dark Shade', '1754031614_688c65fe13d78.jpg', '2025-08-01 12:30:14'),
(58, 26, '587', '499', 'Gold', '1754031614_688c65fe2bff1.jpg', '2025-08-01 12:30:14'),
(59, 27, '587', '499', 'Crystal', '1754031725_688c666d13190.jpg', '2025-08-01 12:32:05'),
(60, 28, '587', '499', 'White', '1754033220_688c6c447bb0b.jpg', '2025-08-01 12:57:00'),
(61, 28, '587', '499', 'Gold', '1754033220_688c6c449bacd.jpg', '2025-08-01 12:57:00'),
(62, 29, '705', '599', 'Dark Shade', '1754072411_688d055b868be.jpg', '2025-08-01 23:50:11'),
(63, 29, '705', '599', 'Light Shade', '1754072411_688d055ba9f46.jpg', '2025-08-01 23:50:11'),
(64, 30, '411', '349', 'Silver', '1754072562_688d05f23b26e.jpg', '2025-08-01 23:52:42'),
(65, 31, '528', '449', 'Silver', '1754072644_688d0644e499d.jpg', '2025-08-01 23:54:04'),
(66, 32, '822', '699', 'White', '1754072759_688d06b7c8102.jpg', '2025-08-01 23:55:59'),
(67, 33, '587', '499', 'Crystal', '1754073133_688d082d793c2.jpg', '2025-08-02 00:02:13'),
(68, 34, '587', '499', 'Dark Shade', '1754073241_688d08991c757.jpg', '2025-08-02 00:04:01'),
(69, 35, '469', '399', 'Crystal', '1754073342_688d08fecd064.jpg', '2025-08-02 00:05:42'),
(70, 36, '587', '499', 'Gold', '1754073423_688d094f766f9.jpg', '2025-08-02 00:07:03'),
(71, 37, '822', '699', 'White', '1754073538_688d09c23d160.jpg', '2025-08-02 00:08:58'),
(72, 38, '4705', '3999', 'Default', '1754291701_68905df57cfbf.jpg', '2025-08-04 12:45:01'),
(73, 39, '293', '249', 'Default', '1754291796_68905e5484cbd.jpg', '2025-08-04 12:46:36'),
(74, 40, '1411', '1199', 'Default', '1754291924_68905ed42080a.jpg', '2025-08-04 12:48:44'),
(75, 41, '705', '500', 'Default', '1754292175_68905fcf81977.jpg', '2025-08-04 12:52:55'),
(76, 42, '4708', '3999', 'Single Stick', '1754292386_689060a2dc030.jpg', '2025-08-04 12:56:26'),
(77, 42, '21764', '18499', 'Box of 5', '1754292386_689060a2b1166.jpg', '2025-08-04 12:56:26'),
(78, 43, '29', '249', 'Single Stick', '1754292617_68906189dbb0d.jpg', '2025-08-04 13:00:18'),
(79, 43, '822', '699', 'Box of 5', '1754292617_6890618966032.jpg', '2025-08-04 13:00:17'),
(80, 44, '1411', '1199', 'Single Stick', '1754293100_6890636ce5be0.jpg', '2025-08-04 13:08:20'),
(82, 45, '705', '599', 'Single Stick', '1754293215_689063dfd24ea.jpg', '2025-08-04 13:10:15'),
(83, 45, '17411', '14799', 'Box of 26', '1754293215_689063dfa9c6b.jpg', '2025-08-04 13:10:15'),
(84, 46, '940', '799', 'Single Stick', '1754293583_6890654fce4ce.jpg', '2025-08-04 13:16:23'),
(85, 46, '23528', '19999', 'Box of 26', '1754293583_6890654f9b40a.jpg', '2025-08-04 13:16:23'),
(86, 47, '4116', '3499', 'Single Stick', '1754293907_68906693e109a.jpg', '2025-08-04 13:21:48'),
(87, 48, '4705', '3999', 'Dark Shade', '1754319428_6890ca440fe2f.jpg', '2025-08-04 20:27:08'),
(88, 48, '4705', '3999', 'Light Shade', '1754319428_6890ca4446d23.jpg', '2025-08-04 20:27:08'),
(89, 49, '12940', '10999', 'Default', '1754319721_6890cb6982a67.jpg', '2025-08-04 20:32:01'),
(90, 50, '12940', '10999', 'Bronze', '1754320008_6890cc889daa7.jpg', '2025-08-04 20:36:48'),
(91, 51, '15881', '13499', 'Bronze', '1754320402_6890ce12e08c0.jpg', '2025-08-04 20:43:22'),
(92, 52, '5293', '4499', 'Default', '1754376335_6891a88fbf4c9.jpg', '2025-08-05 12:15:35'),
(93, 53, '7058', '5999', 'Gold', '1754376512_6891a940af5a3.jpg', '2025-08-05 12:18:32'),
(94, 54, '12352', '10499', 'Gold', '1754376871_6891aaa76827c.jpg', '2025-08-05 12:24:31'),
(95, 55, '5293', '4499', 'Gold', '1754377070_6891ab6edfd8c.jpg', '2025-08-05 12:27:50'),
(96, 56, '5999', '5099', 'Gold', '1754377308_6891ac5cca6f0.jpg', '2025-08-05 12:31:48'),
(97, 56, '5999', '5099', 'Blue', '1754377309_6891ac5d01114.jpg', '2025-08-05 12:31:49'),
(98, 57, '14705', '12499', 'Gold', '1754377599_6891ad7fc22d3.jpg', '2025-08-05 12:36:39'),
(99, 58, '25881', '21999', 'Default', '1754378118_6891af866d745.jpg', '2025-08-05 12:45:18'),
(100, 59, '5293', '4499', 'Red', '1754378325_6891b055ead02.jpg', '2025-08-05 12:48:46'),
(101, 60, '5881', '4999', 'Black', '1754458506_6892e98a6a376.jpg', '2025-08-06 11:05:06'),
(102, 61, '5293', '4499', 'Black', '1754458605_6892e9edb4d99.jpg', '2025-08-06 11:06:45'),
(103, 62, '6469', '5499', 'Brown', '1754458720_6892ea60a533e.jpg', '2025-08-06 11:08:40'),
(104, 63, '6469', '5499', 'Gold', '1754458810_6892eaba61f4c.jpg', '2025-08-06 11:10:10'),
(105, 64, '6469', '5499', 'Purple', '1754465420_6893048cbe1ff.jpg', '2025-08-06 13:00:20'),
(106, 65, '5293', '4499', 'White', '1754465603_689305434b924.jpg', '2025-08-06 13:02:30'),
(107, 66, '587', '499', 'Black', '1754898160_68999ef00decb.jpg', '2025-08-11 13:12:40'),
(108, 67, '528', '449', 'Red & Blue Marble 2', '1754898848_6899a1a0557b2.jpg', '2025-08-11 13:24:08'),
(109, 67, '528', '449', 'Red & Blue Marble', '1754898848_6899a1a0ad28b.jpg', '2025-08-11 13:24:08'),
(110, 67, '528', '449', 'Orange & Green', '1754898848_6899a1a0e267d.jpg', '2025-08-11 13:24:08'),
(111, 67, '528', '449', 'Red & Blue', '1754898849_6899a1a11a4f3.jpg', '2025-08-11 13:24:09'),
(112, 67, '528', '449', 'Multicolor 2', '1754898849_6899a1a14d4e3.jpg', '2025-08-11 13:24:09'),
(113, 67, '528', '449', 'Multicolor 1', NULL, '2025-08-11 13:24:09'),
(114, 67, '528', '449', 'Green', NULL, '2025-08-11 13:24:09'),
(115, 67, '528', '449', 'Blue', NULL, '2025-08-11 13:24:09'),
(116, 68, '587', '499', 'Red & Blue Marble 2', '1754899152_6899a2d06970d.jpg', '2025-08-11 13:29:12'),
(117, 68, '587', '499', 'Red & Blue Marble', '1754899152_6899a2d0ba599.jpg', '2025-08-11 13:29:12'),
(118, 68, '587', '499', 'Orange & Green', '1754899153_6899a2d113d86.jpg', '2025-08-11 13:29:13'),
(119, 68, '587', '499', 'Red & Blue', '1754899153_6899a2d16afc4.jpg', '2025-08-11 13:29:13'),
(120, 68, '587', '499', 'Multicolor 2', NULL, '2025-08-11 13:29:13'),
(121, 68, '587', '499', 'Multicolor 1', NULL, '2025-08-11 13:29:13'),
(122, 68, '587', '499', 'Green', NULL, '2025-08-11 13:29:13'),
(123, 68, '587', '499', 'Blue', NULL, '2025-08-11 13:29:13'),
(124, 69, '469', '399', 'Black', '1754916792_6899e7b804021.jpg', '2025-08-11 18:23:12'),
(125, 70, '411', '349', 'Black', '1754916878_6899e80e108f6.jpg', '2025-08-11 18:24:38'),
(126, 71, '587', '499', 'Black', '1754916948_6899e85451c26.jpg', '2025-08-11 18:25:48'),
(127, 72, '528', '449', 'Black', '1754917060_6899e8c4a2530.jpg', '2025-08-11 18:27:40'),
(128, 73, '705', '599', 'Black', '1754917131_6899e90b3197a.jpg', '2025-08-11 18:28:51'),
(129, 74, '646', '549', 'Black', '1754917191_6899e947ae353.jpg', '2025-08-11 18:29:51'),
(130, 75, '1764', '1499', 'White', '1754978941_689ada7d2eb17.jpg', '2025-08-12 11:39:01'),
(131, 76, '1411', '1199', 'Baby Pink', '1754979063_689adaf7d3ee5.jpg', '2025-08-12 11:41:03'),
(132, 77, '1116', '949', 'Black', '1754979193_689adb79505d9.jpg', '2025-08-12 11:43:13'),
(133, 78, '1116', '949', 'Green', '1754979350_689adc161c3e5.jpg', '2025-08-12 11:45:50'),
(134, 78, '1116', '949', 'Black', '1754979350_689adc166126f.jpg', '2025-08-12 11:45:50'),
(135, 79, '999', '849', 'Light Blue', '1754979627_689add2bdfb8a.jpg', '2025-08-12 11:50:27'),
(136, 79, '999', '849', 'Blue', '1754979628_689add2c2f43b.jpg', '2025-08-12 11:50:28'),
(137, 80, '1940', '1649', 'Light Blue', '1754979893_689ade3508040.jpg', '2025-08-12 11:54:53'),
(138, 80, '1940', '1649', 'Bottle Green', '1754979893_689ade3552a1c.jpg', '2025-08-12 11:54:53'),
(139, 80, '1940', '1649', 'Green', '1754979893_689ade3594421.jpg', '2025-08-12 11:54:53'),
(140, 80, '1940', '1649', 'Blue', '1754979893_689ade35d49b1.jpg', '2025-08-12 11:54:53'),
(141, 81, '1234', '1049', 'Blue', '1754980045_689adecd0e946.jpg', '2025-08-12 11:57:25'),
(142, 82, '1940', '1649', 'Blue', '1754980153_689adf396aa7d.jpg', '2025-08-12 11:59:13'),
(143, 83, '940', '799', 'Green', '1754980273_689adfb1c4278.jpg', '2025-08-12 12:01:13'),
(144, 83, '940', '799', 'Blue', '1754980274_689adfb2125d3.jpg', '2025-08-12 12:01:14'),
(145, 84, '2234', '1899', 'Bronze', '1754980428_689ae04c46183.jpg', '2025-08-12 12:03:48'),
(146, 85, '1764', '1499', 'Clear', '1754980573_689ae0dd53940.jpg', '2025-08-12 12:06:13'),
(147, 86, '1411', '1199', 'Clear', '1754980706_689ae16261107.jpg', '2025-08-12 12:08:26'),
(148, 87, '2469', '2099', 'Light Green', '1754980842_689ae1eabec22.jpg', '2025-08-12 12:10:42'),
(149, 88, '1587', '1349', 'Green', '1754980967_689ae267c6fd9.jpg', '2025-08-12 12:12:47'),
(150, 89, '1411', '1199', 'Clear', '1755000340_689b2e14967b7.jpg', '2025-08-12 17:35:40'),
(151, 90, '940', '799', 'Clear', '1755000471_689b2e973488c.jpg', '2025-08-12 17:37:51'),
(152, 91, '1764', '1499', 'Clear', '1755000573_689b2efdc8453.jpg', '2025-08-12 17:39:33'),
(153, 92, '1764', '1499', 'Crystal', '1755000719_689b2f8f5a065.jpg', '2025-08-12 17:41:59'),
(154, 93, '2469', '2099', 'Clear', '1755000905_689b304921f48.jpg', '2025-08-12 17:45:05'),
(155, 93, '2469', '2099', 'Green', '1755000905_689b30496095c.jpg', '2025-08-12 17:45:05'),
(156, 94, '2434', '1899', 'Bottle Green', '1755001307_689b31db228fd.jpg', '2025-08-12 17:51:47'),
(157, 94, '2434', '1899', 'Green', '1755001307_689b31db6bbbc.jpg', '2025-08-12 17:51:47'),
(158, 95, '2469', '2099', 'Light Green', '1755001459_689b327335572.jpg', '2025-08-12 17:54:19'),
(159, 95, '2469', '2099', 'Blue', '1755001459_689b327382522.jpg', '2025-08-12 17:54:19'),
(160, 96, '2546', '2249', 'Blue & Green', '1755001992_689b348850f99.jpg', '2025-08-12 18:03:12'),
(161, 96, '2546', '2249', 'Green', '1755001992_689b3488d3056.jpg', '2025-08-12 18:03:12'),
(162, 96, '2546', '2249', 'Blue', '1755001993_689b348942432.jpg', '2025-08-12 18:03:13'),
(163, 97, '2822', '2399', 'Light Green', '1755008526_689b4e0e65a04.jpg', '2025-08-12 19:52:06'),
(164, 97, '2822', '2399', 'Blue', '1755008527_689b4e0f24888.jpg', '2025-08-12 19:52:07'),
(165, 98, '2822', '2399', 'Multicolor 1', '1755008679_689b4ea716c26.jpg', '2025-08-12 19:54:39'),
(166, 99, '2282', '2399', 'Blue', '1755008831_689b4f3f55a28.jpg', '2025-08-12 19:57:11'),
(167, 100, '2822', '2399', 'Green', '1755063055_689c230f1b025.jpg', '2025-08-13 11:00:55'),
(168, 101, '2469', '2099', 'Light Green', '1755063234_689c23c23a805.jpg', '2025-08-13 11:03:54'),
(169, 102, '999', '849', 'Green', '1755063366_689c2446ef965.jpg', '2025-08-13 11:06:07'),
(170, 103, '940', '799', 'Green', '1755063526_689c24e6488a2.jpg', '2025-08-13 11:08:46'),
(171, 104, '1116', '949', 'Green', '1755063812_689c26040512c.jpg', '2025-08-13 11:13:32'),
(172, 105, '1116', '949', 'Green', '1755063964_689c269cd924d.jpg', '2025-08-13 11:16:04'),
(173, 105, '1116', '949', 'Black', '1755063965_689c269d1ed84.jpg', '2025-08-13 11:16:05'),
(174, 106, '940', '799', 'Yellow', '1755064226_689c27a28e356.jpg', '2025-08-13 11:20:26'),
(175, 106, '940', '799', 'Green', '1755064226_689c27a2d451f.jpg', '2025-08-13 11:20:26'),
(176, 107, '940', '799', 'Green', '1755064315_689c27fbedf42.jpg', '2025-08-13 11:21:56'),
(177, 108, '940', '799', 'Green', '1755065124_689c2b24509f9.jpg', '2025-08-13 11:35:24'),
(178, 109, '940', '799', 'Green', '1755066493_689c307d597a5.jpg', '2025-08-13 11:58:13'),
(179, 110, '940', '799', 'Clear', '1755069498_689c3c3a09da3.jpg', '2025-08-13 12:48:18'),
(180, 110, '940', '799', 'Green', '1755069498_689c3c3a4b628.jpg', '2025-08-13 12:48:18'),
(181, 111, '1411', '1199', 'Dark Shade', '1755069589_689c3c95a4bed.jpg', '2025-08-13 12:49:49'),
(182, 112, '1940', '1649', 'Dark Shade', '1755069776_689c3d50b0852.jpg', '2025-08-13 12:52:56'),
(183, 113, '2469', '2099', 'Green', '1755069874_689c3db2f1cff.jpg', '2025-08-13 12:54:35'),
(184, 114, '1587', '1349', 'Green', '1755069998_689c3e2e382a3.jpg', '2025-08-13 12:56:38'),
(185, 114, '1587', '1349', 'Orange', '1755069998_689c3e2e805be.jpg', '2025-08-13 12:56:38'),
(186, 115, '999', '849', 'Orange & Green', '1755070084_689c3e847cbd1.jpg', '2025-08-13 12:58:04'),
(187, 116, '1940', '1649', 'Clear', '1755070206_689c3efe92a0e.jpg', '2025-08-13 13:00:06'),
(188, 117, '1116', '949', 'Clear', '1755070299_689c3f5bdfbee.jpg', '2025-08-13 13:01:39'),
(189, 118, '1116', '949', 'Purple', '1755070463_689c3fffcda61.jpg', '2025-08-13 13:04:23'),
(190, 119, '940', '799', 'Orange', '1755070568_689c40682a491.jpg', '2025-08-13 13:06:08'),
(191, 120, '1764', '1499', 'Bottle Green', '1755070777_689c41395db81.jpg', '2025-08-13 13:09:37'),
(192, 121, '940', '799', 'Blue', '1755070941_689c41ddd8fbf.jpg', '2025-08-13 13:12:22'),
(193, 123, '999', '849', 'Multicolor 1', '1755071105_689c4281789db.jpg', '2025-08-13 13:15:05'),
(194, 123, '999', '849', 'Green', '1755071105_689c4281db919.jpg', '2025-08-13 13:15:05'),
(195, 124, '1116', '949', 'Green', '1755071349_689c4375c4a3e.jpg', '2025-08-13 13:19:09'),
(196, 125, '999', '849', 'Multicolor 1', '1755071473_689c43f13e468.jpg', '2025-08-13 13:21:13'),
(197, 126, '1116', '949', 'Multicolor 1', '1755071597_689c446dc47ee.jpg', '2025-08-13 13:23:17'),
(198, 127, '2646', '2249', 'Blue', '1755071712_689c44e0460f8.jpg', '2025-08-13 13:25:12'),
(199, 128, '940', '799', 'White', '1755071798_689c4536371e3.jpg', '2025-08-13 13:26:38'),
(200, 129, '1940', '1649', 'White', '1755072348_689c475c47701.jpg', '2025-08-13 13:35:48'),
(201, 130, '940', '799', 'Yellow', '1755072479_689c47df35bfb.jpg', '2025-08-13 13:37:59'),
(202, 131, '7646', '6499', 'Black', '1755085575_689c7b07542b8.jpg', '2025-08-13 17:16:15'),
(203, 132, '7646', '6499', 'Multicolor 1', '1755085684_689c7b746e4b0.jpg', '2025-08-13 17:18:04'),
(204, 133, '13175', '11199', 'Gold', '1755085860_689c7c241d1c2.jpg', '2025-08-13 17:21:00'),
(205, 134, '6469', '5499', 'Purple', '1755086012_689c7cbc95dbb.jpg', '2025-08-13 17:23:32'),
(206, 135, '7646', '6499', 'Purple', '1755086133_689c7d351bb66.jpg', '2025-08-13 17:25:33'),
(207, 136, '2940', '2499', 'Purple', '1755086368_689c7e20e8625.jpg', '2025-08-13 17:29:29'),
(208, 136, '2940', '2499', 'Red', '1755086369_689c7e211c754.jpg', '2025-08-13 17:29:29'),
(209, 136, '2940', '2499', 'Blue', '1755086369_689c7e2143666.jpg', '2025-08-13 17:29:29'),
(210, 137, '11175', '9499', 'Gold', '1755086515_689c7eb3f228c.jpg', '2025-08-13 17:31:56'),
(211, 138, '9999', '8499', 'Brown', '1755086615_689c7f17b17e1.jpg', '2025-08-13 17:33:35'),
(212, 139, '6469', '5499', 'Silver', '1755087373_689c820d33b35.jpg', '2025-08-13 17:46:13'),
(213, 140, '2528', '2149', 'Blue', '1755087534_689c82ae157c0.jpg', '2025-08-13 17:48:54'),
(214, 141, '2116', '1799', 'Brown', '1755087872_689c84000c847.jpg', '2025-08-13 17:54:32'),
(215, 141, '2116', '1799', 'Green', '1755087872_689c840047bdf.jpg', '2025-08-13 17:54:32'),
(216, 141, '2116', '1799', 'Blue', '1755087872_689c840077fac.jpg', '2025-08-13 17:54:32'),
(217, 142, '2940', '2499', 'Green', '1755088020_689c8494de0f8.jpg', '2025-08-13 17:57:00'),
(218, 143, '3058', '2599', 'Light Blue', '1755088138_689c850af0dd5.jpg', '2025-08-13 17:58:59'),
(219, 144, '2352', '1999', 'Black', '1755088313_689c85b9eb71e.jpg', '2025-08-13 18:01:54'),
(220, 145, '2940', '2499', 'Brown', '1755089134_689c88eebdb8d.jpg', '2025-08-13 18:15:34'),
(221, 146, '2352', '1999', 'Light Brown', '1755089338_689c89baae1e2.jpg', '2025-08-13 18:18:58'),
(222, 146, '2352', '1999', 'Light Green', '1755089338_689c89baeeeed.jpg', '2025-08-13 18:18:59'),
(223, 147, '2116', '1799', 'Brown', '1755089476_689c8a445be13.jpg', '2025-08-13 18:21:16'),
(224, 147, '2116', '1799', 'Blue', '1755089476_689c8a4483e2d.jpg', '2025-08-13 18:21:16'),
(225, 148, '3058', '2599', 'Brown', '1755089676_689c8b0cc2ecc.jpg', '2025-08-13 18:24:36'),
(226, 148, '3058', '2599', 'Blue', '1755089677_689c8b0d1f03e.jpg', '2025-08-13 18:24:37'),
(227, 149, '7646', '6499', 'Gold', '1755092317_689c955d2699c.jpg', '2025-08-13 19:08:37'),
(228, 150, '7646', '6499', 'Black', '1755092396_689c95ac1afd3.jpg', '2025-08-13 19:09:56'),
(229, 151, '9999', '8499', 'Black', '1755092463_689c95ef3319f.jpg', '2025-08-13 19:11:03'),
(230, 152, '6469', '5499', 'Black', '1755092526_689c962e04536.jpg', '2025-08-13 19:12:06'),
(231, 153, '7464', '6499', 'Multicolor 1', '1755092727_689c96f71bc59.jpg', '2025-08-13 19:15:27'),
(232, 154, '5293', '4499', 'Black', '1755093405_689c999db8178.jpg', '2025-08-13 19:26:45'),
(233, 155, '19411', '16499', 'White', '1755093562_689c9a3a53c20.jpg', '2025-08-13 19:29:22'),
(234, 156, '5999', '5099', 'Gold', '1755093689_689c9ab9a6df1.jpg', '2025-08-13 19:31:29'),
(235, 157, '5999', '5099', 'Multicolor 1', '1755093772_689c9b0c8c18b.jpg', '2025-08-13 19:32:52'),
(236, 158, '5764', '4899', 'Dark Shade', '1755093863_689c9b6714820.jpg', '2025-08-13 19:34:23'),
(237, 159, '5764', '4899', 'Gold', '1755093935_689c9baf07246.jpg', '2025-08-13 19:35:35'),
(238, 160, '999', '849', 'Default', '1755094156_689c9c8c00bfe.jpg', '2025-08-13 19:39:16'),
(239, 161, '35', '30', 'Default', '1755094390_689c9d768d79d.jpg', '2025-08-13 19:43:10'),
(240, 162, '234', '199', 'Default', '1755094413_689c9d8d9e910.jpg', '2025-08-13 19:43:33'),
(241, 163, '352', '299', 'Default', '1755094501_689c9de563dd7.jpg', '2025-08-13 19:45:01'),
(242, 164, '81', '69', 'Black', '1755094664_689c9e884fce4.jpg', '2025-08-13 19:47:44'),
(243, 165, '175', '149', 'Black', '1755094763_689c9eebf05a7.jpg', '2025-08-13 19:49:24'),
(244, 166, '116', '99', 'Default', '1755094879_689c9f5f1ab6a.jpg', '2025-08-13 19:51:19'),
(245, 167, '469', '399', 'Green', '1755096183_689ca4775d148.jpg', '2025-08-13 20:13:03'),
(246, 167, '469', '399', 'Blue', '1755096183_689ca4778f0ff.jpg', '2025-08-13 20:13:03'),
(247, 168, '116', '99', 'Green', '1755096640_689ca6404ed74.jpg', '2025-08-13 20:20:40'),
(248, 168, '116', '99', 'Black', '1755096640_689ca64091c26.jpg', '2025-08-13 20:20:40'),
(249, 168, '116', '99', 'Red', '1755096640_689ca640dbe7a.jpg', '2025-08-13 20:20:40'),
(250, 168, '116', '99', 'Blue', '1755096641_689ca64116859.jpg', '2025-08-13 20:20:41'),
(251, 169, '528', '449', 'Yellow', '1755096724_689ca69412de0.jpg', '2025-08-13 20:22:04'),
(252, 170, '187', '159', 'Yellow', '1755096880_689ca730bc059.jpg', '2025-08-13 20:24:40'),
(253, 170, '187', '159', 'Brown', '1755096880_689ca730f369c.jpg', '2025-08-13 20:24:41'),
(254, 170, '187', '159', 'Blue', '1755096881_689ca7313afa5.jpg', '2025-08-13 20:24:41'),
(255, 171, '116', '99', 'Light Brown', '1755097075_689ca7f3a4cb9.jpg', '2025-08-13 20:27:55'),
(256, 172, '411', '349', 'Black', '1755097339_689ca8fba2830.jpg', '2025-08-13 20:32:19'),
(257, 174, '528', '449', 'Black', '1755097366_689ca9160032c.jpg', '2025-08-13 20:32:46'),
(258, 173, '646', '549', 'Black', '1755097392_689ca93022b92.jpg', '2025-08-13 20:33:12'),
(259, 175, '528', '449', 'Default', '1755154507_689d884b601e7.jpg', '2025-08-14 12:25:07'),
(260, 176, '528', '449', 'Default', '1755154563_689d888386093.jpg', '2025-08-14 12:26:03'),
(261, 177, '411', '349', 'Default', '1755154637_689d88cdf2562.jpg', '2025-08-14 12:27:18'),
(262, 178, '528', '449', 'Default', '1755154680_689d88f8e032a.jpg', '2025-08-14 12:28:00'),
(263, 180, '528', '449', 'Default', '1755154979_689d8a23f31c3.jpg', '2025-08-14 12:33:00'),
(264, 181, '528', '449', 'Default', '1755155032_689d8a58bf5ad.jpg', '2025-08-14 12:33:52'),
(265, 182, '528', '449', 'Default', '1755155072_689d8a80d9948.jpg', '2025-08-14 12:34:32'),
(266, 183, '411', '349', 'Default', '1755155159_689d8ad7701e9.jpg', '2025-08-14 12:35:59'),
(267, 184, '528', '449', 'Default', '1755155214_689d8b0e08e31.jpg', '2025-08-14 12:36:54'),
(268, 185, '528', '449', 'Default', '1755155267_689d8b43a18f9.jpg', '2025-08-14 12:37:47'),
(269, 186, '528', '449', 'Default', '1755155389_689d8bbde75f0.jpg', '2025-08-14 12:39:49'),
(270, 187, '528', '449', 'Default', '1755155431_689d8be7e601d.jpg', '2025-08-14 12:40:31'),
(271, 188, '411', '349', 'Default', '1755155478_689d8c161321c.jpg', '2025-08-14 12:41:18'),
(272, 189, '528', '449', 'Default', '1755155605_689d8c9528034.jpg', '2025-08-14 12:43:25'),
(273, 190, '411', '349', 'Default', '1755155659_689d8ccb83bd6.jpg', '2025-08-14 12:44:19'),
(274, 191, '528', '411', 'Default', '1755155721_689d8d0979acd.jpg', '2025-08-14 12:45:21'),
(275, 192, '528', '449', 'Default', '1755155770_689d8d3a682d9.jpg', '2025-08-14 12:46:10'),
(276, 193, '411', '349', 'Default', '1755155827_689d8d7315134.jpg', '2025-08-14 12:47:07'),
(277, 194, '411', '349', 'Default', '1755155889_689d8db142b66.jpg', '2025-08-14 12:48:09'),
(278, 195, '528', '449', 'Default', '1755155956_689d8df42473e.jpg', '2025-08-14 12:49:16'),
(279, 196, '528', '449', 'Default', '1755156181_689d8ed52f615.jpg', '2025-08-14 12:51:27'),
(280, 197, '411', '349', 'Default', '1755156233_689d8f09e1226.jpg', '2025-08-14 12:53:53'),
(281, 198, '528', '449', 'Default', '1755156290_689d8f425bbdf.jpg', '2025-08-14 12:54:50'),
(282, 199, '528', '449', 'Default', '1755156333_689d8f6d585cc.jpg', '2025-08-14 12:55:33'),
(283, 200, '411', '349', 'Default', '1755156411_689d8fbb9ee6e.jpg', '2025-08-14 12:56:51'),
(284, 201, '411', '349', 'Default', '1755156476_689d8ffc2c841.jpg', '2025-08-14 12:57:56'),
(285, 202, '411', '349', 'Default', '1755156528_689d9030443f4.jpg', '2025-08-14 12:58:48'),
(286, 203, '528', '449', 'Default', '1755156567_689d905788b00.jpg', '2025-08-14 12:59:27'),
(287, 204, '411', '349', 'Default', '1755156605_689d907d520fc.jpg', '2025-08-14 13:00:05'),
(288, 205, '528', '449', 'Default', '1755156653_689d90ad3f9fe.jpg', '2025-08-14 13:00:53'),
(289, 206, '35', '30', 'Default', '1755168430_689dbeae5f6a0.jpg', '2025-08-14 16:17:10'),
(290, 208, '116', '99', 'Green', '1755168749_689dbfed35cee.jpg', '2025-08-14 16:22:29'),
(291, 208, '116', '99', 'Gold', '1755168749_689dbfed62efc.jpg', '2025-08-14 16:22:29'),
(292, 208, '116', '99', 'Black', '1755168749_689dbfed8c495.jpg', '2025-08-14 16:22:29'),
(293, 208, '116', '99', 'Red', '1755168749_689dbfedae141.jpg', '2025-08-14 16:22:29'),
(294, 208, '116', '99', 'Blue', '1755168749_689dbfedcb980.jpg', '2025-08-14 16:22:29'),
(295, 209, '469', '399', 'Red & Blue Marble 2', '1755169013_689dc0f54a800.jpg', '2025-08-14 16:26:53'),
(296, 209, '469', '399', 'Red & Blue Marble', '1755169013_689dc0f56ac3a.jpg', '2025-08-14 16:26:53'),
(297, 209, '469', '399', 'Orange & Green', '1755169013_689dc0f58cbf4.jpg', '2025-08-14 16:26:53'),
(298, 209, '469', '399', 'Red & Blue', '1755169013_689dc0f5b36dc.jpg', '2025-08-14 16:26:53'),
(299, 209, '469', '399', 'Multicolor 2', '1755169013_689dc0f5de198.jpg', '2025-08-14 16:26:53'),
(300, 209, '469', '399', 'Multicolor 1', '1755169014_689dc0f60e68b.jpg', '2025-08-14 16:26:54'),
(301, 209, '469', '399', 'Green', '1755169014_689dc0f62a1e5.jpg', '2025-08-14 16:26:54'),
(302, 209, '469', '399', 'Blue', NULL, '2025-08-14 16:26:54'),
(303, 211, '352', '299', 'Brown', '1755169228_689dc1cc2bf72.jpg', '2025-08-14 16:30:28'),
(304, 211, '352', '299', 'Black', '1755169228_689dc1cc4de83.jpg', '2025-08-14 16:30:28'),
(305, 212, '469', '399', 'Brown', '1755169276_689dc1fcd1cd6.jpg', '2025-08-14 16:31:16'),
(306, 212, '469', '399', 'Black', '1755169276_689dc1fcee960.jpg', '2025-08-14 16:31:17'),
(307, 213, '58', '49', 'Black', '1755169396_689dc274dc5d7.jpg', '2025-08-14 16:33:16'),
(308, 214, '116', '99', 'Black', '1755169455_689dc2af46b9e.jpg', '2025-08-14 16:34:15'),
(309, 215, '116', '99', 'White', '1755177157_689de0c5cc523.jpg', '2025-08-14 18:42:38'),
(310, 216, '175', '149', 'White', '1755177337_689de17962da5.jpg', '2025-08-14 18:45:37'),
(311, 217, '234', '199', 'White', '1755177600_689de28044343.jpg', '2025-08-14 18:50:00'),
(312, 218, '344', '299', 'White', '1755177667_689de2c3ef94e.jpg', '2025-08-14 18:51:08'),
(313, 219, '528', '449', 'Blue', '1755177881_689de399a0981.jpg', '2025-08-14 18:54:41'),
(314, 220, '528', '449', 'White', '1755177920_689de3c01631a.jpg', '2025-08-14 18:55:20'),
(315, 221, '528', '449', 'White', '1755177967_689de3efa5be8.jpg', '2025-08-14 18:56:07'),
(316, 222, '528', '449', 'Red', '1755178010_689de41a8426d.jpg', '2025-08-14 18:56:50'),
(317, 223, '587', '499', 'White', '1755178054_689de44644300.jpg', '2025-08-14 18:57:34'),
(318, 224, '999', '849', 'Matte Grey', '1755178250_689de50a54085.jpg', '2025-08-14 19:00:50'),
(319, 224, '999', '849', 'White', '1755178250_689de50a82f25.jpg', '2025-08-14 19:00:50'),
(320, 224, '999', '849', 'Gold', '1755178250_689de50ab02a0.jpg', '2025-08-14 19:00:50'),
(321, 225, '2352', '1999', 'Black', '1755178681_689de6b9bf42f.jpg', '2025-08-14 19:08:01'),
(322, 226, '469', '399', 'Black', '1755178753_689de7019e9a2.jpg', '2025-08-14 19:09:13'),
(323, 227, '469', '399', 'Black', '1755178801_689de7311dfe4.jpg', '2025-08-14 19:10:01'),
(324, 228, '469', '399', 'Black', '1755178856_689de7685050f.jpg', '2025-08-14 19:10:56'),
(325, 229, '469', '399', 'Black', '1755179062_689de8362d861.jpg', '2025-08-14 19:14:22'),
(326, 230, '528', '449', 'Yellow', '1755179171_689de8a3edea2.jpg', '2025-08-14 19:16:12'),
(327, 231, '587', '499', 'Gold', '1755179728_689dead04de61.jpg', '2025-08-14 19:25:28'),
(328, 232, '587', '499', 'Gold', '1755179797_689deb15520f6.jpg', '2025-08-14 19:26:37'),
(329, 233, '587', '499', 'Gold', '1755179849_689deb49a425f.jpg', '2025-08-14 19:27:29'),
(330, 234, '705', '599', 'Yellow', '1755180280_689decf83bef8.jpg', '2025-08-14 19:34:40'),
(331, 234, '705', '599', 'Black', '1755180280_689decf8746b4.jpg', '2025-08-14 19:34:40'),
(332, 234, '705', '599', 'Blue', '1755180280_689decf8b35f4.jpg', '2025-08-14 19:34:40'),
(333, 235, '587', '499', 'Gold', '1755180346_689ded3a0c37b.jpg', '2025-08-14 19:35:46'),
(334, 236, '587', '499', 'Gold', '1755180469_689dedb537fc8.jpg', '2025-08-14 19:37:49'),
(335, 237, '587', '499', 'Black', '1755180503_689dedd798a1a.jpg', '2025-08-14 19:38:23'),
(336, 238, '646', '549', 'White', '1755180565_689dee156bef2.jpg', '2025-08-14 19:39:25'),
(337, 238, '646', '549', 'Gold', '1755180565_689dee158f182.jpg', '2025-08-14 19:39:25'),
(338, 239, '1764', '1499', 'Black', '1755180813_689def0d4421c.jpg', '2025-08-14 19:43:33'),
(339, 239, '1764', '1499', 'Red', '1755180813_689def0d797b6.jpg', '2025-08-14 19:43:33'),
(340, 240, '822', '699', 'Yellow', '1755180886_689def56d5b4e.jpg', '2025-08-14 19:44:46'),
(341, 241, '822', '699', 'Gold', '1755180973_689defad9cc9b.jpg', '2025-08-14 19:46:13'),
(342, 242, '705', '599', 'White', '1755181048_689deff8c35f1.jpg', '2025-08-14 19:47:28'),
(343, 243, '587', '499', 'Gold', '1755181116_689df03c53525.jpg', '2025-08-14 19:48:36'),
(344, 244, '822', '699', 'White', '1755181217_689df0a11363d.jpg', '2025-08-14 19:50:17'),
(345, 245, '705', '599', 'Green', '1755181348_689df12401b4d.jpg', '2025-08-14 19:52:28'),
(346, 245, '705', '599', 'Purple', '1755181348_689df1242e2d7.jpg', '2025-08-14 19:52:28'),
(347, 245, '705', '599', 'Black', '1755181348_689df12458272.jpg', '2025-08-14 19:52:28'),
(348, 245, '705', '599', 'Red', '1755181348_689df124873be.jpg', '2025-08-14 19:52:28'),
(349, 246, '587', '499', 'Black', '1755181413_689df1654d988.jpg', '2025-08-14 19:53:33'),
(350, 247, '705', '599', 'Green', '1755181546_689df1ea9deb2.jpg', '2025-08-14 19:55:46'),
(351, 247, '705', '599', 'Red', '1755181546_689df1eaccc40.jpg', '2025-08-14 19:55:46'),
(352, 248, '705', '599', 'White', '1755181633_689df24137b3e.jpg', '2025-08-14 19:57:13'),
(353, 249, '411', '349', 'Pink', '1755181871_689df32f30a63.jpg', '2025-08-14 20:01:11'),
(354, 249, '411', '349', 'Green', '1755181871_689df32f52e1d.jpg', '2025-08-14 20:01:11'),
(355, 249, '411', '349', 'Red', '1755181871_689df32f726f2.jpg', '2025-08-14 20:01:11'),
(356, 249, '411', '349', 'Blue', '1755181871_689df32f93e46.jpg', '2025-08-14 20:01:11'),
(357, 250, '822', '699', 'White', '1755181979_689df39b2cf3b.jpg', '2025-08-14 20:02:59'),
(358, 250, '822', '699', 'Gold', '1755181979_689df39b56bee.jpg', '2025-08-14 20:02:59'),
(359, 250, '822', '699', 'Blue', '1755181979_689df39b738a4.jpg', '2025-08-14 20:02:59'),
(360, 251, '705', '599', 'Grey', '1755182210_689df482bfe4d.jpg', '2025-08-14 20:06:50'),
(361, 251, '705', '599', 'Cream', '1755182210_689df482f279d.jpg', '2025-08-14 20:06:51'),
(362, 251, '705', '599', 'White', '1755182211_689df483308bf.jpg', '2025-08-14 20:06:51'),
(363, 251, '705', '599', 'Gold', '1755182211_689df483615a3.jpg', '2025-08-14 20:06:51'),
(364, 252, '587', '499', 'White', '1755182270_689df4be3ce6a.jpg', '2025-08-14 20:07:50'),
(365, 253, '587', '499', 'White', '1755182320_689df4f069437.jpg', '2025-08-14 20:08:40'),
(366, 254, '587', '499', 'Black', '1755182367_689df51fa43af.jpg', '2025-08-14 20:09:27'),
(367, 255, '587', '499', 'Black', '1755182425_689df5594aa37.jpg', '2025-08-14 20:10:25'),
(368, 256, '587', '499', 'Light Brown', '1755182501_689df5a5ae974.jpg', '2025-08-14 20:11:41'),
(369, 257, '587', '499', 'Light Brown', '1755182554_689df5da597ab.jpg', '2025-08-14 20:12:34'),
(370, 258, '646', '549', 'Black', '1755182605_689df60d81df4.jpg', '2025-08-14 20:13:25'),
(371, 259, '646', '549', 'Grey', '1755182770_689df6b25703b.jpg', '2025-08-14 20:16:10'),
(372, 259, '646', '549', 'White', '1755182770_689df6b290321.jpg', '2025-08-14 20:16:10'),
(373, 259, '646', '549', 'Gold', '1755182770_689df6b2c2ded.jpg', '2025-08-14 20:16:10'),
(374, 260, '705', '599', 'Grey', '1755182883_689df72330a7b.jpg', '2025-08-14 20:18:03'),
(375, 260, '705', '599', 'Brown', '1755182883_689df72360bbb.jpg', '2025-08-14 20:18:03'),
(376, 260, '705', '599', 'Gold', '1755182883_689df7238797a.jpg', '2025-08-14 20:18:03'),
(377, 260, '705', '599', 'Blue', '1755182883_689df723b25fd.jpg', '2025-08-14 20:18:03'),
(378, 261, '705', '599', 'Black', '1755182927_689df74f718a6.jpg', '2025-08-14 20:18:47'),
(379, 262, '234', '199', 'Default', '1755583755_68a4150b1570f.jpg', '2025-08-19 11:39:15'),
(380, 263, '2940', '2499', 'Default', '1756829367_68b716b7319f2.jpg', '2025-09-02 21:39:27'),
(381, 264, '2940', '2499', 'Default', '1756829453_68b7170d4204f.jpg', '2025-09-02 21:40:53'),
(382, 265, '2940', '2499', 'Default', '1756829592_68b71798eb4d1.jpg', '2025-09-02 21:43:13'),
(383, 266, '2940', '2499', 'Default', '1756829645_68b717cd90855.jpg', '2025-09-02 21:44:05'),
(384, 267, '2940', '2499', 'Default', '1756829759_68b7183f47fc3.jpg', '2025-09-02 21:45:59'),
(385, 268, '2940', '2499', 'Default', '1756829804_68b7186ca3538.jpg', '2025-09-02 21:46:44'),
(386, 269, '2940', '2499', 'Default', '1756829850_68b7189a3de0e.jpg', '2025-09-02 21:47:30'),
(387, 270, '18822', '15999', 'Default', '1756830011_68b7193ba5816.jpg', '2025-09-02 21:50:11'),
(388, 271, '17646', '14999', 'Default', '1756830122_68b719aa2140e.jpg', '2025-09-02 21:52:02'),
(389, 272, '41175', '34999', 'Default', '1756830201_68b719f90a4e5.jpg', '2025-09-02 21:53:21'),
(390, 273, '11764', '9999', 'Default', '1756830272_68b71a40347b7.jpg', '2025-09-02 21:54:32'),
(391, 274, '6469', '5499', 'Lemon Yellow', '1756831118_68b71d8ee686d.jpg', '2025-09-02 22:08:39'),
(392, 274, '6469', '5499', 'Grey', '1756831119_68b71d8f2f497.jpg', '2025-09-02 22:08:39'),
(393, 274, '6469', '5499', 'Orange', '1756831119_68b71d8f5ac94.jpg', '2025-09-02 22:08:39'),
(394, 274, '6469', '1', 'Blue', '1756831119_68b71d8f8617a.jpg', '2025-09-02 22:08:39'),
(395, 275, '6705', '5666', 'Sea Green', '1756831299_68b71e4310fcd.jpg', '2025-09-02 22:11:39'),
(396, 275, '6705', '5666', 'Purple', '1756831299_68b71e43450bd.jpg', '2025-09-02 22:11:39'),
(397, 275, '6705', '5666', 'Red', '1756831299_68b71e4374e60.jpg', '2025-09-02 22:11:39'),
(398, 275, '6705', '5666', 'Blue', '1756831299_68b71e439b776.jpg', '2025-09-02 22:11:39'),
(399, 276, '5999', '5099', 'Rose Gold', '1756831469_68b71eed14d68.jpg', '2025-09-02 22:14:29'),
(400, 276, '5999', '5099', 'Silver', '1756831469_68b71eed4d485.jpg', '2025-09-02 22:14:29'),
(401, 276, '5999', '5099', 'Gold', '1756831469_68b71eed8d79e.jpg', '2025-09-02 22:14:29'),
(402, 276, '5999', '5099', 'Black', '1756831469_68b71eedc48ba.jpg', '2025-09-02 22:14:29'),
(403, 277, '6469', '5499', 'Grey', '1756831601_68b71f714c192.jpg', '2025-09-02 22:16:41'),
(404, 277, '6469', '5499', 'Yellow', '1756831601_68b71f717b455.jpg', '2025-09-02 22:16:41'),
(405, 277, '6469', '5499', 'Blue', '1756831601_68b71f71af6f5.jpg', '2025-09-02 22:16:41'),
(406, 278, '5293', '4499', 'Coffee', '1756831768_68b72018660ea.jpg', '2025-09-02 22:19:28'),
(407, 278, '5293', '4499', 'Sea Green', '1756831768_68b72018aa3b1.jpg', '2025-09-02 22:19:28'),
(408, 278, '5293', '4499', 'Silver', '1756831768_68b72018e47f3.jpg', '2025-09-02 22:19:28'),
(409, 278, '5293', '4499', 'Blue', '1756831769_68b7201918c18.jpg', '2025-09-02 22:19:29'),
(410, 279, '5293', '4499', 'Coffee', '1756832012_68b7210c69c45.jpg', '2025-09-02 22:23:32'),
(411, 279, '5293', '4499', 'Sea Green', '1756832012_68b7210c88fb9.jpg', '2025-09-02 22:23:32'),
(412, 279, '5293', '4499', 'Silver', '1756832012_68b7210ca4a2d.jpg', '2025-09-02 22:23:32'),
(413, 279, '5293', '4499', 'Red', '1756832012_68b7210cc1445.jpg', '2025-09-02 22:23:32'),
(414, 279, '5293', '4499', 'Blue', '1756832012_68b7210cdfd8a.jpg', '2025-09-02 22:23:32'),
(415, 280, '4940', '4199', 'Coffee', '1756832179_68b721b3e0f8d.jpg', '2025-09-02 22:26:20'),
(416, 280, '4940', '4199', 'Green', '1756832180_68b721b425c1f.jpg', '2025-09-02 22:26:20'),
(417, 280, '4940', '4199', 'Red', '1756832180_68b721b451119.jpg', '2025-09-02 22:26:20'),
(418, 280, '4940', '4199', 'Blue', '1756832180_68b721b470e92.jpg', '2025-09-02 22:26:20'),
(419, 281, '7646', '6499', 'Default', '1756832250_68b721faa4a8c.jpg', '2025-09-02 22:27:30'),
(420, 282, '8234', '6999', 'Coffee', '1756832416_68b722a0dc90a.jpg', '2025-09-02 22:30:16'),
(421, 282, '8234', '6999', 'Lemon Yellow', '1756832417_68b722a119d9e.jpg', '2025-09-02 22:30:17'),
(422, 282, '8234', '6999', 'Grey', '1756832417_68b722a14db24.jpg', '2025-09-02 22:30:17'),
(423, 282, '8234', '6999', 'Blue', '1756832417_68b722a17c502.jpg', '2025-09-02 22:30:17'),
(424, 283, '6469', '5499', 'Lemon Yellow', '1756833862_68b728460775a.jpg', '2025-09-02 22:54:22'),
(425, 283, '6469', '5499', 'Purple', '1756833862_68b72846394c3.jpg', '2025-09-02 22:54:22'),
(426, 283, '6469', '5499', 'Red', '1756833862_68b7284657656.jpg', '2025-09-02 22:54:22'),
(427, 284, '7646', '6499', 'Red', '1756833939_68b72893dbe8c.jpg', '2025-09-02 22:55:39'),
(428, 285, '5528', '4699', 'Grey', '1756834107_68b7293b838a3.jpg', '2025-09-02 22:58:27'),
(429, 285, '5528', '4699', 'Yellow', '1756834107_68b7293bc3ef2.jpg', '2025-09-02 22:58:27'),
(430, 285, '5528', '4699', 'Green', '1756834108_68b7293c30c73.jpg', '2025-09-02 22:58:28'),
(431, 285, '5528', '4699', 'Purple', '1756834108_68b7293c9cb35.jpg', '2025-09-02 22:58:28'),
(432, 285, '5528', '4699', 'Blue', '1756834109_68b7293d0fa5a.jpg', '2025-09-02 22:58:29'),
(433, 286, '5528', '4699', 'Coffee', '1756834247_68b729c737783.jpg', '2025-09-02 23:00:47'),
(434, 286, '5528', '4699', 'Sea Green', '1756834247_68b729c754801.jpg', '2025-09-02 23:00:47'),
(435, 286, '5528', '4699', 'Orange', '1756834247_68b729c7701cd.jpg', '2025-09-02 23:00:47'),
(436, 286, '5528', '4699', 'Blue', '1756834247_68b729c78c137.jpg', '2025-09-02 23:00:47'),
(437, 287, '6705', '5699', 'Default', '1756834322_68b72a12ca115.jpg', '2025-09-02 23:02:02'),
(438, 288, '4940', '4199', 'Yellow', '1756834476_68b72aac499f8.jpg', '2025-09-02 23:04:36'),
(439, 288, '4940', '4199', 'White', '1756834476_68b72aac7dc22.jpg', '2025-09-02 23:04:36'),
(440, 288, '4940', '4199', 'Red', '1756834476_68b72aacacbaf.jpg', '2025-09-02 23:04:36'),
(441, 288, '4940', '4199', 'Blue', '1756834476_68b72aacdba17.jpg', '2025-09-02 23:04:36'),
(442, 289, '8822', '7499', 'Gold', '1756834648_68b72b58912fa.jpg', '2025-09-02 23:07:28'),
(443, 289, '8822', '7499', 'Black', '1756834648_68b72b58b55ba.jpg', '2025-09-02 23:07:28'),
(444, 289, '8822', '7499', 'Red', '1756834648_68b72b58eeb0a.jpg', '2025-09-02 23:07:29'),
(445, 289, '8822', '7499', 'Blue', '1756834649_68b72b592f09f.jpg', '2025-09-02 23:07:29'),
(446, 290, '5999', '5099', 'Bronze', '1756834779_68b72bdb1c293.jpg', '2025-09-02 23:09:39'),
(447, 290, '5999', '5099', 'Gold', '1756834779_68b72bdb4532b.jpg', '2025-09-02 23:09:39'),
(448, 291, '7646', '6499', 'Bronze', '1756834969_68b72c9982a5b.jpg', '2025-09-02 23:12:49'),
(449, 291, '7646', '6499', 'White', '1756834969_68b72c99a480c.jpg', '2025-09-02 23:12:49'),
(450, 291, '7646', '6499', 'Gold', '1756834969_68b72c99cc91c.jpg', '2025-09-02 23:12:49'),
(451, 292, '19999', '16999', 'Default', '1756835070_68b72cfe4d3db.jpg', '2025-09-02 23:14:30'),
(452, 293, '1411', '1199', 'White', '1757145238_68bbe89689bab.jpg', '2025-09-06 13:23:58'),
(453, 294, '764', '649', 'Gold', '1757145345_68bbe90133a0e.jpg', '2025-09-06 13:25:45'),
(454, 295, '999', '849', 'Silver', '1759308571_68dceb1b4f5e2.jpg', '2025-09-06 13:33:33'),
(455, 295, '999', '849', 'Gold', '1759308571_68dceb1b42cbe.jpg', '2025-09-06 13:33:33'),
(456, 296, '1764', '1499', 'Default', '1757145929_68bbeb490b1f6.jpg', '2025-09-06 13:35:29'),
(457, 297, '2352', '1999', 'Default', '1757145994_68bbeb8a61bf1.jpg', '2025-09-06 13:36:34'),
(458, 298, '2940', '2499', 'Default', '1757146052_68bbebc40976a.jpg', '2025-09-06 13:37:32'),
(459, 299, '999', '849', 'Gold', '1757146139_68bbec1bd2a87.jpg', '2025-09-06 13:38:59'),
(460, 299, '999', '849', 'Black', '1757146140_68bbec1c3a9b8.jpg', '2025-09-06 13:39:00'),
(461, 300, '999', '849', 'Gold', '1759308191_68dce99f53ecd.jpg', '2025-09-06 13:39:53'),
(462, 301, '411', '349', 'Yellow', '1757149732_68bbfa24a1ffd.jpg', '2025-09-06 14:38:52'),
(463, 301, '411', '349', 'Green', '1757149732_68bbfa24c9cf9.jpg', '2025-09-06 14:38:52'),
(464, 301, '411', '349', 'Purple', '1757149732_68bbfa24e9740.jpg', '2025-09-06 14:38:52'),
(465, 301, '411', '349', 'White', '1757149733_68bbfa251d857.jpg', '2025-09-06 14:38:53'),
(466, 301, '411', '349', 'Black', '1757149733_68bbfa2547ec0.jpg', '2025-09-06 14:38:53'),
(467, 301, '411', '349', 'Red', '1757149733_68bbfa2571487.jpg', '2025-09-06 14:38:53'),
(468, 301, '411', '349', 'Blue', '1757149733_68bbfa259f600.jpg', '2025-09-06 14:38:53'),
(469, 302, '822', '699', 'Yellow', '1757150065_68bbfb71ef532.jpg', '2025-09-06 14:44:26'),
(470, 302, '822', '699', 'Silver', '1757150066_68bbfb7228846.jpg', '2025-09-06 14:44:26'),
(471, 302, '822', '699', 'Green', '1757150066_68bbfb72599ad.jpg', '2025-09-06 14:44:26'),
(472, 302, '822', '699', 'Purple', '1757150066_68bbfb728cdf9.jpg', '2025-09-06 14:44:26'),
(473, 302, '822', '699', 'Black', '1757150066_68bbfb72ba60e.jpg', '2025-09-06 14:44:26'),
(474, 302, '822', '699', 'Red', NULL, '2025-09-06 14:44:26'),
(475, 302, '822', '699', 'Blue', NULL, '2025-09-06 14:44:26'),
(476, 303, '528', '449', 'Multicolor 1', '1757150140_68bbfbbc22eb0.jpg', '2025-09-06 14:45:40'),
(477, 304, '528', '449', 'Green', '1757150244_68bbfc2456d93.jpg', '2025-09-06 14:47:24'),
(478, 304, '528', '449', 'Blue', '1757150244_68bbfc24983e4.jpg', '2025-09-06 14:47:24'),
(479, 305, '528', '449', 'Black', '1757150467_68bbfd03c63be.jpg', '2025-09-06 14:51:07'),
(480, 306, '528', '449', 'Blue', '1757150540_68bbfd4c34f5d.jpg', '2025-09-06 14:52:20'),
(481, 307, '587', '499', 'Lemon Yellow', '1757150607_68bbfd8fb5740.jpg', '2025-09-06 14:53:27'),
(482, 308, '587', '499', 'Green', '1757150696_68bbfde846a48.jpg', '2025-09-06 14:54:56'),
(483, 309, '587', '499', 'Red', '1757150742_68bbfe1686d33.jpg', '2025-09-06 14:55:42'),
(484, 310, '587', '499', 'Yellow', '1757150801_68bbfe51d69e2.jpg', '2025-09-06 14:56:41'),
(485, 311, '352', '299', 'Black', '1757150887_68bbfea7d53b5.jpg', '2025-09-06 14:58:07'),
(486, 311, '352', '299', 'Blue', '1757150888_68bbfea80ae49.jpg', '2025-09-06 14:58:08'),
(811, 44, '35881', '30499', 'Box of 26', '1754293100_6890636cb8099.jpg', '2025-08-04 13:08:20'),
(813, 312, '1764', '1499', 'Gold', '1759308364_68dcea4c70375.jpg', '2025-10-01 14:16:04'),
(816, 313, '1764', '1499', 'Silver', '1759308644_68dceb648568c.jpg', '2025-10-01 14:20:44'),
(817, 313, '1764', '1499', 'Gold', '1759308644_68dceb64afc01.jpg', '2025-10-01 14:20:44'),
(819, 314, '352', '299', 'Black', '1759309089_68dced21a3e72.jpg', '2025-10-01 14:28:09'),
(820, 316, '0', '0', 'Rose Gold', NULL, '2025-10-08 09:02:51'),
(821, 316, '0', '0', 'Gold', NULL, '2025-10-08 09:02:51'),
(822, 316, '100', '30', 'Rose Gold', '1759894371_68e5db63131e4.jpg', '2025-10-08 09:02:51'),
(823, 316, '100', '30', 'Gold', '1759894371_68e5db63266ad.jpg', '2025-10-08 09:02:51'),
(824, 315, '0', '0', 'Rose Gold', NULL, '2025-10-08 09:03:11'),
(825, 315, '100', '70', 'Rose Gold', '1759894414_68e5db8e77aff.jpg', '2025-10-08 09:03:34'),
(826, 317, '0', '0', 'Coffee', NULL, '2025-10-08 09:29:57'),
(827, 317, '1000', '800', 'Coffee', '1759896074_68e5e20a17241.png', '2025-10-08 09:31:14'),
(828, 318, '1000', '900', 'Sea Green', '1759896163_68e5e2632eff4.jpg', '2025-10-08 09:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `saved_address`
--

CREATE TABLE `saved_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_details` json DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `saved_address`
--

INSERT INTO `saved_address` (`id`, `user_id`, `order_id`, `address_details`, `created_at`, `updated_at`) VALUES
(20, 1, NULL, '{\"email\": \"Rohanverma25dec@gmail.com\", \"notes\": \"Testing\", \"phone\": \"07011243534\", \"state\": \"UP\", \"address\": \"192, RAM SHYAM ENCLAVE CHIPIYANA, \", \"country\": \"india\", \"pincode\": \"201009\", \"shipping_fname\": \"Rohan\", \"shipping_lname\": \"Verma\", \"shipping_state\": \"UP\", \"shipping_address\": \"192, RAM SHYAM ENCLAVE CHIPIYANA, \", \"shipping_country\": \"india\", \"shipping_pincode\": \"201009\"}', '2025-09-24 05:45:26', '2025-09-24 05:45:26'),
(21, 0, NULL, '{\"email\": \"pearyrobert89@gmail.com\", \"notes\": \"\", \"phone\": \"8332906999\", \"state\": \"New York\", \"address\": \"29 N. Swanson Ave. Lockport, NY 14094, E-566, Greater Kailash 2\", \"country\": \"india\", \"pincode\": \"10001\", \"shipping_fname\": \"Robert\", \"shipping_lname\": \"Peary\", \"shipping_state\": \"New York\", \"shipping_address\": \"29 N. Swanson Ave. Lockport, NY 14094, E-566, Greater Kailash 2\", \"shipping_country\": \"india\", \"shipping_pincode\": \"10001\"}', '2025-09-25 03:36:01', '2025-09-25 03:36:01'),
(22, 0, NULL, '{\"email\": \"pearyrobert89@gmail.com\", \"notes\": \"\", \"phone\": \"8332906999\", \"state\": \"New York\", \"address\": \"29 N. Swanson Ave. Lockport, NY 14094, E-566, Greater Kailash 2\", \"country\": \"india\", \"pincode\": \"10001\", \"shipping_fname\": \"Robert\", \"shipping_lname\": \"Peary\", \"shipping_state\": \"New York\", \"shipping_address\": \"29 N. Swanson Ave. Lockport, NY 14094, E-566, Greater Kailash 2\", \"shipping_country\": \"india\", \"shipping_pincode\": \"10001\"}', '2025-09-25 04:14:53', '2025-09-25 04:14:53'),
(23, 1, NULL, '{\"email\": \"rohanverma25dec@gmail.com\", \"notes\": \"\", \"phone\": \"8332906999\", \"state\": \"New York\", \"address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"country\": \"india\", \"pincode\": \"10001\", \"shipping_fname\": \"Robert\", \"shipping_lname\": \"Peary\", \"shipping_state\": \"New York\", \"shipping_address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"shipping_country\": \"india\", \"shipping_pincode\": \"10001\"}', '2025-09-25 04:26:50', '2025-09-25 04:26:50'),
(24, 1, NULL, '{\"email\": \"rohanverma25dec@gmail.com\", \"notes\": \"\", \"phone\": \"8332906999\", \"state\": \"New York\", \"address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"country\": \"india\", \"pincode\": \"10001\", \"shipping_fname\": \"Robert\", \"shipping_lname\": \"Peary\", \"shipping_state\": \"New York\", \"shipping_address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"shipping_country\": \"india\", \"shipping_pincode\": \"10001\"}', '2025-09-25 04:29:34', '2025-09-25 04:29:34'),
(25, 0, NULL, '{\"email\": \"pearyrobert89@gmail.com\", \"notes\": \"\", \"phone\": \"8332906999\", \"state\": \"New York\", \"address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"country\": \"india\", \"pincode\": \"10001\", \"shipping_fname\": \"Robert\", \"shipping_lname\": \"Peary\", \"shipping_state\": \"New York\", \"shipping_address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"shipping_country\": \"india\", \"shipping_pincode\": \"10001\"}', '2025-09-25 04:54:20', '2025-09-25 04:54:20'),
(26, 1, NULL, '{\"email\": \"rohanverma25dec@gmail.com\", \"notes\": \"\", \"phone\": \"8332906999\", \"state\": \"New York\", \"address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"country\": \"india\", \"pincode\": \"10001\", \"shipping_fname\": \"Robert\", \"shipping_lname\": \"Peary\", \"shipping_state\": \"New York\", \"shipping_address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"shipping_country\": \"india\", \"shipping_pincode\": \"10001\"}', '2025-09-25 05:01:04', '2025-09-25 05:01:04'),
(27, 1, NULL, '{\"email\": \"rohanverma25dec@gmail.com\", \"notes\": \"\", \"phone\": \"8332906999\", \"state\": \"New York\", \"address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"country\": \"india\", \"pincode\": \"10001\", \"shipping_fname\": \"Robert\", \"shipping_lname\": \"Peary\", \"shipping_state\": \"New York\", \"shipping_address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"shipping_country\": \"india\", \"shipping_pincode\": \"10001\"}', '2025-09-25 05:04:11', '2025-09-25 05:04:11'),
(28, 0, NULL, '{\"email\": \"pearyrobert89@gmail.com\", \"notes\": \"\", \"phone\": \"8332906999\", \"state\": \"New York\", \"address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"country\": \"india\", \"pincode\": \"10001\", \"shipping_fname\": \"Robert\", \"shipping_lname\": \"Peary\", \"shipping_state\": \"New York\", \"shipping_address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"shipping_country\": \"india\", \"shipping_pincode\": \"10001\"}', '2025-09-25 05:06:46', '2025-09-25 05:06:46'),
(29, 1, NULL, '{\"email\": \"rohanverma25dec@gmail.com\", \"notes\": \"\", \"phone\": \"8332906999\", \"state\": \"New York\", \"address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"country\": \"india\", \"pincode\": \"10001\", \"shipping_fname\": \"Robert\", \"shipping_lname\": \"Peary\", \"shipping_state\": \"New York\", \"shipping_address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"shipping_country\": \"india\", \"shipping_pincode\": \"10001\"}', '2025-09-25 05:12:49', '2025-09-25 05:12:49'),
(30, 1, NULL, '{\"email\": \"rohanverma25dec@gmail.com\", \"notes\": \"\", \"phone\": \"8332906999\", \"state\": \"New York\", \"address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"country\": \"india\", \"pincode\": \"10001\", \"shipping_fname\": \"Robert\", \"shipping_lname\": \"Peary\", \"shipping_state\": \"New York\", \"shipping_address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"shipping_country\": \"india\", \"shipping_pincode\": \"10001\"}', '2025-09-25 05:44:45', '2025-09-25 05:44:45'),
(31, 1, NULL, '{\"email\": \"rohanverma25dec@gmail.com\", \"notes\": \"\", \"phone\": \"8332906999\", \"state\": \"New York\", \"address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"country\": \"india\", \"pincode\": \"10001\", \"shipping_fname\": \"Robert\", \"shipping_lname\": \"Peary\", \"shipping_state\": \"New York\", \"shipping_address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"shipping_country\": \"india\", \"shipping_pincode\": \"10001\"}', '2025-09-25 05:46:59', '2025-09-25 05:46:59'),
(32, 1, NULL, '{\"email\": \"rohanverma25dec@gmail.com\", \"notes\": \"\", \"phone\": \"8332906999\", \"state\": \"New York\", \"address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"country\": \"india\", \"pincode\": \"10001\", \"shipping_fname\": \"Robert\", \"shipping_lname\": \"Peary\", \"shipping_state\": \"New York\", \"shipping_address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"shipping_country\": \"india\", \"shipping_pincode\": \"10001\"}', '2025-09-25 05:47:16', '2025-09-25 05:47:16'),
(33, 1, NULL, '{\"email\": \"rohanverma25dec@gmail.com\", \"notes\": \"\", \"phone\": \"8332906999\", \"state\": \"New York\", \"address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"country\": \"india\", \"pincode\": \"10001\", \"shipping_fname\": \"Robert\", \"shipping_lname\": \"Peary\", \"shipping_state\": \"New York\", \"shipping_address\": \"29 N. Swanson Ave. Lockport, NY 14094, \", \"shipping_country\": \"india\", \"shipping_pincode\": \"10001\"}', '2025-09-25 05:48:28', '2025-09-25 05:48:28'),
(34, 1, NULL, '{\"email\": \"Rohanverma25dec@gmail.com\", \"notes\": \"\", \"phone\": \"07011243534\", \"state\": \"UP\", \"address\": \"192, RAM SHYAM ENCLAVE CHIPIYANA, \", \"country\": \"india\", \"pincode\": \"201009\", \"shipping_fname\": \"Rohan\", \"shipping_lname\": \"Verma\", \"shipping_state\": \"UP\", \"shipping_address\": \"192, RAM SHYAM ENCLAVE CHIPIYANA, \", \"shipping_country\": \"india\", \"shipping_pincode\": \"201009\"}', '2025-10-13 02:40:51', '2025-10-13 02:40:51'),
(35, 4, NULL, '{\"email\": \"jain.roli92@gmail.com\", \"notes\": \"\", \"phone\": \"9610556265\", \"state\": \"Uttar Pradesh\", \"address\": \"2141 Osimo Mahagun moderne sector 78 Noida UP 201301, \", \"country\": \"india\", \"pincode\": \"201301\", \"shipping_fname\": \"Roli\", \"shipping_lname\": \"Jain\", \"shipping_state\": \"Uttar Pradesh\", \"shipping_address\": \"2141 Osimo Mahagun moderne sector 78 Noida UP 201301, \", \"shipping_country\": \"india\", \"shipping_pincode\": \"201301\"}', '2025-10-23 07:49:57', '2025-10-23 07:49:57'),
(36, 4, NULL, '{\"email\": \"jain.roli92@gmail.com\", \"notes\": \"\", \"phone\": \"9610556265\", \"state\": \"Uttar Pradesh\", \"address\": \"2141 Osimo Mahagun moderne sector 78 Noida, 2141 Osimo\", \"country\": \"india\", \"pincode\": \"201301\", \"shipping_fname\": \"Roli\", \"shipping_lname\": \"Jain\", \"shipping_state\": \"Uttar Pradesh\", \"shipping_address\": \"2141 Osimo Mahagun moderne sector 78 Noida, 2141 Osimo\", \"shipping_country\": \"india\", \"shipping_pincode\": \"201301\"}', '2025-10-23 07:54:02', '2025-10-23 07:54:02'),
(37, 2, NULL, '{\"email\": \"techonika.com@gmail.com\", \"notes\": \"\", \"phone\": \"8810599816\", \"state\": \"Uttar Pradesh\", \"address\": \"Supertech Eco Village 1, sector 1\", \"country\": \"india\", \"pincode\": \"201306\", \"shipping_fname\": \"Prateek\", \"shipping_lname\": \"Dubey\", \"shipping_state\": \"Uttar Pradesh\", \"shipping_address\": \"Supertech Eco Village 1, sector 1\", \"shipping_country\": \"india\", \"shipping_pincode\": \"201306\"}', '2025-10-23 07:57:58', '2025-10-23 07:57:58'),
(38, 5, NULL, '{\"email\": \"jain.roli92@gmail.com\", \"notes\": \"\", \"phone\": \"9610556265\", \"state\": \"Uttar Pradesh\", \"address\": \"2141 Osimo Mahagun moderne sector 78 Noida UP, 2141 Osimo\", \"country\": \"india\", \"pincode\": \"201301\", \"shipping_fname\": \"Roli\", \"shipping_lname\": \"Jain\", \"shipping_state\": \"Uttar Pradesh\", \"shipping_address\": \"2141 Osimo Mahagun moderne sector 78 Noida UP, 2141 Osimo\", \"shipping_country\": \"india\", \"shipping_pincode\": \"201301\"}', '2025-10-23 07:59:37', '2025-10-23 07:59:37'),
(39, 5, NULL, '{\"email\": \"jain.roli92@gmail.com\", \"notes\": \"\", \"phone\": \"9610556265\", \"state\": \"Uttar Pradesh\", \"address\": \"2141 Osimo Mahagun moderne sector 78 Noida, 2141 Osimo\", \"country\": \"india\", \"pincode\": \"201301\", \"shipping_fname\": \"Roli\", \"shipping_lname\": \"Jain\", \"shipping_state\": \"Uttar Pradesh\", \"shipping_address\": \"2141 Osimo Mahagun moderne sector 78 Noida, 2141 Osimo\", \"shipping_country\": \"india\", \"shipping_pincode\": \"201301\"}', '2025-10-23 08:07:19', '2025-10-23 08:07:19'),
(40, 6, NULL, '{\"email\": null, \"notes\": \"\", \"phone\": \"31232432432423432\", \"state\": \"UTTAR PRADESH\", \"address\": \"H.NO. 192 RAM SHYAM ENCLAVE, CHIPIYANA, \", \"country\": \"india\", \"pincode\": \"201009\", \"shipping_fname\": \"L.R.\", \"shipping_lname\": \"COLLEGE\", \"shipping_state\": \"UTTAR PRADESH\", \"shipping_address\": \"H.NO. 192 RAM SHYAM ENCLAVE, CHIPIYANA, \", \"shipping_country\": \"india\", \"shipping_pincode\": \"201009\"}', '2025-10-23 08:09:47', '2025-10-23 08:09:47'),
(41, 0, NULL, '{\"email\": \"singht7878arun@gmail.com\", \"notes\": \"\", \"phone\": \"8810599816\", \"state\": \"Uttar Pradesh\", \"address\": \"Supertech Eco Village 1, Greater Noida West\", \"country\": \"india\", \"pincode\": \"201306\", \"shipping_fname\": \"Prateek\", \"shipping_lname\": \"Dubey\", \"shipping_state\": \"Uttar Pradesh\", \"shipping_address\": \"Supertech Eco Village 1, Greater Noida West\", \"shipping_country\": \"india\", \"shipping_pincode\": \"201306\"}', '2025-10-23 08:13:04', '2025-10-23 08:13:04'),
(42, 7, NULL, '{\"email\": \"rohantesting@yopmail.com\", \"notes\": \"\", \"phone\": \"122121212121\", \"state\": \"UP\", \"address\": \"192, RAM SHYAM ENCLAVE CHIPIYANA, \", \"country\": \"india\", \"pincode\": \"201009\", \"shipping_fname\": \"Rohan\", \"shipping_lname\": \"Verma\", \"shipping_state\": \"UP\", \"shipping_address\": \"192, RAM SHYAM ENCLAVE CHIPIYANA, \", \"shipping_country\": \"india\", \"shipping_pincode\": \"201009\"}', '2025-10-24 03:03:48', '2025-10-24 03:03:48'),
(43, 0, NULL, '{\"email\": \"raghuram.vemula@gmail.com\", \"notes\": \"\", \"phone\": \"9176180001\", \"state\": \"Tamil Nadu\", \"address\": \"No.14, Mothilal street., Tiruvallur\", \"country\": \"india\", \"pincode\": \"602001\", \"shipping_fname\": \"Ram\", \"shipping_lname\": \"Vemula\", \"shipping_state\": \"Tamil Nadu\", \"shipping_address\": \"No.14, Mothilal street., Tiruvallur\", \"shipping_country\": \"india\", \"shipping_pincode\": \"602001\"}', '2025-11-04 07:02:19', '2025-11-04 07:02:19'),
(44, 0, NULL, '{\"email\": \"raghuram.vemula@gmail.com\", \"notes\": \"\", \"phone\": \"9176180001\", \"state\": \"Tamil Nadu\", \"address\": \"No.14, Mothilal Street, Tiruvallur\", \"country\": \"india\", \"pincode\": \"602001\", \"shipping_fname\": \"Ram\", \"shipping_lname\": \"Vemula\", \"shipping_state\": \"Tamil Nadu\", \"shipping_address\": \"No.14, Mothilal Street, Tiruvallur\", \"shipping_country\": \"india\", \"shipping_pincode\": \"602001\"}', '2025-11-04 07:18:18', '2025-11-04 07:18:18'),
(45, 0, NULL, '{\"email\": \"raghuram.vemula@gmail.com\", \"notes\": \"\", \"phone\": \"9176180001\", \"state\": \"Tamil Nadu\", \"address\": \"No.14, Mothilal street, Tiruvallur\", \"country\": \"india\", \"pincode\": \"602001\", \"shipping_fname\": \"Ram\", \"shipping_lname\": \"Vemula\", \"shipping_state\": \"Tamil Nadu\", \"shipping_address\": \"No.14,Mothilal street, Tiruvallur\", \"shipping_country\": \"india\", \"shipping_pincode\": \"602001\"}', '2025-11-04 07:22:48', '2025-11-04 07:22:48'),
(46, 0, NULL, '{\"email\": \"raghuram.vemula@gmail.com\", \"notes\": \"\", \"phone\": \"9176180001\", \"state\": \"Tamil Nadu\", \"address\": \"No.14, Mothilal street, Tiruvallur\", \"country\": \"india\", \"pincode\": \"602001\", \"shipping_fname\": \"Ram\", \"shipping_lname\": \"Vemula\", \"shipping_state\": \"Tamil Nadu\", \"shipping_address\": \"No.14,Mothilal street, Tiruvallur\", \"shipping_country\": \"india\", \"shipping_pincode\": \"602001\"}', '2025-11-04 07:27:14', '2025-11-04 07:27:14'),
(47, 0, NULL, '{\"email\": \"raghuram.vemula@gmail.com\", \"notes\": \"\", \"phone\": \"9176180001\", \"state\": \"Tamil Nadu\", \"address\": \"No.14, Mothilal street, Tiruvallur\", \"country\": \"india\", \"pincode\": \"602001\", \"shipping_fname\": \"Ram\", \"shipping_lname\": \"Vemula\", \"shipping_state\": \"Tamil Nadu\", \"shipping_address\": \"No.14,Mothilal street, Tiruvallur\", \"shipping_country\": \"india\", \"shipping_pincode\": \"602001\"}', '2025-11-04 07:28:00', '2025-11-04 07:28:00'),
(48, 8, NULL, '{\"email\": \"chetanduklansharma@gmail.com\", \"notes\": \"\", \"phone\": \"8287609632\", \"state\": \"Uttar pradesh\", \"address\": \"Sector 46 gardenia glory aims society, B-4 , 1401\", \"country\": \"india\", \"pincode\": \"201301\", \"shipping_fname\": \"Ayush\", \"shipping_lname\": \"Sharma\", \"shipping_state\": \"Uttar pradesh\", \"shipping_address\": \"Sector 46 gardenia glory aims society, B-4 , 1401\", \"shipping_country\": \"india\", \"shipping_pincode\": \"201301\"}', '2025-11-04 16:50:23', '2025-11-04 16:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider_master`
--

CREATE TABLE `slider_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_master`
--

INSERT INTO `slider_master` (`id`, `title`, `subtitle`, `description`, `price`, `url`, `banner_image`, `created_at`, `updated_at`) VALUES
(5, 'Exclusive Collection  in our Online Store', 'Best for your categories', 'Discover our exclusive collection available only in our online store. Shop now for unique and premium items that you won\'t find anywhere else.', '140.00', '#', '1735013367.jpg', '2024-12-24 03:59:04', '2024-12-23 22:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `category`, `title`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 6, 'Dominican Cigar', 'dominican-cigar', NULL, '2025-07-25 08:51:44', '2025-07-29 15:41:14'),
(4, 6, 'Cuban Cigar', 'cuban-cigar', NULL, '2025-07-25 09:24:49', '2025-07-29 15:40:20'),
(5, 6, 'Flavoured Cigars', 'flavoured-cigars', NULL, '2025-07-29 21:11:49', '2025-07-29 15:43:59'),
(6, 5, 'Acrylic Bongs', 'acrylic-bongs', NULL, '2025-07-29 21:14:55', '2025-08-06 07:38:05'),
(7, 3, 'Ashtrays', 'ashtrays', NULL, '2025-07-29 21:15:18', '2025-08-06 07:38:25'),
(9, 7, 'Smoking Glass Pipe Combo', 'smoking-glass-pipe-combo', NULL, '2025-07-29 21:17:16', '2025-07-29 21:17:16'),
(10, 7, 'Wooden Smoking Pipes Combo', 'wooden-smoking-pipes-combo', NULL, '2025-07-29 21:17:32', '2025-07-29 21:17:32'),
(11, 8, 'Glass Bong Percolator', 'glass-bong-percolator', NULL, '2025-07-29 21:18:02', '2025-11-19 09:31:15'),
(12, 4, 'Al Akbar Hookah', 'al-akbar-hookah', NULL, '2025-07-29 21:26:54', '2025-07-29 21:26:54'),
(13, 4, 'Alshan Hookah', 'alshan-hookah', NULL, '2025-07-29 21:28:11', '2025-07-29 21:28:11'),
(14, 4, 'Portable Car Hookah', 'portable-car-hookah', NULL, '2025-07-29 21:29:22', '2025-11-19 09:16:55'),
(15, 4, 'Cocoyaya Hookah', 'cocoyaya-hookah', NULL, '2025-07-29 21:29:54', '2025-07-29 21:29:54'),
(16, 4, 'Deja Vu Hookah', 'deja-vu-hookah', NULL, '2025-07-29 21:30:17', '2025-07-29 21:30:17'),
(17, 4, 'Digital Smoke Hookah', 'digital-smoke-hookah', NULL, '2025-07-29 21:30:57', '2025-07-29 21:30:57'),
(18, 4, 'Dum Hookah', 'dum-hookah', NULL, '2025-07-29 21:31:25', '2025-07-29 21:31:25'),
(19, 4, 'Enrolando Hookah', 'enrolando-hookah', NULL, '2025-07-29 21:31:47', '2025-07-29 21:31:47'),
(20, 4, 'Bottle Hookah', 'bottle-hookah', NULL, '2025-07-29 21:32:09', '2025-11-19 09:18:33'),
(21, 4, 'Mya Hookah', 'mya-hookah', NULL, '2025-07-29 21:32:29', '2025-07-29 21:32:29'),
(22, 4, 'Thugs Hookah', 'thugs-hookah', NULL, '2025-07-29 21:32:48', '2025-07-29 21:32:48'),
(23, 4, 'VG France Foggit Hookah', 'vg-france-foggit-hookah', NULL, '2025-07-29 21:33:08', '2025-07-29 21:33:08'),
(24, 9, 'Hookah Accessories', 'hookah-accessories', NULL, '2025-11-17 12:53:24', '2025-11-17 07:26:37'),
(25, 10, 'Hookah Chillum', 'hookah-chillum', NULL, '2025-11-17 12:53:51', '2025-11-17 07:26:57'),
(29, 11, 'Lighters', 'lighters', NULL, '2025-07-29 21:38:27', '2025-08-06 07:36:55'),
(30, 12, 'Baba Chillum', 'baba-chillum', NULL, '2025-07-29 21:39:21', '2025-07-29 21:39:21'),
(31, 12, 'Cleaning Brush', 'cleaning-brush', NULL, '2025-07-29 21:39:53', '2025-07-29 21:39:53'),
(32, 12, 'Crusher', 'crusher', NULL, '2025-07-29 21:40:10', '2025-07-29 21:40:10'),
(33, 12, 'Filter Screens', 'filter-screens', NULL, '2025-07-29 21:40:24', '2025-07-29 21:40:24'),
(34, 12, 'Glass Bong Shooter', 'glass-bong-shooter', NULL, '2025-07-29 21:40:42', '2025-07-29 21:40:42'),
(35, 12, 'Metal Shooter', 'metal-shooter', NULL, '2025-07-29 21:40:54', '2025-07-29 21:40:54'),
(36, 12, 'Smoking Glass Pipe', 'smoking-glass-pipe', NULL, '2025-07-29 21:41:31', '2025-07-29 21:41:31'),
(37, 12, 'Wooden Smoking Pipe', 'wooden-smoking-pipe', NULL, '2025-07-29 21:41:55', '2025-07-29 21:41:55'),
(38, 4, 'Tobac-Go Hookah', 'tobac-go-hookah', NULL, '2025-09-02 21:37:09', '2025-09-02 21:37:09'),
(39, 13, 'Pipe and Handle', 'pipe-and-handle', NULL, '2025-09-06 14:27:56', '2025-09-06 14:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `title`, `designation`, `comment`, `image`, `created_at`, `updated_at`) VALUES
(6, 'Ankita Otta', 'Customer', 'Best range of collections for hookah n all. Its a hidden gem and the owner is very good at what he does. Great product with reasonable price. Highly recommended.', '1735014733.png', '2023-09-01 03:30:12', '2025-08-06 01:45:15'),
(7, 'One By One', NULL, 'Beautiful hookah collection with best prices around the town. Amazing knowledge. Must try', '1754464567.jpg', '2025-08-06 07:16:07', '2025-08-06 01:46:28'),
(8, 'Ashish Chaudhary', NULL, 'Amazing place for all your hookah needs ... Great ambience , very good customer interaction and amazing prices.', '1754464655.jpg', '2025-08-06 07:17:35', '2025-08-06 07:17:35'),
(9, 'Shubham Khandelwal', NULL, 'One Stop Shop for hookah lovers. Tobac-go is a hidden gem! The owner provide outstanding service. The shisha selection is diverse and of top-notch quality. Owner takes the time to ensure each customer feels valued and satisfied. Whether you\'re a hookah enthusiast or a first-timer, this place guarantees a good experience. Highly recommended for anyone seeking the best hookah shop in town!', '1754464704.jpg', '2025-08-06 07:18:24', '2025-08-06 07:18:24'),
(10, 'Zeeshan Ahmed', NULL, 'I bought two sheeshas, both of them are excellent, wonderful and amazing. Their staff behavior was so good. Nice shop nice environment, everything is perfect. They have lots of variety for sheeshas, flavour and many more accessories. Good deal for me and maybe next time for yours….Go and check out guys….❤️', '1754464853.jpg', '2025-08-06 07:20:53', '2025-08-06 07:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', NULL, '$2a$10$HoW1zCz34Q2C8s3HhWtlKe0Fq96qvU1Rn/rt0loACjAFxUacgIpDe', NULL, NULL, NULL),
(2, 'techonika.com@gmail.com', NULL, '$2y$10$PWqGJjrtPne2SceB6SpxpehTdKweqfD096hrUhskomQ1EpeU1RaKO', NULL, '2025-10-24 05:13:17', '2025-10-24 05:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `title`, `code`, `created_at`, `updated_at`) VALUES
(3, 'Blue', '#0007db', '2025-07-22 10:24:09', '2025-07-22 04:54:21'),
(4, 'Red', '#ff0000', '2025-07-22 10:24:36', '2025-07-22 10:24:36'),
(5, 'Black', '#000000', '2025-07-28 11:05:23', '2025-07-28 11:05:23'),
(6, 'Gold', '#f9dd3e', '2025-07-31 19:29:17', '2025-07-31 19:29:17'),
(7, 'Light Shade', '#bdc4c2', '2025-07-31 19:30:08', '2025-07-31 19:30:08'),
(8, 'Dark Shade', '#363636', '2025-07-31 19:31:03', '2025-07-31 19:31:03'),
(9, 'White', '#ffffff', '2025-07-31 19:31:29', '2025-07-31 19:31:29'),
(10, 'Orange', '#ff8000', '2025-07-31 19:33:03', '2025-07-31 19:33:03'),
(11, 'Purple', '#ff00ff', '2025-07-31 19:33:24', '2025-07-31 19:33:24'),
(12, 'Green', '#00ff00', '2025-07-31 19:33:41', '2025-07-31 19:33:41'),
(13, 'Light Green', '#000000', '2025-07-31 19:33:56', '2025-07-31 19:33:56'),
(14, 'Bottle Green', '#000000', '2025-07-31 19:34:17', '2025-07-31 19:34:17'),
(15, 'Pink', '#000000', '2025-07-31 19:34:58', '2025-07-31 19:34:58'),
(16, 'Baby Pink', '#000000', '2025-07-31 19:35:09', '2025-07-31 19:35:09'),
(17, 'Multicolor 1', '#000000', '2025-07-31 19:35:38', '2025-07-31 19:35:38'),
(18, 'Clear', '#000000', '2025-07-31 19:36:15', '2025-07-31 19:36:15'),
(19, 'Brown', '#000000', '2025-07-31 19:36:39', '2025-07-31 19:36:39'),
(20, 'Default', '#000000', '2025-07-31 19:37:38', '2025-07-31 19:37:38'),
(21, 'Crystal', '#000000', '2025-08-01 12:30:47', '2025-08-01 12:30:47'),
(22, 'Silver', '#000000', '2025-08-01 23:51:15', '2025-08-01 23:51:15'),
(23, 'Single Stick', '#000000', '2025-08-04 12:51:27', '2025-08-04 12:51:27'),
(24, 'Box of 5', '#000000', '2025-08-04 12:51:41', '2025-08-04 12:51:41'),
(25, 'Box of 26', '#000000', '2025-08-04 12:52:01', '2025-08-04 12:52:01'),
(26, 'Bronze', '#000000', '2025-08-04 20:33:53', '2025-08-04 20:33:53'),
(27, 'Multicolor 2', '#000000', '2025-08-11 13:15:47', '2025-08-11 13:15:47'),
(28, 'Red & Blue', '#000000', '2025-08-11 13:16:13', '2025-08-11 13:16:13'),
(29, 'Orange & Green', '#000000', '2025-08-11 13:16:30', '2025-08-11 13:16:30'),
(30, 'Red & Blue Marble', '#000000', '2025-08-11 13:16:56', '2025-08-11 13:16:56'),
(31, 'Red & Blue Marble 2', '#000000', '2025-08-11 13:17:17', '2025-08-11 13:17:17'),
(32, 'Light Blue', '#000000', '2025-08-12 11:48:48', '2025-08-12 11:48:48'),
(33, 'Blue & Green', '#000000', '2025-08-12 17:56:30', '2025-08-12 17:56:30'),
(34, 'Yellow', '#000000', '2025-08-13 11:18:25', '2025-08-13 11:18:25'),
(35, 'Light Brown', '#000000', '2025-08-13 18:16:04', '2025-08-13 18:16:04'),
(36, 'Matte Grey', '#000000', '2025-08-14 18:58:11', '2025-08-14 18:58:11'),
(37, 'Cream', '#000000', '2025-08-14 19:40:03', '2025-08-14 19:40:03'),
(38, 'Grey', '#000000', '2025-08-14 20:04:07', '2025-08-14 20:04:07'),
(39, 'Lemon Yellow', '#000000', '2025-09-02 21:55:14', '2025-09-02 21:55:14'),
(40, 'Sea Green', '#000000', '2025-09-02 21:57:51', '2025-09-02 21:57:51'),
(41, 'Coffee', '#000000', '2025-09-02 21:58:47', '2025-09-02 21:58:47'),
(42, 'Rose Gold', '#000000', '2025-09-02 21:59:32', '2025-09-02 21:59:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_settings`
--
ALTER TABLE `contact_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variance_data`
--
ALTER TABLE `product_variance_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saved_address`
--
ALTER TABLE `saved_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_master`
--
ALTER TABLE `slider_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact_settings`
--
ALTER TABLE `contact_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1347;

--
-- AUTO_INCREMENT for table `product_variance_data`
--
ALTER TABLE `product_variance_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=829;

--
-- AUTO_INCREMENT for table `saved_address`
--
ALTER TABLE `saved_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider_master`
--
ALTER TABLE `slider_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
