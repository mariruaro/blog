-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 28, 2018 at 02:16 AM
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
  `id_post` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(10) NOT NULL,
  `titulo` varchar(80) NOT NULL,
  `conteudo` text NOT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_alteracao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario` int(10) NOT NULL,
  `nome_usuario` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `titulo`, `conteudo`, `data`, `data_alteracao`, `id_usuario`, `nome_usuario`) VALUES
(15, 'mariana post', 'muitos posts', '2018-11-27 23:53:45', '2018-11-27 23:53:45', 1, 'mariana'),
(14, 'test', 'conteudo com text', '2018-11-27 23:48:04', '2018-11-27 23:48:04', 3, 'Admin'),
(13, 'teste', '<p>tstsesg</p>', '2018-11-27 23:44:58', '2018-11-27 23:44:58', 3, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mariana', 'maruarovigano@gmail.com', '$2y$10$3R2W56b/na.rJEj1LZLFdejQvxaZOztritAfX5ulZsPe78QoHTpQa', 'w42Nfl78KQMLl5y1j5KyLHBVTaE26lSMROmGwz6VZW3FSCh27HgH98oEGcNB', '2018-05-11 03:22:22', '2018-05-11 03:22:22'),
(2, 'guilherme', 'gasusin@ucs.br', '$2y$10$pZKKa6vPDleSiimxoLSR3.L.fvpNcYa8OqKlATIVVgDoyFRPNWh8O', NULL, '2018-11-09 00:18:29', '2018-11-09 00:18:29'),
(3, 'Admin', 'admin@admin.com.br', '$2y$10$U8EMxDBfOdKnicGy/l2jdOwby8YkJ5E6iLzgW6zSH9HLsb2LbgHTa', 'KbDs7sdcGMmzMfAsC3FnDfGVxgJufBBUFq17OPoXM8mAB7l9kEVYICkKSIIz', '2018-11-28 02:51:16', '2018-11-28 02:51:16');

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
