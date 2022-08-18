-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2022 at 10:32 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tonthedan`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(68) CHARACTER SET utf8 NOT NULL,
  `mail_smtp_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Password mail shop',
  `mail_noreply` varchar(68) CHARACTER SET utf8 NOT NULL,
  `priceShip` mediumtext CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_smtp_password`, `mail_noreply`, `priceShip`, `title`, `description`) VALUES
(1, 'ocopchupuhgl@gmail.com', 'tutanbcasaqjhxql', 'thanhwilshere96@gmail.com', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `status`, `trash`, `fullname`) VALUES
(11, 'tèo', '09123999', 'teo@gmail.com', 'hehehe', '2022/8/2 10:43:23', 1, 1, 'tèo'),
(12, 'tèo', '0129391029', 'teo@gmail.com', 'đặt 1 bàn', '2022/8/4 14:48:28', 0, 1, 'tèo'),
(13, 'Tiến', '012939129', 'tien@gmail.com', 'Tôi muốn đặt 1 bàn vào ngày mai', '2022/8/4 15:6:53', 0, 1, 'Tiến'),
(14, 'Tiến', '012939129', 'tien@gmail.com', 'Tôi muốn đặt 1 bàn vào ngày mai', '2022/8/4 15:8:5', 0, 1, 'Tiến'),
(15, 'tiến', '09213829', 'tien@gmail.com', 'tôi muốn đặt 1 bàn', '2022/8/4 15:11:30', 0, 1, 'tiến'),
(16, 'thành', '0392348919', 'tien@gmail.com', 'tôi muốn đặt 1 bàn', '2022/8/4 15:13:49', 0, 1, 'thành'),
(17, 'thành', '0392348919', 'tien@gmail.com', 'tôi muốn đặt 1 bàn', '2022/8/4 15:17:26', 0, 1, 'thành'),
(18, 'tèo', '09123199', 'teo@gmail.com', 'tui muốn ăn', '2022/8/4 15:22:50', 0, 1, 'tèo'),
(19, 'Thành', '0969128391', 'thanhwilshere96@gmail.com', 'Tôi quan tâm đến sản phẩm', '2022/8/10 9:1:53', 0, 1, 'Thành'),
(20, 'Thành', '0969128391', 'thanhwilshere96@gmail.com', 'Tôi quan tâm đến sản phẩm', '2022/8/10 9:3:9', 0, 1, 'Thành'),
(21, 'Chương', '0129349192', 'chuong@gmail.com', 'Tôi rất thích sâm , hãy liên lạc với tôi !', '2022/8/10 9:9:4', 0, 1, 'Chương'),
(22, 'thành', '012939101', 'thanh@gmail.com', 'hehehehehe', '2022/8/10 9:12:5', 0, 1, 'thành'),
(23, 'ban', '012039012', 'ban@gmail.com', 'hehe', '2022/8/16 8:26:9', 0, 1, 'ban'),
(24, 'tèo', '0293010', 'teo@gmail.com', 'hehe', '2022/8/16 8:29:21', 0, 1, 'tèo'),
(25, 'Test', '096949', 'hehe@gmail.com', 'aaa', '2022/8/18 14:47:45', 0, 1, 'Test'),
(26, 'Tèo', '0230940394', 'teo@gmail.com', 'ádasdasdasdasdas', '2022/8/18 14:55:21', 0, 1, 'Tèo'),
(27, 'top', 'top', 'top', 'top', '2022/8/18 14:55:50', 0, 1, 'top'),
(28, 'top', 'top', 'top', 'top', '2022/8/18 14:56:58', 0, 1, 'top'),
(29, 'loc', 'loc', 'locl', 'loc', '2022/8/18 14:59:32', 0, 1, 'loc');

-- --------------------------------------------------------

--
-- Table structure for table `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `introtext` mediumtext CHARACTER SET utf8 NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(7, 'Bảng giá tôn lạnh HOA SEN tháng 7/2022', 'bang-gia-ton-lanh-hoa-sen-thang-7-2022', '', '<p>Gi&aacute; t&ocirc;n Hoa Sen c&oacute; thể thay đổi phụ thuộc v&agrave;o nhu cầu thị trường do đ&oacute; để c&oacute; được gi&aacute; t&ocirc;n Hoa Sen Ch&iacute;nh x&aacute;c qu&yacute; kh&aacute;ch n&ecirc;n li&ecirc;n hệ tới Đại l&yacute; t&ocirc;n Hoa Sen để nhận b&aacute;o gi&aacute; ch&iacute;nh x&aacute;c.</p>\r\n\r\n<p>T&ocirc;n Thế D&acirc;n&nbsp;cập nhật&nbsp;<strong>bảng b&aacute;o gi&aacute; t&ocirc;n Hoa Sen&nbsp;</strong>để qu&yacute; kh&aacute;ch h&agrave;ng tham khảo</p>\r\n\r\n<p><strong>BẢNG B&Aacute;O GI&Aacute; T&Ocirc;N 9 S&Oacute;NG VU&Ocirc;NG &ndash; 5 S&Oacute;NG VU&Ocirc;NG &ndash; 13 S&Oacute;NG LA PH&Ocirc;NG &ndash; T&Ocirc;N C&Aacute;CH NHIỆT &ndash; T&Ocirc;N CLIPLOCK</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"/web/public/upload/images/bang-bao-gia-ton-2.jpg\" style=\"height:1200px; width:652px\" /></strong></p>\r\n', 'Untitled_design.png', '2022-08-02 14:11:52', '1', '2022-08-02 14:16:53', '1', 1, 1),
(8, 'Tuyển Dụng ', 'tuyen-dung', '', '<p>Cần tuyển c&aacute;c vị tr&iacute; c&ocirc;ng việc như sau</p>\r\n\r\n<p>- 2 tạp vụ</p>\r\n\r\n<p>- 1 phụ bếp</p>\r\n\r\n<p>- 1 bảo vệ</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e74c3c\">Li&ecirc;n hệ : 096912312 !</span></p>\r\n', '6.jpg', '2022-08-04 14:52:28', '1', '2022-08-18 14:40:47', '1', 1, 0),
(9, 'Báo giá tôn lợp mái tháng 08/2022 chi tiết', 'bao-gia-ton-lop-mai-thang-08-2022-chi-tiet', 'Báo giá tôn lợp mái tháng 08/2022 chi tiết', '<h3><strong>C&aacute;c loại t&ocirc;n lợp chất lượng hiện nay</strong></h3>\r\n\r\n<p>C&aacute;c loại t&ocirc;n lợp x&acirc;y dựng hiện nay gồn nhiều thương hiện như : t&ocirc;n Việt Nhật, t&ocirc;n Hoa Sen, t&ocirc;n Nam Kim, t&ocirc;n Đại Thi&ecirc;n Lộc, t&ocirc;n Đ&ocirc;ng &Aacute;, t&ocirc;n Sunco, t&ocirc;n Zacs, t&ocirc;n Olympic&hellip;.. với c&aacute;c chủng loại như : t&ocirc;n lạnh, t&ocirc;n &uacute;p n&oacute;c, t&ocirc;n s&agrave;n, t&ocirc;n đổ PU, t&ocirc;n s&oacute;ng vu&ocirc;ng, t&ocirc;n s&oacute;ng tr&ograve;n, t&ocirc;n s&oacute;ng ng&oacute;i, t&ocirc;n c&aacute;n 5 s&oacute;ng, t&ocirc;n c&aacute;n 9 s&oacute;ng, t&ocirc;n kẽm &hellip;..vv rất rất nhiều loại, nhưng kể tr&ecirc;n l&agrave; c&aacute;c loại th&ocirc;ng dụng .</p>\r\n\r\n<p><img alt=\"Tôn màu - BAOGIATHEPXAYDUNG.COM\" src=\"https://baogiathepxaydung.com/wp-content/uploads/2020/02/ton-mau.png\" style=\"height:400px; width:800px\" title=\"Báo giá tôn lợp mái tháng [thoigian] chi tiết 2\" /></p>\r\n\r\n<h3><strong>B&aacute;o gi&aacute; t&ocirc;n lợp m&aacute;i mới nhất th&aacute;ng 08/2022</strong></h3>\r\n\r\n<p>B&aacute;o gi&aacute; t&ocirc;n lợp m&aacute;i lu&ocirc;n được cập nhật, ch&uacute;ng t&ocirc;i chuy&ecirc;n cung cấp t&ocirc;n lợp, sắt th&eacute;p tại th&agrave;nh phố Hồ Ch&iacute; Minh, Nha Trang Kh&aacute;nh H&ograve;a, Đ&agrave; Nẵng, th&agrave;nh phố H&agrave; Nội v&agrave; c&aacute;c tỉnh th&agrave;nh kh&aacute;c &hellip;. vv. Với phương tiện vận chuyển h&ugrave;ng hậu v&agrave; đội ngũ nh&acirc;n vi&ecirc;n chuy&ecirc;n nghiệp, ch&uacute;ng t&ocirc;i b&aacute;o gi&aacute; t&ocirc;n lợp rẻ nhất, nhanh nhất , ch&iacute;nh x&aacute;c nhất, vận chuyển cả ng&agrave;y lẫn đ&ecirc;m 24/24 đến mọi c&ocirc;ng tr&igrave;nh ở c&aacute;c tỉnh th&agrave;nh tr&ecirc;n cả nước.</p>\r\n\r\n<h4><strong>Bảng b&aacute;o gi&aacute; t&ocirc;n lợp th&aacute;ng 08/2022</strong></h4>\r\n\r\n<p>Đặc biệt :&nbsp;<em>C&oacute; chiết khấu cho người mua h&agrave;ng + vận chuyển tận nơi</em></p>\r\n\r\n<table id=\"tablepress-41\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"3\">Bảng gi&aacute; t&ocirc;n - Pu - giấy bạc v&agrave; phụ kiện mang t&iacute;nh chất tham khảo, c&ograve;n rất nhiều h&atilde;ng t&ocirc;n kh&aacute;c nữa, để hỗ trợ đ&uacute;ng nhu cầu vui l&ograve;ng gọi tới hotline :&nbsp;<strong>&nbsp;0269 3 777879</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n			<p><strong>T&ocirc;n m&agrave;u ( 5 s&oacute;ng, 9 s&oacute;ng, 13 s&oacute;ng la ph&ocirc;ng, s&oacute;ng tr&ograve;n )</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y in tr&ecirc;n t&ocirc;n</td>\r\n			<td>Trọng lượng (Kg/m )</td>\r\n			<td>Đơn gi&aacute; (Khổ 1,07m )</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2 dem 05</td>\r\n			<td>1.70</td>\r\n			<td>70.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3 dem 00</td>\r\n			<td>2.30</td>\r\n			<td>76.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3 dem 50</td>\r\n			<td>2.70</td>\r\n			<td>85.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 00</td>\r\n			<td>3.05</td>\r\n			<td>92.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 00</td>\r\n			<td>3.25</td>\r\n			<td>101.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 50</td>\r\n			<td>3.50</td>\r\n			<td>107.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 50</td>\r\n			<td>3.70</td>\r\n			<td>109.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5 dem 00</td>\r\n			<td>4.10</td>\r\n			<td>117.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n			<p><strong>T&ocirc;n m&agrave;u Hoa Sen + Đ&ocirc;ng &Aacute; ( 5 s&oacute;ng, 9 s&oacute;ng, 13 s&oacute;ng la ph&ocirc;ng, s&oacute;ng tr&ograve;n )</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đ&ocirc;ng &Aacute; 4,0 dem</td>\r\n			<td>3.40</td>\r\n			<td>113.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đ&ocirc;ng &Aacute; 4,5 dem</td>\r\n			<td>3.90</td>\r\n			<td>131.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đ&ocirc;ng &Aacute; 5.0 dem</td>\r\n			<td>4.40</td>\r\n			<td>141.500</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hoa Sen 4,0 dem</td>\r\n			<td>3.40</td>\r\n			<td>122.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hoa Sen 4,5 dem</td>\r\n			<td>3.90</td>\r\n			<td>138.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hoa Sen 5,0 dem</td>\r\n			<td>4.40</td>\r\n			<td>152.500</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n			<p><strong>T&ocirc;n lạnh ( 5 s&oacute;ng, 9 s&oacute;ng, 13 s&oacute;ng la ph&ocirc;ng, s&oacute;ng tr&ograve;n )</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2 dem 30</td>\r\n			<td>2.35</td>\r\n			<td>74.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3 dem 20</td>\r\n			<td>2.75</td>\r\n			<td>82.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3 dem 30</td>\r\n			<td>3.05</td>\r\n			<td>89.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3 dem 60</td>\r\n			<td>3.25</td>\r\n			<td>91.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 20</td>\r\n			<td>3.70</td>\r\n			<td>112.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 50</td>\r\n			<td>4.10</td>\r\n			<td>121.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n			<p><strong>T&ocirc;n c&aacute;n PU m&agrave;u v&agrave; lạnh ( 5 s&oacute;ng, 9 s&oacute;ng )</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&ocirc;n 5 s&oacute;ng PU d&agrave;y 16ly</td>\r\n			<td>PU + giấy bạc</td>\r\n			<td>75.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&ocirc;n 9 s&oacute;ng PU d&agrave;y 16ly</td>\r\n			<td>PU + giấy bạc</td>\r\n			<td>75.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n			<p><strong>T&ocirc;n Klip Lock( Kh&ocirc;ng d&ugrave;ng đai ) C&ocirc;ng nghệ mới lợp kh&ocirc;ng tr&agrave;n nước, kh&ocirc;ng thấy v&iacute;t</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&ocirc;n m&agrave;u độ d&agrave;y in tr&ecirc;n t&ocirc;n</td>\r\n			<td>Trọng lượng (Kg/m )</td>\r\n			<td>Đơn gi&aacute; (Khổ 460 mm )</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 00</td>\r\n			<td>3.25</td>\r\n			<td>52.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 50</td>\r\n			<td>3.7</td>\r\n			<td>58.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đ&ocirc;ng &Aacute; 4,0 dem</td>\r\n			<td>3.4</td>\r\n			<td>59.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đ&ocirc;ng &Aacute; 4,5 dem</td>\r\n			<td>3.9</td>\r\n			<td>65.500</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n			<p><strong>T&ocirc;n m&agrave;u s&oacute;ng ng&oacute;i ( khổ 1,07m ) m&agrave;u xanh ngọc, đ&ocirc; đậm, v&agrave;ng kem, x&aacute;m l&ocirc;ng chuột</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y in tr&ecirc;n t&ocirc;n</td>\r\n			<td>Trọng lượng (Kg/m )</td>\r\n			<td>Đơn gi&aacute; (Khổ 1,07m )</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 00</td>\r\n			<td>3.05</td>\r\n			<td>108.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 00</td>\r\n			<td>3.25</td>\r\n			<td>118.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 50</td>\r\n			<td>3.50</td>\r\n			<td>121.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 50</td>\r\n			<td>3.70</td>\r\n			<td>127.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5 dem 00</td>\r\n			<td>4.10</td>\r\n			<td>128.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đ&ocirc;ng &Aacute; 4,0 dem</td>\r\n			<td>3.40</td>\r\n			<td>128.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đ&ocirc;ng &Aacute; 4,5 dem</td>\r\n			<td>3.90</td>\r\n			<td>141.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n			<p><strong>Nh&agrave; ph&acirc;n phối c&aacute;ch nhiệt C&aacute;t Tường</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Diễn giải</td>\r\n			<td>&nbsp;Đơn gi&aacute; / m</td>\r\n			<td>&nbsp;Gi&aacute; cuộn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>P1 C&aacute;t Tường 1,55m x 40m ( 62m )</td>\r\n			<td>16.130</td>\r\n			<td>1.000.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>P2 C&aacute;t Tường 1,55m x 40m ( 62m )</td>\r\n			<td>21.260</td>\r\n			<td>1.318.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>A1 C&aacute;t Tường 1,55m x 40m ( 62m )</td>\r\n			<td>18.710</td>\r\n			<td>1.160.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>A2 C&aacute;t Tường 1,55m x 40m ( 62m )</td>\r\n			<td>27.200</td>\r\n			<td>1.686.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Băng keo 2 mặt ( cuộn )</td>\r\n			<td>36.000</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nẹp t&ocirc;n c&aacute;ch nhiệt ( m )</td>\r\n			<td>3.500</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n			<p>Bảng gi&aacute; thay đổi thường xuy&ecirc;n hoặc qu&yacute; kh&aacute;ch c&oacute; th&ecirc;m y&ecirc;u cầu kh&aacute;c, xin vui l&ograve;ng li&ecirc;n hệ ph&ograve;ng kinh doanh để c&oacute; gi&aacute; ch&iacute;nh x&aacute;c nhất<br />\r\n			Hotline :&nbsp;<strong>&nbsp;0269 3 777879</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Bạn đọc ch&uacute; &yacute; : Bảng gi&aacute; t&ocirc;n th&eacute;p ph&iacute;a tr&ecirc;n của ch&uacute;ng t&ocirc;i chỉ mang t&iacute;nh tham khảo. Do gi&aacute; th&eacute;p x&acirc;y dựng c&oacute; thể thay đổi theo từng ng&agrave;y, thậm ch&iacute; l&agrave; từng giờ. Ch&iacute;nh v&igrave; thế, để nhận&nbsp;<a href=\"https://baogiathepxaydung.vn/\" target=\"_blank\">bảng gi&aacute; t&ocirc;n lợp mới nhất</a>&nbsp;chi tiết nhất cho c&ocirc;ng tr&igrave;nh của m&igrave;nh, qu&yacute; bạn h&atilde;y gọi cho ch&uacute;ng t&ocirc;i theo th&ocirc;ng tin ph&iacute;a dưới nh&eacute;.</p>\r\n\r\n<p>Trong đ&oacute; :</p>\r\n\r\n<ul>\r\n	<li>B&aacute;o gi&aacute; t&ocirc;n th&eacute;p tr&ecirc;n c&oacute; thể tăng giảm theo thời điểm xem b&agrave;i hoặc theo khối lượng đặt h&agrave;ng.</li>\r\n	<li>Đơn gi&aacute; t&ocirc;n th&eacute;p tr&ecirc;n đ&atilde; bao gồm thuế VAT 10% v&agrave; chi ph&iacute; vận chuyển về tận c&ocirc;ng tr&igrave;nh ( thỏa thuận ).</li>\r\n	<li>Ti&ecirc;u chuẩn h&agrave;ng h&oacute;a : Mới 100% chưa qua sử dụng, do nh&agrave; m&aacute;y sản xuất.</li>\r\n	<li>Dung sai trọng lượng v&agrave; độ d&agrave;y th&eacute;p hộp, th&eacute;p ống, t&ocirc;n, x&agrave; gồ &plusmn; 5-7%, th&eacute;p h&igrave;nh &plusmn; 10-13% nh&agrave; m&aacute;y cho ph&eacute;p. Nếu ngo&agrave;i quy phạm tr&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i chấp nhận cho trả, đổi hoặc giảm gi&aacute;. H&agrave;ng trả lại phải đ&uacute;ng như l&uacute;c nhận (kh&ocirc;ng sơn, kh&ocirc;ng cắt, kh&ocirc;ng gỉ s&eacute;t)</li>\r\n	<li>Phương thức thanh to&aacute;n đặt cọc : theo thỏa thuận</li>\r\n	<li>Kiểm tra h&agrave;ng tại c&ocirc;ng tr&igrave;nh hoặc địa điểm giao nhận, nhận đủ thanh to&aacute;n, mới bắt đầu b&agrave;n giao hoặc xuống h&agrave;ng.</li>\r\n	<li>B&aacute;o gi&aacute; c&oacute; hiệu lực cho tới khi c&oacute; th&ocirc;ng b&aacute;o mới.</li>\r\n	<li>Rất h&acirc;n hạnh được phục vụ qu&yacute; kh&aacute;ch.</li>\r\n</ul>\r\n', 'mrl_03_pu_5s_c1.jpg', '2022-08-05 14:05:45', '1', '2022-08-18 14:42:21', '1', 1, 1),
(10, 'Bảng giá ngói lợp nhà các loại năm 2022', 'bang-gia-ngoi-lop-nha-cac-loai-nam-2022', '', '<h2><strong>Bảng gi&aacute; ng&oacute;i lợp nh&agrave; c&aacute;c loại năm 2022</strong></h2>\r\n\r\n<h3><strong>Bảng gi&aacute; ng&oacute;i Đồng T&acirc;m</strong></h3>\r\n\r\n<p><img alt=\"giá ngói lợp nhà đồng tâm\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/Screenshot-217.jpg\" style=\"height:832px; width:897px\" /></p>\r\n\r\n<p>Bảng gi&aacute; ng&oacute;i lợp nh&agrave; Đồng T&acirc;m</p>\r\n\r\n<h3><strong>Bảng gi&aacute; ng&oacute;i Viglacera</strong></h3>\r\n\r\n<p><img alt=\"giá ngói lợp nhà viglacera\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/Screenshot-211_LI.jpg\" style=\"height:832px; width:1143px\" /><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/Screenshot-212_LI.jpg\" style=\"height:798px; width:1151px\" /><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/Screenshot-213_LI.jpg\" style=\"height:396px; width:1152px\" /></p>\r\n\r\n<h3><strong>Bảng gi&aacute; ng&oacute;i Prime</strong></h3>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/Screenshot-215_LI.jpg\" style=\"height:664px; width:1150px\" /><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/Screenshot-216_LI.jpg\" style=\"height:604px; width:1152px\" /></p>\r\n\r\n<p><strong>XEM TH&Ecirc;M:</strong></p>\r\n\r\n<p><a href=\"https://giavatlieuxaydung.com/gia-vlxd/gia-vlxd-hoan-thien/gia-ton-lanh/\" target=\"_blank\">Tham Khảo Ngay Bảng Gi&aacute; T&ocirc;n Lạnh 2022</a></p>\r\n\r\n<p><a href=\"https://giavatlieuxaydung.com/gia-vlxd/gia-vlxd-hoan-thien/gia-ton-xop/\" target=\"_blank\">Tổng Hợp B&aacute;o Gi&aacute; T&ocirc;n Xốp C&aacute;c Loại 2022</a></p>\r\n\r\n<p><a href=\"https://giavatlieuxaydung.com/trang-tri-noi-ngoai-that/cach-chon-gach-op-mat-tien-re-dep-va-phu-hop/\" target=\"_blank\">C&aacute;ch chọn gạch ốp mặt tiền rẻ, đẹp v&agrave; ph&ugrave; hợp</a></p>\r\n\r\n<h2><strong>Ưu điểm của gạch ng&oacute;i lợp nh&agrave;</strong></h2>\r\n\r\n<h3><strong>M&agrave;u sắc đa dạng, hiện đại</strong></h3>\r\n\r\n<p>Nếu như ng&oacute;i đất nung truyền thống chỉ c&oacute; 2 m&agrave;u đỏ v&agrave; đỏ sậm th&igrave; gạch ng&oacute;i m&agrave;u hiện đại lại c&oacute; nhiều lựa chọn hơn hẳn với nhiều m&agrave;u sắc đa dạng, ph&ugrave; hợp với nhiều kiểu kiến tr&uacute;c nh&agrave; ở hiện nay.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/bmvmTD2-512x342.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<h3><strong>Chống r&ecirc;u, mốc tốt</strong></h3>\r\n\r\n<p>Với vật liệu lợp m&aacute;i truyền thống sau 1 thời gian sử dụng sẽ bị b&aacute;m r&ecirc;u mốc, nhưng c&aacute;c loại ng&oacute;i lợp nh&agrave; hiện nay c&oacute; thể giải quyết được vấn đề n&agrave;y.</p>\r\n\r\n<p>Với c&ocirc;ng nghệ phủ sơn Nano, ng&oacute;i lợp ho&agrave;n to&agrave;n c&oacute; khả năng chống rong r&ecirc;u tốt v&agrave; lu&ocirc;n giữ vẻ đẹp hiện đại, tươi mới cho c&ocirc;ng tr&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/Jm2VACr-512x357.jpg\" style=\"height:418px; width:600px\" /></p>\r\n\r\n<h3><strong>C&oacute; khả năng c&aacute;ch &acirc;m, c&aacute;ch nhiệt tốt</strong></h3>\r\n\r\n<p>Cũng như ng&oacute;i truyền thống, c&aacute;c loại ng&oacute;i lợp hiện nay cũng c&oacute; khả năng c&aacute;ch nhiệt tốt gi&uacute;p m&ugrave;a h&egrave; m&aacute;t mẻ v&agrave; m&ugrave;a đ&ocirc;ng được ấm &aacute;p. Ngo&agrave;i ra, m&aacute;i ng&oacute;i cũng c&oacute; t&iacute;nh c&aacute;ch &acirc;m tốt, gi&uacute;p ng&ocirc;i nh&agrave; tr&aacute;nh xa khỏi c&aacute;c tiếng ồn b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/Y7Q8puF-512x288.jpg\" style=\"height:338px; width:600px\" /></p>\r\n\r\n<h3><strong>K&iacute;ch thước vi&ecirc;n ng&oacute;i đảm bảo ti&ecirc;u chuẩn</strong></h3>\r\n\r\n<p>Với c&ocirc;ng nghệ hiện đại, mọi vi&ecirc;n ng&oacute;i được sản xuất đều tu&acirc;n theo những quy chuẩn khắt khe của nh&agrave; m&aacute;y, đảm bảo mang đến những sản phẩm c&oacute; độ đồng nhất cao, đ&aacute;p ứng ti&ecirc;u chuẩn v&agrave; thuận tiện cho qu&aacute; tr&igrave;nh thi c&ocirc;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/ejb8CV1-512x341.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<h3><strong>C&oacute; phụ kiện hỗ trợ đi k&egrave;m</strong></h3>\r\n\r\n<p>Tại c&aacute;c vị tr&iacute; đặc biệt của cấu tr&uacute;c m&aacute;i nh&agrave; cần phải c&oacute; c&aacute;ch xử l&iacute; ph&ugrave; hợp, lợp nh&agrave; bằng gạch ng&oacute;i sẽ đi k&egrave;m với nhiều phụ kiện như cuối m&aacute;i, cuối n&oacute;c, gh&eacute;p ba, cuối r&igrave;a&hellip; gi&uacute;p m&aacute;i đẹp hơn tại c&aacute;c vị tr&iacute; đ&oacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/iEJW53e-512x288.jpg\" style=\"height:337px; width:600px\" /></p>\r\n\r\n<h3><strong>Th&acirc;n thiện với m&ocirc;i trường</strong></h3>\r\n\r\n<p>C&aacute;c loại ng&oacute;i ng&agrave;y nay được sản xuất bằng c&ocirc;ng nghệ kh&ocirc;ng nung hiện đại, vừa th&acirc;n thiện m&ocirc;i trường vừa c&oacute; chất lượng tốt, kh&ocirc;ng xảy ra t&igrave;nh trạng cong v&ecirc;nh sau 1 thời gian sử dụng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/Tw5Yxnn-512x327.jpg\" style=\"height:383px; width:600px\" /></p>\r\n\r\n<h2><strong>C&aacute;c loại ng&oacute;i lợp nh&agrave; phổ biến nhất hiện nay</strong></h2>\r\n\r\n<h3><strong>Ng&oacute;i đất nung</strong></h3>\r\n\r\n<p>Ng&oacute;i đất nung xuất ph&aacute;t từ loại ng&oacute;i truyền thống ra đời từ rất l&acirc;u của nước ta. Hiện nay, loại ng&oacute;i n&agrave;y đ&atilde; được sản xuất theo quy tr&igrave;nh hiện đại hơn, kh&ocirc;ng sử dụng phương thức thủ c&ocirc;ng như ng&agrave;y xưa.</p>\r\n\r\n<p>Loại ng&oacute;i n&agrave;y được l&agrave;m từ đất s&eacute;t nung ở nhiệt độ cao, nhờ vậy m&agrave; n&oacute; c&oacute; độ bền rất cao, chịu được mọi thời tiết khắc nghiệt, độ bền c&oacute; thể l&ecirc;n tới 100 năm v&agrave; c&oacute; thể t&aacute;i sử dụng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/ngoi-lop-nha-1-1.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p>Một số loại ng&oacute;i đất nung</p>\r\n\r\n<p>Ng&oacute;i đất nung được chia th&agrave;nh 2 loại:&nbsp;<strong>ng&oacute;i kh&ocirc;ng tr&aacute;ng men&nbsp;</strong>v&agrave;&nbsp;<strong>ng&oacute;i tr&aacute;ng men</strong>. C&ugrave;ng nhiều kiểu d&aacute;ng đa dạng như: ng&oacute;i mũi h&agrave;i đơn/k&eacute;p, ng&oacute;i &acirc;m dương, ng&oacute;i tiểu, ng&oacute;i lưu ly,&hellip;</p>\r\n\r\n<h3><strong>Ng&oacute;i b&ecirc; t&ocirc;ng</strong></h3>\r\n\r\n<p>Ng&oacute;i b&ecirc; t&ocirc;ng được sản xuất từ c&aacute;t, xi măng&hellip; v&agrave; kh&ocirc;ng được nung như ng&oacute;i đất s&eacute;t. Ng&oacute;i b&ecirc; t&ocirc;ng hiện được sản xuất bởi c&aacute;c thương hiệu từ trong v&agrave; ngo&agrave;i nước.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/ngoi-lop-nha-2.jpg\" style=\"height:491px; width:600px\" /></p>\r\n\r\n<p>Ng&oacute;i b&ecirc; t&ocirc;ng</p>\r\n\r\n<h3><strong>Ng&oacute;i trang tr&iacute;</strong></h3>\r\n\r\n<p>Ng&oacute;i trang tr&iacute; l&agrave; loại ng&oacute;i được sản xuất theo k&iacute;ch thước nhỏ, c&oacute; thể tr&aacute;ng men hoặc kh&ocirc;ng tr&aacute;ng men, d&ugrave;ng để ốp l&ecirc;n m&aacute;i nh&agrave; đ&atilde; đ&uacute;c sẵn với mục đ&iacute;ch trang tr&iacute; chứ kh&ocirc;ng để lợp như c&aacute;c loại ng&oacute;i kh&aacute;c.</p>\r\n\r\n<p><a href=\"https://l.linklyhq.com/l/1CCWm\" target=\"_blank\"><img alt=\"Giá trần thạch cao\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2022/05/banner-ads-gia-tran-thach-cao-1.gif\" /></a></p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/ngoi-trang-tri.jpg\" style=\"height:359px; width:600px\" /></p>\r\n\r\n<p>Ng&oacute;i trang tr&iacute;</p>\r\n\r\n<h3><strong>Ng&oacute;i composite</strong></h3>\r\n\r\n<p>Ng&oacute;i composite c&oacute; th&agrave;nh phần ch&iacute;nh l&agrave; composite nền xi măng, si&ecirc;u bền, si&ecirc;u nhẹ. Loại ng&oacute;i n&agrave;y c&oacute; hệ số gi&atilde;n nở v&igrave; nhiệt tốt, ph&ugrave; hợp với những v&ugrave;ng kh&iacute; hậu nhất định v&agrave; kh&ocirc;ng được sử dụng phổ biến trong hầu hết c&aacute;c c&ocirc;ng tr&igrave;nh kh&aacute;c.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/ngoi-composite.jpg\" style=\"height:481px; width:600px\" /></p>\r\n\r\n<p>Ng&oacute;i composite</p>\r\n\r\n<h3><strong>Ng&oacute;i cổ &Aacute;c &ndash; đoa</strong></h3>\r\n\r\n<p>Ng&oacute;i lợp nh&agrave; &Aacute;c &ndash; đoa được sản xuất từ đ&aacute; trầm t&iacute;ch Ph&aacute;p, c&oacute; m&agrave;u đen nh&aacute;nh như than đ&aacute; v&agrave; c&oacute; h&igrave;nh d&aacute;ng giống ng&oacute;i vảy c&aacute;c hoặc c&oacute; h&igrave;nh chữ nhật.</p>\r\n\r\n<p>Ng&oacute;i n&agrave;y thường được sử dụng cho những c&ocirc;ng tr&igrave;nh biệt thự phong c&aacute;ch ch&acirc;u &Acirc;u, đặc biệt l&agrave; những biệt thự x&acirc;y theo kiến tr&uacute;c Ph&aacute;p.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/ngoi-ac-doa.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>Ng&oacute;i cổ &Aacute;c &ndash; đoa</p>\r\n\r\n<p>Vừa rồi l&agrave;&nbsp;<strong>bảng b&aacute;o gi&aacute; ng&oacute;i lợp nh&agrave;</strong>&nbsp;của c&aacute;c thương hiệu Đồng T&acirc;m, Viglacera, Đất Việt, Prime mới nhất. Hi vọng sau b&agrave;i viết n&agrave;y c&aacute;c bạn đ&atilde; c&oacute; thể lựa chọn cho ng&ocirc;i nh&agrave; của m&igrave;nh loại ng&oacute;i th&iacute;ch hợp nhất.</p>\r\n', '122.jpg', '2022-08-18 14:45:20', '1', '2022-08-18 14:45:20', '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `address`, `phone`, `email`, `created`, `trash`, `status`) VALUES
(72, 'tấn thành', 'thanh1996', 'e10adc3949ba59abbe56e057f20f883e', '', '0969124456', 'thanhwilshere96@gmail.com', '2022-06-13 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_discount`
--

CREATE TABLE `db_discount` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã giảm giá',
  `discount` int(11) NOT NULL COMMENT 'Số tiền',
  `limit_number` int(11) NOT NULL COMMENT 'giới hạn lượt mua',
  `number_used` int(11) NOT NULL COMMENT 'Số lượng đã nhập',
  `expiration_date` date NOT NULL COMMENT 'Ngày hết hạn',
  `payment_limit` int(11) NOT NULL COMMENT 'giới hạn đơn hàng tối thiểu',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả',
  `created` date NOT NULL,
  `orders` int(11) NOT NULL,
  `trash` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_district`
--

CREATE TABLE `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `provinceid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(8) CHARACTER SET utf8 NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `money` int(12) NOT NULL,
  `price_ship` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `province` int(5) NOT NULL,
  `district` int(5) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `trash` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sortDesc` text CHARACTER SET utf8 NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `producer` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_province`
--

CREATE TABLE `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  `img1` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `img2` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `type` int(2) DEFAULT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `spname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `img`, `img1`, `img2`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`, `type`, `detail`, `spname`, `price`) VALUES
(29, 'Tôn Hoa Sen đỏ', 'ton-hoa-sen-do', '9c370d6fc8adb3715ade50929716aa6f.jpg', '807b4547c293d563b675a9f2002dfb9d.jpeg', '', '2022-08-18 14:22:16', '1', '2022-08-18 14:22:16', '1', 1, 1, 0, '<h2><strong>Ứng dụng của vật liệu</strong></h2>\r\n\r\n<p>T&ocirc;n mạ m&agrave;u được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại n&ecirc;n c&oacute; độ bền cao, cũng như khả năng chống chịu ăn m&ograve;n, rỉ s&eacute;t lớn. Kiểu d&aacute;ng đa dạng v&agrave; mẫu m&atilde; đẹp th&iacute;ch hợp với từng nhu cầu sử dụng kh&aacute;c nhau.</p>\r\n\r\n<ul>\r\n	<li>T&ocirc;n thường được sử dụng l&agrave;m tấm lợp, v&aacute;ch ngăn, v&aacute;n trần, cửa cuốn&hellip; trong ng&agrave;nh c&ocirc;ng nghiệp x&acirc;y dựng, d&acirc;n dụng&hellip;</li>\r\n	<li>T&ocirc;n c&oacute; khả năng uốn dẻo n&ecirc;n dễ d&agrave;ng tạo th&agrave;nh những h&igrave;nh th&ugrave; kh&aacute;c nhau. V&igrave; vậy, c&oacute; thể được d&ugrave;ng trong trang tr&iacute; nội thất</li>\r\n	<li>Vật liệu c&ograve;n được sử dụng để chế tạo c&aacute;c loại ống dẫn nước, tho&aacute;t nước</li>\r\n	<li>D&ugrave;ng để chế tạo c&aacute;c loại vỏ của một số đồ điện tử, điện lạnh: vỏ m&aacute;y giặt, tủ lạnh hoặc vỏ m&aacute;y t&iacute;nh.</li>\r\n	<li>Ngo&agrave;i ra, vật liệu c&ograve;n được d&ugrave;ng để sản xuất ngoại thất &ocirc; t&ocirc;, xe bu&yacute;t, t&agrave;u hỏa, th&ugrave;ng chứa nhi&ecirc;n liệu.</li>\r\n</ul>\r\n\r\n<h3><strong>Ưu điểm của t&ocirc;n</strong></h3>\r\n\r\n<ul>\r\n	<li>C&oacute; độ bền cao c&ugrave;ng khả năng chống ăn m&ograve;n v&agrave; rỉ s&eacute;t lớn.</li>\r\n	<li>Th&iacute;ch hợp với nhiều m&ocirc;i trường kh&aacute;c nhau: V&ugrave;ng kh&iacute; hậu nhiệt đới, miền biển (ăn m&ograve;n cao), c&aacute;c v&ugrave;ng c&oacute; độ ẩm thấp,&hellip;</li>\r\n	<li>Vật liệu c&oacute; nhiều kiểu d&aacute;ng, mẫu m&atilde; đẹp mắt th&iacute;ch hợp với nhiều nhu cầu kh&aacute;c nhau.</li>\r\n	<li>Ngo&agrave;i ra t&ocirc;n mạ m&agrave;u c&oacute; khả năng tạo h&igrave;nh, chống va đập n&ecirc;n được d&ugrave;ng trong trong lĩnh vực điện tử v&agrave; nội thất&hellip;</li>\r\n	<li>Ngo&agrave;i ra, vật liệu c&oacute; khả năng chống ăn m&ograve;n gấp 4 lần t&ocirc;n kẽm.</li>\r\n</ul>\r\n', 'Tôn Hoa Sen đỏ', 0),
(30, 'Tôn màu xanh', 'ton-mau-xanh', 'af0e11160ec46c3b9847f0d4ce111e4b.jpeg', '33ff61dce73c4e1413ef74dea771e390.jpeg', '', '2022-08-18 14:23:35', '1', '2022-08-18 14:23:35', '1', 1, 1, 0, '<h2><strong>Ứng dụng của vật liệu</strong></h2>\r\n\r\n<p>T&ocirc;n mạ m&agrave;u được sản xuất tr&ecirc;n d&acirc;y chuyền c&ocirc;ng nghệ hiện đại n&ecirc;n c&oacute; độ bền cao, cũng như khả năng chống chịu ăn m&ograve;n, rỉ s&eacute;t lớn. Kiểu d&aacute;ng đa dạng v&agrave; mẫu m&atilde; đẹp th&iacute;ch hợp với từng nhu cầu sử dụng kh&aacute;c nhau.</p>\r\n\r\n<ul>\r\n	<li>T&ocirc;n thường được sử dụng l&agrave;m tấm lợp, v&aacute;ch ngăn, v&aacute;n trần, cửa cuốn&hellip; trong ng&agrave;nh c&ocirc;ng nghiệp x&acirc;y dựng, d&acirc;n dụng&hellip;</li>\r\n	<li>T&ocirc;n c&oacute; khả năng uốn dẻo n&ecirc;n dễ d&agrave;ng tạo th&agrave;nh những h&igrave;nh th&ugrave; kh&aacute;c nhau. V&igrave; vậy, c&oacute; thể được d&ugrave;ng trong trang tr&iacute; nội thất</li>\r\n	<li>Vật liệu c&ograve;n được sử dụng để chế tạo c&aacute;c loại ống dẫn nước, tho&aacute;t nước</li>\r\n	<li>D&ugrave;ng để chế tạo c&aacute;c loại vỏ của một số đồ điện tử, điện lạnh: vỏ m&aacute;y giặt, tủ lạnh hoặc vỏ m&aacute;y t&iacute;nh.</li>\r\n	<li>Ngo&agrave;i ra, vật liệu c&ograve;n được d&ugrave;ng để sản xuất ngoại thất &ocirc; t&ocirc;, xe bu&yacute;t, t&agrave;u hỏa, th&ugrave;ng chứa nhi&ecirc;n liệu.</li>\r\n</ul>\r\n\r\n<h3><strong>Ưu điểm của t&ocirc;n</strong></h3>\r\n\r\n<ul>\r\n	<li>C&oacute; độ bền cao c&ugrave;ng khả năng chống ăn m&ograve;n v&agrave; rỉ s&eacute;t lớn.</li>\r\n	<li>Th&iacute;ch hợp với nhiều m&ocirc;i trường kh&aacute;c nhau: V&ugrave;ng kh&iacute; hậu nhiệt đới, miền biển (ăn m&ograve;n cao), c&aacute;c v&ugrave;ng c&oacute; độ ẩm thấp,&hellip;</li>\r\n	<li>Vật liệu c&oacute; nhiều kiểu d&aacute;ng, mẫu m&atilde; đẹp mắt th&iacute;ch hợp với nhiều nhu cầu kh&aacute;c nhau.</li>\r\n	<li>Ngo&agrave;i ra t&ocirc;n mạ m&agrave;u c&oacute; khả năng tạo h&igrave;nh, chống va đập n&ecirc;n được d&ugrave;ng trong trong lĩnh vực điện tử v&agrave; nội thất&hellip;</li>\r\n	<li>Ngo&agrave;i ra, vật liệu c&oacute; khả năng chống ăn m&ograve;n gấp 4 lần t&ocirc;n kẽm.</li>\r\n</ul>\r\n', 'Tôn màu xanh', 0),
(31, 'Ngói lợp màu', 'ngoi-lop-mau', '9113864646bcf95107185e3390234357.jpg', '', NULL, '2022-08-18 14:25:51', '1', '2022-08-18 14:25:51', '1', 1, 1, 1, '<h2>Ng&oacute;i lợp m&agrave;u xanh da trời</h2>\r\n\r\n<p>K&iacute;ch thước ng&oacute;i: 420 x 330mm<br />\r\nTrọng lượng: 4.2 kg/vi&ecirc;n<br />\r\nDiện t&iacute;ch sử dụng: 9 &ndash; 10 vi&ecirc;n/m2</p>\r\n\r\n<p><strong>Ng&oacute;i m&agrave;u </strong>được sản xuất tr&ecirc;n c&ocirc;ng nghệ nhật bản kiểu d&aacute;ng hiện đại, nhiều m&agrave;u sắc bền đẹp, chống thấm ho&agrave;n hảo, kh&ocirc;ng r&ecirc;u mốc, c&aacute;ch nhiệt, chống ch&aacute;y, bền vững với thời gian.</p>\r\n', 'Ngói lợp màu', 0),
(32, 'Ngói sóng màu đỏ', 'ngoi-song-mau-do', 'e3a1a255553e782ac4c2bcb884e85b3f.jpg', 'f029937f3af2221ed90a849db1a6b869.jpg', '', '2022-08-18 14:28:26', '1', '2022-08-18 14:28:26', '1', 1, 1, 1, '<h2>Ng&oacute;i s&oacute;ng&nbsp; m&agrave;u đỏ&nbsp;</h2>\r\n\r\n<p>K&iacute;ch thước sản phẩm: 424x335mm<br />\r\nĐịnh lượng cho 1m2: 9vi&ecirc;n/m2<br />\r\nTrọng lượng trung b&igrave;nh/vi&ecirc;n (kg): 3kg</p>\r\n\r\n<p><strong>Ng&oacute;i m&agrave;u&nbsp;</strong>&nbsp;được sản xuất theo bản quyền c&ocirc;ng nghệ v&agrave; tr&ecirc;n d&acirc;y chuyền thiết bị hiện đại nhất của số Nhật Bản. Tr&ecirc;n 60% sản lượng ng&oacute;i sản xuất tại Việt Nam đ&atilde; được xuất khẩu sang Nhật Bản v&agrave; c&aacute;c quốc gia kh&aacute;c.</p>\r\n\r\n<p>Sản phẩm được ph&acirc;n phối ch&iacute;nh h&atilde;ng với gi&aacute; tốt nhất tại tonthedan.com.vn. Qu&yacute; kh&aacute;ch h&atilde;y đến v&agrave; chọn lựa những mẫu gạch ưng &yacute; nhất cho c&ocirc;ng tr&igrave;nh của m&igrave;nh, tonthedan.com.vn C&aacute;c sản phẩm do C&ocirc;ng ty ph&acirc;n phối cam kết đem đến sự h&agrave;i l&ograve;ng cho mọi kh&aacute;ch h&agrave;ng.</p>\r\n', 'Ngói sóng màu đỏ', 0),
(33, 'Sắt, thép, xà gỗ', 'sat-thep-xa-go', 'd5de14302562abf8a5e2822eac24a9ba.jpg', '0f8ef765f553bac44ba976d446d890cd.jpg', '', '2022-08-18 14:31:05', '1', '2022-08-18 14:31:05', '1', 1, 1, 2, '<p>Sắt, th&eacute;p, x&agrave; gỗ chất lượng cao</p>\r\n', 'Sắt, thép, xà gỗ', 0),
(34, 'Sắt, thép, xà gỗ', 'sat-thep-xa-go', '693d9919de5cf211da50509f4f43ae82.jpg', 'cf3a49eecf75c587cd0edf53a157b768.jpg', '', '2022-08-18 14:31:26', '1', '2022-08-18 14:31:26', '1', 1, 1, 2, '<p>Sắt, th&eacute;p, x&agrave; gỗ chất lượng cao.</p>\r\n', 'Sắt, thép, xà gỗ', 0),
(35, 'Ngói màu Nagakawa', 'ngoi-mau-nagakawa', '74f228c8ec9ed0bf41201deec4282834.jpg', 'f0696a2d02e93ce77ff71cce99c02b3f.jpg', '6a4178a1cdbafa0aa4a4f8a3ab67b622.jpg', '2022-08-18 14:33:37', '1', '2022-08-18 14:33:37', '1', 1, 1, 1, '<h2>Ng&oacute;i m&agrave;u s&oacute;ng Nakamura</h2>\r\n\r\n<p>K&iacute;ch thước sản phẩm: 424x335mm<br />\r\nĐịnh lượng cho 1m2: 9vi&ecirc;n/m2<br />\r\nTrọng lượng trung b&igrave;nh/vi&ecirc;n (kg): 3kg-3.5kg</p>\r\n\r\n<p><strong>Ng&oacute;i m&agrave;u Nakamura</strong>&nbsp;l&agrave; sản phẩm li&ecirc;n doanh, được sản xuất theo bản quyền c&ocirc;ng nghệ v&agrave; tr&ecirc;n d&acirc;y chuyền thiết bị hiện đại nhất của số Nhật Bản. Tr&ecirc;n 60% sản lượng ng&oacute;i Nakamura sản xuất tại Việt Nam đ&atilde; được xuất khẩu sang Nhật Bản v&agrave; c&aacute;c quốc gia kh&aacute;c.</p>\r\n\r\n<p>Với c&ocirc;ng nghệ sản xuất ti&ecirc;n tiến v&agrave; nguy&ecirc;n vật liệu đ&aacute;p ứng c&aacute;c ti&ecirc;u chuẩn nghi&ecirc;m ngặt về bảo vệ sức khỏe con người v&agrave; m&ocirc;i trường của Nhật Bản.</p>\r\n\r\n<p>M&agrave;u sắc sản phẩm tinh tế, đa dạng. Ng&oacute;i Nakamura c&oacute; độ bền cơ học cao, đặc biệt độ dai va đập cao hơn c&aacute;c loại ng&oacute;i kh&aacute;c tới 16 lần. Sản phẩm thỏa m&atilde;n c&aacute;c y&ecirc;u cầu của ti&ecirc;u chuẩn c&ocirc;ng nghiệp Nhật Bản, JIS A 5402-2002.</p>\r\n\r\n<p>Với c&ocirc;ng nghệ v&agrave; vật liệu sơn phủ đặc biệt, ng&oacute;i Nakamura c&oacute; độ bền m&agrave;u tr&ecirc;n 30 năm, kh&ocirc;ng bị r&ecirc;u mốc trong điều kiện kh&iacute; hậu n&oacute;ng ẩm của Việt Nam.</p>\r\n', 'Ngói màu Nagakawa', 0),
(36, 'Tôn HOA SEN GOLD cách nhiệt màu đỏ', 'ton-hoa-sen-gold-cach-nhiet-mau-do', '4b911f9980b6c1d70ce249b4759e2da1.jpg', 'a405adfdd07becf7e029af83d562347f.jpg', '262584f2efa6c6413a3808abc0ca1dbd.jpg', '2022-08-18 14:38:52', '1', '2022-08-18 14:38:52', '1', 1, 1, 0, '<p>Sản phẩm t&ocirc;n lạnh m&agrave;u HOA SEN GOLD l&agrave; d&ograve;ng sản phẩm cao cấp, chất lượng cao của Tập đo&agrave;n Hoa Sen, được phủ lớp mạ hợp kim nh&ocirc;m-kẽm v&agrave; lớp sơn cao cấp n&ecirc;n c&oacute; độ bền vượt trội, khả năng chống h&oacute;a chất, chống chịu thời tiết ưu việt, ph&ugrave; hợp cho những ứng dụng y&ecirc;u cầu độ bền cao, tuổi thọ sử dụng l&acirc;u d&agrave;i, đặc biệt ph&ugrave; hợp cho c&aacute;c ứng dụng ngoại thất như m&aacute;i lợp, v&aacute;ch v&agrave; c&aacute;c tấm panel. Đặc biệt, sản phẩm HOA SEN GOLD được bảo h&agrave;nh chống thủng dột l&ecirc;n đến 30 năm v&agrave; bảo h&agrave;nh chống phai m&agrave;u trong v&ograve;ng 10 năm kể từ ng&agrave;y sản xuất.</p>\r\n\r\n<p>Ứng dụng phổ biến: Sử dụng lợp m&aacute;i hoặc ốp v&aacute;ch nh&agrave; d&acirc;n dụng, văn ph&ograve;ng, cao ốc, c&ocirc;ng tr&igrave;nh v&agrave; sử dụng để lợp cho c&aacute;c m&aacute;i nh&agrave; c&oacute; kiến tr&uacute;c nhiều m&aacute;i theo kiểu nh&agrave; biệt thự .v.v...</p>\r\n', 'Tôn HOA SEN GOLD cách nhiệt màu đỏ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(225) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `address`, `img`, `created`, `trash`, `status`) VALUES
(1, 'ADMIN', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'admin@gmail.com', 1, '0167892615', 'Pleiku', 'user-group.png', '2019-04-23 09:16:16', 1, 1),
(2, 'Quản lý', 'quanly', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'quanly@gmail.com', 1, '0985657410', 'Pleiku', 'bc0d4c186522764fc9457b7bacb635e4.png', '2019-04-25 22:08:18', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Toàn quyền', '2019-05-14 23:29:15', 1, '2019-05-14 23:29:15', 4, 1, 1, 1),
(2, 'Nhân viên', '2019-05-14 23:29:21', 1, '2019-05-14 23:29:21', 4, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_discount`
--
ALTER TABLE `db_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_district`
--
ALTER TABLE `db_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matp` (`provinceid`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `province` (`province`),
  ADD KEY `district` (`district`),
  ADD KEY `province_2` (`province`),
  ADD KEY `district_2` (`district`),
  ADD KEY `province_3` (`province`),
  ADD KEY `district_3` (`district`);

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `orderid` (`orderid`);

--
-- Indexes for table `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer` (`producer`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `db_province`
--
ALTER TABLE `db_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `db_discount`
--
ALTER TABLE `db_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `db_district`
--
ALTER TABLE `db_district`
  ADD CONSTRAINT `db_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `db_province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_order`
--
ALTER TABLE `db_order`
  ADD CONSTRAINT `db_order_ibfk_2` FOREIGN KEY (`province`) REFERENCES `db_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_order_ibfk_3` FOREIGN KEY (`district`) REFERENCES `db_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_order_ibfk_4` FOREIGN KEY (`customerid`) REFERENCES `db_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD CONSTRAINT `db_orderdetail_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `db_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_orderdetail_ibfk_3` FOREIGN KEY (`orderid`) REFERENCES `db_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_product`
--
ALTER TABLE `db_product`
  ADD CONSTRAINT `db_product_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `db_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_product_ibfk_2` FOREIGN KEY (`producer`) REFERENCES `db_producer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `db_user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `db_usergroup` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
