-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2021 at 12:50 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `getak`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sadi', 'sadi.ashlaq@getak.com', NULL, '$2y$10$rFL38HpVPpQ0CN3APoIa/eimGJ/Kbe/6ZtXIZiBO3VSsooD6bBqfu', 'super', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Brand_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Brand_Image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `Brand_Name`, `Brand_Image`, `created_at`, `updated_at`) VALUES
(1, 'Apple', '1619651627.jpg', '2021-04-28 20:13:47', '2021-04-28 20:13:47'),
(2, 'Samsung', '1619651645.jpg', '2021-04-28 20:14:05', '2021-04-28 20:14:05'),
(3, 'Huawei', '1619651663.png', '2021-04-28 20:14:23', '2021-04-28 20:14:23'),
(4, 'LG', '1619651676.jpg', '2021-04-28 20:14:36', '2021-04-28 20:14:36'),
(5, 'Sony', '1619651695.jpg', '2021-04-28 20:14:55', '2021-04-28 20:14:55'),
(6, 'Xiaomi', '1619651713.jpg', '2021-04-28 20:15:13', '2021-04-28 20:15:13');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@mail.com', 'fffffffffffffffffffffffffffffffff', '2021-04-30 12:43:42', '2021-04-30 12:43:42');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Offer_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Offer_Price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Offer_Description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserPhone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Device` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Damage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AppointmentTime` datetime DEFAULT NULL,
  `Location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Latitude: 32.0342874\n            Longitude: 35.883024',
  `Price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `Username`, `UserPhone`, `Device`, `Color`, `Damage`, `AppointmentTime`, `Location`, `Price`, `created_at`, `updated_at`) VALUES
(1, 'john doe', '0777777777', 'iPhone 6', 'Black', '{\"Broken_Screen\":\"on\",\"Water_Damage\":\"on\"}', '2021-04-22 02:33:00', 'Latitude: 32.0342874\n            Longitude: 35.883024', '49', '2021-04-28 20:39:28', '2021-04-28 20:39:28'),
(2, 'test', '0777777777', 'iPhone 7', 'Ros Gold', '{\"Broken_Screen\":\"on\",\"Speaker_Doesnt_Work\":\"on\"}', '2021-04-22 03:34:00', 'Latitude: 32.0342874\n            Longitude: 35.883024', '37', '2021-04-30 12:45:54', '2021-04-30 12:45:54');

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Phone_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone_Image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `Phone_Name`, `brand_id`, `Phone_Image`, `created_at`, `updated_at`) VALUES
(1, 'iPhone 6', '1', '1619652652.jpg', '2021-04-28 20:30:52', '2021-04-28 20:30:52'),
(2, 'iPhone 6 Plus', '1', '1619652677.jpg', '2021-04-28 20:31:17', '2021-04-28 20:31:17'),
(3, 'iPhone 6s', '1', '1619652699.jpg', '2021-04-28 20:31:39', '2021-04-28 20:31:39'),
(4, 'iPhone 6s Plus', '1', '1619652717.jpg', '2021-04-28 20:31:57', '2021-04-28 20:31:57'),
(5, 'iPhone 7', '1', '1619652744.jpg', '2021-04-28 20:32:24', '2021-04-28 20:32:24'),
(6, 'iPhone 7 Plus', '1', '1619652760.jpg', '2021-04-28 20:32:40', '2021-04-28 20:32:40'),
(7, 'iPhone 8', '1', '1619652775.png', '2021-04-28 20:32:55', '2021-04-28 20:32:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'john doe', 'john@mail.come', NULL, '$2y$10$F25uruftMUz7DsPimxDZxuNotBCjfHiwEZh.72igArfNT.Nql8BbS', '0777777777', NULL, '2021-04-28 20:35:42', '2021-04-28 20:35:42'),
(2, 'test', 'test@mail.com', NULL, '$2y$10$RDKpEIFdp2OOfUFJ7iN.ruTgbUCLqFAeBsd/CyPYJKAPRZTRdmmQ6', '0777777777', NULL, '2021-04-30 12:44:21', '2021-04-30 12:44:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
