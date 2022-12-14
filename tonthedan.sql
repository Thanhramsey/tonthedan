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
(11, 't??o', '09123999', 'teo@gmail.com', 'hehehe', '2022/8/2 10:43:23', 1, 1, 't??o'),
(12, 't??o', '0129391029', 'teo@gmail.com', '?????t 1 b??n', '2022/8/4 14:48:28', 0, 1, 't??o'),
(13, 'Ti???n', '012939129', 'tien@gmail.com', 'T??i mu???n ?????t 1 b??n v??o ng??y mai', '2022/8/4 15:6:53', 0, 1, 'Ti???n'),
(14, 'Ti???n', '012939129', 'tien@gmail.com', 'T??i mu???n ?????t 1 b??n v??o ng??y mai', '2022/8/4 15:8:5', 0, 1, 'Ti???n'),
(15, 'ti???n', '09213829', 'tien@gmail.com', 't??i mu???n ?????t 1 b??n', '2022/8/4 15:11:30', 0, 1, 'ti???n'),
(16, 'th??nh', '0392348919', 'tien@gmail.com', 't??i mu???n ?????t 1 b??n', '2022/8/4 15:13:49', 0, 1, 'th??nh'),
(17, 'th??nh', '0392348919', 'tien@gmail.com', 't??i mu???n ?????t 1 b??n', '2022/8/4 15:17:26', 0, 1, 'th??nh'),
(18, 't??o', '09123199', 'teo@gmail.com', 'tui mu???n ??n', '2022/8/4 15:22:50', 0, 1, 't??o'),
(19, 'Th??nh', '0969128391', 'thanhwilshere96@gmail.com', 'T??i quan t??m ?????n s???n ph???m', '2022/8/10 9:1:53', 0, 1, 'Th??nh'),
(20, 'Th??nh', '0969128391', 'thanhwilshere96@gmail.com', 'T??i quan t??m ?????n s???n ph???m', '2022/8/10 9:3:9', 0, 1, 'Th??nh'),
(21, 'Ch????ng', '0129349192', 'chuong@gmail.com', 'T??i r???t th??ch s??m , h??y li??n l???c v???i t??i !', '2022/8/10 9:9:4', 0, 1, 'Ch????ng'),
(22, 'th??nh', '012939101', 'thanh@gmail.com', 'hehehehehe', '2022/8/10 9:12:5', 0, 1, 'th??nh'),
(23, 'ban', '012039012', 'ban@gmail.com', 'hehe', '2022/8/16 8:26:9', 0, 1, 'ban'),
(24, 't??o', '0293010', 'teo@gmail.com', 'hehe', '2022/8/16 8:29:21', 0, 1, 't??o'),
(25, 'Test', '096949', 'hehe@gmail.com', 'aaa', '2022/8/18 14:47:45', 0, 1, 'Test'),
(26, 'T??o', '0230940394', 'teo@gmail.com', '??dasdasdasdasdas', '2022/8/18 14:55:21', 0, 1, 'T??o'),
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
(7, 'B???ng gi?? t??n l???nh HOA SEN th??ng 7/2022', 'bang-gia-ton-lanh-hoa-sen-thang-7-2022', '', '<p>Gi&aacute; t&ocirc;n Hoa Sen c&oacute; th??? thay ?????i ph??? thu???c v&agrave;o nhu c???u th??? tr?????ng do ??&oacute; ????? c&oacute; ???????c gi&aacute; t&ocirc;n Hoa Sen Ch&iacute;nh x&aacute;c qu&yacute; kh&aacute;ch n&ecirc;n li&ecirc;n h??? t???i ?????i l&yacute; t&ocirc;n Hoa Sen ????? nh???n b&aacute;o gi&aacute; ch&iacute;nh x&aacute;c.</p>\r\n\r\n<p>T&ocirc;n Th??? D&acirc;n&nbsp;c???p nh???t&nbsp;<strong>b???ng b&aacute;o gi&aacute; t&ocirc;n Hoa Sen&nbsp;</strong>????? qu&yacute; kh&aacute;ch h&agrave;ng tham kh???o</p>\r\n\r\n<p><strong>B???NG B&Aacute;O GI&Aacute; T&Ocirc;N 9 S&Oacute;NG VU&Ocirc;NG &ndash; 5 S&Oacute;NG VU&Ocirc;NG &ndash; 13 S&Oacute;NG LA PH&Ocirc;NG &ndash; T&Ocirc;N C&Aacute;CH NHI???T &ndash; T&Ocirc;N CLIPLOCK</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"/web/public/upload/images/bang-bao-gia-ton-2.jpg\" style=\"height:1200px; width:652px\" /></strong></p>\r\n', 'Untitled_design.png', '2022-08-02 14:11:52', '1', '2022-08-02 14:16:53', '1', 1, 1),
(8, 'Tuy???n D???ng ', 'tuyen-dung', '', '<p>C???n tuy???n c&aacute;c v??? tr&iacute; c&ocirc;ng vi???c nh?? sau</p>\r\n\r\n<p>- 2 t???p v???</p>\r\n\r\n<p>- 1 ph??? b???p</p>\r\n\r\n<p>- 1 b???o v???</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e74c3c\">Li&ecirc;n h??? : 096912312 !</span></p>\r\n', '6.jpg', '2022-08-04 14:52:28', '1', '2022-08-18 14:40:47', '1', 1, 0),
(9, 'B??o gi?? t??n l???p m??i th??ng 08/2022 chi ti???t', 'bao-gia-ton-lop-mai-thang-08-2022-chi-tiet', 'B??o gi?? t??n l???p m??i th??ng 08/2022 chi ti???t', '<h3><strong>C&aacute;c lo???i t&ocirc;n l???p ch???t l?????ng hi???n nay</strong></h3>\r\n\r\n<p>C&aacute;c lo???i t&ocirc;n l???p x&acirc;y d???ng hi???n nay g???n nhi???u th????ng hi???n nh?? : t&ocirc;n Vi???t Nh???t, t&ocirc;n Hoa Sen, t&ocirc;n Nam Kim, t&ocirc;n ?????i Thi&ecirc;n L???c, t&ocirc;n ??&ocirc;ng &Aacute;, t&ocirc;n Sunco, t&ocirc;n Zacs, t&ocirc;n Olympic&hellip;.. v???i c&aacute;c ch???ng lo???i nh?? : t&ocirc;n l???nh, t&ocirc;n &uacute;p n&oacute;c, t&ocirc;n s&agrave;n, t&ocirc;n ????? PU, t&ocirc;n s&oacute;ng vu&ocirc;ng, t&ocirc;n s&oacute;ng tr&ograve;n, t&ocirc;n s&oacute;ng ng&oacute;i, t&ocirc;n c&aacute;n 5 s&oacute;ng, t&ocirc;n c&aacute;n 9 s&oacute;ng, t&ocirc;n k???m &hellip;..vv r???t r???t nhi???u lo???i, nh??ng k??? tr&ecirc;n l&agrave; c&aacute;c lo???i th&ocirc;ng d???ng .</p>\r\n\r\n<p><img alt=\"T??n m??u - BAOGIATHEPXAYDUNG.COM\" src=\"https://baogiathepxaydung.com/wp-content/uploads/2020/02/ton-mau.png\" style=\"height:400px; width:800px\" title=\"B??o gi?? t??n l???p m??i th??ng [thoigian] chi ti???t 2\" /></p>\r\n\r\n<h3><strong>B&aacute;o gi&aacute; t&ocirc;n l???p m&aacute;i m???i nh???t th&aacute;ng 08/2022</strong></h3>\r\n\r\n<p>B&aacute;o gi&aacute; t&ocirc;n l???p m&aacute;i lu&ocirc;n ???????c c???p nh???t, ch&uacute;ng t&ocirc;i chuy&ecirc;n cung c???p t&ocirc;n l???p, s???t th&eacute;p t???i th&agrave;nh ph??? H??? Ch&iacute; Minh, Nha Trang Kh&aacute;nh H&ograve;a, ??&agrave; N???ng, th&agrave;nh ph??? H&agrave; N???i v&agrave; c&aacute;c t???nh th&agrave;nh kh&aacute;c &hellip;. vv. V???i ph????ng ti???n v???n chuy???n h&ugrave;ng h???u v&agrave; ?????i ng?? nh&acirc;n vi&ecirc;n chuy&ecirc;n nghi???p, ch&uacute;ng t&ocirc;i b&aacute;o gi&aacute; t&ocirc;n l???p r??? nh???t, nhanh nh???t , ch&iacute;nh x&aacute;c nh???t, v???n chuy???n c??? ng&agrave;y l???n ??&ecirc;m 24/24 ?????n m???i c&ocirc;ng tr&igrave;nh ??? c&aacute;c t???nh th&agrave;nh tr&ecirc;n c??? n?????c.</p>\r\n\r\n<h4><strong>B???ng b&aacute;o gi&aacute; t&ocirc;n l???p th&aacute;ng 08/2022</strong></h4>\r\n\r\n<p>?????c bi???t :&nbsp;<em>C&oacute; chi???t kh???u cho ng?????i mua h&agrave;ng + v???n chuy???n t???n n??i</em></p>\r\n\r\n<table id=\"tablepress-41\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"3\">B???ng gi&aacute; t&ocirc;n - Pu - gi???y b???c v&agrave; ph??? ki???n mang t&iacute;nh ch???t tham kh???o, c&ograve;n r???t nhi???u h&atilde;ng t&ocirc;n kh&aacute;c n???a, ????? h??? tr??? ??&uacute;ng nhu c???u vui l&ograve;ng g???i t???i hotline :&nbsp;<strong>&nbsp;0269 3 777879</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n			<p><strong>T&ocirc;n m&agrave;u ( 5 s&oacute;ng, 9 s&oacute;ng, 13 s&oacute;ng la ph&ocirc;ng, s&oacute;ng tr&ograve;n )</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>????? d&agrave;y in tr&ecirc;n t&ocirc;n</td>\r\n			<td>Tr???ng l?????ng (Kg/m )</td>\r\n			<td>????n gi&aacute; (Kh??? 1,07m )</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2 dem 05</td>\r\n			<td>1.70</td>\r\n			<td>70.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3 dem 00</td>\r\n			<td>2.30</td>\r\n			<td>76.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3 dem 50</td>\r\n			<td>2.70</td>\r\n			<td>85.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 00</td>\r\n			<td>3.05</td>\r\n			<td>92.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 00</td>\r\n			<td>3.25</td>\r\n			<td>101.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 50</td>\r\n			<td>3.50</td>\r\n			<td>107.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 50</td>\r\n			<td>3.70</td>\r\n			<td>109.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5 dem 00</td>\r\n			<td>4.10</td>\r\n			<td>117.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n			<p><strong>T&ocirc;n m&agrave;u Hoa Sen + ??&ocirc;ng &Aacute; ( 5 s&oacute;ng, 9 s&oacute;ng, 13 s&oacute;ng la ph&ocirc;ng, s&oacute;ng tr&ograve;n )</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>??&ocirc;ng &Aacute; 4,0 dem</td>\r\n			<td>3.40</td>\r\n			<td>113.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>??&ocirc;ng &Aacute; 4,5 dem</td>\r\n			<td>3.90</td>\r\n			<td>131.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>??&ocirc;ng &Aacute; 5.0 dem</td>\r\n			<td>4.40</td>\r\n			<td>141.500</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hoa Sen 4,0 dem</td>\r\n			<td>3.40</td>\r\n			<td>122.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hoa Sen 4,5 dem</td>\r\n			<td>3.90</td>\r\n			<td>138.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hoa Sen 5,0 dem</td>\r\n			<td>4.40</td>\r\n			<td>152.500</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n			<p><strong>T&ocirc;n l???nh ( 5 s&oacute;ng, 9 s&oacute;ng, 13 s&oacute;ng la ph&ocirc;ng, s&oacute;ng tr&ograve;n )</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2 dem 30</td>\r\n			<td>2.35</td>\r\n			<td>74.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3 dem 20</td>\r\n			<td>2.75</td>\r\n			<td>82.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3 dem 30</td>\r\n			<td>3.05</td>\r\n			<td>89.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3 dem 60</td>\r\n			<td>3.25</td>\r\n			<td>91.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 20</td>\r\n			<td>3.70</td>\r\n			<td>112.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 50</td>\r\n			<td>4.10</td>\r\n			<td>121.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n			<p><strong>T&ocirc;n c&aacute;n PU m&agrave;u v&agrave; l???nh ( 5 s&oacute;ng, 9 s&oacute;ng )</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&ocirc;n 5 s&oacute;ng PU d&agrave;y 16ly</td>\r\n			<td>PU + gi???y b???c</td>\r\n			<td>75.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&ocirc;n 9 s&oacute;ng PU d&agrave;y 16ly</td>\r\n			<td>PU + gi???y b???c</td>\r\n			<td>75.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n			<p><strong>T&ocirc;n Klip Lock( Kh&ocirc;ng d&ugrave;ng ??ai ) C&ocirc;ng ngh??? m???i l???p kh&ocirc;ng tr&agrave;n n?????c, kh&ocirc;ng th???y v&iacute;t</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&ocirc;n m&agrave;u ????? d&agrave;y in tr&ecirc;n t&ocirc;n</td>\r\n			<td>Tr???ng l?????ng (Kg/m )</td>\r\n			<td>????n gi&aacute; (Kh??? 460 mm )</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 00</td>\r\n			<td>3.25</td>\r\n			<td>52.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 50</td>\r\n			<td>3.7</td>\r\n			<td>58.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>??&ocirc;ng &Aacute; 4,0 dem</td>\r\n			<td>3.4</td>\r\n			<td>59.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>??&ocirc;ng &Aacute; 4,5 dem</td>\r\n			<td>3.9</td>\r\n			<td>65.500</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n			<p><strong>T&ocirc;n m&agrave;u s&oacute;ng ng&oacute;i ( kh??? 1,07m ) m&agrave;u xanh ng???c, ??&ocirc; ?????m, v&agrave;ng kem, x&aacute;m l&ocirc;ng chu???t</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>????? d&agrave;y in tr&ecirc;n t&ocirc;n</td>\r\n			<td>Tr???ng l?????ng (Kg/m )</td>\r\n			<td>????n gi&aacute; (Kh??? 1,07m )</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 00</td>\r\n			<td>3.05</td>\r\n			<td>108.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 00</td>\r\n			<td>3.25</td>\r\n			<td>118.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 50</td>\r\n			<td>3.50</td>\r\n			<td>121.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4 dem 50</td>\r\n			<td>3.70</td>\r\n			<td>127.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5 dem 00</td>\r\n			<td>4.10</td>\r\n			<td>128.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>??&ocirc;ng &Aacute; 4,0 dem</td>\r\n			<td>3.40</td>\r\n			<td>128.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>??&ocirc;ng &Aacute; 4,5 dem</td>\r\n			<td>3.90</td>\r\n			<td>141.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n			<p><strong>Nh&agrave; ph&acirc;n ph???i c&aacute;ch nhi???t C&aacute;t T?????ng</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Di???n gi???i</td>\r\n			<td>&nbsp;????n gi&aacute; / m</td>\r\n			<td>&nbsp;Gi&aacute; cu???n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>P1 C&aacute;t T?????ng 1,55m x 40m ( 62m )</td>\r\n			<td>16.130</td>\r\n			<td>1.000.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>P2 C&aacute;t T?????ng 1,55m x 40m ( 62m )</td>\r\n			<td>21.260</td>\r\n			<td>1.318.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>A1 C&aacute;t T?????ng 1,55m x 40m ( 62m )</td>\r\n			<td>18.710</td>\r\n			<td>1.160.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>A2 C&aacute;t T?????ng 1,55m x 40m ( 62m )</td>\r\n			<td>27.200</td>\r\n			<td>1.686.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B??ng keo 2 m???t ( cu???n )</td>\r\n			<td>36.000</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>N???p t&ocirc;n c&aacute;ch nhi???t ( m )</td>\r\n			<td>3.500</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n			<p>B???ng gi&aacute; thay ?????i th?????ng xuy&ecirc;n ho???c qu&yacute; kh&aacute;ch c&oacute; th&ecirc;m y&ecirc;u c???u kh&aacute;c, xin vui l&ograve;ng li&ecirc;n h??? ph&ograve;ng kinh doanh ????? c&oacute; gi&aacute; ch&iacute;nh x&aacute;c nh???t<br />\r\n			Hotline :&nbsp;<strong>&nbsp;0269 3 777879</strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>B???n ?????c ch&uacute; &yacute; : B???ng gi&aacute; t&ocirc;n th&eacute;p ph&iacute;a tr&ecirc;n c???a ch&uacute;ng t&ocirc;i ch??? mang t&iacute;nh tham kh???o. Do gi&aacute; th&eacute;p x&acirc;y d???ng c&oacute; th??? thay ?????i theo t???ng ng&agrave;y, th???m ch&iacute; l&agrave; t???ng gi???. Ch&iacute;nh v&igrave; th???, ????? nh???n&nbsp;<a href=\"https://baogiathepxaydung.vn/\" target=\"_blank\">b???ng gi&aacute; t&ocirc;n l???p m???i nh???t</a>&nbsp;chi ti???t nh???t cho c&ocirc;ng tr&igrave;nh c???a m&igrave;nh, qu&yacute; b???n h&atilde;y g???i cho ch&uacute;ng t&ocirc;i theo th&ocirc;ng tin ph&iacute;a d?????i nh&eacute;.</p>\r\n\r\n<p>Trong ??&oacute; :</p>\r\n\r\n<ul>\r\n	<li>B&aacute;o gi&aacute; t&ocirc;n th&eacute;p tr&ecirc;n c&oacute; th??? t??ng gi???m theo th???i ??i???m xem b&agrave;i ho???c theo kh???i l?????ng ?????t h&agrave;ng.</li>\r\n	<li>????n gi&aacute; t&ocirc;n th&eacute;p tr&ecirc;n ??&atilde; bao g???m thu??? VAT 10% v&agrave; chi ph&iacute; v???n chuy???n v??? t???n c&ocirc;ng tr&igrave;nh ( th???a thu???n ).</li>\r\n	<li>Ti&ecirc;u chu???n h&agrave;ng h&oacute;a : M???i 100% ch??a qua s??? d???ng, do nh&agrave; m&aacute;y s???n xu???t.</li>\r\n	<li>Dung sai tr???ng l?????ng v&agrave; ????? d&agrave;y th&eacute;p h???p, th&eacute;p ???ng, t&ocirc;n, x&agrave; g??? &plusmn; 5-7%, th&eacute;p h&igrave;nh &plusmn; 10-13% nh&agrave; m&aacute;y cho ph&eacute;p. N???u ngo&agrave;i quy ph???m tr&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i ch???p nh???n cho tr???, ?????i ho???c gi???m gi&aacute;. H&agrave;ng tr??? l???i ph???i ??&uacute;ng nh?? l&uacute;c nh???n (kh&ocirc;ng s??n, kh&ocirc;ng c???t, kh&ocirc;ng g??? s&eacute;t)</li>\r\n	<li>Ph????ng th???c thanh to&aacute;n ?????t c???c : theo th???a thu???n</li>\r\n	<li>Ki???m tra h&agrave;ng t???i c&ocirc;ng tr&igrave;nh ho???c ?????a ??i???m giao nh???n, nh???n ????? thanh to&aacute;n, m???i b???t ?????u b&agrave;n giao ho???c xu???ng h&agrave;ng.</li>\r\n	<li>B&aacute;o gi&aacute; c&oacute; hi???u l???c cho t???i khi c&oacute; th&ocirc;ng b&aacute;o m???i.</li>\r\n	<li>R???t h&acirc;n h???nh ???????c ph???c v??? qu&yacute; kh&aacute;ch.</li>\r\n</ul>\r\n', 'mrl_03_pu_5s_c1.jpg', '2022-08-05 14:05:45', '1', '2022-08-18 14:42:21', '1', 1, 1),
(10, 'B???ng gi?? ng??i l???p nh?? c??c lo???i n??m 2022', 'bang-gia-ngoi-lop-nha-cac-loai-nam-2022', '', '<h2><strong>B???ng gi&aacute; ng&oacute;i l???p nh&agrave; c&aacute;c lo???i n??m 2022</strong></h2>\r\n\r\n<h3><strong>B???ng gi&aacute; ng&oacute;i ?????ng T&acirc;m</strong></h3>\r\n\r\n<p><img alt=\"gi?? ng??i l???p nh?? ?????ng t??m\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/Screenshot-217.jpg\" style=\"height:832px; width:897px\" /></p>\r\n\r\n<p>B???ng gi&aacute; ng&oacute;i l???p nh&agrave; ?????ng T&acirc;m</p>\r\n\r\n<h3><strong>B???ng gi&aacute; ng&oacute;i Viglacera</strong></h3>\r\n\r\n<p><img alt=\"gi?? ng??i l???p nh?? viglacera\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/Screenshot-211_LI.jpg\" style=\"height:832px; width:1143px\" /><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/Screenshot-212_LI.jpg\" style=\"height:798px; width:1151px\" /><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/Screenshot-213_LI.jpg\" style=\"height:396px; width:1152px\" /></p>\r\n\r\n<h3><strong>B???ng gi&aacute; ng&oacute;i Prime</strong></h3>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/Screenshot-215_LI.jpg\" style=\"height:664px; width:1150px\" /><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/Screenshot-216_LI.jpg\" style=\"height:604px; width:1152px\" /></p>\r\n\r\n<p><strong>XEM TH&Ecirc;M:</strong></p>\r\n\r\n<p><a href=\"https://giavatlieuxaydung.com/gia-vlxd/gia-vlxd-hoan-thien/gia-ton-lanh/\" target=\"_blank\">Tham Kh???o Ngay B???ng Gi&aacute; T&ocirc;n L???nh 2022</a></p>\r\n\r\n<p><a href=\"https://giavatlieuxaydung.com/gia-vlxd/gia-vlxd-hoan-thien/gia-ton-xop/\" target=\"_blank\">T???ng H???p B&aacute;o Gi&aacute; T&ocirc;n X???p C&aacute;c Lo???i 2022</a></p>\r\n\r\n<p><a href=\"https://giavatlieuxaydung.com/trang-tri-noi-ngoai-that/cach-chon-gach-op-mat-tien-re-dep-va-phu-hop/\" target=\"_blank\">C&aacute;ch ch???n g???ch ???p m???t ti???n r???, ?????p v&agrave; ph&ugrave; h???p</a></p>\r\n\r\n<h2><strong>??u ??i???m c???a g???ch ng&oacute;i l???p nh&agrave;</strong></h2>\r\n\r\n<h3><strong>M&agrave;u s???c ??a d???ng, hi???n ?????i</strong></h3>\r\n\r\n<p>N???u nh?? ng&oacute;i ?????t nung truy???n th???ng ch??? c&oacute; 2 m&agrave;u ????? v&agrave; ????? s???m th&igrave; g???ch ng&oacute;i m&agrave;u hi???n ?????i l???i c&oacute; nhi???u l???a ch???n h??n h???n v???i nhi???u m&agrave;u s???c ??a d???ng, ph&ugrave; h???p v???i nhi???u ki???u ki???n tr&uacute;c nh&agrave; ??? hi???n nay.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/bmvmTD2-512x342.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<h3><strong>Ch???ng r&ecirc;u, m???c t???t</strong></h3>\r\n\r\n<p>V???i v???t li???u l???p m&aacute;i truy???n th???ng sau 1 th???i gian s??? d???ng s??? b??? b&aacute;m r&ecirc;u m???c, nh??ng c&aacute;c lo???i ng&oacute;i l???p nh&agrave; hi???n nay c&oacute; th??? gi???i quy???t ???????c v???n ????? n&agrave;y.</p>\r\n\r\n<p>V???i c&ocirc;ng ngh??? ph??? s??n Nano, ng&oacute;i l???p ho&agrave;n to&agrave;n c&oacute; kh??? n??ng ch???ng rong r&ecirc;u t???t v&agrave; lu&ocirc;n gi??? v??? ?????p hi???n ?????i, t????i m???i cho c&ocirc;ng tr&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/Jm2VACr-512x357.jpg\" style=\"height:418px; width:600px\" /></p>\r\n\r\n<h3><strong>C&oacute; kh??? n??ng c&aacute;ch &acirc;m, c&aacute;ch nhi???t t???t</strong></h3>\r\n\r\n<p>C??ng nh?? ng&oacute;i truy???n th???ng, c&aacute;c lo???i ng&oacute;i l???p hi???n nay c??ng c&oacute; kh??? n??ng c&aacute;ch nhi???t t???t gi&uacute;p m&ugrave;a h&egrave; m&aacute;t m??? v&agrave; m&ugrave;a ??&ocirc;ng ???????c ???m &aacute;p. Ngo&agrave;i ra, m&aacute;i ng&oacute;i c??ng c&oacute; t&iacute;nh c&aacute;ch &acirc;m t???t, gi&uacute;p ng&ocirc;i nh&agrave; tr&aacute;nh xa kh???i c&aacute;c ti???ng ???n b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/Y7Q8puF-512x288.jpg\" style=\"height:338px; width:600px\" /></p>\r\n\r\n<h3><strong>K&iacute;ch th?????c vi&ecirc;n ng&oacute;i ?????m b???o ti&ecirc;u chu???n</strong></h3>\r\n\r\n<p>V???i c&ocirc;ng ngh??? hi???n ?????i, m???i vi&ecirc;n ng&oacute;i ???????c s???n xu???t ?????u tu&acirc;n theo nh???ng quy chu???n kh???t khe c???a nh&agrave; m&aacute;y, ?????m b???o mang ?????n nh???ng s???n ph???m c&oacute; ????? ?????ng nh???t cao, ??&aacute;p ???ng ti&ecirc;u chu???n v&agrave; thu???n ti???n cho qu&aacute; tr&igrave;nh thi c&ocirc;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/ejb8CV1-512x341.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<h3><strong>C&oacute; ph??? ki???n h??? tr??? ??i k&egrave;m</strong></h3>\r\n\r\n<p>T???i c&aacute;c v??? tr&iacute; ?????c bi???t c???a c???u tr&uacute;c m&aacute;i nh&agrave; c???n ph???i c&oacute; c&aacute;ch x??? l&iacute; ph&ugrave; h???p, l???p nh&agrave; b???ng g???ch ng&oacute;i s??? ??i k&egrave;m v???i nhi???u ph??? ki???n nh?? cu???i m&aacute;i, cu???i n&oacute;c, gh&eacute;p ba, cu???i r&igrave;a&hellip; gi&uacute;p m&aacute;i ?????p h??n t???i c&aacute;c v??? tr&iacute; ??&oacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/iEJW53e-512x288.jpg\" style=\"height:337px; width:600px\" /></p>\r\n\r\n<h3><strong>Th&acirc;n thi???n v???i m&ocirc;i tr?????ng</strong></h3>\r\n\r\n<p>C&aacute;c lo???i ng&oacute;i ng&agrave;y nay ???????c s???n xu???t b???ng c&ocirc;ng ngh??? kh&ocirc;ng nung hi???n ?????i, v???a th&acirc;n thi???n m&ocirc;i tr?????ng v???a c&oacute; ch???t l?????ng t???t, kh&ocirc;ng x???y ra t&igrave;nh tr???ng cong v&ecirc;nh sau 1 th???i gian s??? d???ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/Tw5Yxnn-512x327.jpg\" style=\"height:383px; width:600px\" /></p>\r\n\r\n<h2><strong>C&aacute;c lo???i ng&oacute;i l???p nh&agrave; ph??? bi???n nh???t hi???n nay</strong></h2>\r\n\r\n<h3><strong>Ng&oacute;i ?????t nung</strong></h3>\r\n\r\n<p>Ng&oacute;i ?????t nung xu???t ph&aacute;t t??? lo???i ng&oacute;i truy???n th???ng ra ?????i t??? r???t l&acirc;u c???a n?????c ta. Hi???n nay, lo???i ng&oacute;i n&agrave;y ??&atilde; ???????c s???n xu???t theo quy tr&igrave;nh hi???n ?????i h??n, kh&ocirc;ng s??? d???ng ph????ng th???c th??? c&ocirc;ng nh?? ng&agrave;y x??a.</p>\r\n\r\n<p>Lo???i ng&oacute;i n&agrave;y ???????c l&agrave;m t??? ?????t s&eacute;t nung ??? nhi???t ????? cao, nh??? v???y m&agrave; n&oacute; c&oacute; ????? b???n r???t cao, ch???u ???????c m???i th???i ti???t kh???c nghi???t, ????? b???n c&oacute; th??? l&ecirc;n t???i 100 n??m v&agrave; c&oacute; th??? t&aacute;i s??? d???ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/ngoi-lop-nha-1-1.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p>M???t s??? lo???i ng&oacute;i ?????t nung</p>\r\n\r\n<p>Ng&oacute;i ?????t nung ???????c chia th&agrave;nh 2 lo???i:&nbsp;<strong>ng&oacute;i kh&ocirc;ng tr&aacute;ng men&nbsp;</strong>v&agrave;&nbsp;<strong>ng&oacute;i tr&aacute;ng men</strong>. C&ugrave;ng nhi???u ki???u d&aacute;ng ??a d???ng nh??: ng&oacute;i m??i h&agrave;i ????n/k&eacute;p, ng&oacute;i &acirc;m d????ng, ng&oacute;i ti???u, ng&oacute;i l??u ly,&hellip;</p>\r\n\r\n<h3><strong>Ng&oacute;i b&ecirc; t&ocirc;ng</strong></h3>\r\n\r\n<p>Ng&oacute;i b&ecirc; t&ocirc;ng ???????c s???n xu???t t??? c&aacute;t, xi m??ng&hellip; v&agrave; kh&ocirc;ng ???????c nung nh?? ng&oacute;i ?????t s&eacute;t. Ng&oacute;i b&ecirc; t&ocirc;ng hi???n ???????c s???n xu???t b???i c&aacute;c th????ng hi???u t??? trong v&agrave; ngo&agrave;i n?????c.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/ngoi-lop-nha-2.jpg\" style=\"height:491px; width:600px\" /></p>\r\n\r\n<p>Ng&oacute;i b&ecirc; t&ocirc;ng</p>\r\n\r\n<h3><strong>Ng&oacute;i trang tr&iacute;</strong></h3>\r\n\r\n<p>Ng&oacute;i trang tr&iacute; l&agrave; lo???i ng&oacute;i ???????c s???n xu???t theo k&iacute;ch th?????c nh???, c&oacute; th??? tr&aacute;ng men ho???c kh&ocirc;ng tr&aacute;ng men, d&ugrave;ng ????? ???p l&ecirc;n m&aacute;i nh&agrave; ??&atilde; ??&uacute;c s???n v???i m???c ??&iacute;ch trang tr&iacute; ch??? kh&ocirc;ng ????? l???p nh?? c&aacute;c lo???i ng&oacute;i kh&aacute;c.</p>\r\n\r\n<p><a href=\"https://l.linklyhq.com/l/1CCWm\" target=\"_blank\"><img alt=\"Gi?? tr???n th???ch cao\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2022/05/banner-ads-gia-tran-thach-cao-1.gif\" /></a></p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/ngoi-trang-tri.jpg\" style=\"height:359px; width:600px\" /></p>\r\n\r\n<p>Ng&oacute;i trang tr&iacute;</p>\r\n\r\n<h3><strong>Ng&oacute;i composite</strong></h3>\r\n\r\n<p>Ng&oacute;i composite c&oacute; th&agrave;nh ph???n ch&iacute;nh l&agrave; composite n???n xi m??ng, si&ecirc;u b???n, si&ecirc;u nh???. Lo???i ng&oacute;i n&agrave;y c&oacute; h??? s??? gi&atilde;n n??? v&igrave; nhi???t t???t, ph&ugrave; h???p v???i nh???ng v&ugrave;ng kh&iacute; h???u nh???t ?????nh v&agrave; kh&ocirc;ng ???????c s??? d???ng ph??? bi???n trong h???u h???t c&aacute;c c&ocirc;ng tr&igrave;nh kh&aacute;c.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/ngoi-composite.jpg\" style=\"height:481px; width:600px\" /></p>\r\n\r\n<p>Ng&oacute;i composite</p>\r\n\r\n<h3><strong>Ng&oacute;i c??? &Aacute;c &ndash; ??oa</strong></h3>\r\n\r\n<p>Ng&oacute;i l???p nh&agrave; &Aacute;c &ndash; ??oa ???????c s???n xu???t t??? ??&aacute; tr???m t&iacute;ch Ph&aacute;p, c&oacute; m&agrave;u ??en nh&aacute;nh nh?? than ??&aacute; v&agrave; c&oacute; h&igrave;nh d&aacute;ng gi???ng ng&oacute;i v???y c&aacute;c ho???c c&oacute; h&igrave;nh ch??? nh???t.</p>\r\n\r\n<p>Ng&oacute;i n&agrave;y th?????ng ???????c s??? d???ng cho nh???ng c&ocirc;ng tr&igrave;nh bi???t th??? phong c&aacute;ch ch&acirc;u &Acirc;u, ?????c bi???t l&agrave; nh???ng bi???t th??? x&acirc;y theo ki???n tr&uacute;c Ph&aacute;p.</p>\r\n\r\n<p><img alt=\"\" src=\"https://giavatlieuxaydung.com/wp-content/uploads/2021/05/ngoi-ac-doa.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>Ng&oacute;i c??? &Aacute;c &ndash; ??oa</p>\r\n\r\n<p>V???a r???i l&agrave;&nbsp;<strong>b???ng b&aacute;o gi&aacute; ng&oacute;i l???p nh&agrave;</strong>&nbsp;c???a c&aacute;c th????ng hi???u ?????ng T&acirc;m, Viglacera, ?????t Vi???t, Prime m???i nh???t. Hi v???ng sau b&agrave;i vi???t n&agrave;y c&aacute;c b???n ??&atilde; c&oacute; th??? l???a ch???n cho ng&ocirc;i nh&agrave; c???a m&igrave;nh lo???i ng&oacute;i th&iacute;ch h???p nh???t.</p>\r\n', '122.jpg', '2022-08-18 14:45:20', '1', '2022-08-18 14:45:20', '1', 1, 1);

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
(72, 't???n th??nh', 'thanh1996', 'e10adc3949ba59abbe56e057f20f883e', '', '0969124456', 'thanhwilshere96@gmail.com', '2022-06-13 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_discount`
--

CREATE TABLE `db_discount` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'M?? gi???m gi??',
  `discount` int(11) NOT NULL COMMENT 'S??? ti???n',
  `limit_number` int(11) NOT NULL COMMENT 'gi???i h???n l?????t mua',
  `number_used` int(11) NOT NULL COMMENT 'S??? l?????ng ???? nh???p',
  `expiration_date` date NOT NULL COMMENT 'Ng??y h???t h???n',
  `payment_limit` int(11) NOT NULL COMMENT 'gi???i h???n ????n h??ng t???i thi???u',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'M?? t???',
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
(29, 'T??n Hoa Sen ?????', 'ton-hoa-sen-do', '9c370d6fc8adb3715ade50929716aa6f.jpg', '807b4547c293d563b675a9f2002dfb9d.jpeg', '', '2022-08-18 14:22:16', '1', '2022-08-18 14:22:16', '1', 1, 1, 0, '<h2><strong>???ng d???ng c???a v???t li???u</strong></h2>\r\n\r\n<p>T&ocirc;n m??? m&agrave;u ???????c s???n xu???t tr&ecirc;n d&acirc;y chuy???n c&ocirc;ng ngh??? hi???n ?????i n&ecirc;n c&oacute; ????? b???n cao, c??ng nh?? kh??? n??ng ch???ng ch???u ??n m&ograve;n, r??? s&eacute;t l???n. Ki???u d&aacute;ng ??a d???ng v&agrave; m???u m&atilde; ?????p th&iacute;ch h???p v???i t???ng nhu c???u s??? d???ng kh&aacute;c nhau.</p>\r\n\r\n<ul>\r\n	<li>T&ocirc;n th?????ng ???????c s??? d???ng l&agrave;m t???m l???p, v&aacute;ch ng??n, v&aacute;n tr???n, c???a cu???n&hellip; trong ng&agrave;nh c&ocirc;ng nghi???p x&acirc;y d???ng, d&acirc;n d???ng&hellip;</li>\r\n	<li>T&ocirc;n c&oacute; kh??? n??ng u???n d???o n&ecirc;n d??? d&agrave;ng t???o th&agrave;nh nh???ng h&igrave;nh th&ugrave; kh&aacute;c nhau. V&igrave; v???y, c&oacute; th??? ???????c d&ugrave;ng trong trang tr&iacute; n???i th???t</li>\r\n	<li>V???t li???u c&ograve;n ???????c s??? d???ng ????? ch??? t???o c&aacute;c lo???i ???ng d???n n?????c, tho&aacute;t n?????c</li>\r\n	<li>D&ugrave;ng ????? ch??? t???o c&aacute;c lo???i v??? c???a m???t s??? ????? ??i???n t???, ??i???n l???nh: v??? m&aacute;y gi???t, t??? l???nh ho???c v??? m&aacute;y t&iacute;nh.</li>\r\n	<li>Ngo&agrave;i ra, v???t li???u c&ograve;n ???????c d&ugrave;ng ????? s???n xu???t ngo???i th???t &ocirc; t&ocirc;, xe bu&yacute;t, t&agrave;u h???a, th&ugrave;ng ch???a nhi&ecirc;n li???u.</li>\r\n</ul>\r\n\r\n<h3><strong>??u ??i???m c???a t&ocirc;n</strong></h3>\r\n\r\n<ul>\r\n	<li>C&oacute; ????? b???n cao c&ugrave;ng kh??? n??ng ch???ng ??n m&ograve;n v&agrave; r??? s&eacute;t l???n.</li>\r\n	<li>Th&iacute;ch h???p v???i nhi???u m&ocirc;i tr?????ng kh&aacute;c nhau: V&ugrave;ng kh&iacute; h???u nhi???t ?????i, mi???n bi???n (??n m&ograve;n cao), c&aacute;c v&ugrave;ng c&oacute; ????? ???m th???p,&hellip;</li>\r\n	<li>V???t li???u c&oacute; nhi???u ki???u d&aacute;ng, m???u m&atilde; ?????p m???t th&iacute;ch h???p v???i nhi???u nhu c???u kh&aacute;c nhau.</li>\r\n	<li>Ngo&agrave;i ra t&ocirc;n m??? m&agrave;u c&oacute; kh??? n??ng t???o h&igrave;nh, ch???ng va ?????p n&ecirc;n ???????c d&ugrave;ng trong trong l??nh v???c ??i???n t??? v&agrave; n???i th???t&hellip;</li>\r\n	<li>Ngo&agrave;i ra, v???t li???u c&oacute; kh??? n??ng ch???ng ??n m&ograve;n g???p 4 l???n t&ocirc;n k???m.</li>\r\n</ul>\r\n', 'T??n Hoa Sen ?????', 0),
(30, 'T??n m??u xanh', 'ton-mau-xanh', 'af0e11160ec46c3b9847f0d4ce111e4b.jpeg', '33ff61dce73c4e1413ef74dea771e390.jpeg', '', '2022-08-18 14:23:35', '1', '2022-08-18 14:23:35', '1', 1, 1, 0, '<h2><strong>???ng d???ng c???a v???t li???u</strong></h2>\r\n\r\n<p>T&ocirc;n m??? m&agrave;u ???????c s???n xu???t tr&ecirc;n d&acirc;y chuy???n c&ocirc;ng ngh??? hi???n ?????i n&ecirc;n c&oacute; ????? b???n cao, c??ng nh?? kh??? n??ng ch???ng ch???u ??n m&ograve;n, r??? s&eacute;t l???n. Ki???u d&aacute;ng ??a d???ng v&agrave; m???u m&atilde; ?????p th&iacute;ch h???p v???i t???ng nhu c???u s??? d???ng kh&aacute;c nhau.</p>\r\n\r\n<ul>\r\n	<li>T&ocirc;n th?????ng ???????c s??? d???ng l&agrave;m t???m l???p, v&aacute;ch ng??n, v&aacute;n tr???n, c???a cu???n&hellip; trong ng&agrave;nh c&ocirc;ng nghi???p x&acirc;y d???ng, d&acirc;n d???ng&hellip;</li>\r\n	<li>T&ocirc;n c&oacute; kh??? n??ng u???n d???o n&ecirc;n d??? d&agrave;ng t???o th&agrave;nh nh???ng h&igrave;nh th&ugrave; kh&aacute;c nhau. V&igrave; v???y, c&oacute; th??? ???????c d&ugrave;ng trong trang tr&iacute; n???i th???t</li>\r\n	<li>V???t li???u c&ograve;n ???????c s??? d???ng ????? ch??? t???o c&aacute;c lo???i ???ng d???n n?????c, tho&aacute;t n?????c</li>\r\n	<li>D&ugrave;ng ????? ch??? t???o c&aacute;c lo???i v??? c???a m???t s??? ????? ??i???n t???, ??i???n l???nh: v??? m&aacute;y gi???t, t??? l???nh ho???c v??? m&aacute;y t&iacute;nh.</li>\r\n	<li>Ngo&agrave;i ra, v???t li???u c&ograve;n ???????c d&ugrave;ng ????? s???n xu???t ngo???i th???t &ocirc; t&ocirc;, xe bu&yacute;t, t&agrave;u h???a, th&ugrave;ng ch???a nhi&ecirc;n li???u.</li>\r\n</ul>\r\n\r\n<h3><strong>??u ??i???m c???a t&ocirc;n</strong></h3>\r\n\r\n<ul>\r\n	<li>C&oacute; ????? b???n cao c&ugrave;ng kh??? n??ng ch???ng ??n m&ograve;n v&agrave; r??? s&eacute;t l???n.</li>\r\n	<li>Th&iacute;ch h???p v???i nhi???u m&ocirc;i tr?????ng kh&aacute;c nhau: V&ugrave;ng kh&iacute; h???u nhi???t ?????i, mi???n bi???n (??n m&ograve;n cao), c&aacute;c v&ugrave;ng c&oacute; ????? ???m th???p,&hellip;</li>\r\n	<li>V???t li???u c&oacute; nhi???u ki???u d&aacute;ng, m???u m&atilde; ?????p m???t th&iacute;ch h???p v???i nhi???u nhu c???u kh&aacute;c nhau.</li>\r\n	<li>Ngo&agrave;i ra t&ocirc;n m??? m&agrave;u c&oacute; kh??? n??ng t???o h&igrave;nh, ch???ng va ?????p n&ecirc;n ???????c d&ugrave;ng trong trong l??nh v???c ??i???n t??? v&agrave; n???i th???t&hellip;</li>\r\n	<li>Ngo&agrave;i ra, v???t li???u c&oacute; kh??? n??ng ch???ng ??n m&ograve;n g???p 4 l???n t&ocirc;n k???m.</li>\r\n</ul>\r\n', 'T??n m??u xanh', 0),
(31, 'Ng??i l???p m??u', 'ngoi-lop-mau', '9113864646bcf95107185e3390234357.jpg', '', NULL, '2022-08-18 14:25:51', '1', '2022-08-18 14:25:51', '1', 1, 1, 1, '<h2>Ng&oacute;i l???p m&agrave;u xanh da tr???i</h2>\r\n\r\n<p>K&iacute;ch th?????c ng&oacute;i: 420 x 330mm<br />\r\nTr???ng l?????ng: 4.2 kg/vi&ecirc;n<br />\r\nDi???n t&iacute;ch s??? d???ng: 9 &ndash; 10 vi&ecirc;n/m2</p>\r\n\r\n<p><strong>Ng&oacute;i m&agrave;u </strong>???????c s???n xu???t tr&ecirc;n c&ocirc;ng ngh??? nh???t b???n ki???u d&aacute;ng hi???n ?????i, nhi???u m&agrave;u s???c b???n ?????p, ch???ng th???m ho&agrave;n h???o, kh&ocirc;ng r&ecirc;u m???c, c&aacute;ch nhi???t, ch???ng ch&aacute;y, b???n v???ng v???i th???i gian.</p>\r\n', 'Ng??i l???p m??u', 0),
(32, 'Ng??i s??ng m??u ?????', 'ngoi-song-mau-do', 'e3a1a255553e782ac4c2bcb884e85b3f.jpg', 'f029937f3af2221ed90a849db1a6b869.jpg', '', '2022-08-18 14:28:26', '1', '2022-08-18 14:28:26', '1', 1, 1, 1, '<h2>Ng&oacute;i s&oacute;ng&nbsp; m&agrave;u ?????&nbsp;</h2>\r\n\r\n<p>K&iacute;ch th?????c s???n ph???m: 424x335mm<br />\r\n?????nh l?????ng cho 1m2: 9vi&ecirc;n/m2<br />\r\nTr???ng l?????ng trung b&igrave;nh/vi&ecirc;n (kg): 3kg</p>\r\n\r\n<p><strong>Ng&oacute;i m&agrave;u&nbsp;</strong>&nbsp;???????c s???n xu???t theo b???n quy???n c&ocirc;ng ngh??? v&agrave; tr&ecirc;n d&acirc;y chuy???n thi???t b??? hi???n ?????i nh???t c???a s??? Nh???t B???n. Tr&ecirc;n 60% s???n l?????ng ng&oacute;i s???n xu???t t???i Vi???t Nam ??&atilde; ???????c xu???t kh???u sang Nh???t B???n v&agrave; c&aacute;c qu???c gia kh&aacute;c.</p>\r\n\r\n<p>S???n ph???m ???????c ph&acirc;n ph???i ch&iacute;nh h&atilde;ng v???i gi&aacute; t???t nh???t t???i tonthedan.com.vn. Qu&yacute; kh&aacute;ch h&atilde;y ?????n v&agrave; ch???n l???a nh???ng m???u g???ch ??ng &yacute; nh???t cho c&ocirc;ng tr&igrave;nh c???a m&igrave;nh, tonthedan.com.vn C&aacute;c s???n ph???m do C&ocirc;ng ty ph&acirc;n ph???i cam k???t ??em ?????n s??? h&agrave;i l&ograve;ng cho m???i kh&aacute;ch h&agrave;ng.</p>\r\n', 'Ng??i s??ng m??u ?????', 0),
(33, 'S???t, th??p, x?? g???', 'sat-thep-xa-go', 'd5de14302562abf8a5e2822eac24a9ba.jpg', '0f8ef765f553bac44ba976d446d890cd.jpg', '', '2022-08-18 14:31:05', '1', '2022-08-18 14:31:05', '1', 1, 1, 2, '<p>S???t, th&eacute;p, x&agrave; g??? ch???t l?????ng cao</p>\r\n', 'S???t, th??p, x?? g???', 0),
(34, 'S???t, th??p, x?? g???', 'sat-thep-xa-go', '693d9919de5cf211da50509f4f43ae82.jpg', 'cf3a49eecf75c587cd0edf53a157b768.jpg', '', '2022-08-18 14:31:26', '1', '2022-08-18 14:31:26', '1', 1, 1, 2, '<p>S???t, th&eacute;p, x&agrave; g??? ch???t l?????ng cao.</p>\r\n', 'S???t, th??p, x?? g???', 0),
(35, 'Ng??i m??u Nagakawa', 'ngoi-mau-nagakawa', '74f228c8ec9ed0bf41201deec4282834.jpg', 'f0696a2d02e93ce77ff71cce99c02b3f.jpg', '6a4178a1cdbafa0aa4a4f8a3ab67b622.jpg', '2022-08-18 14:33:37', '1', '2022-08-18 14:33:37', '1', 1, 1, 1, '<h2>Ng&oacute;i m&agrave;u s&oacute;ng Nakamura</h2>\r\n\r\n<p>K&iacute;ch th?????c s???n ph???m: 424x335mm<br />\r\n?????nh l?????ng cho 1m2: 9vi&ecirc;n/m2<br />\r\nTr???ng l?????ng trung b&igrave;nh/vi&ecirc;n (kg): 3kg-3.5kg</p>\r\n\r\n<p><strong>Ng&oacute;i m&agrave;u Nakamura</strong>&nbsp;l&agrave; s???n ph???m li&ecirc;n doanh, ???????c s???n xu???t theo b???n quy???n c&ocirc;ng ngh??? v&agrave; tr&ecirc;n d&acirc;y chuy???n thi???t b??? hi???n ?????i nh???t c???a s??? Nh???t B???n. Tr&ecirc;n 60% s???n l?????ng ng&oacute;i Nakamura s???n xu???t t???i Vi???t Nam ??&atilde; ???????c xu???t kh???u sang Nh???t B???n v&agrave; c&aacute;c qu???c gia kh&aacute;c.</p>\r\n\r\n<p>V???i c&ocirc;ng ngh??? s???n xu???t ti&ecirc;n ti???n v&agrave; nguy&ecirc;n v???t li???u ??&aacute;p ???ng c&aacute;c ti&ecirc;u chu???n nghi&ecirc;m ng???t v??? b???o v??? s???c kh???e con ng?????i v&agrave; m&ocirc;i tr?????ng c???a Nh???t B???n.</p>\r\n\r\n<p>M&agrave;u s???c s???n ph???m tinh t???, ??a d???ng. Ng&oacute;i Nakamura c&oacute; ????? b???n c?? h???c cao, ?????c bi???t ????? dai va ?????p cao h??n c&aacute;c lo???i ng&oacute;i kh&aacute;c t???i 16 l???n. S???n ph???m th???a m&atilde;n c&aacute;c y&ecirc;u c???u c???a ti&ecirc;u chu???n c&ocirc;ng nghi???p Nh???t B???n, JIS A 5402-2002.</p>\r\n\r\n<p>V???i c&ocirc;ng ngh??? v&agrave; v???t li???u s??n ph??? ?????c bi???t, ng&oacute;i Nakamura c&oacute; ????? b???n m&agrave;u tr&ecirc;n 30 n??m, kh&ocirc;ng b??? r&ecirc;u m???c trong ??i???u ki???n kh&iacute; h???u n&oacute;ng ???m c???a Vi???t Nam.</p>\r\n', 'Ng??i m??u Nagakawa', 0),
(36, 'T??n HOA SEN GOLD c??ch nhi???t m??u ?????', 'ton-hoa-sen-gold-cach-nhiet-mau-do', '4b911f9980b6c1d70ce249b4759e2da1.jpg', 'a405adfdd07becf7e029af83d562347f.jpg', '262584f2efa6c6413a3808abc0ca1dbd.jpg', '2022-08-18 14:38:52', '1', '2022-08-18 14:38:52', '1', 1, 1, 0, '<p>S???n ph???m t&ocirc;n l???nh m&agrave;u HOA SEN GOLD l&agrave; d&ograve;ng s???n ph???m cao c???p, ch???t l?????ng cao c???a T???p ??o&agrave;n Hoa Sen, ???????c ph??? l???p m??? h???p kim nh&ocirc;m-k???m v&agrave; l???p s??n cao c???p n&ecirc;n c&oacute; ????? b???n v?????t tr???i, kh??? n??ng ch???ng h&oacute;a ch???t, ch???ng ch???u th???i ti???t ??u vi???t, ph&ugrave; h???p cho nh???ng ???ng d???ng y&ecirc;u c???u ????? b???n cao, tu???i th??? s??? d???ng l&acirc;u d&agrave;i, ?????c bi???t ph&ugrave; h???p cho c&aacute;c ???ng d???ng ngo???i th???t nh?? m&aacute;i l???p, v&aacute;ch v&agrave; c&aacute;c t???m panel. ?????c bi???t, s???n ph???m HOA SEN GOLD ???????c b???o h&agrave;nh ch???ng th???ng d???t l&ecirc;n ?????n 30 n??m v&agrave; b???o h&agrave;nh ch???ng phai m&agrave;u trong v&ograve;ng 10 n??m k??? t??? ng&agrave;y s???n xu???t.</p>\r\n\r\n<p>???ng d???ng ph??? bi???n: S??? d???ng l???p m&aacute;i ho???c ???p v&aacute;ch nh&agrave; d&acirc;n d???ng, v??n ph&ograve;ng, cao ???c, c&ocirc;ng tr&igrave;nh v&agrave; s??? d???ng ????? l???p cho c&aacute;c m&aacute;i nh&agrave; c&oacute; ki???n tr&uacute;c nhi???u m&aacute;i theo ki???u nh&agrave; bi???t th??? .v.v...</p>\r\n', 'T??n HOA SEN GOLD c??ch nhi???t m??u ?????', 0);

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
(2, 'Qu???n l??', 'quanly', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'quanly@gmail.com', 1, '0985657410', 'Pleiku', 'bc0d4c186522764fc9457b7bacb635e4.png', '2019-04-25 22:08:18', 1, 1);

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
(1, 'To??n quy???n', '2019-05-14 23:29:15', 1, '2019-05-14 23:29:15', 4, 1, 1, 1),
(2, 'Nh??n vi??n', '2019-05-14 23:29:21', 1, '2019-05-14 23:29:21', 4, 1, 1, 1);

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
