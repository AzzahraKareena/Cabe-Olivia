-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2023 at 09:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prediksi`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_training`
--

CREATE TABLE `data_training` (
  `id_data` int(11) NOT NULL,
  `bulan` varchar(255) NOT NULL,
  `wilayah` varchar(255) NOT NULL,
  `curah_hujan` varchar(255) NOT NULL,
  `hama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_training`
--

INSERT INTO `data_training` (`id_data`, `bulan`, `wilayah`, `curah_hujan`, `hama`) VALUES
(1, '2020-01', 'Kabupaten Magelang', '507', 'Bercak daun (Cercospora capsici)'),
(2, '2020-01', 'Kabupaten Magelang', '507', 'Busuk daun (Phytophthora spp.)'),
(3, '2020-01', 'Kabupaten Magelang', '507', 'Lalat buah (Bactrocera spp.)'),
(4, '2020-01', 'Kabupaten Magelang', '507', 'Layu fusarium (Fusarium oxysporum)'),
(5, '2020-01', 'Kabupaten Magelang', '507', 'Trips (Thrips spp.)'),
(6, '2020-01', 'Kabupaten Magelang', '507', 'Virus kuning'),
(7, '2021-01', 'Kabupaten Magelang', '531', 'Antraknosa (Colletotrichum spp.)'),
(8, '2021-01', 'Kabupaten Magelang', '531', 'Antraknosa (Colletotrichum spp.)'),
(9, '2021-01', 'Kabupaten Magelang', '531', 'Lalat buah (Bactrocera spp.)'),
(10, '2021-01', 'Kabupaten Magelang', '531', 'Lalat buah (Bactrocera spp.)'),
(11, '2021-01', 'Kabupaten Magelang', '531', 'Layu bakteri (Pseudomonas spp.)'),
(12, '2021-01', 'Kabupaten Magelang', '531', 'Layu bakteri (Pseudomonas spp.)'),
(13, '2021-01', 'Kabupaten Magelang', '531', 'Layu fusarium (Fusarium oxysporum)'),
(14, '2021-01', 'Kabupaten Magelang', '531', 'Trips (Thrips spp.)'),
(15, '2021-01', 'Kabupaten Magelang', '531', 'Trips (Thrips spp.)'),
(16, '2021-01', 'Kabupaten Magelang', '531', 'Virus kuning'),
(17, '2021-01', 'Kabupaten Magelang', '531', 'Virus kuning'),
(18, '2020-02', 'Kabupaten Magelang', '480', 'Antraknosa (Colletotrichum spp.)'),
(19, '2020-02', 'Kabupaten Magelang', '480', 'Antraknosa (Colletotrichum spp.)'),
(20, '2020-02', 'Kabupaten Magelang', '480', 'Busuk daun (Phytophthora spp.)'),
(21, '2020-02', 'Kabupaten Magelang', '480', 'Busuk daun (Phytophthora spp.)'),
(22, '2020-02', 'Kabupaten Magelang', '480', 'Busuk daun (Phytophthora spp.)'),
(23, '2020-02', 'Kabupaten Magelang', '480', 'Busuk daun (Phytophthora spp.)'),
(24, '2020-02', 'Kabupaten Magelang', '480', 'Lalat buah (Bactrocera spp.)'),
(25, '2020-02', 'Kabupaten Magelang', '480', 'Lalat buah (Bactrocera spp.)'),
(26, '2020-02', 'Kabupaten Magelang', '480', 'Layu fusarium (Fusarium oxysporum)'),
(27, '2020-02', 'Kabupaten Magelang', '480', 'Trips (Thrips spp.)'),
(28, '2020-02', 'Kabupaten Magelang', '480', 'Trips (Thrips spp.)'),
(29, '2020-02', 'Kabupaten Magelang', '480', 'Virus kuning'),
(30, '2020-02', 'Kabupaten Magelang', '480', 'Virus kuning'),
(31, '2021-02', 'Kabupaten Magelang', '442', 'Antraknosa (Colletotrichum spp.)'),
(32, '2021-02', 'Kabupaten Magelang', '442', 'Antraknosa (Colletotrichum spp.)'),
(33, '2021-02', 'Kabupaten Magelang', '442', 'Lalat buah (Bactrocera spp.)'),
(34, '2021-02', 'Kabupaten Magelang', '442', 'Lalat buah (Bactrocera spp.)'),
(35, '2021-02', 'Kabupaten Magelang', '442', 'Layu bakteri (Pseudomonas spp.)'),
(36, '2021-02', 'Kabupaten Magelang', '442', 'Layu bakteri (Pseudomonas spp.)'),
(37, '2021-02', 'Kabupaten Magelang', '442', 'Layu fusarium (Fusarium oxysporum)'),
(38, '2021-02', 'Kabupaten Magelang', '442', 'Layu fusarium (Fusarium oxysporum)'),
(39, '2021-02', 'Kabupaten Magelang', '442', 'Trips (Thrips spp.)'),
(40, '2021-02', 'Kabupaten Magelang', '442', 'Virus kuning'),
(41, '2021-02', 'Kabupaten Magelang', '442', 'Virus kuning'),
(42, '2020-03', 'Kabupaten Magelang', '461', 'Antraknosa (Colletotrichum spp.)'),
(43, '2020-03', 'Kabupaten Magelang', '461', 'Antraknosa (Colletotrichum spp.)'),
(44, '2020-03', 'Kabupaten Magelang', '461', 'Busuk daun (Phytophthora spp.)'),
(45, '2020-03', 'Kabupaten Magelang', '461', 'Busuk daun (Phytophthora spp.)'),
(46, '2020-03', 'Kabupaten Magelang', '461', 'Busuk daun (Phytophthora spp.)'),
(47, '2020-03', 'Kabupaten Magelang', '461', 'Lalat buah (Bactrocera spp.)'),
(48, '2020-03', 'Kabupaten Magelang', '461', 'Layu fusarium (Fusarium oxysporum)'),
(49, '2020-03', 'Kabupaten Magelang', '461', 'Layu fusarium (Fusarium oxysporum)'),
(50, '2020-03', 'Kabupaten Magelang', '461', 'Trips (Thrips spp.)'),
(51, '2020-03', 'Kabupaten Magelang', '461', 'Virus kuning'),
(52, '2020-03', 'Kabupaten Magelang', '461', 'Virus kuning'),
(53, '2021-03', 'Kabupaten Magelang', '381', 'Antraknosa (Colletotrichum spp.)'),
(54, '2021-03', 'Kabupaten Magelang', '381', 'Antraknosa (Colletotrichum spp.)'),
(55, '2021-03', 'Kabupaten Magelang', '381', 'Lalat buah (Bactrocera spp.)'),
(56, '2021-03', 'Kabupaten Magelang', '381', 'Lalat buah (Bactrocera spp.)'),
(57, '2021-03', 'Kabupaten Magelang', '381', 'Layu bakteri (Pseudomonas spp.)'),
(58, '2021-03', 'Kabupaten Magelang', '381', 'Layu bakteri (Pseudomonas spp.)'),
(59, '2021-03', 'Kabupaten Magelang', '381', 'Layu fusarium (Fusarium oxysporum)'),
(60, '2021-03', 'Kabupaten Magelang', '381', 'Trips (Thrips spp.)'),
(61, '2021-03', 'Kabupaten Magelang', '381', 'Virus kuning'),
(62, '2021-03', 'Kabupaten Magelang', '381', 'Virus kuning'),
(63, '2020-04', 'Kabupaten Magelang', '298', 'Antraknosa (Colletotrichum spp.)'),
(64, '2020-04', 'Kabupaten Magelang', '298', 'Busuk daun (Phytophthora spp.)'),
(65, '2020-04', 'Kabupaten Magelang', '298', 'Layu fusarium (Fusarium oxysporum)'),
(66, '2020-04', 'Kabupaten Magelang', '298', 'Layu fusarium (Fusarium oxysporum)'),
(67, '2020-04', 'Kabupaten Magelang', '298', 'Trips (Thrips spp.)'),
(68, '2020-04', 'Kabupaten Magelang', '298', 'Virus kuning'),
(69, '2020-04', 'Kabupaten Magelang', '298', 'Virus kuning'),
(70, '2021-04', 'Kabupaten Magelang', '234', 'Antraknosa (Colletotrichum spp.)'),
(71, '2021-04', 'Kabupaten Magelang', '234', 'Antraknosa (Colletotrichum spp.)'),
(72, '2021-04', 'Kabupaten Magelang', '234', 'Layu bakteri (Pseudomonas spp.)'),
(73, '2021-04', 'Kabupaten Magelang', '234', 'Layu bakteri (Pseudomonas spp.)'),
(74, '2021-04', 'Kabupaten Magelang', '234', 'Layu fusarium (Fusarium oxysporum)'),
(75, '2021-04', 'Kabupaten Magelang', '234', 'Trips (Thrips spp.)'),
(76, '2021-04', 'Kabupaten Magelang', '234', 'Trips (Thrips spp.)'),
(77, '2021-04', 'Kabupaten Magelang', '234', 'Virus kuning'),
(78, '2021-04', 'Kabupaten Magelang', '234', 'Virus kuning'),
(79, '2020-05', 'Kabupaten Magelang', '290', 'Bercak daun Alternaria (Alternaria solani)'),
(80, '2020-05', 'Kabupaten Magelang', '290', 'Busuk daun (Phytophthora spp.)'),
(81, '2020-05', 'Kabupaten Magelang', '290', 'Busuk daun (Phytophthora spp.)'),
(82, '2020-05', 'Kabupaten Magelang', '290', 'Trips (Thrips spp.)'),
(83, '2020-05', 'Kabupaten Magelang', '290', 'Virus kuning'),
(84, '2020-05', 'Kabupaten Magelang', '290', 'Virus kuning'),
(85, '2021-05', 'Kabupaten Magelang', '109', 'Antraknosa (Colletotrichum spp.)'),
(86, '2021-05', 'Kabupaten Magelang', '109', 'Antraknosa (Colletotrichum spp.)'),
(87, '2021-05', 'Kabupaten Magelang', '109', 'Layu bakteri (Pseudomonas spp.)'),
(88, '2021-05', 'Kabupaten Magelang', '109', 'Layu fusarium (Fusarium oxysporum)'),
(89, '2021-05', 'Kabupaten Magelang', '109', 'Trips (Thrips spp.)'),
(90, '2021-05', 'Kabupaten Magelang', '109', 'Trips (Thrips spp.)'),
(91, '2021-05', 'Kabupaten Magelang', '109', 'Virus kuning'),
(92, '2021-05', 'Kabupaten Magelang', '109', 'Virus kuning'),
(93, '2020-06', 'Kabupaten Magelang', '53', 'Antraknosa (Colletotrichum spp.)'),
(94, '2020-06', 'Kabupaten Magelang', '53', 'Antraknosa (Colletotrichum spp.)'),
(95, '2020-06', 'Kabupaten Magelang', '53', 'Busuk daun (Phytophthora spp.)'),
(96, '2020-06', 'Kabupaten Magelang', '53', 'Busuk daun (Phytophthora spp.)'),
(97, '2020-06', 'Kabupaten Magelang', '53', 'Layu bakteri (Pseudomonas spp.)'),
(98, '2020-06', 'Kabupaten Magelang', '53', 'Virus kuning'),
(99, '2020-06', 'Kabupaten Magelang', '53', 'Virus kuning'),
(100, '2021-06', 'Kabupaten Magelang', '197', 'Antraknosa (Colletotrichum spp.)'),
(101, '2021-06', 'Kabupaten Magelang', '197', 'Layu bakteri (Pseudomonas spp.)'),
(102, '2021-06', 'Kabupaten Magelang', '197', 'Trips (Thrips spp.)'),
(103, '2021-06', 'Kabupaten Magelang', '197', 'Trips (Thrips spp.)'),
(104, '2021-06', 'Kabupaten Magelang', '197', 'Ulat grayak (Spodoptera litura)'),
(105, '2021-06', 'Kabupaten Magelang', '197', 'Ulat grayak (Spodoptera litura)'),
(106, '2021-06', 'Kabupaten Magelang', '197', 'Virus kuning'),
(107, '2021-06', 'Kabupaten Magelang', '197', 'Virus kuning'),
(108, '2020-07', 'Kabupaten Magelang', '20', 'Antraknosa (Colletotrichum spp.)'),
(109, '2020-07', 'Kabupaten Magelang', '20', 'Antraknosa (Colletotrichum spp.)'),
(110, '2020-07', 'Kabupaten Magelang', '20', 'Busuk daun (Phytophthora spp.)'),
(111, '2020-07', 'Kabupaten Magelang', '20', 'Layu bakteri (Pseudomonas spp.)'),
(112, '2020-07', 'Kabupaten Magelang', '20', 'Layu bakteri (Pseudomonas spp.)'),
(113, '2020-07', 'Kabupaten Magelang', '20', 'Trips (Thrips spp.)'),
(114, '2020-07', 'Kabupaten Magelang', '20', 'Virus kuning'),
(115, '2020-07', 'Kabupaten Magelang', '20', 'Virus kuning'),
(116, '2021-07', 'Kabupaten Magelang', '37', 'Antraknosa (Colletotrichum spp.)'),
(117, '2021-07', 'Kabupaten Magelang', '37', 'Kutu daun persik (Myzus persicae)'),
(118, '2021-07', 'Kabupaten Magelang', '37', 'Layu bakteri (Pseudomonas spp.)'),
(119, '2021-07', 'Kabupaten Magelang', '37', 'Layu bakteri (Pseudomonas spp.)'),
(120, '2021-07', 'Kabupaten Magelang', '37', 'Trips (Thrips spp.)'),
(121, '2021-07', 'Kabupaten Magelang', '37', 'Ulat grayak (Spodoptera litura)'),
(122, '2021-07', 'Kabupaten Magelang', '37', 'Virus kuning'),
(123, '2021-07', 'Kabupaten Magelang', '37', 'Virus kuning'),
(124, '2020-08', 'Kabupaten Magelang', '44', 'Antraknosa (Colletotrichum spp.)'),
(125, '2020-08', 'Kabupaten Magelang', '44', 'Layu bakteri (Pseudomonas spp.)'),
(126, '2020-08', 'Kabupaten Magelang', '44', 'Layu bakteri (Pseudomonas spp.)'),
(127, '2020-08', 'Kabupaten Magelang', '44', 'Trips (Thrips spp.)'),
(128, '2020-08', 'Kabupaten Magelang', '44', 'Virus kuning'),
(129, '2021-08', 'Kabupaten Magelang', '16', 'Antraknosa (Colletotrichum spp.)'),
(130, '2021-08', 'Kabupaten Magelang', '16', 'Antraknosa (Colletotrichum spp.)'),
(131, '2021-08', 'Kabupaten Magelang', '16', 'Bercak daun Alternaria (Alternaria solani)'),
(132, '2021-08', 'Kabupaten Magelang', '16', 'Bercak daun Alternaria (Alternaria solani)'),
(133, '2021-08', 'Kabupaten Magelang', '16', 'Lalat buah (Bactrocera spp.)'),
(134, '2021-08', 'Kabupaten Magelang', '16', 'Layu bakteri (Pseudomonas spp.)'),
(135, '2021-08', 'Kabupaten Magelang', '16', 'Layu bakteri (Pseudomonas spp.)'),
(136, '2021-08', 'Kabupaten Magelang', '16', 'Trips (Thrips spp.)'),
(137, '2021-08', 'Kabupaten Magelang', '16', 'Trips (Thrips spp.)'),
(138, '2021-08', 'Kabupaten Magelang', '16', 'Virus kuning'),
(139, '2021-08', 'Kabupaten Magelang', '16', 'Virus kuning'),
(140, '2020-09', 'Kabupaten Magelang', '45', 'Layu bakteri (Pseudomonas spp.)'),
(141, '2020-09', 'Kabupaten Magelang', '45', 'Layu bakteri (Pseudomonas spp.)'),
(142, '2020-09', 'Kabupaten Magelang', '45', 'Trips (Thrips spp.)'),
(143, '2020-09', 'Kabupaten Magelang', '45', 'Trips (Thrips spp.)'),
(144, '2020-09', 'Kabupaten Magelang', '45', 'Virus kuning'),
(145, '2021-09', 'Kabupaten Magelang', '147', 'Antraknosa (Colletotrichum spp.)'),
(146, '2021-09', 'Kabupaten Magelang', '147', 'Antraknosa (Colletotrichum spp.)'),
(147, '2021-09', 'Kabupaten Magelang', '147', 'Bercak daun Alternaria (Alternaria solani)'),
(148, '2021-09', 'Kabupaten Magelang', '147', 'Bercak daun Alternaria (Alternaria solani)'),
(149, '2021-09', 'Kabupaten Magelang', '147', 'Lalat buah (Bactrocera spp.)'),
(150, '2021-09', 'Kabupaten Magelang', '147', 'Lalat buah (Bactrocera spp.)'),
(151, '2021-09', 'Kabupaten Magelang', '147', 'Layu bakteri (Pseudomonas spp.)'),
(152, '2021-09', 'Kabupaten Magelang', '147', 'Layu bakteri (Pseudomonas spp.)'),
(153, '2021-09', 'Kabupaten Magelang', '147', 'Trips (Thrips spp.)'),
(154, '2021-09', 'Kabupaten Magelang', '147', 'Trips (Thrips spp.)'),
(155, '2021-09', 'Kabupaten Magelang', '147', 'Virus kuning'),
(156, '2021-09', 'Kabupaten Magelang', '147', 'Virus kuning'),
(157, '2020-10', 'Kabupaten Magelang', '304', 'Antraknosa (Colletotrichum spp.)'),
(158, '2020-10', 'Kabupaten Magelang', '304', 'Layu bakteri (Pseudomonas spp.)'),
(159, '2020-10', 'Kabupaten Magelang', '304', 'Layu bakteri (Pseudomonas spp.)'),
(160, '2020-10', 'Kabupaten Magelang', '304', 'Virus kuning'),
(161, '2021-10', 'Kabupaten Magelang', '139', 'Antraknosa (Colletotrichum spp.)'),
(162, '2021-10', 'Kabupaten Magelang', '139', 'Lalat buah (Bactrocera spp.)'),
(163, '2021-10', 'Kabupaten Magelang', '139', 'Layu bakteri (Pseudomonas spp.)'),
(164, '2021-10', 'Kabupaten Magelang', '139', 'Layu fusarium (Fusarium oxysporum)'),
(165, '2021-10', 'Kabupaten Magelang', '139', 'Trips (Thrips spp.)'),
(166, '2021-10', 'Kabupaten Magelang', '139', 'Virus kuning'),
(167, '2020-11', 'Kabupaten Magelang', '233', 'Antraknosa (Colletotrichum spp.)'),
(168, '2020-11', 'Kabupaten Magelang', '233', 'Antraknosa (Colletotrichum spp.)'),
(169, '2020-11', 'Kabupaten Magelang', '233', 'Lalat buah (Bactrocera spp.)'),
(170, '2020-11', 'Kabupaten Magelang', '233', 'Layu bakteri (Pseudomonas spp.)'),
(171, '2020-11', 'Kabupaten Magelang', '233', 'Layu bakteri (Pseudomonas spp.)'),
(172, '2020-11', 'Kabupaten Magelang', '233', 'Virus kuning'),
(173, '2020-11', 'Kabupaten Magelang', '233', 'Virus kuning'),
(174, '2021-11', 'Kabupaten Magelang', '525', 'Antraknosa (Colletotrichum spp.)'),
(175, '2021-11', 'Kabupaten Magelang', '525', 'Antraknosa (Colletotrichum spp.)'),
(176, '2021-11', 'Kabupaten Magelang', '525', 'Lalat buah (Bactrocera spp.)'),
(177, '2021-11', 'Kabupaten Magelang', '525', 'Lalat buah (Bactrocera spp.)'),
(178, '2021-11', 'Kabupaten Magelang', '525', 'Layu bakteri (Pseudomonas spp.)'),
(179, '2021-11', 'Kabupaten Magelang', '525', 'Layu bakteri (Pseudomonas spp.)'),
(180, '2021-11', 'Kabupaten Magelang', '525', 'Layu fusarium (Fusarium oxysporum)'),
(181, '2021-11', 'Kabupaten Magelang', '525', 'Trips (Thrips spp.)'),
(182, '2021-11', 'Kabupaten Magelang', '525', 'Trips (Thrips spp.)'),
(183, '2021-11', 'Kabupaten Magelang', '525', 'Virus kuning'),
(184, '2021-11', 'Kabupaten Magelang', '525', 'Virus kuning'),
(185, '2020-12', 'Kabupaten Magelang', '427', 'Antraknosa (Colletotrichum spp.)'),
(186, '2020-12', 'Kabupaten Magelang', '427', 'Lalat buah (Bactrocera spp.)'),
(187, '2020-12', 'Kabupaten Magelang', '427', 'Layu bakteri (Pseudomonas spp.)'),
(188, '2020-12', 'Kabupaten Magelang', '427', 'Trips (Thrips spp.)'),
(189, '2020-12', 'Kabupaten Magelang', '427', 'Virus kuning'),
(190, '2021-12', 'Kabupaten Magelang', '369', 'Antraknosa (Colletotrichum spp.)'),
(191, '2021-12', 'Kabupaten Magelang', '369', 'Antraknosa (Colletotrichum spp.)'),
(192, '2021-12', 'Kabupaten Magelang', '369', 'Lalat buah (Bactrocera spp.)'),
(193, '2021-12', 'Kabupaten Magelang', '369', 'Lalat buah (Bactrocera spp.)'),
(194, '2021-12', 'Kabupaten Magelang', '369', 'Layu bakteri (Pseudomonas spp.)'),
(195, '2021-12', 'Kabupaten Magelang', '369', 'Layu bakteri (Pseudomonas spp.)'),
(196, '2021-12', 'Kabupaten Magelang', '369', 'Layu fusarium (Fusarium oxysporum)'),
(197, '2021-12', 'Kabupaten Magelang', '369', 'Layu fusarium (Fusarium oxysporum)'),
(198, '2021-12', 'Kabupaten Magelang', '369', 'Trips (Thrips spp.)'),
(199, '2021-12', 'Kabupaten Magelang', '369', 'Trips (Thrips spp.)'),
(200, '2021-12', 'Kabupaten Magelang', '369', 'Virus kuning'),
(201, '2021-12', 'Kabupaten Magelang', '369', 'Virus kuning'),
(202, '2022-01', 'Kabupaten Magelang', '453', 'Antraknosa (Colletotrichum spp.)'),
(203, '2022-01', 'Kabupaten Magelang', '453', 'Antraknosa (Colletotrichum spp.)'),
(204, '2022-01', 'Kabupaten Magelang', '453', 'Lalat buah (Bactrocera spp.)'),
(205, '2022-01', 'Kabupaten Magelang', '453', 'Layu bakteri (Pseudomonas spp.)'),
(206, '2022-01', 'Kabupaten Magelang', '453', 'Layu bakteri (Pseudomonas spp.)'),
(207, '2022-01', 'Kabupaten Magelang', '453', 'Layu fusarium (Fusarium oxysporum)'),
(208, '2022-01', 'Kabupaten Magelang', '453', 'Layu fusarium (Fusarium oxysporum)'),
(209, '2022-01', 'Kabupaten Magelang', '453', 'Trips (Thrips spp.)'),
(210, '2022-01', 'Kabupaten Magelang', '453', 'Trips (Thrips spp.)'),
(211, '2022-01', 'Kabupaten Magelang', '453', 'Virus kuning'),
(212, '2022-01', 'Kabupaten Magelang', '453', 'Virus kuning'),
(213, '2022-02', 'Kabupaten Magelang', '287', 'Antraknosa (Colletotrichum spp.)'),
(214, '2022-02', 'Kabupaten Magelang', '287', 'Antraknosa (Colletotrichum spp.)'),
(215, '2022-02', 'Kabupaten Magelang', '287', 'Layu bakteri (Pseudomonas spp.)'),
(216, '2022-02', 'Kabupaten Magelang', '287', 'Layu bakteri (Pseudomonas spp.)'),
(217, '2022-02', 'Kabupaten Magelang', '287', 'Layu fusarium (Fusarium oxysporum)'),
(218, '2022-02', 'Kabupaten Magelang', '287', 'Layu fusarium (Fusarium oxysporum)'),
(219, '2022-02', 'Kabupaten Magelang', '287', 'Trips (Thrips spp.)'),
(220, '2022-02', 'Kabupaten Magelang', '287', 'Trips (Thrips spp.)'),
(221, '2022-02', 'Kabupaten Magelang', '287', 'Virus kuning'),
(222, '2022-02', 'Kabupaten Magelang', '287', 'Virus kuning'),
(223, '2022-03', 'Kabupaten Magelang', '418', 'Antraknosa (Colletotrichum spp.)'),
(224, '2022-03', 'Kabupaten Magelang', '418', 'Antraknosa (Colletotrichum spp.)'),
(225, '2022-03', 'Kabupaten Magelang', '418', 'Layu bakteri (Pseudomonas spp.)'),
(226, '2022-03', 'Kabupaten Magelang', '418', 'Layu bakteri (Pseudomonas spp.)'),
(227, '2022-03', 'Kabupaten Magelang', '418', 'Layu fusarium (Fusarium oxysporum)'),
(228, '2022-03', 'Kabupaten Magelang', '418', 'Layu fusarium (Fusarium oxysporum)'),
(229, '2022-03', 'Kabupaten Magelang', '418', 'Trips (Thrips spp.)'),
(230, '2022-03', 'Kabupaten Magelang', '418', 'Trips (Thrips spp.)'),
(231, '2022-03', 'Kabupaten Magelang', '418', 'Virus kuning'),
(232, '2022-03', 'Kabupaten Magelang', '418', 'Virus kuning'),
(233, '2022-04', 'Kabupaten Magelang', '302', 'Antraknosa (Colletotrichum spp.)'),
(234, '2022-04', 'Kabupaten Magelang', '302', 'Antraknosa (Colletotrichum spp.)'),
(235, '2022-04', 'Kabupaten Magelang', '302', 'Layu bakteri (Pseudomonas spp.)'),
(236, '2022-04', 'Kabupaten Magelang', '302', 'Layu bakteri (Pseudomonas spp.)'),
(237, '2022-04', 'Kabupaten Magelang', '302', 'Layu fusarium (Fusarium oxysporum)'),
(238, '2022-04', 'Kabupaten Magelang', '302', 'Trips (Thrips spp.)'),
(239, '2022-04', 'Kabupaten Magelang', '302', 'Virus kuning'),
(240, '2022-04', 'Kabupaten Magelang', '302', 'Virus kuning'),
(241, '2022-05', 'Kabupaten Magelang', '312', 'Antraknosa (Colletotrichum spp.)'),
(242, '2022-05', 'Kabupaten Magelang', '312', 'Antraknosa (Colletotrichum spp.)'),
(243, '2022-05', 'Kabupaten Magelang', '312', 'Layu bakteri (Pseudomonas spp.)'),
(244, '2022-05', 'Kabupaten Magelang', '312', 'Trips (Thrips spp.)'),
(245, '2022-05', 'Kabupaten Magelang', '312', 'Trips (Thrips spp.)'),
(246, '2022-05', 'Kabupaten Magelang', '312', 'Virus kuning'),
(247, '2022-05', 'Kabupaten Magelang', '312', 'Virus kuning'),
(248, '2022-06', 'Kabupaten Magelang', '260', 'Antraknosa (Colletotrichum spp.)'),
(249, '2022-06', 'Kabupaten Magelang', '260', 'Antraknosa (Colletotrichum spp.)'),
(250, '2022-06', 'Kabupaten Magelang', '260', 'Bercak daun Alternaria (Alternaria solani)'),
(251, '2022-06', 'Kabupaten Magelang', '260', 'Lalat buah (Bactrocera spp.)'),
(252, '2022-06', 'Kabupaten Magelang', '260', 'Layu fusarium (Fusarium oxysporum)'),
(253, '2022-06', 'Kabupaten Magelang', '260', 'Trips (Thrips spp.)'),
(254, '2022-06', 'Kabupaten Magelang', '260', 'Trips (Thrips spp.)'),
(255, '2022-06', 'Kabupaten Magelang', '260', 'Virus kuning'),
(256, '2022-06', 'Kabupaten Magelang', '260', 'Virus kuning'),
(257, '2022-07', 'Kabupaten Magelang', '49', 'Antraknosa (Colletotrichum spp.)'),
(258, '2022-07', 'Kabupaten Magelang', '49', 'Antraknosa (Colletotrichum spp.)'),
(259, '2022-07', 'Kabupaten Magelang', '49', 'Bercak daun Alternaria (Alternaria solani)'),
(260, '2022-07', 'Kabupaten Magelang', '49', 'Lalat buah (Bactrocera spp.)'),
(261, '2022-07', 'Kabupaten Magelang', '49', 'Lalat buah (Bactrocera spp.)'),
(262, '2022-07', 'Kabupaten Magelang', '49', 'Layu fusarium (Fusarium oxysporum)'),
(263, '2022-07', 'Kabupaten Magelang', '49', 'Layu fusarium (Fusarium oxysporum)'),
(264, '2022-07', 'Kabupaten Magelang', '49', 'Trips (Thrips spp.)'),
(265, '2022-07', 'Kabupaten Magelang', '49', 'Trips (Thrips spp.)'),
(266, '2022-07', 'Kabupaten Magelang', '49', 'Virus keriting'),
(267, '2022-07', 'Kabupaten Magelang', '49', 'Virus kuning'),
(268, '2022-07', 'Kabupaten Magelang', '49', 'Virus kuning'),
(269, '2022-08', 'Kabupaten Magelang', '59', 'Antraknosa (Colletotrichum spp.)'),
(270, '2022-08', 'Kabupaten Magelang', '59', 'Antraknosa (Colletotrichum spp.)'),
(271, '2022-08', 'Kabupaten Magelang', '59', 'Bercak daun Alternaria (Alternaria solani)'),
(272, '2022-08', 'Kabupaten Magelang', '59', 'Bercak daun Alternaria (Alternaria solani)'),
(273, '2022-08', 'Kabupaten Magelang', '59', 'Lalat buah (Bactrocera spp.)'),
(274, '2022-08', 'Kabupaten Magelang', '59', 'Layu fusarium (Fusarium oxysporum)'),
(275, '2022-08', 'Kabupaten Magelang', '59', 'Trips (Thrips spp.)'),
(276, '2022-08', 'Kabupaten Magelang', '59', 'Trips (Thrips spp.)'),
(277, '2022-08', 'Kabupaten Magelang', '59', 'Virus kuning'),
(278, '2022-08', 'Kabupaten Magelang', '59', 'Virus kuning'),
(279, '2022-09', 'Kabupaten Magelang', '110', 'Antraknosa (Colletotrichum spp.)'),
(280, '2022-09', 'Kabupaten Magelang', '110', 'Antraknosa (Colletotrichum spp.)'),
(281, '2022-09', 'Kabupaten Magelang', '110', 'Lalat buah (Bactrocera spp.)'),
(282, '2022-09', 'Kabupaten Magelang', '110', 'Lalat buah (Bactrocera spp.)'),
(283, '2022-09', 'Kabupaten Magelang', '110', 'Layu fusarium (Fusarium oxysporum)'),
(284, '2022-09', 'Kabupaten Magelang', '110', 'Trips (Thrips spp.)'),
(285, '2022-09', 'Kabupaten Magelang', '110', 'Trips (Thrips spp.)'),
(286, '2022-09', 'Kabupaten Magelang', '110', 'Virus kuning'),
(287, '2022-09', 'Kabupaten Magelang', '110', 'Virus kuning'),
(288, '2022-10', 'Kabupaten Magelang', '529', 'Antraknosa (Colletotrichum spp.)'),
(289, '2022-10', 'Kabupaten Magelang', '529', 'Antraknosa (Colletotrichum spp.)'),
(290, '2022-10', 'Kabupaten Magelang', '529', 'Lalat buah (Bactrocera spp.)'),
(291, '2022-10', 'Kabupaten Magelang', '529', 'Lalat buah (Bactrocera spp.)'),
(292, '2022-10', 'Kabupaten Magelang', '529', 'Layu fusarium (Fusarium oxysporum)'),
(293, '2022-10', 'Kabupaten Magelang', '529', 'Trips (Thrips spp.)'),
(294, '2022-10', 'Kabupaten Magelang', '529', 'Trips (Thrips spp.)'),
(295, '2022-10', 'Kabupaten Magelang', '529', 'Virus kuning'),
(296, '2022-10', 'Kabupaten Magelang', '529', 'Virus kuning'),
(297, '2022-11', 'Kabupaten Magelang', '476', 'Antraknosa (Colletotrichum spp.)'),
(298, '2022-11', 'Kabupaten Magelang', '476', 'Antraknosa (Colletotrichum spp.)'),
(299, '2022-11', 'Kabupaten Magelang', '476', 'Lalat buah (Bactrocera spp.)'),
(300, '2022-11', 'Kabupaten Magelang', '476', 'Lalat buah (Bactrocera spp.)'),
(301, '2022-11', 'Kabupaten Magelang', '476', 'Layu fusarium (Fusarium oxysporum)'),
(302, '2022-11', 'Kabupaten Magelang', '476', 'Layu fusarium (Fusarium oxysporum)'),
(303, '2022-11', 'Kabupaten Magelang', '476', 'Trips (Thrips spp.)'),
(304, '2022-11', 'Kabupaten Magelang', '476', 'Trips (Thrips spp.)'),
(305, '2022-11', 'Kabupaten Magelang', '476', 'Virus kuning'),
(306, '2022-11', 'Kabupaten Magelang', '476', 'Virus kuning'),
(308, '2022-12', 'Kabupaten Magelang', '470', 'Antraknosa (Colletotrichum spp.)'),
(309, '2022-12', 'Kabupaten Magelang', '470', 'Lalat buah (Bactrocera spp.)'),
(310, '2022-12', 'Kabupaten Magelang', '470', 'Lalat buah (Bactrocera spp.)'),
(311, '2022-12', 'Kabupaten Magelang', '470', 'Layu fusarium (Fusarium oxysporum)'),
(312, '2022-12', 'Kabupaten Magelang', '470', 'Layu fusarium (Fusarium oxysporum)'),
(313, '2022-12', 'Kabupaten Magelang', '470', 'Trips (Thrips spp.)'),
(314, '2022-12', 'Kabupaten Magelang', '470', 'Trips (Thrips spp.)'),
(315, '2022-12', 'Kabupaten Magelang', '470', 'Virus kuning'),
(316, '2022-12', 'Kabupaten Magelang', '470', 'Virus kuning'),
(6441, '2020-01', 'Kabupaten Magelang', '11', 'Antraknosa');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_prediksi`
--

CREATE TABLE `hasil_prediksi` (
  `id_hasil` int(11) NOT NULL,
  `bulan_awal` varchar(255) NOT NULL,
  `bulan_akhir` varchar(255) NOT NULL,
  `tipe_ch` varchar(255) NOT NULL,
  `daftar_hama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hasil_prediksi`
--

INSERT INTO `hasil_prediksi` (`id_hasil`, `bulan_awal`, `bulan_akhir`, `tipe_ch`, `daftar_hama`) VALUES
(1, '2021-01', '2021-02', 'ST', 'Antraknosa (Colletotrichum spp.), Lalat buah (Bactrocera spp.), Layu bakteri (Pseudomonas spp.), Layu fusarium (Fusarium oxysporum), Trips (Thrips spp.), Virus kuning'),
(2, '2021-06', '2021-12', 'T', 'Antraknosa (Colletotrichum spp.), Lalat buah (Bactrocera spp.), Layu bakteri (Pseudomonas spp.), Layu fusarium (Fusarium oxysporum), Trips (Thrips spp.), Virus kuning'),
(3, '2021-06', '2021-12', 'ST', 'Antraknosa (Colletotrichum spp.), Lalat buah (Bactrocera spp.), Layu bakteri (Pseudomonas spp.), Layu fusarium (Fusarium oxysporum), Trips (Thrips spp.), Virus kuning'),
(4, '2021-06', '2021-12', 'ST', 'Antraknosa (Colletotrichum spp.), Lalat buah (Bactrocera spp.), Layu bakteri (Pseudomonas spp.), Layu fusarium (Fusarium oxysporum), Trips (Thrips spp.), Virus kuning'),
(5, '2021-06', '2021-12', 'ST', 'Antraknosa (Colletotrichum spp.), Lalat buah (Bactrocera spp.), Layu bakteri (Pseudomonas spp.), Layu fusarium (Fusarium oxysporum), Trips (Thrips spp.), Virus kuning'),
(6, '2021-01', '2021-04', 'ST', 'Antraknosa (Colletotrichum spp.), Lalat buah (Bactrocera spp.), Layu bakteri (Pseudomonas spp.), Layu fusarium (Fusarium oxysporum), Trips (Thrips spp.), Virus kuning'),
(7, '2021-01', '2021-12', 'T', 'Antraknosa (Colletotrichum spp.), Lalat buah (Bactrocera spp.), Layu bakteri (Pseudomonas spp.), Layu fusarium (Fusarium oxysporum), Trips (Thrips spp.), Virus kuning'),
(8, '2020-01', '2020-02', 'T', 'Antraknosa (Colletotrichum spp.), Lalat buah (Bactrocera spp.), Layu fusarium (Fusarium oxysporum), Trips (Thrips spp.), Virus kuning, Busuk daun (Phytophthora spp.)'),
(9, '2020-01', '2021-12', 'R', 'Antraknosa (Colletotrichum spp.), Lalat buah (Bactrocera spp.), Layu bakteri (Pseudomonas spp.), Trips (Thrips spp.), Virus kuning, Bercak daun Alternaria (Alternaria solani), Kutu daun persik (Myzus persicae), Ulat grayak (Spodoptera litura), Busuk daun (Phytophthora spp.)'),
(10, '2020-01', '2020-12', 'M', 'Antraknosa (Colletotrichum spp.), Lalat buah (Bactrocera spp.), Layu bakteri (Pseudomonas spp.), Layu fusarium (Fusarium oxysporum), Trips (Thrips spp.), Virus kuning, Bercak daun Alternaria (Alternaria solani), Busuk daun (Phytophthora spp.)'),
(11, '2020-01', '2020-06', 'M', 'Antraknosa (Colletotrichum spp.), Layu fusarium (Fusarium oxysporum), Trips (Thrips spp.), Virus kuning, Bercak daun Alternaria (Alternaria solani), Busuk daun (Phytophthora spp.)'),
(12, '2020-08', '2021-12', 'T', 'Antraknosa (Colletotrichum spp.), Lalat buah (Bactrocera spp.), Layu bakteri (Pseudomonas spp.), Layu fusarium (Fusarium oxysporum), Trips (Thrips spp.), Virus kuning'),
(13, '2021-01', '2022-12', 'ST', 'Antraknosa (Colletotrichum spp.), Lalat buah (Bactrocera spp.), Layu fusarium (Fusarium oxysporum), Trips (Thrips spp.), Virus kuning, Layu bakteri (Pseudomonas spp.)'),
(14, '2021-01', '2022-12', 'ST', 'Antraknosa (Colletotrichum spp.), Lalat buah (Bactrocera spp.), Layu fusarium (Fusarium oxysporum), Trips (Thrips spp.), Virus kuning, Layu bakteri (Pseudomonas spp.)');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`) VALUES
(1, 'Roro', 'roro', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_training`
--
ALTER TABLE `data_training`
  ADD PRIMARY KEY (`id_data`);

--
-- Indexes for table `hasil_prediksi`
--
ALTER TABLE `hasil_prediksi`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_training`
--
ALTER TABLE `data_training`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6444;

--
-- AUTO_INCREMENT for table `hasil_prediksi`
--
ALTER TABLE `hasil_prediksi`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
