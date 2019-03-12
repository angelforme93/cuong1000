-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2019 at 02:43 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baitap1`
--

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
(3, '2017_01_20_081442_vp_user', 1),
(4, '2017_01_21_095513_vp_categories', 2),
(5, '2017_01_22_063102_vp_products', 3),
(6, '2017_01_23_102348_vp_comment', 4);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vp_bill`
--

CREATE TABLE `vp_bill` (
  `id` int(8) NOT NULL,
  `email` varchar(200) NOT NULL,
  `hoten` varchar(200) NOT NULL,
  `sdt` int(11) NOT NULL,
  `diachi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vp_bill`
--

INSERT INTO `vp_bill` (`id`, `email`, `hoten`, `sdt`, `diachi`) VALUES
(6, 'cuongngoan210393@gmail.com', 'cuong', 1634428213, '242 Minh khai'),
(7, 'nguyencuong@gmail.com', 'giam can', 1634428213, '242 Minh khai'),
(8, 'nguyencuong@gmail.com', 'giam can', 1634428213, '242 Minh khai'),
(9, 'nguyencuong@gmail.com', 'giam can', 1634428213, '242 Minh khai'),
(10, 'angelforme93@gmail.com', 'Nguyễn Văn Cường', 1634428213, '242 Minh khai'),
(11, 'angelforme93@gmail.com', 'Nguyễn Văn Cường', 1634428213, '242 Minh khai'),
(12, 'cuongngoan210393@gmail.com', 'Nguyễn Văn Cường', 1634428213, '242 Minh khai'),
(13, 'cuongngoan21039311@gmail.com', 'Nguyễn Văn Cường', 1634428213, '242 Minh khai'),
(14, 'angelforme93@gmail.com', 'Nguyễn Văn Cường', 1634428213, '242 Minh khai'),
(15, 'nguyencuong@gmail.com', 'Nguyễn Văn Cường', 1634428213, '242 Minh khai'),
(16, 'vietpro@gmail.com', 'Iphone', 1634428213, '242 Minh khai');

-- --------------------------------------------------------

--
-- Table structure for table `vp_categories`
--

CREATE TABLE `vp_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vp_categories`
--

INSERT INTO `vp_categories` (`id`, `cate_name`, `cate_slug`, `parent`, `created_at`, `updated_at`) VALUES
(1, 'iPhone', 'iphone', 0, NULL, NULL),
(2, 'Samsung', 'samsung', 0, NULL, NULL),
(6, 'Sony', 'sony', 0, '2017-01-21 03:58:59', '2017-06-25 20:55:51'),
(8, 'HTC', 'htc', 0, '2017-01-21 03:59:18', '2017-06-25 20:57:01'),
(9, 'Sony', 'sony', 0, '2017-01-21 03:59:23', '2017-01-21 03:59:23'),
(11, 'OPPO', 'oppo', 0, '2017-06-25 19:40:32', '2017-06-25 19:40:32'),
(12, 'iphone 7', 'iphone-7', 1, '2017-06-25 20:21:29', '2017-06-25 20:21:29'),
(14, 'Iphone 8', 'iphone-8', 1, '2017-06-25 20:45:07', '2017-06-25 20:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `vp_chitietbi`
--

CREATE TABLE `vp_chitietbi` (
  `id` int(8) NOT NULL,
  `qty` int(8) NOT NULL,
  `price` decimal(60,0) NOT NULL,
  `id_bill` varchar(200) NOT NULL,
  `id_sp` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vp_chitietbi`
--

INSERT INTO `vp_chitietbi` (`id`, `qty`, `price`, `id_bill`, `id_sp`) VALUES
(3, 1, '11990000', 'cuongngoan210393@gmail.com', 4),
(4, 1, '11990000', 'cuongngoan210393@gmail.com', 5),
(5, 6, '5000000', 'nguyencuong@gmail.com', 14),
(6, 6, '5000000', 'angelforme93@gmail.com', 14),
(7, 6, '5000000', 'angelforme93@gmail.com', 14),
(8, 6, '5000000', 'cuongngoan210393@gmail.com', 14),
(9, 6, '5000000', 'cuongngoan21039311@gmail.com', 14),
(10, 6, '5000000', 'angelforme93@gmail.com', 14),
(11, 6, '5000000', 'nguyencuong@gmail.com', 14),
(12, 6, '5000000', 'vietpro@gmail.com', 14);

-- --------------------------------------------------------

--
-- Table structure for table `vp_comment`
--

CREATE TABLE `vp_comment` (
  `com_id` int(10) UNSIGNED NOT NULL,
  `com_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `com_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `com_content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `com_product` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vp_comment`
--

INSERT INTO `vp_comment` (`com_id`, `com_email`, `com_name`, `com_content`, `com_product`, `created_at`, `updated_at`) VALUES
(1, 'vietpro@gmail.com', 'Vietpro', 'Sản phẩm còn hàng không vậy?', 11, '2017-01-23 03:42:41', '2017-01-23 03:42:41'),
(2, 'dinhcongsang@gmail.com', 'sang', 'sam pham chat luong tot', 2, '2017-01-23 03:45:57', '2017-04-07 02:19:52'),
(3, 'vietpro@gmail.com', 'vietpro', 'mau ma dep', 2, '2017-04-07 02:20:46', '2017-04-07 02:20:46'),
(17, 'dinhcongsang92@gmail.com', 'dinh sang', 'thiết kế ẩn tượng, cấu hình tốt trong tầm giá', 3, '2017-04-09 09:08:40', '2017-04-09 09:08:40'),
(18, 'thanhhong@gmail.com', 'hong bui', 'giá đắt quá', 3, '2017-04-09 09:09:59', '2017-04-09 09:09:59'),
(20, 'dinhcongsang@gmail.com', 'sang', 'thiet ke an tuong', 2, '2017-04-10 04:20:23', '2017-04-10 04:20:23'),
(26, 'vietpro@gmail.com', 'viet', 'dep', 2, '2019-03-01 11:40:41', '2019-03-01 11:40:41'),
(27, 'cuongngoan210393@gmail.com', 'ds', 'ds', 2, '2019-03-01 11:42:21', '2019-03-01 11:42:21'),
(28, 'ads@gmail.com', 'Nguyễn Văn Cường', 'wq', 2, '2019-03-01 11:42:54', '2019-03-01 11:42:54'),
(29, 'angelforme93@gmail.com', 'Nguyễn Văn Cường - ADS', 'sds', 2, '2019-03-01 11:44:03', '2019-03-01 11:44:03'),
(30, 'angelforme93@gmail.com', 'Nguyễn Văn Cường', '21', 2, '2019-03-01 11:50:45', '2019-03-01 11:50:45'),
(31, 'angelforme93@gmail.com', '21', 'ưq', 2, '2019-03-01 12:07:07', '2019-03-01 12:07:07'),
(32, 'angelforme93@gmail.com', '21', 'ưq', 2, '2019-03-01 12:10:10', '2019-03-01 12:10:10'),
(33, 'angelforme93@gmail.com', '21', 'ưq', 2, '2019-03-01 12:28:35', '2019-03-01 12:28:35'),
(34, 'cuongngoan210393@gmail.com', 'Nguyễn Văn Cường - ADS', '1312421414', 2, '2019-03-01 12:30:08', '2019-03-01 12:30:08'),
(35, 'cuongngoan210393@gmail.com', 'Nguyễn Văn Cường', '123214', 2, '2019-03-01 12:43:01', '2019-03-01 12:43:01'),
(36, 'cuongngoan210393@gmail.com', 'Nguyễn Văn Cường', '141412414', 2, '2019-03-01 12:43:50', '2019-03-01 12:43:50'),
(37, 'cuongngoan210393@gmail.com', 'Nguyễn Văn Cường', 'test', 2, '2019-03-01 12:44:21', '2019-03-01 12:44:21'),
(38, 'cuongngoan210393@gmail.com', 'Nguyễn Văn Cường', 'test', 2, '2019-03-01 12:45:20', '2019-03-01 12:45:20'),
(39, 'vietpro@gmail.com', '12', 'sa', 3, '2019-03-02 07:27:58', '2019-03-02 07:27:58'),
(40, 'vietpro@gmail.com', 'Iphone', 'qư', 3, '2019-03-02 07:29:07', '2019-03-02 07:29:07'),
(41, 'ads@gmail.com', '1', 'sa', 3, '2019-03-02 07:30:13', '2019-03-02 07:30:13'),
(42, 'vietpro@gmail.com', '12', 'ưq', 3, '2019-03-02 07:30:53', '2019-03-02 07:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `vp_products`
--

CREATE TABLE `vp_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `prod_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_warranty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_accessories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_condition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_promotion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prod_status` tinyint(4) NOT NULL,
  `prod_description` text COLLATE utf8_unicode_ci NOT NULL,
  `prod_featured` tinyint(4) NOT NULL,
  `prod_cate` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vp_products`
--

INSERT INTO `vp_products` (`id`, `prod_name`, `prod_slug`, `prod_price`, `prod_img`, `prod_warranty`, `prod_accessories`, `prod_condition`, `prod_promotion`, `prod_status`, `prod_description`, `prod_featured`, `prod_cate`, `created_at`, `updated_at`) VALUES
(2, 'IPhone 7s', 'iphone-7s', 11990000, 'product-1.png', '12 tháng', 'Sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán cường lực', 0, '<p>Sản phẩm mới 100% được bảo h&agrave;nh 12 th&aacute;ng tại Vietproshop, đổi mới 30 ng&agrave;y đầu sử dụng.</p>\r\n', 1, 1, '2017-01-22 00:55:39', '2017-06-30 05:30:47'),
(3, 'IPhone 7 P', 'iphone-7-plus', 11990000, 'product-1.png', '12 tháng', 'Sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán cường lực', 1, '<p>Sản phẩm mới 100% được bảo h&agrave;nh 12 th&aacute;ng tại Vietproshop, đổi mới 30 ng&agrave;y đầu sử dụng.</p>\r\n', 1, 1, '2017-01-22 00:56:23', '2017-06-30 05:28:54'),
(4, 'IPhone 6S', 'iphone-6s', 11990000, 'product-1.png', '12 tháng', 'Sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán cường lực', 1, '', 1, 1, '2017-01-22 00:57:13', '2017-06-30 05:29:02'),
(5, 'IPhone 6', 'iphone-6', 11990000, 'product-1.png', '12 tháng', 'Sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán cường lực', 1, '<p>Sản phẩm mới 100% được bảo h&agrave;nh 12 th&aacute;ng tại Vietproshop, đổi mới 30 ng&agrave;y đầu sử dụng.</p>\r\n', 1, 1, '2017-01-22 00:57:45', '2017-06-30 05:29:09'),
(7, 'IPhone 6S ', 'iphone-6s-plus', 11990000, 'product-1.png', '12 tháng', 'Sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán cường lực', 1, '', 1, 1, '2017-01-22 00:59:42', '2017-06-30 05:29:17'),
(8, 'IPhone 5', 'iphone-5', 11990000, 'product-1.png', '12 tháng', 'Sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán cường lực', 1, '<p>Sản phẩm mới 100% được bảo h&agrave;nh 12 th&aacute;ng tại Vietproshop, đổi mới 30 ng&agrave;y đầu sử dụng.</p>\r\n', 0, 1, '2017-01-22 01:00:49', '2017-06-30 05:29:24'),
(9, 'IPhone 5S', 'iphone-5s', 11990000, 'product-1.png', '12 tháng', 'Sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán cường lực', 1, '', 1, 1, '2017-01-22 01:01:21', '2017-06-30 05:29:31'),
(10, 'IPhone 4', 'iphone-4', 11990000, 'product-1.png', '12 tháng', 'Sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán cường lực', 1, '<p>Sản phẩm mới 100% được bảo h&agrave;nh 12 th&aacute;ng tại Vietproshop, đổi mới 30 ng&agrave;y đầu sử dụng.</p>\r\n', 1, 1, '2017-01-22 01:02:17', '2017-06-30 05:29:38'),
(11, 'IPhone 4S', 'iphone-4s', 11990000, 'product-1.png', '12 tháng', 'Sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán cường lực', 1, '<p>Sản phẩm mới 100% được bảo h&agrave;nh 12 th&aacute;ng tại Vietproshop, đổi mới 30 ng&agrave;y đầu sử dụng.</p>\r\n', 0, 1, '2017-01-22 01:03:04', '2017-06-30 05:29:45'),
(13, 'HTC 10', 'htc-10', 11990000, 'product-3.png', '12 tháng', 'Sạc, cáp, tai nghe', 'Máy mới 100%', 'Dán cường lực', 1, '<p>Sản phẩm mới 100% được bảo h&agrave;nh 12 th&aacute;ng tại Vietproshop, đổi mới 30 ng&agrave;y đầu sử dụng.</p>\r\n', 1, 1, '2017-01-22 01:03:51', '2017-06-30 05:29:53'),
(14, 'sangsung', 'sangsung', 5000000, 'product-2.png', '12 tháng', 'Fullbox', 'Mới 100%', 'Cục sạc dự phòng 10000mha', 1, '<p>Thiết kế sang trọng, cấu h&igrave;nh cao cấp</p>\r\n', 0, 2, '2017-04-06 07:14:20', '2017-06-30 05:32:40'),
(31, 'samsung A3', 'samsung-a3', 5000000, 'product-2.png', 'dsdsd', 'sdsd', 'dsdsd', 'dsdsds', 1, '<p>dsdd</p>\r\n', 0, 2, '2017-06-27 20:00:00', '2017-06-30 05:33:01'),
(32, 'samsung A5', 'samsung-a5', 5000000, 'product-2.png', 'asasas', 'sasasa', 'sasas', 'asa', 1, '<p>sass</p>\r\n', 0, 2, '2017-06-28 05:53:17', '2017-06-30 05:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `vp_users`
--

CREATE TABLE `vp_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vp_users`
--

INSERT INTO `vp_users` (`id`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'vietpro@gmail.com', '$2y$10$Sj85rm7hS3FrcEUcBubLpO4wwAuR.XQhUJi5o3ha1KsCPNMPID8du', 1, '0gbEHTPoqV2YASxwA4tgXyzOGnNYIsADdcxaJbqlIkQoJc99wLsxSp7BLS70', NULL, '2017-06-20 20:54:39'),
(2, 'admin@gmail.com', '$2y$10$khtRKtqKqLAsP9SPC8Gmge9MjPgqA9fNnmZRo4L6rX6dJ6.W4U8W6', 1, 'kOZE3Xq2Vo6daWGtImvpDMJaQuqMb7UMJ9LEbTMud8SUKmBpTbc6aDHFrGw3', NULL, '2017-04-24 15:16:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vp_bill`
--
ALTER TABLE `vp_bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vp_categories`
--
ALTER TABLE `vp_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vp_chitietbi`
--
ALTER TABLE `vp_chitietbi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vp_comment`
--
ALTER TABLE `vp_comment`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `vp_comment_com_product_foreign` (`com_product`);

--
-- Indexes for table `vp_products`
--
ALTER TABLE `vp_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vp_products_prod_cate_foreign` (`prod_cate`);

--
-- Indexes for table `vp_users`
--
ALTER TABLE `vp_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vp_bill`
--
ALTER TABLE `vp_bill`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `vp_categories`
--
ALTER TABLE `vp_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vp_chitietbi`
--
ALTER TABLE `vp_chitietbi`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vp_comment`
--
ALTER TABLE `vp_comment`
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `vp_products`
--
ALTER TABLE `vp_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `vp_users`
--
ALTER TABLE `vp_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vp_comment`
--
ALTER TABLE `vp_comment`
  ADD CONSTRAINT `vp_comment_com_product_foreign` FOREIGN KEY (`com_product`) REFERENCES `vp_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vp_products`
--
ALTER TABLE `vp_products`
  ADD CONSTRAINT `vp_products_prod_cate_foreign` FOREIGN KEY (`prod_cate`) REFERENCES `vp_categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
