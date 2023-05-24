-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 23, 2023 lúc 12:49 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doanwebnc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_personal`
--

CREATE TABLE `tbl_personal` (
  `id_personal` int(50) NOT NULL,
  `id_hv` varchar(50) NOT NULL,
  `id_nv` varchar(50) NOT NULL,
  `thoi_luong` float NOT NULL,
  `so_buoi` int(11) NOT NULL,
  `doanh_thu` float NOT NULL,
  `ngay` varchar(50) NOT NULL,
  `time_start` date NOT NULL,
  `time_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_personal`
--

INSERT INTO `tbl_personal` (`id_personal`, `id_hv`, `id_nv`, `thoi_luong`, `so_buoi`, `doanh_thu`, `ngay`, `time_start`, `time_end`) VALUES
(1, '1', '1', 10, 10, 200000, '2,3,4', '2023-05-03', '2023-08-03'),
(2, '2', '2', 10, 10, 500000, 't2,t3', '0000-00-00', '0000-00-00'),
(3, '3', '3', 3, 3, 3, '', '2004-03-03', '2023-03-03'),
(4, '4', '4', 3, 3, 3, '', '2004-03-03', '2023-03-03'),
(5, '3', '3', 4, 4, 50000, '', '2023-05-10', '2023-05-11'),
(6, '29', '4', 55, 10, 50000, '', '2023-12-29', '2023-10-31'),
(7, '1', '1', 10, 3, 25000, '', '2023-05-20', '2023-05-27'),
(8, '10', '3', 55, 1, 30000, '', '2023-05-12', '2023-06-03'),
(9, '17', '2', 10, 10, 50000, '', '2023-05-12', '2023-05-26'),
(10, '31', '3', 10, 4, 3000, '', '2023-05-25', '2023-06-03');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_personal`
--
ALTER TABLE `tbl_personal`
  ADD PRIMARY KEY (`id_personal`),
  ADD KEY `id_hv` (`id_hv`,`id_nv`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_personal`
--
ALTER TABLE `tbl_personal`
  MODIFY `id_personal` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;