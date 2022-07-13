-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2022 at 08:25 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_detail`
--

CREATE TABLE `tbl_cart_detail` (
  `id_cart_detail` int(11) NOT NULL,
  `code_cart` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_cart_detail`
--

INSERT INTO `tbl_cart_detail` (`id_cart_detail`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(40, '1561', 15, 1),
(49, '5709', 24, 1),
(50, '5709', 23, 1),
(51, '4108', 21, 1),
(52, '9029', 5, 1),
(53, '1972', 20, 2),
(54, '3460', 19, 1),
(55, '7171', 16, 2),
(68, '19', 22, 1),
(69, '1504', 23, 1),
(70, '8346', 21, 1),
(71, '7761', 19, 2),
(72, '740', 21, 1),
(73, '3720', 14, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_khachhang` int(11) NOT NULL,
  `hovaten` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taikhoan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `chucvu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_khachhang`, `hovaten`, `taikhoan`, `matkhau`, `sodienthoai`, `email`, `diachi`, `chucvu`) VALUES
(5, 'Oeung Chiva', 'oeungchivaa@gmail.com', '202cb962ac59075b964b07152d234b70', 888255118, 'oeungchivaa@gmail.com', '74truongchinh', 0),
(6, 'Sa Mi', 'sami@gmail.com', '202cb962ac59075b964b07152d234b70', 888255111, 'sami@gmail.com', 'ABC', 0),
(7, 'va', 'va@gmail.com', '202cb962ac59075b964b07152d234b70', 888255119, 'va@gmail.com', 'ACS', 0),
(8, 'chi', 'chi@gmail.com', '202cb962ac59075b964b07152d234b70', 888255117, 'chi@gmail.com', 'XCV', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(5, 'Tai nghe', 1),
(6, 'Ốp lưng điện thoại', 2),
(7, 'Kính cường lực điện thoại', 3),
(9, 'PIN sạc dự phòng', 4),
(10, 'Sạc Phone', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` datetime NOT NULL,
  `cart_payment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_date`, `cart_payment`) VALUES
(63, 6, '19', 0, '2022-06-24 22:59:47', 'Tiền Mặt'),
(64, 5, '1504', 0, '2022-06-24 23:02:02', 'Tiền Mặt'),
(65, 7, '8346', 0, '2022-06-24 23:02:50', 'Tiền Mặt'),
(66, 7, '7761', 0, '2022-06-24 23:03:26', 'Tiền Mặt'),
(67, 7, '740', 0, '2022-06-25 00:22:27', 'Tiền Mặt'),
(68, 8, '3720', 0, '2022-06-25 00:23:25', 'Tiền Mặt');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masanpham` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giasanpham` float NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomtat` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masanpham`, `giasanpham`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `id_danhmuc`, `trangthai`) VALUES
(5, 'Kính cường lực Iphone 13', 'KCI', 200000, 5, 'kinh2.jpg', 'Kính cường lực Iphone 13', '', 7, 0),
(6, 'Kính cường lực Iphone Xs Max', 'KCI', 200000, 10, 'kinh1.jpg', 'Kính cường lực Iphone Xs Max', '', 7, 1),
(7, 'Ốp lưng samsung galaxy S10+', 'OLS', 200000, 10, 'op5.jpg', '', '', 6, 1),
(8, 'Ốp lưng samsung galaxy NOTE20 Ultra', 'OLS', 500000, 10, 'op4.jpg', 'Ốp lưng samsung galaxy NOTE20 Ultra', '', 6, 1),
(10, 'Ốp lưng samsung galaxy NOTE8/9', 'OLS', 100000, 3, 'op3.jpg', 'Ốp lưng samsung galaxy NOTE8/9', '', 6, 0),
(11, 'Ốp lưng iphone 12pro Max', 'OLI', 90000, 3, 'op2.jpg.crdownload', '', '', 6, 0),
(12, 'Ốp lưng iphone 12pro Max', 'OLI', 100000, 4, 'op1.jpg', 'Ốp lưng iphone 12pro Max', 'Ốp lưng iphone 12pro Max ', 6, 0),
(13, 'Tai nghe iphone', 'TNI', 200000, 5, 'taingheipd.png', 'Tai nghe iphone ', '', 5, 0),
(14, 'Tai nghe bluetooth JBL ', 'TNBJBL', 700000, 2, 'tainghejbl.jpg', '', '', 5, 1),
(15, 'Tai nghe bluetooth Apple', 'TNBA', 600000, 2, 'taingheip.jpg', 'Tai nghe apple bluetooth', '', 5, 1),
(16, 'Tai nghe bluetooth', 'TNB', 700000, 3, 'tainghe.jpg', 'Tai nghe meo bluetooth ', '', 5, 1),
(18, 'Kính cường lực Samsung A52', 'KCS', 200000, 10, 'kinh3.jpg', 'Kính cường lực Samsung A52', '', 7, 0),
(19, 'Kính cường lực Samsung Note 20 Ultra', 'KCS', 500000, 10, 'kinh4.jpg', 'Kính cường lực Samsung Note 20 Ultra', '', 7, 1),
(20, 'Pin sạc dự phòng samsung 20000mAh', 'PS', 500000, 5, 'pin.jpg', 'Pin sạc dự phòng samsung 20000mAh', '', 9, 1),
(21, 'Pin sạc dự phòng Arun 5600mAh', 'PS', 200000, 10, 'pin1.jpg', 'Pin sạc dự phòng Arun 5600mAh', '', 9, 1),
(22, 'Sạc Iphone', 'SIP', 300000, 10, 'sac.jpg', 'Sạc Iphone', '', 10, 1),
(23, 'Sạc Samsung Type-C', 'SSS', 400000, 10, 'sac-samsung-15W.jpg', 'Sạc Samsung Type-C', '', 10, 1),
(24, 'Sạc Samsung', 'SSS', 100000, 10, 'sac-samsung-s2-chinh-hang-gia-re-ha-noi-hcm.jpg', 'Sạc Samsung', '', 10, 0),
(28, 'D', '12', 10000, 0, '0ae1354c5b479719ce56.jpg', '<p>gt</p>\r\n', '<p>hy</p>\r\n', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `adress` varchar(250) NOT NULL,
  `note` varchar(250) NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id_shipping`, `name`, `phone`, `adress`, `note`, `id_dangky`) VALUES
(1, '', '', '', '', 3),
(2, '', '', '', '', 3),
(3, 'nguyễn Minh Tâm', '05658421', '23/C', '', 1),
(4, 'Pham Anh Vinh', '', '', '', 3),
(5, 'Pham Anh Vinh', '', '', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) CHARACTER SET armscii8 NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) CHARACTER SET armscii8 NOT NULL,
  `soluongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(2, '2022-06-24', 14, '3900000', 1),
(3, '2022-06-25', 2, '900000', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  ADD PRIMARY KEY (`id_cart_detail`);

--
-- Indexes for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_khachhang`);

--
-- Indexes for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id_shipping`);

--
-- Indexes for table `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_cart_detail`
--
ALTER TABLE `tbl_cart_detail`
  MODIFY `id_cart_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
