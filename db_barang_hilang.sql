-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2019 at 05:21 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_barang_hilang`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventors`
--

CREATE TABLE `inventors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rombel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rayon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tempat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventors`
--

INSERT INTO `inventors` (`id`, `nis`, `nama`, `rombel`, `rayon`, `item_name`, `item_size`, `merk`, `tempat`, `status`, `created_at`, `updated_at`) VALUES
(2, 11605581, 'Mila Safitri', 'RPL XII-4', 'CIC 1', 'Laptooop', 'I7', 'ASUS', '407', 2, '2019-07-16 18:43:20', '2019-07-25 18:30:40'),
(3, 11605631, 'ikiw', 'RPL', 'Tajur 2', 'HP', 'kecil', 'iphone', '210', 2, '2019-07-18 20:37:14', '2019-07-18 20:52:22'),
(4, 11605581, 'Mila Safitri', 'RPL XII-4', 'CIC 1', 'baju', 'besarrrr', 'Adidas', '507', 1, '2019-08-02 00:39:40', '2019-08-02 02:10:33'),
(5, 11605581, 'Mila Safitri', 'RPL XII-4', 'CIC 1', 'Jaket', 'S', 'Adidas', '120', 1, '2019-08-07 19:27:04', '2019-08-07 19:27:04'),
(6, 0, 'rei', 'apk', 'tajur1', 'keyboard', 'gede', 'toshiba', '207', 2, NULL, NULL),
(7, 11605543, 'Putri Permatasari', 'APK X-1', 'TAJUR 20', 'pensil', 'TAJUR 20', 'standar', '204', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_15_023241_create_inventors_table', 1),
(4, '2019_07_15_023325_create_siswas_table', 1),
(5, '2019_07_15_023421_create_owners_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rombel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rayon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`id`, `nis`, `nama`, `rombel`, `rayon`, `item_name`, `item_size`, `merk`, `status`, `created_at`, `updated_at`) VALUES
(1, 11605631, 'ikiw', 'RPL', 'Tajur 2', 'lunch box', 'Sedang', 'Tupperware', 2, '2019-07-15 23:06:58', '2019-07-15 23:06:58'),
(2, 11605581, 'Mila Safitri', 'RPL XII-4', 'CIC 1', 'HP', 'kecil', 'iphone', 2, '2019-07-18 20:52:22', '2019-07-18 20:52:22'),
(3, 11605631, 'ikiw', 'RPL', 'Tajur 2', 'Laptooop', 'I7', 'ASUS', 2, '2019-07-25 18:30:40', '2019-07-25 18:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jk` int(11) NOT NULL,
  `rombel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rayon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `siswas`
--

INSERT INTO `siswas` (`id`, `nis`, `nama`, `jk`, `rombel`, `rayon`, `created_at`, `updated_at`) VALUES
(1, 11605581, 'Mila Safitri', 1, 'RPL XII-4', 'CIC 1', NULL, NULL),
(2, 11605631, 'ikiw', 2, 'RPL ', 'Tajur 2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ridwan Reza Budiono ', 'admin', 'admin', NULL, NULL, NULL),
(2, 'ucok', 'ucok123', 'ucok123', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventors`
--
ALTER TABLE `inventors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventors`
--
ALTER TABLE `inventors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
