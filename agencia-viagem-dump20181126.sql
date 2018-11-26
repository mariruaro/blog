-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 26-Nov-2018 às 15:24
-- Versão do servidor: 5.7.21
-- PHP Version: 5.6.35

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
  `id` int(10) NOT NULL,
  `nm_arquivo` varchar(50) NOT NULL,
  `arquivo` mediumblob NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `tamanho` int(11) NOT NULL,
  `id_post` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_post` (`id_post`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `data` datetime NOT NULL,
  `data_alteracao` datetime NOT NULL,
  `id_usuario` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'maruarovigano@gmail.com', '$2y$10$3R2W56b/na.rJEj1LZLFdejQvxaZOztritAfX5ulZsPe78QoHTpQa', 'oPI6X3QjBaDBqRpUOErdmlbgJNLLPX2WKeGhZbnptOGJeoK1wp8itZ96NL3x', '2018-05-11 03:22:22', '2018-05-11 03:22:22'),
(2, 'guilherme', 'gasusin@ucs.br', '$2y$10$pZKKa6vPDleSiimxoLSR3.L.fvpNcYa8OqKlATIVVgDoyFRPNWh8O', NULL, '2018-11-09 00:18:29', '2018-11-09 00:18:29');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
