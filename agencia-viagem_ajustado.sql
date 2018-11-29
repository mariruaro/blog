-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 29-Nov-2018 às 14:56
-- Versão do servidor: 5.7.23
-- versão do PHP: 7.2.10

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
-- Estrutura da tabela `arquivos`
--

DROP TABLE IF EXISTS `arquivos`;
CREATE TABLE IF NOT EXISTS `arquivos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nm_arquivo` varchar(50) NOT NULL,
  `arquivo` mediumblob NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `tamanho` int(11) NOT NULL,
  `id_post` int(10) NOT NULL,
  `favorite` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_post` (`id_post`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `arquivos`
--

INSERT INTO `arquivos` (`id`, `nm_arquivo`, `arquivo`, `tipo`, `tamanho`, `id_post`, `favorite`) VALUES
(1, 'file-1543447867.PNG', 0x70686f746f732f66696c652d313534333434373836372e504e47, 'PNG', 555, 15, 0),
(2, 'file-1543448789.png', 0x70686f746f732f66696c652d313534333434383738392e706e67, 'png', 555, 15, 0),
(3, 'file-1543449575.jpg', 0x70686f746f732f66696c652d313534333434393537352e6a7067, 'jpg', 555, 15, 0),
(4, 'file-1543486125.png', 0x70686f746f732f66696c652d313534333438363132352e706e67, 'png', 555, 19, 0),
(5, 'file-1543486705.png', 0x70686f746f732f66696c652d313534333438363730352e706e67, 'png', 38612, 19, 0),
(6, 'ColaboradorHome.png1543486907.png', 0x70686f746f732f436f6c61626f7261646f72486f6d652e706e67313534333438363930372e706e67, 'png', 29464, 19, 0),
(7, 'AreaHome.png1543487385.png', 0x70686f746f732f41726561486f6d652e706e67313534333438373338352e706e67, 'png', 24362, 19, 0),
(8, 'icon-old.png1543487422.png', 0x70686f746f732f69636f6e2d6f6c642e706e67313534333438373432322e706e67, 'png', 2976, 20, 0),
(9, '09-modelo-atividades.pdf1543487500.pdf', 0x70686f746f732f30392d6d6f64656c6f2d617469766964616465732e706466313534333438373530302e706466, 'pdf', 815909, 21, 0),
(10, '08-UML.pdf1543487716.pdf', 0x70686f746f732f30382d554d4c2e706466313534333438373731362e706466, 'pdf', 493300, 22, 0),
(11, '07-osprint.pdf1543487912.pdf', 0x70686f746f732f30372d6f737072696e742e706466313534333438373931322e706466, 'pdf', 574337, 24, 0),
(12, '02-introducaoaoscrum.pdf1543488133.pdf', 0x70686f746f732f30322d696e74726f647563616f616f736372756d2e706466313534333438383133332e706466, 'pdf', 943275, 25, 0),
(13, 'bloco1.jpg1543488714.jpg', 0x70686f746f732f626c6f636f312e6a7067313534333438383731342e6a7067, 'jpg', 282584, 29, 0),
(14, '08-UML.pdf1543501869.pdf', 0x70686f746f732f30382d554d4c2e706466313534333530313836392e706466, 'pdf', 493300, 30, 0),
(15, '1543502070man_photo.png', 0x70686f746f732f313534333530323037306d616e5f70686f746f2e706e67, 'png', 10578, 31, 0),
(16, '1543502859bg-login2.png', 0x70686f746f732f3135343335303238353962672d6c6f67696e322e706e67, 'png', 5462, 10, 0),
(17, '1543502859ColaboradorHome.png', 0x70686f746f732f31353433353032383539436f6c61626f7261646f72486f6d652e706e67, 'png', 29464, 10, 0),
(18, '1543502859evento.png', 0x70686f746f732f313534333530323835396576656e746f2e706e67, 'png', 8714, 10, 0),
(19, '1543502994profile.png', 0x70686f746f732f3135343335303239393470726f66696c652e706e67, 'png', 12703, 34, 0),
(20, '1543502994sad.png', 0x70686f746f732f313534333530323939347361642e706e67, 'png', 10550, 34, 0),
(21, '1543502994visitHome.png', 0x70686f746f732f313534333530323939347669736974486f6d652e706e67, 'png', 39200, 34, 0),
(22, '154350303407-osprint.pdf', 0x70686f746f732f3135343335303330333430372d6f737072696e742e706466, 'pdf', 574337, 35, 0),
(23, '154350303408-UML.pdf', 0x70686f746f732f3135343335303330333430382d554d4c2e706466, 'pdf', 493300, 35, 0),
(24, '1543503365pagina-interna.png', 0x70686f746f732f31353433353033333635706167696e612d696e7465726e612e706e67, 'png', 807094, 36, 1),
(25, '1543503365AntesPerformance.PNG', 0x70686f746f732f31353433353033333635416e746573506572666f726d616e63652e504e47, 'PNG', 38350, 36, 0),
(26, '1543503365SS-11089 - EvidenciaNetwork.txt', 0x70686f746f732f3135343335303333363553532d3131303839202d2045766964656e6369614e6574776f726b2e747874, 'txt', 638, 36, 0),
(27, '1543503365SS-11677 - Evidencia.txt', 0x70686f746f732f3135343335303333363553532d3131363737202d2045766964656e6369612e747874, 'txt', 467, 36, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(80) NOT NULL,
  `conteudo` text NOT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_alteracao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario` int(10) NOT NULL,
  `nome_usuario` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `post`
--

INSERT INTO `post` (`id`, `titulo`, `conteudo`, `data`, `data_alteracao`, `id_usuario`, `nome_usuario`) VALUES
(15, 'mariana post', 'muitos posts', '2018-11-27 23:53:45', '2018-11-27 23:53:45', 1, 'mariana'),
(14, 'test', 'conteudo com text', '2018-11-27 23:48:04', '2018-11-27 23:48:04', 3, 'Admin'),
(13, 'teste', '<p>tstsesg</p>', '2018-11-27 23:44:58', '2018-11-27 23:44:58', 3, 'Admin'),
(16, 'test', '<p>go</p>', '2018-11-29 08:08:45', '2018-11-29 08:08:45', 1, 'mariana'),
(17, 'size', '<p>foi</p>', '2018-11-29 08:18:25', '2018-11-29 08:18:25', 1, 'mariana'),
(18, 'nome', '<p>dfdfd</p>', '2018-11-29 08:21:47', '2018-11-29 08:21:47', 1, 'mariana'),
(19, 'id', '<p>tests</p>', '2018-11-29 08:29:44', '2018-11-29 08:29:44', 1, 'mariana'),
(20, 'novo id', '<p>teste</p>', '2018-11-29 08:30:22', '2018-11-29 08:30:22', 1, 'mariana'),
(21, 'varios arquivos', '<p>varios a</p>', '2018-11-29 08:31:40', '2018-11-29 08:31:40', 1, 'mariana'),
(22, 'vai retornar', '<p>retorna</p>', '2018-11-29 08:35:16', '2018-11-29 08:35:16', 1, 'mariana'),
(23, 'sim redireciona', '<p>vai diabo</p>', '2018-11-29 08:38:04', '2018-11-29 08:38:04', 1, 'mariana'),
(24, 'mt longo mas agora vai', '<p>diabeira</p>', '2018-11-29 08:38:32', '2018-11-29 08:38:32', 1, 'mariana'),
(25, 'mas q diabeira', '<p>vai diabo</p>', '2018-11-29 08:42:13', '2018-11-29 08:42:13', 1, 'mariana'),
(26, 'sem arquivo', '<p>dfsdfdsf</p>', '2018-11-29 08:42:40', '2018-11-29 08:42:40', 1, 'mariana'),
(27, 'sim sim sim', '<p>sim sim</p>', '2018-11-29 08:43:17', '2018-11-29 08:43:17', 1, 'mariana'),
(28, 'retdireciaona', '<p>asfasfasf</p>', '2018-11-29 08:47:05', '2018-11-29 08:47:05', 1, 'mariana'),
(29, 'vai novo id', '<p>vai diabo</p>', '2018-11-29 08:51:54', '2018-11-29 08:51:54', 1, 'mariana'),
(30, 'novo post mucho', '<p>dgsdg</p>', '2018-11-29 12:31:09', '2018-11-29 12:31:09', 1, 'mariana'),
(31, 'imagem', '<p>tests</p>', '2018-11-29 12:34:30', '2018-11-29 12:34:30', 1, 'mariana'),
(32, 'dfsfsdf', '<p>fdfdsf</p>', '2018-11-29 12:37:36', '2018-11-29 12:37:36', 1, 'mariana'),
(33, 'foi o caramba', '<p>dsfdsfdsf</p>', '2018-11-29 12:38:23', '2018-11-29 12:38:23', 1, 'mariana'),
(34, 'dfsdfsdf', '<p>gfdgdfgdfg</p>', '2018-11-29 12:49:54', '2018-11-29 12:49:54', 1, 'mariana'),
(35, 'pdf', '<p>fdsfds</p>', '2018-11-29 12:50:34', '2018-11-29 12:50:34', 1, 'mariana'),
(36, 'Hora da vdd', '<p>dfdsfs</p>', '2018-11-29 12:56:05', '2018-11-29 12:56:05', 1, 'mariana');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mariana', 'maruarovigano@gmail.com', '$2y$10$3R2W56b/na.rJEj1LZLFdejQvxaZOztritAfX5ulZsPe78QoHTpQa', 'w42Nfl78KQMLl5y1j5KyLHBVTaE26lSMROmGwz6VZW3FSCh27HgH98oEGcNB', '2018-05-11 03:22:22', '2018-05-11 03:22:22'),
(2, 'guilherme', 'gasusin@ucs.br', '$2y$10$pZKKa6vPDleSiimxoLSR3.L.fvpNcYa8OqKlATIVVgDoyFRPNWh8O', NULL, '2018-11-09 00:18:29', '2018-11-09 00:18:29'),
(3, 'Admin', 'admin@admin.com.br', '$2y$10$U8EMxDBfOdKnicGy/l2jdOwby8YkJ5E6iLzgW6zSH9HLsb2LbgHTa', 'KbDs7sdcGMmzMfAsC3FnDfGVxgJufBBUFq17OPoXM8mAB7l9kEVYICkKSIIz', '2018-11-28 02:51:16', '2018-11-28 02:51:16');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
