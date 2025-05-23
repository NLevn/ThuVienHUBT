-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 24, 2024 lúc 05:52 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `library`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `first`, `last`, `username`, `password`, `email`, `contact`, `pic`, `status`) VALUES
(4, 'Ngo', 'Le', 'Admin', '123', 'ngole26052004@gmail.com', '111111', 'mu.jpg', 'yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ban_doc`
--

CREATE TABLE `ban_doc` (
  `id` int(11) NOT NULL,
  `bid` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `authors` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ban_doc`
--

INSERT INTO `ban_doc` (`id`, `bid`, `name`, `authors`, `username`, `added_at`) VALUES
(8, '1101', 'Lập trình cấu trúc Pascal', 'HUBT', 'HaiNam', '2024-08-24 13:55:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `img` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `bid` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authors` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `edition` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(100) NOT NULL,
  `department` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduce` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `soft_copy_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`img`, `bid`, `name`, `authors`, `edition`, `status`, `quantity`, `department`, `introduce`, `soft_copy_url`) VALUES
('images/qh.jpg', 1101, 'Lập trình cấu trúc Pascal', 'HUBT', '2019', 'Công nghệ, lập trình', 10, 'Giá 01', 'Sách viết bởi các giảng viên của HUBT', NULL),
('images/cute.png', 1003, 'Autocad ', 'HUBT', '2019', 'Công nghệ', 1, 'Giá 01', 'Sách viết bởi các giảng viên của HUBT', NULL),
('images/ban-do-viet-nam-decor.jpg', 1201, 'Tiếng trung sơ cấp 1', 'HUBT', '2019', 'Ngôn ngữ, tiếng Trung', 9, 'e02', 'Sách viết bởi các giảng viên của HUBT', NULL),
('images/ban-do-viet-nam-decor.jpg', 1202, 'Tiếng trung sơ cấp 2', 'HUBT', '2019', 'Ngôn ngữ, tiếng Trung', 8, 'e02', 'Sách viết bởi các giảng viên của HUBT', NULL),
('images/AN.jpg', 1301, 'Tiếng Nga cơ bản', 'HUBT', '2019', 'Ngôn ngữ, tiếng Nga', 9, 'Giá 03', 'Sách viết bởi các giảng viên của HUBT', NULL),
('images/tru-so-bo-cong-an-1.jpg', 1302, 'Nga cơ sở 2', 'HUBT', '2019', 'Ngôn ngữ, tiếng Nga', 10, 'Giá 03', 'Sách viết bởi các giảng viên của HUBT', NULL),
('images/gau.png', 1203, 'Tiếng trung sơ cấp 3', 'HUBT', '2019', 'Ngôn ngữ, tiếng Trung', 10, 'Giá 02', 'Sách viết bởi các giảng viên của HUBT', ''),
('images/335027902_730467735190436_6209252951875714468_n.jpg', 1104, 'Kỹ thuật Web', 'HUBT', '2019', 'Công nghệ, lập trình', 9, 'Giá 01', 'Sách viết bởi các giảng viên của HUBT', 'softcopies/BAI GIANG BUOI 1.pdf'),
('images/AN.jpg', 1105, 'Lập trình Python', 'HUBT', '2019', 'Công nghệ, lập trình', 9, 'Giá 01', 'Sách viết bởi các giảng viên của HUBT', 'softcopies/DoAnWeb.docx'),
('images/d.jpg', 1106, 'C', 'HUBT', '2008', 'còn', 22, 'E04', 'hàng mới về', 'softcopies/Điểm đồ án K27.pdf'),
('images/f.jpg', 1110, 'C#', 'HUBT', '2008', 'còn', 22, 'E04', 'Sách phát hành bởi HUBT', 'softcopies/3. TAI LIEU SACH THAM KHAO CSDLPT.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(50) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `username`, `comment`, `image_url`) VALUES
(35, '', '', NULL),
(36, 'Admin', 'toi ', NULL),
(37, 'Admin', 'toi ', NULL),
(38, 'Admin', 'đã có sách mới', NULL),
(39, 'Admin', 'đã có sách mới 2', NULL),
(40, 'Admin', 'đã có sách mới 2', NULL),
(41, 'NgoLe', 'toi la  ngle', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fine`
--

CREATE TABLE `fine` (
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bid` int(100) NOT NULL,
  `returned` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` int(50) NOT NULL,
  `fine` double NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `issue_book`
--

CREATE TABLE `issue_book` (
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bid` int(100) NOT NULL,
  `approve` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `return` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `issue_book`
--

INSERT INTO `issue_book` (`username`, `bid`, `approve`, `issue`, `return`) VALUES
('Ngole', 1201, 'Yes', '23/08/2024', '30/08/2024'),
('Ngole', 1202, 'Yes', '23/08/2024', '24/08/2024'),
('Ngole', 1202, 'Yes', '23/08/2024', '24/08/2024'),
('Ngole', 1301, 'Yes', '23/08/2024', '24/08/2024'),
('NgoLe', 1003, 'Yes', '13/08/2024', '22/08/2024'),
('NgoLe', 1203, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `message` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `sender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `message`
--

INSERT INTO `message` (`id`, `username`, `message`, `status`, `sender`) VALUES
(44, 'Promi', 'toila promi ', 'no', 'student'),
(45, 'Admin', 'toi la admin', 'no', 'student');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `book_id` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `book_id`, `username`, `comment`, `created_at`) VALUES
(1, '1106', 'admin', 'bggh', '2024-08-20 10:51:33'),
(2, '1106', 'admin', 'c++', '2024-08-20 10:51:39'),
(3, '1105', 'admin', 'c#', '2024-08-20 10:51:51'),
(4, '1102', 'admin', 'ctdl', '2024-08-21 16:19:40'),
(5, '1101', 'admin', 'day la pascal', '2024-08-21 16:19:55'),
(6, '1104', 'admin', 'kỹ thuật web', '2024-08-22 13:51:09'),
(7, '1302', 'NgoLe', 'hh', '2024-08-23 16:43:35'),
(8, '1105', 'NgoLe', 'ghkj', '2024-08-24 11:02:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `first` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) NOT NULL,
  `roll` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`first`, `last`, `username`, `password`, `roll`, `email`, `contact`, `pic`) VALUES
('Ngô ', 'Lệ', 'NgoLe', '123', 1234, 'ngole0509@gmail.com', '12445ng', 'cute.png'),
('Ngô', 'Hải Nam', 'HaiNam', '123', 123, 'Nganthanhphong.15@gmail.com', 'HN', 'p.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `visit_counter`
--

CREATE TABLE `visit_counter` (
  `id` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `visit_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `visit_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `visit_counter`
--

INSERT INTO `visit_counter` (`id`, `session_id`, `ip_address`, `visit_time`, `visit_date`) VALUES
(1, 's1mno0psd9egbooshl46pp66o0', '::1', '2024-08-17 08:02:12', '2024-08-17'),
(2, 'a8ddbga0of1jpa34lc6mr1ovqo', '::1', '2024-08-17 09:47:00', '2024-08-17'),
(3, 'daud3ccnjqloppc0sojb8ku9p0', '::1', '2024-08-17 15:36:17', '2024-08-17'),
(4, '036svbonhed58c45a0ef8g3toh', '::1', '2024-08-17 15:36:52', '2024-08-17'),
(5, 'gqa0u5ehkgb903csvkl5cq3lj3', '::1', '2024-08-18 16:24:12', '2024-08-18'),
(6, '5301stibd4frlr9ccqrd7fi6fu', '::1', '2024-08-18 16:37:43', '2024-08-18'),
(7, 'pdtbgt4n5f45e2d8htqmvajsah', '::1', '2024-08-19 01:56:38', '2024-08-19'),
(8, '12150mvb0af62d5btorq7nvpvo', '::1', '2024-08-19 02:03:56', '2024-08-19'),
(9, 't9fkun7a96sg0v9icb06onjnc9', '::1', '2024-08-19 14:27:14', '2024-08-19'),
(10, 'qassjf0mihs7r3hqdu42rroij1', '::1', '2024-08-20 09:36:50', '2024-08-20'),
(11, 'm7q7bbdbhpjsd0klc62tc2ptts', '::1', '2024-08-20 09:58:41', '2024-08-20'),
(12, 'b3a4cjjcmr1js4r4l52187vi7n', '::1', '2024-08-20 13:31:34', '2024-08-20'),
(13, '4g2regnlp5s35d9o31rll0h1ov', '::1', '2024-08-20 13:48:51', '2024-08-20'),
(14, '75ihgoclc4ouh6v94i49cgu1gq', '::1', '2024-08-21 14:39:23', '2024-08-21'),
(15, '9sbuv2ug6b8ird2m90pc0kjavg', '::1', '2024-08-21 15:03:29', '2024-08-21'),
(16, 'dmdqfg4kl91q1o6e0p9fo1unjn', '::1', '2024-08-22 07:31:35', '2024-08-22'),
(17, 'ldrsanou3qp5plclts4safjkhc', '::1', '2024-08-22 13:10:24', '2024-08-22'),
(18, 'kg6bpdfmb2qclka3v950d6mhcl', '::1', '2024-08-22 15:52:12', '2024-08-22'),
(19, '7mogesvh2qojhfr5slmgviqhnn', '::1', '2024-08-23 02:20:31', '2024-08-23'),
(20, 'nncprlvaqqbeun9d555ao4puv9', '::1', '2024-08-23 02:54:27', '2024-08-23'),
(21, 'kejg286qcdcargsglt848i7ac3', '::1', '2024-08-23 07:30:25', '2024-08-23'),
(22, '3k8039r0g3o3pvikbk4gqil87h', '::1', '2024-08-23 07:57:02', '2024-08-23'),
(23, 'v742cl0un64gmsltrrcdk813tc', '::1', '2024-08-23 14:27:59', '2024-08-23'),
(24, 'nhdk5k5rr4gbkvvidkr2fomkrf', '::1', '2024-08-23 14:51:28', '2024-08-23'),
(25, '3troucub4r8ccp3hb8v6i48n0j', '::1', '2024-08-24 01:21:58', '2024-08-24'),
(26, 'sdlc26467fi62jb7jdr0a65s3a', '::1', '2024-08-24 09:44:08', '2024-08-24'),
(27, 'cl4up18oiti61hqbep0ed5c7ib', '127.0.0.1', '2024-08-24 13:54:45', '2024-08-24');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ban_doc`
--
ALTER TABLE `ban_doc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `visit_counter`
--
ALTER TABLE `visit_counter`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `ban_doc`
--
ALTER TABLE `ban_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `visit_counter`
--
ALTER TABLE `visit_counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
