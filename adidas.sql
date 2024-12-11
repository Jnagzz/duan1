-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 10, 2024 at 07:30 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adidas`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int NOT NULL,
  `tai_khoan_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `tai_khoan_id`) VALUES
(2, 1),
(3, 3),
(4, 5),
(5, 6),
(6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `id` int NOT NULL,
  `gio_hang_id` int NOT NULL,
  `san_pham_id` int NOT NULL,
  `so_luong` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart_details`
--

INSERT INTO `cart_details` (`id`, `gio_hang_id`, `san_pham_id`, `so_luong`) VALUES
(1, 2, 1, 8),
(2, 2, 2, 1),
(3, 3, 2, 1),
(4, 3, 1, 1),
(5, 4, 3, 5),
(6, 4, 2, 1),
(7, 4, 4, 1),
(8, 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` int NOT NULL,
  `ten_danh_muc` varchar(255) NOT NULL,
  `mo_ta` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `ten_danh_muc`, `mo_ta`) VALUES
(2, 'Giày chạy bộ', '123'),
(4, 'Giày đấ bóng', '123');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `san_pham_id` int NOT NULL,
  `tai_khoan_id` int NOT NULL,
  `noi_dung` text NOT NULL,
  `ngay_dang` date NOT NULL,
  `trang_thai` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `san_pham_id`, `tai_khoan_id`, `noi_dung`, `ngay_dang`, `trang_thai`) VALUES
(1, 1, 1, 'xin chao', '2024-11-21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `ma_don_hang` varchar(50) NOT NULL,
  `tai_khoan_id` int NOT NULL,
  `ten_nguoi_nhan` varchar(255) NOT NULL,
  `email_nguoi_nhan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sdt_nguoi_nhan` varchar(15) NOT NULL,
  `dia_chi_nguoi_nhan` text NOT NULL,
  `ngay_dat` date NOT NULL,
  `tong_tien` decimal(10,2) NOT NULL,
  `ghi_chu` text,
  `phuong_thuc_thanh_toan_id` int NOT NULL,
  `trang_thai_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ma_don_hang`, `tai_khoan_id`, `ten_nguoi_nhan`, `email_nguoi_nhan`, `sdt_nguoi_nhan`, `dia_chi_nguoi_nhan`, `ngay_dat`, `tong_tien`, `ghi_chu`, `phuong_thuc_thanh_toan_id`, `trang_thai_id`) VALUES
(3, 'DH-6263', 5, 'daldka   ', 'khach2@gmail.com', '012371   ', 'ha noi   ', '2024-12-03', '7230000.00', '', 1, 2),
(4, 'DH-2843', 5, 'daldka   ', 'khach2@gmail.com', '012371   ', 'ha noi   ', '2024-12-04', '8230000.00', '', 1, 8),
(5, 'DH-7676', 7, 'c@gmail.com    ', 'c@gmail.com', '01237113    ', 'hn    ', '2024-12-04', '30000.00', '', 1, 4),
(6, 'DH-9737', 7, 'c@gmail.com', 'c@gmail.com', '01237113', 'hn', '2024-12-04', '30000.00', '', 1, 1),
(7, 'DH-5160', 7, 'c@gmail.com ', 'c@gmail.com', '01237113 ', 'hn ', '2024-12-04', '30000.00', '', 1, 2),
(8, 'DH-6266', 7, 'c@gmail.com', 'c@gmail.com', '01237113', 'hn', '2024-12-04', '30000.00', '', 1, 1),
(9, 'DH-3998', 7, 'c@gmail.com', 'c@gmail.com', '01237113', 'hn', '2024-12-04', '30000.00', '', 1, 1),
(10, 'DH-4160', 7, 'c@gmail.com', 'c@gmail.com', '01237113', 'hn', '2024-12-04', '1030000.00', '', 1, 1),
(11, 'DH-5888', 7, 'c@gmail.com', 'c@gmail.com', '01237113', 'hn', '2024-12-04', '1030000.00', '', 1, 1),
(12, 'DH-6210', 7, 'c@gmail.com', 'c@gmail.com', '01237113', 'hn', '2024-12-04', '1030000.00', '', 1, 1),
(13, 'DH-1080', 7, 'c@gmail.com', 'c@gmail.com', '01237113', 'hn', '2024-12-04', '1030000.00', '', 1, 1),
(14, 'DH-3371', 7, 'c@gmail.com', 'c@gmail.com', '01237113', 'hn', '2024-12-04', '30000.00', '', 1, 1),
(15, 'DH-9301', 7, 'c@gmail.com', 'c@gmail.com', '01237113', 'hn', '2024-12-04', '1230000.00', '', 1, 1),
(16, 'DH-6042', 7, 'c@gmail.com', 'c@gmail.com', '01237113', 'hn', '2024-12-04', '30000.00', '', 1, 1),
(17, 'DH-9518', 7, 'c@gmail.com', 'c@gmail.com', '01237113', 'hn', '2024-12-04', '30000.00', '', 1, 1),
(18, 'DH-5049', 7, 'c@gmail.com', 'c@gmail.com', '01237113', 'hn', '2024-12-04', '30000.00', '', 1, 1),
(19, 'DH-4807', 7, 'c@gmail.com', 'c@gmail.com', '01237113', 'hn', '2024-12-04', '1030000.00', '', 1, 1),
(20, 'DH-7993', 7, 'c@gmail.com  ', 'c@gmail.com', '01237113  ', 'hn  ', '2024-12-04', '1030000.00', '', 1, 3),
(21, 'DH-9110', 7, 'c@gmail.com  ', 'c@gmail.com', '01237113  ', 'hn  ', '2024-12-04', '3230000.00', '', 1, 9),
(22, 'DH-2715', 7, 'c@gmail.com', 'c@gmail.com', '01237113', 'hn', '2024-12-09', '1230000.00', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int NOT NULL,
  `don_hang_id` int NOT NULL,
  `san_pham_id` int NOT NULL,
  `don_gia` decimal(10,2) NOT NULL,
  `so_luong` int NOT NULL,
  `thanh_tien` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `don_hang_id`, `san_pham_id`, `don_gia`, `so_luong`, `thanh_tien`) VALUES
(2, 0, 5, '5000000.00', 5, '5000000.00'),
(3, 0, 6, '1000000.00', 1, '1000000.00'),
(4, 0, 7, '1200000.00', 1, '1200000.00'),
(5, 0, 5, '5000000.00', 5, '5000000.00'),
(6, 0, 6, '1000000.00', 1, '1000000.00'),
(7, 0, 7, '1200000.00', 1, '1200000.00'),
(8, 0, 8, '1000000.00', 1, '1000000.00'),
(24, 10, 1, '1000000.00', 1, '1000000.00'),
(25, 11, 2, '1000000.00', 1, '1000000.00'),
(26, 12, 3, '1000000.00', 1, '1000000.00'),
(27, 13, 3, '1000000.00', 1, '1000000.00'),
(28, 15, 4, '1200000.00', 1, '1200000.00'),
(29, 19, 1, '1000000.00', 1, '1000000.00'),
(30, 20, 1, '1000000.00', 1, '1000000.00'),
(31, 21, 2, '1000000.00', 1, '1000000.00'),
(32, 21, 3, '1000000.00', 1, '1000000.00'),
(33, 21, 4, '1200000.00', 1, '1200000.00'),
(34, 22, 4, '1200000.00', 1, '1200000.00');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int NOT NULL,
  `ten_trang_thai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `ten_trang_thai`) VALUES
(1, 'Chưa xác nhận'),
(2, 'Đã xác nhận\r\n'),
(3, 'Chưa thanh toán'),
(4, 'Đã thanh toán'),
(5, 'Đang chuẩn bị hàng'),
(6, 'Đang giao'),
(7, 'Đã giao'),
(8, 'Đã nhận'),
(9, 'Thành công'),
(10, 'Hoàn hàng'),
(11, 'Hủy đơn');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int NOT NULL,
  `ten_phuong_thuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `ten_phuong_thuc`) VALUES
(1, 'COD(Thanh toán khi nhận hàng)'),
(2, 'Thanh toán VNPay');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int NOT NULL,
  `ten_chuc_vu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `ten_chuc_vu`) VALUES
(1, 'admin'),
(2, 'Khach Hang');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `ten_san_pham` varchar(255) NOT NULL,
  `gia_san_pham` decimal(10,2) NOT NULL,
  `gia_khuyen_mai` decimal(10,2) DEFAULT NULL,
  `hinh_anh` varchar(255) DEFAULT NULL,
  `so_luong` int NOT NULL,
  `luot_xem` int DEFAULT '0',
  `ngay_nhap` date NOT NULL,
  `mo_ta` text,
  `danh_muc_id` int NOT NULL,
  `trang_thai` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `ten_san_pham`, `gia_san_pham`, `gia_khuyen_mai`, `hinh_anh`, `so_luong`, `luot_xem`, `ngay_nhap`, `mo_ta`, `danh_muc_id`, `trang_thai`) VALUES
(1, 'Giày Run 72', '1800000.00', '1000000.00', './uploads/1731660561_image_2024-11-15_154911723.png', 10, 0, '2024-05-05', '', 2, 1),
(2, 'Giày ADIZERO ADIOS PRO 3', '6500000.00', '1000000.00', './uploads/1731660647_image_2024-11-15_155043128.png', 12, 0, '2024-05-05', '', 2, 1),
(3, 'Giày Ultraboost Light', '2600000.00', '1000000.00', './uploads/1731660856_image_2024-11-15_155412497.png', 10, 0, '2024-05-05', '', 2, 1),
(4, 'Giày Chạy Bộ 4DFWD 4', '5500000.00', '1200000.00', './uploads/1731660917_image_2024-11-15_155512501.png', 12, 0, '2024-05-05', '', 2, 1),
(5, 'Giày Chạy Bộ Runfalcon 5', '1800000.00', '1000000.00', './uploads/1731660998_image_2024-11-15_155611607.png', 20, 0, '2024-11-01', '', 2, 1),
(6, 'Giày Run Falcon 2.0', '1600000.00', '1120000.00', './uploads/1733749906image_2024-12-09_201130572.png', 5, 0, '2024-12-09', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int NOT NULL,
  `san_pham_id` int NOT NULL,
  `link_hinh_anh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `san_pham_id`, `link_hinh_anh`) VALUES
(3, 1, './upload/1731828423_image_2024-11-17_142659786.png'),
(4, 2, './upload/1731828734_image_2024-11-17_143202555.png'),
(5, 2, './upload/1731828734_image_2024-11-17_143213670.png'),
(6, 3, './upload/1731828840_image_2024-11-17_143341447.png'),
(7, 3, './upload/1731828840_image_2024-11-17_143358335.png'),
(8, 4, './upload/1731829948_image_2024-11-17_145206963.png'),
(9, 4, './upload/1731829948_image_2024-11-17_145216670.png'),
(10, 4, './upload/1731829948_image_2024-11-17_145226894.png'),
(11, 5, './upload/1731830052_image_2024-11-17_145359946.png'),
(12, 5, './upload/1731830052_image_2024-11-17_145410495.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `anh_dai_dien` varchar(255) DEFAULT NULL,
  `ngay_sinh` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `so_dien_thoai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gioi_tinh` tinyint(1) NOT NULL DEFAULT '1',
  `dia_chi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `chuc_vu_id` int NOT NULL,
  `trang_thai` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ho_ten`, `anh_dai_dien`, `ngay_sinh`, `email`, `so_dien_thoai`, `gioi_tinh`, `dia_chi`, `mat_khau`, `chuc_vu_id`, `trang_thai`) VALUES
(1, 'Manh Duong', NULL, '2005-05-05', 'duongm552005@gmail.com', '0343452076', 1, 'Ha Noi', '$2y$10$xB1q2QCJU0mHs3R4g/VX3er/UQGmaVB4AzBbGxxfoFqs4abYMo7we', 2, 1),
(2, 'Duong', NULL, '2005-05-05', 'admin@gmail.com', '0343452076', 1, '', '$2y$10$JWtj6NE/zX65ggVuOlZF1euKdUwOJ1.U3EnXsc.K99e2QgNHJNE3m', 1, 1),
(3, 'gg', NULL, '2024-11-29', 'khachhang1@gmail.com', '012371', 1, 'ha noi', '$2y$10$EZM2kBeeHxLQp8RpGEy1J.ObB8aulccaZt.agye9rTBmxtK0cMk9O', 2, 1),
(4, 'kk', NULL, '2024-11-06', 'khachhang@gmail.com', '012371', 1, 'ha noi', '$2y$10$3/i/KiRkYjFSIQsbN0bqvOighzqiTkP.mt3UIAA4YrF6XAu/tOjY.', 2, 1),
(5, 'daldka', NULL, '1003-03-31', 'khach2@gmail.com', '012371', 1, 'ha noi', '$2y$10$XvbyudvyX9ksS2ANdWW1kO920G1IZqLy0QgPrNz8.5L.BzK2PfDba', 2, 1),
(6, 'b', NULL, '2024-11-21', 'b@gmail.com', '012371', 1, 'hn', '$2y$10$NMTt7bIRL6k3RKMsKj0om.0f.GjWuTx7xRiRQSZKmlmLUZkwVrA..', 2, 1),
(7, 'c@gmail.com', NULL, '2024-12-12', 'c@gmail.com', '01237113', 1, 'hn', '$2y$10$0ibJXiRQ7MsXWPwv6yFTR.WyjiUox44bPkFg8rVHYTWAvJEd/Kq2m', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
