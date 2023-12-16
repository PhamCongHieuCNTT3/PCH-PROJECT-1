-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 15, 2023 lúc 10:41 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phamconghieucntt3`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `Ma_KH` int(11) NOT NULL,
  `Ho_Ten` varchar(100) NOT NULL,
  `Tai_Khoan` varchar(50) NOT NULL,
  `Mat_Khau` varchar(50) NOT NULL,
  `Dia_Chi` varchar(100) NOT NULL,
  `Dien_Thoai` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Ngay_Sinh` datetime NOT NULL,
  `Gioi_Tinh` tinyint(4) NOT NULL,
  `Trang_Thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`Ma_KH`, `Ho_Ten`, `Tai_Khoan`, `Mat_Khau`, `Dia_Chi`, `Dien_Thoai`, `Email`, `Ngay_Sinh`, `Gioi_Tinh`, `Trang_Thai`) VALUES
(100, 'anh ấy', 'adbc', 'adbbb', 'Hồ Chí Minh', '0123456789', 'jjjjnhsbc@gmail.com', '2002-12-14 16:32:54', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `MA` char(5) NOT NULL,
  `TEN` varchar(50) NOT NULL,
  `sdt` int(11) NOT NULL,
  `ngaysinh` float NOT NULL,
  `ANH` varchar(100) NOT NULL,
  `gioitinh` date NOT NULL,
  `chucvu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhan_vien`
--

INSERT INTO `nhan_vien` (`MA`, `TEN`, `sdt`, `ngaysinh`, `ANH`, `gioitinh`, `chucvu`) VALUES
('M002', 'MAI CUTE', 1, 123, 'MAI.JPG', '0000-00-00', ''),
('M002', 'MAI CUTE', 1, 123, 'MAI.JPG', '0000-00-00', ''),
('11', 'cô bé cute', 1000, 1000, 'aboutimg.jpg', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan_tri`
--

CREATE TABLE `quan_tri` (
  `Tai_Khoan` varchar(50) NOT NULL,
  `Mat_Khau` varchar(50) NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quan_tri`
--

INSERT INTO `quan_tri` (`Tai_Khoan`, `Mat_Khau`, `Trang_thai`) VALUES
('admin', '123456', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `MaSP` int(11) NOT NULL,
  `Ten_Sp` varchar(200) NOT NULL,
  `Mo_Ta` varchar(250) NOT NULL,
  `Thong_Tin` text NOT NULL,
  `Gia_Nhap` float NOT NULL,
  `Gia_Cu` float NOT NULL,
  `Gia_Moi` float NOT NULL,
  `Ngay_Cap_Nhat` datetime NOT NULL DEFAULT current_timestamp(),
  `Trang_Thai` tinyint(4) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `MaNH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`MaSP`, `Ten_Sp`, `Mo_Ta`, `Thong_Tin`, `Gia_Nhap`, `Gia_Cu`, `Gia_Moi`, `Ngay_Cap_Nhat`, `Trang_Thai`, `MaLSP`, `MaNH`) VALUES
(1, 'nuocno1', 'ngon', 'buitiphu', 100000, 120000, 150000, '2022-12-14 22:33:58', 1, 100, 100);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`Ma_KH`);

--
-- Chỉ mục cho bảng `quan_tri`
--
ALTER TABLE `quan_tri`
  ADD PRIMARY KEY (`Tai_Khoan`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`MaSP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
