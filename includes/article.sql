-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2021 at 04:59 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `article`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(10) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `FK_image` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `businesscate`
--

CREATE TABLE `businesscate` (
  `id` int(11) NOT NULL,
  `FK_post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `businesscate`
--

INSERT INTO `businesscate` (`id`, `FK_post`) VALUES
(1, 84);

-- --------------------------------------------------------

--
-- Table structure for table `businessright`
--

CREATE TABLE `businessright` (
  `id` int(11) NOT NULL,
  `FK_post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `businessright`
--

INSERT INTO `businessright` (`id`, `FK_post`) VALUES
(1, 85),
(2, 86),
(3, 87);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Sự kiện'),
(2, 'Doanh nghiệp'),
(3, 'Tiếp thị'),
(4, 'Kinh tế'),
(5, 'Xã hội'),
(6, 'Pháp luật'),
(7, 'Quốc tế');

-- --------------------------------------------------------

--
-- Table structure for table `categorynews`
--

CREATE TABLE `categorynews` (
  `id` int(10) NOT NULL,
  `FK_post` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorynews`
--

INSERT INTO `categorynews` (`id`, `FK_post`) VALUES
(1, 48),
(2, 49),
(3, 50),
(4, 51),
(5, 52),
(6, 53),
(7, 54),
(8, 55),
(9, 56),
(10, 57),
(11, 58),
(12, 59),
(13, 60),
(14, 61),
(15, 62),
(16, 63),
(17, 64),
(18, 65),
(19, 66),
(20, 67),
(21, 68),
(22, 69),
(23, 70),
(24, 71),
(25, 72),
(26, 73),
(27, 74),
(28, 75),
(29, 76),
(30, 77),
(31, 78),
(32, 79),
(33, 80),
(34, 81),
(35, 82),
(36, 83);

-- --------------------------------------------------------

--
-- Table structure for table `emagazine`
--

CREATE TABLE `emagazine` (
  `id` int(10) NOT NULL,
  `FK_post` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emagazine`
--

INSERT INTO `emagazine` (`id`, `FK_post`) VALUES
(1, 30),
(2, 31),
(3, 32),
(4, 33);

-- --------------------------------------------------------

--
-- Table structure for table `hightlight`
--

CREATE TABLE `hightlight` (
  `id` int(10) NOT NULL,
  `FK_post` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hightlight`
--

INSERT INTO `hightlight` (`id`, `FK_post`) VALUES
(1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `hightlightleft`
--

CREATE TABLE `hightlightleft` (
  `id` int(10) NOT NULL,
  `FK_post` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hightlightleft`
--

INSERT INTO `hightlightleft` (`id`, `FK_post`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `hightlightright`
--

CREATE TABLE `hightlightright` (
  `id` int(10) NOT NULL,
  `FK_post` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hightlightright`
--

INSERT INTO `hightlightright` (`id`, `FK_post`) VALUES
(1, 6),
(2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(10) NOT NULL,
  `imgurl` varchar(255) NOT NULL,
  `FK_post` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `imgurl`, `FK_post`) VALUES
(1, 'Rectangle 2.png', 5),
(2, 'Rectangle 8.png', 6),
(3, 'Rectangle 9.png', 7),
(4, 'Rectangle 4.png', 20),
(5, 'Rectangle 4 1.png', 21),
(6, 'Rectangle 4 2.png', 22),
(7, 'Rectangle 4 3.png', 23),
(8, 'Rectangle 4 4.png', 24),
(9, 'Rectangle 4 5.png', 25),
(10, 'Rectangle 10.png', 26),
(11, 'Rectangle 10 1.png', 27),
(12, 'Rectangle 10 2.png', 28),
(13, 'Rectangle 10 3.png', 29),
(14, 'video-item-1.jpg', 30),
(15, 'video-item-2.jpg', 31),
(16, 'video-item-3.jpg', 32),
(17, 'video-item-4.jpg', 33),
(18, 'Rectangle 14.png', 34),
(19, 'Rectangle 14 1.png', 35),
(20, 'Rectangle 14 2.png', 36),
(21, 'Rectangle 14 3.png', 37),
(22, 'Rectangle 14 4.png', 38),
(23, 'Rectangle 10 4.png', 39),
(24, 'Rectangle 10 5.png', 40),
(25, 'Rectangle 10 6.png', 41),
(26, 'Rectangle 10 7.png', 42),
(27, 'video-1.jpg', 43),
(28, 'video-item-1.jpg', 44),
(29, 'video-item-2.jpg', 45),
(30, 'video-item-3.jpg', 46),
(31, 'video-item-4.jpg', 47),
(32, 'sk1.png', 48),
(33, 'sk2.png', 49),
(34, 'dn1.png', 54),
(35, 'dn2.png', 55),
(36, 'kt1.png', 60),
(37, 'kt2.png', 61),
(38, 'xh1.png', 66),
(39, 'xh2.png', 67),
(40, 'pl1.png', 72),
(41, 'pl2.png', 73),
(42, 'qt1.png', 78),
(43, 'qt2.png', 79),
(44, 'Rectangle 2.png', 84),
(45, 'Rectangle 3.png', 85),
(46, 'Rectangle 10.png', 88),
(47, 'Rectangle 10 1.png', 89),
(48, 'Rectangle 10 2.png', 90),
(49, 'Rectangle 10 3.png', 91),
(50, 'Rectangle 10 4.png', 92),
(51, 'Rectangle 10 5.png', 93),
(52, 'Rectangle 10 6.png', 94),
(53, 'Rectangle 10 7.png', 95),
(54, 'Rectangle 10 2.png', 96),
(55, 'Rectangle 10 3.png', 97);

-- --------------------------------------------------------

--
-- Table structure for table `mainnews`
--

CREATE TABLE `mainnews` (
  `id` int(11) NOT NULL,
  `FK_post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mainnews`
--

INSERT INTO `mainnews` (`id`, `FK_post`) VALUES
(1, 88),
(2, 89),
(3, 90),
(4, 91),
(5, 92),
(6, 93),
(7, 94),
(8, 95),
(9, 96),
(10, 97);

-- --------------------------------------------------------

--
-- Table structure for table `mainnews1`
--

CREATE TABLE `mainnews1` (
  `id` int(10) NOT NULL,
  `FK_post` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mainnews1`
--

INSERT INTO `mainnews1` (`id`, `FK_post`) VALUES
(1, 26),
(2, 27),
(3, 28),
(4, 29);

-- --------------------------------------------------------

--
-- Table structure for table `mainnews2`
--

CREATE TABLE `mainnews2` (
  `id` int(10) NOT NULL,
  `FK_post` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mainnews2`
--

INSERT INTO `mainnews2` (`id`, `FK_post`) VALUES
(1, 39),
(2, 40),
(3, 41),
(4, 42);

-- --------------------------------------------------------

--
-- Table structure for table `marketingnews`
--

CREATE TABLE `marketingnews` (
  `id` int(10) NOT NULL,
  `FK_post` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketingnews`
--

INSERT INTO `marketingnews` (`id`, `FK_post`) VALUES
(1, 20),
(2, 21),
(3, 22),
(4, 23),
(5, 24),
(6, 25);

-- --------------------------------------------------------

--
-- Table structure for table `mostreading`
--

CREATE TABLE `mostreading` (
  `id` int(10) NOT NULL,
  `FK_post` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mostreading`
--

INSERT INTO `mostreading` (`id`, `FK_post`) VALUES
(1, 34),
(2, 35),
(3, 36),
(4, 37),
(5, 38);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(10) NOT NULL,
  `title` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL,
  `brief` text NOT NULL,
  `keyword` text NOT NULL,
  `FK_category` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `author`, `content`, `date`, `brief`, `keyword`, `FK_category`) VALUES
(1, 'T&T Group và Hành trình yêu thương: Khi niềm tin được sẻ chia thì hạnh phúc được nhân lên', '', '', '2021-08-01', '', '', 2),
(2, 'Hdbank tham gia Tradeassets nhằm số hóa hoạt động tài trợ thương mại', '', '', '2021-08-02', '', '', 4),
(3, 'Hà Nội thúc đẩy quan hệ thương mại đầu tư với Nhật Bản trong điều kiện', '', '', '2021-08-03', '', '', 5),
(4, 'Hà Nội thúc đẩy quan hệ thương mại đầu tư với Nhật Bản trong điều kiện \"bình thường mới\"', '', '', '2021-08-10', '', '', 6),
(5, 'Hà Nội thúc đẩy quan hệ thương mại đầu tư với Nhật Bản trong điều kiện \"bình thường mới\"\r\n', '', '', '2021-08-09', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan đến dịch Covid-19. Cuộc họp đã công bố xác nhận thêm', '', 5),
(6, 'Hà Nội thúc đẩy quan hệ thương mại đầu tư với Nhật Bản trong điều kiện \"bình thường mới\"', '', '', '2021-08-11', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để...', '', 4),
(7, 'Hà Nội triển khai một số nhiệm vụ tài chính - ngân sách trong điều kiện ảnh hưởng của dịch bệnh Covid-19', '', '', '2021-08-10', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để...', '', 6),
(20, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù hợp', '', '', '2021-08-01', '', '', 3),
(21, ' Gam hồng thương mại điện tử trong dịch Covid-19', '', '', '2021-08-02', '', '', 3),
(22, '10 cách giúp doanh nghiệp làm việc hiệu quả trong “Trạng thái bình thường mới”', '', '', '2021-08-02', '', '', 3),
(23, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù hợp', '', '', '2021-08-03', '', '', 3),
(24, 'Gam hồng thương mại điện tử trong dịch Covid-19', '', '', '2021-08-03', '', '', 3),
(25, '10 cách giúp doanh nghiệp làm việc hiệu quả trong “Trạng thái bình thường”', '', '', '2021-08-04', '', '', 3),
(26, 'Có 1 tỷ đồng nên đầu tư vào phân khúc BĐS nào để sinh lời nhanh chóng?', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan đến dịch Covid-19. Cuộc họp đã công bố xác nhận thêm', '', 4),
(27, 'Giảm 50% phí trước bạ ô tô: Xe sang có giá lăn bánh giảm \"khủng\"', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan...', '', 5),
(28, 'Có 1 tỷ đồng nên đầu tư vào phân khúc BĐS nào để sinh lời nhanh chóng?', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan đến dịch Covid-19. Cuộc họp đã công bố xác nhận thêm', '', 4),
(29, 'Doanh nghiệp bất động sản ảnh hưởng ra sao bởi dịch Covid 19?', '', '', '2021-08-03', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan đến dịch Covid-19. Cuộc họp đã công bố xác nhận thêm', '', 2),
(30, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù hợp', '', '', '2021-08-04', '', '', 1),
(31, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù hợp', '', '', '2021-08-05', '', '', 3),
(32, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù hợp', '', '', '2021-08-03', '', '', 2),
(33, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù hợp', '', '', '2021-08-04', '', '', 4),
(34, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù hợp', '', '', '2021-08-04', '', '', 1),
(35, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù hợp', '', '', '2021-08-04', '', '', 1),
(36, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù hợp', '', '', '2021-08-04', '', '', 1),
(37, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù hợp', '', '', '2021-08-03', '', '', 1),
(38, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù hợp', '', '', '2021-08-04', '', '', 1),
(39, 'Bắc Kạn: Doanh nghiệp đề xuất nhiều giải pháp vượt khó hậu COVID-19', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan đến dịch Covid-19. Cuộc họp đã công bố xác nhận thêm', '', 3),
(40, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù hợp', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan...', '', 4),
(41, 'Quảng Nam xây dựng chiến lược phát triển cho cây sâm Ngọc Linh và các dược liệu', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan đến dịch Covid-19. Cuộc họp đã công bố xác nhận thêm', '', 7),
(42, '“Lấy cung làm chủ đạo và đẩy mạnh cầu của nền kinh tế”: Hiểu sao cho đúng?', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan đến dịch Covid-19. Cuộc họp đã công bố xác nhận thêm', '', 5),
(43, 'Hà Nội thúc đẩy quan hệ thương mại đầu tư với Nhật Bản trong điều kiện \"bình thường mới\"', '', '', '2021-08-04', '', '', 1),
(44, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù', '', '', '2021-08-04', '', '', 2),
(45, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù', '', '', '2021-08-04', '', '', 4),
(46, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù', '', '', '2021-08-04', '', '', 2),
(47, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù', '', '', '2021-08-04', '', '', 6),
(48, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù hợp', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp...', '', 1),
(49, 'Hà Nội thúc đẩy quan hệ thương mại đầu tư với NB trong điều kiện', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp...', '', 1),
(50, 'T&T Group và Hành trình yêu thương: Khi niềm tin được sẻ chia thì hạnh phúc được nhân lên', '', '', '2021-08-01', '', '', 1),
(51, 'Hà Nội: Vận động cán bộ, công chức, người lao động ủng hộ một ngày lương cho phòng Covid-19', '', '', '2021-08-04', '', '', 1),
(52, 'Bộ Xây dựng đề nghị nới việc phân lô bán nền', '', '', '2021-08-01', '', '', 1),
(53, 'Thêm một biểu tượng hấp dẫn của Thủ đô', '', '', '2021-08-04', '', '', 1),
(54, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù hợp', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp...', '', 2),
(55, 'Hà Nội thúc đẩy quan hệ thương mại đầu tư với NB trong điều kiện', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp...', '', 2),
(56, 'T&T Group và Hành trình yêu thương: Khi niềm tin được sẻ chia thì hạnh phúc được nhân lên', '', '', '2021-08-03', '', '', 2),
(57, 'Hà Nội: Vận động cán bộ, công chức, người lao động ủng hộ một ngày lương cho phòng Covid-19', '', '', '2021-08-04', '', '', 2),
(58, 'Bộ Xây dựng đề nghị nới việc phân lô bán nền', '', '', '2021-08-04', '', '', 2),
(59, 'Thêm một biểu tượng hấp dẫn của Thủ đô', '', '', '2021-08-04', '', '', 2),
(60, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù hợp', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp...', '', 4),
(61, 'Hà Nội thúc đẩy quan hệ thương mại đầu tư với NB trong điều kiện', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp...', '', 4),
(62, 'T&T Group và Hành trình yêu thương: Khi niềm tin được sẻ chia thì hạnh phúc được nhân lên', '', '', '2021-08-04', '', '', 4),
(63, 'Hà Nội: Vận động cán bộ, công chức, người lao động ủng hộ một ngày lương cho phòng Covid-19', '', '', '2021-08-04', '', '', 4),
(64, 'Bộ Xây dựng đề nghị nới việc phân lô bán nền', '', '', '2021-08-04', '', '', 4),
(65, 'Thêm một biểu tượng hấp dẫn của Thủ đô', '', '', '2021-08-04', '', '', 4),
(66, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù hợp', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp...', '', 5),
(67, 'Hà Nội thúc đẩy quan hệ thương mại đầu tư với NB trong điều kiện', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp...', '', 5),
(68, 'T&T Group và Hành trình yêu thương: Khi niềm tin được sẻ chia thì hạnh phúc được nhân lên', '', '', '2021-08-04', '', '', 5),
(69, 'Hà Nội: Vận động cán bộ, công chức, người lao động ủng hộ một ngày lương cho phòng Covid-19', '', '', '2021-08-04', '', '', 5),
(70, 'Bộ Xây dựng đề nghị nới việc phân lô bán nền', '', '', '2021-08-04', '', '', 5),
(71, 'Thêm một biểu tượng hấp dẫn của Thủ đô', '', '', '2021-08-04', '', '', 5),
(72, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù hợp', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp...', '', 6),
(73, 'Hà Nội thúc đẩy quan hệ thương mại đầu tư với NB trong điều kiện', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp...', '', 6),
(74, 'T&T Group và Hành trình yêu thương: Khi niềm tin được sẻ chia thì hạnh phúc được nhân lên', '', '', '2021-08-04', '', '', 6),
(75, 'Hà Nội: Vận động cán bộ, công chức, người lao động ủng hộ một ngày lương cho phòng Covid-19', '', '', '2021-08-04', '', '', 6),
(76, 'Bộ Xây dựng đề nghị nới việc phân lô bán nền', '', '', '2021-08-04', '', '', 6),
(77, 'Thêm một biểu tượng hấp dẫn của Thủ đô', '', '', '2021-08-04', '', '', 6),
(78, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù hợp', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp...', '', 7),
(79, 'Hà Nội thúc đẩy quan hệ thương mại đầu tư với NB trong điều kiện', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp...', '', 7),
(80, 'T&T Group và Hành trình yêu thương: Khi niềm tin được sẻ chia thì hạnh phúc được nhân lên', '', '', '2021-08-04', '', '', 7),
(81, 'Hà Nội: Vận động cán bộ, công chức, người lao động ủng hộ một ngày lương cho phòng Covid-19', '', '', '2021-08-04', '', '', 7),
(82, 'Bộ Xây dựng đề nghị nới việc phân lô bán nền', '', '', '2021-08-04', '', '', 7),
(83, 'Thêm một biểu tượng hấp dẫn của Thủ đô', '', '', '2021-08-04', '', '', 7),
(84, 'Hà Nội thúc đẩy quan hệ thương mại đầu tư với Nhật Bản trong điều kiện \"bình thường mới\"', '', '', '2021-08-05', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan đến dịch Covid-19. Cuộc họp đã công bố xác nhận thêm', '', 2),
(85, 'Hà Nội thúc đẩy quan hệ thương mại đầu tư với Nhật Bản trong điều kiện \"bình thường mới\"', '', '', '2021-08-04', '', '', 2),
(86, 'Hà Nội thúc đẩy quan hệ thương mại đầu tư với Nhật Bản trong điều kiện \"bình thường mới\"', '', '', '2021-08-04', '', '', 2),
(87, 'Hà Nội thúc đẩy quan hệ thương mại đầu tư với Nhật Bản trong điều kiện \"bình thường mới\"', '', '', '2021-08-04', '', '', 2),
(88, 'Có 1 tỷ đồng nên đầu tư vào phân khúc BĐS nào để sinh lời nhanh chóng?', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan đến dịch Covid-19. Cuộc họp đã công bố xác nhận thêm', '', 4),
(89, 'Giảm 50% sang phí trước bạ ô tô: Xe sang có giá lăn bánh giảm \"khủng\"', '', '', '2021-08-05', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan...', '', 5),
(90, 'Có 1 tỷ đồng nên đầu tư vào phân khúc BĐS nào để sinh lời nhanh chóng?', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan đến dịch Covid-19. Cuộc họp đã công bố xác nhận thêm', '', 4),
(91, 'Doanh nghiệp bất động sản ảnh hưởng ra sao bởi dịch Covid 19?', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan đến dịch Covid-19. Cuộc họp đã công bố xác nhận thêm', '', 2),
(92, 'Bắc Kạn: Doanh nghiệp đề xuất nhiều giải pháp vượt khó hậu COVID-19', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan đến dịch Covid-19. Cuộc họp đã công bố xác nhận thêm', '', 3),
(93, 'Quy hoạch băng tần cho hệ thống di động IMT… chưa phù hợp', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan...', '', 4),
(94, 'Quảng Nam xây dựng chiến lược phát triển cho cây sâm Ngọc Linh và các dược liệu', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan đến dịch Covid-19. Cuộc họp đã công bố xác nhận thêm', '', 7),
(95, '“Lấy cung làm chủ đạo và đẩy mạnh cầu của nền kinh tế”: Hiểu sao cho đúng?', '', '', '2021-08-04', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan đến dịch Covid-19. Cuộc họp đã công bố xác nhận thêm', '', 5),
(96, '\r\nCó 1 tỷ đồng nên đầu tư vào phân khúc BĐS nào để sinh lời nhanh chóng?', '', '', '2021-08-05', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan đến dịch Covid-19. Cuộc họp đã công bố xác nhận thêm', '', 4),
(97, 'Doanh nghiệp bất động sản ảnh hưởng ra sao bởi dịch Covid 19?', '', '', '2021-08-05', 'Đêm ngày 6/3, Ban chỉ đạo phòng chống dịch Covid-19 Hà Nội triệu tập cuộc họp khẩn cấp trong đêm để thông tin về sự việc liên quan đến dịch Covid-19. Cuộc họp đã công bố xác nhận thêm', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `FK_category` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `title`, `FK_category`) VALUES
(1, 'Chính trị - Xã hội', 1),
(2, 'Cải cách hành chính', 1),
(3, 'Tiêu điểm', 1),
(4, 'Tin địa phương', 1),
(5, 'Hoạt động của Hội', 1),
(6, 'Diễn đàn', 2),
(7, 'Thương hiệu', 2),
(8, 'Thông tin thương hiệu', 2),
(9, 'Trách nhiệm xã hội', 2),
(10, 'Khởi nghiệp', 2),
(11, 'Nhịp đập thị trường', 3),
(12, 'Tiếp thị số', 3),
(13, 'Dịch vụ', 3),
(14, 'Bảo vệ người tiêu dùng', 3),
(15, 'Kinh doanh', 4),
(16, 'Tài chính - Đầu tư', 4),
(17, 'Ngân hàng', 4),
(18, 'Bất động sản', 4),
(19, 'Chứng khoán', 4),
(20, 'Văn hóa', 5),
(21, 'Giáo dục', 5),
(22, 'Sức khỏe', 5),
(23, 'Du lịch', 5),
(24, 'Ẩm thực', 5),
(25, 'Chính sách mới', 6),
(26, 'Tiếp thị và Pháp luật', 6),
(27, 'Tư vấn', 6),
(28, 'Luật sư của bạn', 6),
(29, 'Đơn thư bạn đọc', 6),
(30, 'Thế giới 24H', 7),
(31, 'Tư liệu', 7),
(32, 'Phân tích - Bình luận', 7);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(10) NOT NULL,
  `FK_post` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `FK_post`) VALUES
(1, 43),
(2, 44),
(3, 45),
(4, 46),
(5, 47);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_image` (`FK_image`);

--
-- Indexes for table `businesscate`
--
ALTER TABLE `businesscate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_post` (`FK_post`);

--
-- Indexes for table `businessright`
--
ALTER TABLE `businessright`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_post` (`FK_post`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorynews`
--
ALTER TABLE `categorynews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_post` (`FK_post`);

--
-- Indexes for table `emagazine`
--
ALTER TABLE `emagazine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_post` (`FK_post`);

--
-- Indexes for table `hightlight`
--
ALTER TABLE `hightlight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_post` (`FK_post`);

--
-- Indexes for table `hightlightleft`
--
ALTER TABLE `hightlightleft`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_post` (`FK_post`);

--
-- Indexes for table `hightlightright`
--
ALTER TABLE `hightlightright`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_post` (`FK_post`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_post` (`FK_post`);

--
-- Indexes for table `mainnews`
--
ALTER TABLE `mainnews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_post` (`FK_post`);

--
-- Indexes for table `mainnews1`
--
ALTER TABLE `mainnews1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_post` (`FK_post`);

--
-- Indexes for table `mainnews2`
--
ALTER TABLE `mainnews2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_post` (`FK_post`);

--
-- Indexes for table `marketingnews`
--
ALTER TABLE `marketingnews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_post` (`FK_post`);

--
-- Indexes for table `mostreading`
--
ALTER TABLE `mostreading`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_post` (`FK_post`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_category` (`FK_category`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_category` (`FK_category`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_post` (`FK_post`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `businesscate`
--
ALTER TABLE `businesscate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `businessright`
--
ALTER TABLE `businessright`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categorynews`
--
ALTER TABLE `categorynews`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `emagazine`
--
ALTER TABLE `emagazine`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hightlight`
--
ALTER TABLE `hightlight`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hightlightleft`
--
ALTER TABLE `hightlightleft`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hightlightright`
--
ALTER TABLE `hightlightright`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `mainnews`
--
ALTER TABLE `mainnews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mainnews1`
--
ALTER TABLE `mainnews1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mainnews2`
--
ALTER TABLE `mainnews2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `marketingnews`
--
ALTER TABLE `marketingnews`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mostreading`
--
ALTER TABLE `mostreading`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ads`
--
ALTER TABLE `ads`
  ADD CONSTRAINT `ads_ibfk_1` FOREIGN KEY (`FK_image`) REFERENCES `image` (`id`);

--
-- Constraints for table `businesscate`
--
ALTER TABLE `businesscate`
  ADD CONSTRAINT `businesscate_ibfk_1` FOREIGN KEY (`FK_post`) REFERENCES `post` (`id`);

--
-- Constraints for table `businessright`
--
ALTER TABLE `businessright`
  ADD CONSTRAINT `businessright_ibfk_1` FOREIGN KEY (`FK_post`) REFERENCES `post` (`id`);

--
-- Constraints for table `categorynews`
--
ALTER TABLE `categorynews`
  ADD CONSTRAINT `categorynews_ibfk_1` FOREIGN KEY (`FK_post`) REFERENCES `post` (`id`);

--
-- Constraints for table `emagazine`
--
ALTER TABLE `emagazine`
  ADD CONSTRAINT `emagazine_ibfk_1` FOREIGN KEY (`FK_post`) REFERENCES `post` (`id`);

--
-- Constraints for table `hightlight`
--
ALTER TABLE `hightlight`
  ADD CONSTRAINT `hightlight_ibfk_1` FOREIGN KEY (`FK_post`) REFERENCES `post` (`id`);

--
-- Constraints for table `hightlightleft`
--
ALTER TABLE `hightlightleft`
  ADD CONSTRAINT `hightlightleft_ibfk_1` FOREIGN KEY (`FK_post`) REFERENCES `post` (`id`);

--
-- Constraints for table `hightlightright`
--
ALTER TABLE `hightlightright`
  ADD CONSTRAINT `hightlightright_ibfk_1` FOREIGN KEY (`FK_post`) REFERENCES `post` (`id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`FK_post`) REFERENCES `post` (`id`);

--
-- Constraints for table `mainnews`
--
ALTER TABLE `mainnews`
  ADD CONSTRAINT `mainnews_ibfk_1` FOREIGN KEY (`FK_post`) REFERENCES `post` (`id`);

--
-- Constraints for table `mainnews1`
--
ALTER TABLE `mainnews1`
  ADD CONSTRAINT `mainnews1_ibfk_1` FOREIGN KEY (`FK_post`) REFERENCES `post` (`id`);

--
-- Constraints for table `mainnews2`
--
ALTER TABLE `mainnews2`
  ADD CONSTRAINT `mainnews2_ibfk_1` FOREIGN KEY (`FK_post`) REFERENCES `post` (`id`);

--
-- Constraints for table `marketingnews`
--
ALTER TABLE `marketingnews`
  ADD CONSTRAINT `marketingnews_ibfk_1` FOREIGN KEY (`FK_post`) REFERENCES `post` (`id`);

--
-- Constraints for table `mostreading`
--
ALTER TABLE `mostreading`
  ADD CONSTRAINT `mostreading_ibfk_1` FOREIGN KEY (`FK_post`) REFERENCES `post` (`id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`FK_category`) REFERENCES `category` (`id`);

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`FK_category`) REFERENCES `category` (`id`);

--
-- Constraints for table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`FK_post`) REFERENCES `post` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
