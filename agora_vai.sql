-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 29, 2018 at 09:56 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agencia-viagem`
--

-- --------------------------------------------------------

--
-- Table structure for table `arquivos`
--

CREATE TABLE `arquivos` (
  `id` int(10) NOT NULL,
  `nm_arquivo` varchar(50) NOT NULL,
  `arquivo` mediumblob NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `tamanho` int(11) NOT NULL,
  `id_post` int(10) NOT NULL,
  `favorite` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arquivos`
--

INSERT INTO `arquivos` (`id`, `nm_arquivo`, `arquivo`, `tipo`, `tamanho`, `id_post`, `favorite`) VALUES
(50, '1543528374huang2007.pdf', 0x70686f746f732f313534333532383337346875616e67323030372e706466, 'pdf', 534972, 44, 0),
(49, '1543528374traca.PNG', 0x70686f746f732f3135343335323833373474726163612e504e47, 'PNG', 50246, 44, 0),
(48, '1543528374network.PNG', 0x70686f746f732f313534333532383337346e6574776f726b2e504e47, 'PNG', 55246, 44, 1),
(47, '1543527850hidden.PNG', 0x70686f746f732f3135343335323738353068696464656e2e504e47, 'PNG', 68137, 43, 0),
(46, '1543527850traca.PNG', 0x70686f746f732f3135343335323738353074726163612e504e47, 'PNG', 50246, 43, 0),
(45, '1543527850action.PNG', 0x70686f746f732f31353433353237383530616374696f6e2e504e47, 'PNG', 56810, 43, 0),
(44, '1543527850vector.PNG', 0x70686f746f732f31353433353237383530766563746f722e504e47, 'PNG', 37087, 43, 1),
(43, '1543527801rude2004.pdf', 0x70686f746f732f3135343335323738303172756465323030342e706466, 'pdf', 150306, 42, 0),
(42, '1543527801415989.jpg', 0x70686f746f732f313534333532373830313431353938392e6a7067, 'jpg', 83846, 42, 1),
(41, '1543527764753753.jpg', 0x70686f746f732f313534333532373736343735333735332e6a7067, 'jpg', 1120226, 41, 0),
(40, '1543527764556454.jpg', 0x70686f746f732f313534333532373736343535363435342e6a7067, 'jpg', 413759, 41, 0),
(39, '1543527764556559.jpg', 0x70686f746f732f313534333532373736343535363535392e6a7067, 'jpg', 519193, 41, 1),
(38, '1543527718image (1).jpg', 0x70686f746f732f31353433353237373138696d616765202831292e6a7067, 'jpg', 216674, 40, 0),
(37, '1543527718image.jpg', 0x70686f746f732f31353433353237373138696d6167652e6a7067, 'jpg', 250889, 40, 1),
(33, '1543505795artigo corpo.pdf', 0x70686f746f732f3135343335303537393561727469676f20636f72706f2e706466, 'pdf', 158129, 38, 0),
(32, '1543505795fllow.PNG', 0x70686f746f732f31353433353035373935666c6c6f772e504e47, 'PNG', 35897, 38, 0),
(31, '1543505795556454.jpg', 0x70686f746f732f313534333530353739353535363435342e6a7067, 'jpg', 413759, 38, 1),
(35, '1543526640huang2007.pdf', 0x70686f746f732f313534333532363634306875616e67323030372e706466, 'pdf', 534972, 39, 0),
(36, '1543526640bii.s8933.pdf', 0x70686f746f732f313534333532363634306269692e73383933332e706466, 'pdf', 639105, 39, 0),
(34, '1543526640image.jpg', 0x70686f746f732f31353433353236363430696d6167652e6a7067, 'jpg', 250889, 39, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arquivos`
--
ALTER TABLE `arquivos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_post` (`id_post`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arquivos`
--
ALTER TABLE `arquivos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
