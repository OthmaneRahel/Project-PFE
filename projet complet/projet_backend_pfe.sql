-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 31 mai 2024 à 18:09
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet_backend_pfe`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `idclient` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idclient`, `nom`, `prenom`, `telephone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 15:10:36', '2024-05-01 15:10:36'),
(2, 'boot', 'my', '0677083904', 'waczaki498@gmail.com', '2024-05-01 15:12:51', '2024-05-01 15:12:51'),
(3, 'boot', 'my', '0677083904', 'waczaki498@gmail.com', '2024-05-01 15:16:18', '2024-05-01 15:16:18'),
(4, 'boot', 'my', '0677083904', 'waczaki498@gmail.com', '2024-05-01 15:19:42', '2024-05-01 15:19:42'),
(5, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 15:30:05', '2024-05-01 15:30:05'),
(6, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 15:35:01', '2024-05-01 15:35:01'),
(7, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 15:43:39', '2024-05-01 15:43:39'),
(8, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 15:47:35', '2024-05-01 15:47:35'),
(9, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 15:49:45', '2024-05-01 15:49:45'),
(10, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 15:52:51', '2024-05-01 15:52:51'),
(11, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 16:02:42', '2024-05-01 16:02:42'),
(12, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 16:06:55', '2024-05-01 16:06:55'),
(13, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 16:22:10', '2024-05-01 16:22:10'),
(14, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 16:24:58', '2024-05-01 16:24:58'),
(15, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 16:25:57', '2024-05-01 16:25:57'),
(16, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 16:28:03', '2024-05-01 16:28:03'),
(17, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 16:29:45', '2024-05-01 16:29:45'),
(18, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 16:32:23', '2024-05-01 16:32:23'),
(19, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 16:33:26', '2024-05-01 16:33:26'),
(20, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 16:34:35', '2024-05-01 16:34:35'),
(21, 'boot', 'my', '0677083904', 'waczaki498@gmail.com', '2024-05-01 16:36:46', '2024-05-01 16:36:46'),
(22, 'boot', 'my', '0677083904', 'waczaki498@gmail.com', '2024-05-01 16:38:20', '2024-05-01 16:38:20'),
(23, 'boot', 'my', '0677083904', 'waczaki498@gmail.com', '2024-05-01 16:39:46', '2024-05-01 16:39:46'),
(24, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 16:40:31', '2024-05-01 16:40:31'),
(25, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 16:41:37', '2024-05-01 16:41:37'),
(26, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 16:43:17', '2024-05-01 16:43:17'),
(27, 'boot', 'my', '0677083904', 'waczaki498@gmail.com', '2024-05-01 16:46:46', '2024-05-01 16:46:46'),
(28, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 16:47:27', '2024-05-01 16:47:27'),
(29, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 16:49:20', '2024-05-01 16:49:20'),
(30, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 16:50:45', '2024-05-01 16:50:45'),
(31, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 16:53:49', '2024-05-01 16:53:49'),
(32, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 17:02:14', '2024-05-01 17:02:14'),
(33, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 17:07:07', '2024-05-01 17:07:07'),
(34, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 17:08:04', '2024-05-01 17:08:04'),
(35, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 17:09:26', '2024-05-01 17:09:26'),
(36, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 17:10:13', '2024-05-01 17:10:13'),
(37, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 17:11:15', '2024-05-01 17:11:15'),
(38, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 17:12:18', '2024-05-01 17:12:18'),
(39, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 17:13:28', '2024-05-01 17:13:28'),
(40, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 17:19:30', '2024-05-01 17:19:30'),
(41, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 17:20:53', '2024-05-01 17:20:53'),
(42, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 17:21:18', '2024-05-01 17:21:18'),
(43, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 17:25:32', '2024-05-01 17:25:32'),
(44, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 17:28:40', '2024-05-01 17:28:40'),
(45, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 17:30:06', '2024-05-01 17:30:06'),
(46, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 17:31:06', '2024-05-01 17:31:06'),
(47, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 17:31:32', '2024-05-01 17:31:32'),
(48, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 17:31:55', '2024-05-01 17:31:55'),
(49, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:14:25', '2024-05-01 19:14:25'),
(50, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:16:18', '2024-05-01 19:16:18'),
(51, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 19:22:58', '2024-05-01 19:22:58'),
(52, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 19:23:48', '2024-05-01 19:23:48'),
(53, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 19:31:41', '2024-05-01 19:31:41'),
(54, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 19:32:53', '2024-05-01 19:32:53'),
(55, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 19:36:27', '2024-05-01 19:36:27'),
(56, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:37:14', '2024-05-01 19:37:14'),
(57, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:40:21', '2024-05-01 19:40:21'),
(58, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:42:58', '2024-05-01 19:42:58'),
(59, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:43:51', '2024-05-01 19:43:51'),
(60, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:46:48', '2024-05-01 19:46:48'),
(61, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:47:27', '2024-05-01 19:47:27'),
(62, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:47:47', '2024-05-01 19:47:47'),
(63, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:48:01', '2024-05-01 19:48:01'),
(64, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:48:18', '2024-05-01 19:48:18'),
(65, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:49:06', '2024-05-01 19:49:06'),
(66, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:49:23', '2024-05-01 19:49:23'),
(67, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:49:31', '2024-05-01 19:49:31'),
(68, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:50:55', '2024-05-01 19:50:55'),
(69, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:51:26', '2024-05-01 19:51:26'),
(70, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:54:50', '2024-05-01 19:54:50'),
(71, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:55:26', '2024-05-01 19:55:26'),
(72, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:55:48', '2024-05-01 19:55:48'),
(73, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:56:18', '2024-05-01 19:56:18'),
(74, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:56:45', '2024-05-01 19:56:45'),
(75, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:56:59', '2024-05-01 19:56:59'),
(76, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:57:20', '2024-05-01 19:57:20'),
(77, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:57:57', '2024-05-01 19:57:57'),
(78, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:58:14', '2024-05-01 19:58:14'),
(79, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:59:02', '2024-05-01 19:59:02'),
(80, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:59:21', '2024-05-01 19:59:21'),
(81, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:59:34', '2024-05-01 19:59:34'),
(82, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 19:59:50', '2024-05-01 19:59:50'),
(83, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:00:03', '2024-05-01 20:00:03'),
(84, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:00:32', '2024-05-01 20:00:32'),
(85, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:00:49', '2024-05-01 20:00:49'),
(86, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:01:21', '2024-05-01 20:01:21'),
(87, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:03:40', '2024-05-01 20:03:40'),
(88, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:04:22', '2024-05-01 20:04:22'),
(89, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:04:29', '2024-05-01 20:04:29'),
(90, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:04:53', '2024-05-01 20:04:53'),
(91, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:05:13', '2024-05-01 20:05:13'),
(92, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:05:56', '2024-05-01 20:05:56'),
(93, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:06:21', '2024-05-01 20:06:21'),
(94, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:06:30', '2024-05-01 20:06:30'),
(95, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:06:56', '2024-05-01 20:06:56'),
(96, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:07:21', '2024-05-01 20:07:21'),
(97, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:07:39', '2024-05-01 20:07:39'),
(98, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:09:18', '2024-05-01 20:09:18'),
(99, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:09:42', '2024-05-01 20:09:42'),
(100, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:10:09', '2024-05-01 20:10:09'),
(101, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:11:50', '2024-05-01 20:11:50'),
(102, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:12:11', '2024-05-01 20:12:11'),
(103, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:15:54', '2024-05-01 20:15:54'),
(104, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:18:20', '2024-05-01 20:18:20'),
(105, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:18:45', '2024-05-01 20:18:45'),
(106, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:22:15', '2024-05-01 20:22:15'),
(107, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:23:50', '2024-05-01 20:23:50'),
(108, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:25:43', '2024-05-01 20:25:43'),
(109, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:26:51', '2024-05-01 20:26:51'),
(110, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:27:13', '2024-05-01 20:27:13'),
(111, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:27:29', '2024-05-01 20:27:29'),
(112, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:27:46', '2024-05-01 20:27:46'),
(113, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:28:03', '2024-05-01 20:28:03'),
(114, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:28:58', '2024-05-01 20:28:58'),
(115, 'ELMANNANI', 'Co', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:29:05', '2024-05-01 20:29:05'),
(116, 'ELMANNANI', 'aa', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:34:02', '2024-05-01 20:34:02'),
(117, 'ELMANNANI', 'aa', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:35:25', '2024-05-01 20:35:25'),
(118, 'ELMANNANI', 'aa', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:37:34', '2024-05-01 20:37:34'),
(119, 'ELMANNANI', 'aa', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:37:55', '2024-05-01 20:37:55'),
(120, 'ELMANNANI', 'aa', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:38:05', '2024-05-01 20:38:05'),
(121, 'ELMANNANI', 'aa', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:38:27', '2024-05-01 20:38:27'),
(122, 'ELMANNANI', 'aa', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:39:00', '2024-05-01 20:39:00'),
(123, 'ELMANNANI', 'aa', '0677083904', 'azerty1234@gmail.com', '2024-05-01 20:39:42', '2024-05-01 20:39:42'),
(124, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-01 21:46:47', '2024-05-01 21:46:47'),
(125, 'hub qalbii', 'fati', '0677083904', 'azerty1234@gmail.comv', '2024-05-03 15:04:18', '2024-05-03 15:04:18'),
(126, 'hub qalbii', 'fati', '0677083904', 'azerty1234@gmail.comv', '2024-05-04 16:37:35', '2024-05-04 16:37:35'),
(127, 'RAHEL', 'OTHMANE', '0677083904', 'rahelothmane@gmail.com', '2024-05-05 14:38:35', '2024-05-05 14:38:35'),
(128, 'RAHEL', 'OTHMANE', '0677083904', 'rahelothmane@gmail.com', '2024-05-05 14:42:15', '2024-05-05 14:42:15'),
(129, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-05 14:45:18', '2024-05-05 14:45:18'),
(130, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-05 14:45:53', '2024-05-05 14:45:53'),
(131, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-05 14:48:38', '2024-05-05 14:48:38'),
(132, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-05 14:52:03', '2024-05-05 14:52:03'),
(133, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-05 14:54:30', '2024-05-05 14:54:30'),
(134, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-05 14:55:32', '2024-05-05 14:55:32'),
(135, 'qwerty', 'Co', '0606591862', 'rahelothmane@gmail.com', '2024-05-05 15:35:44', '2024-05-05 15:35:44'),
(136, 'qwerty', 'Co', '0606591862', 'rahelothmane@gmail.com', '2024-05-05 15:36:36', '2024-05-05 15:36:36'),
(137, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.com', '2024-05-05 16:35:10', '2024-05-05 16:35:10'),
(138, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-05 16:55:21', '2024-05-05 16:55:21'),
(139, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-05 17:16:24', '2024-05-05 17:16:24'),
(140, 'scarface', 'zaml', '0677083904', 'azerty1234@gmail.comv', '2024-05-05 19:31:05', '2024-05-05 19:31:05'),
(141, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-05 20:20:57', '2024-05-05 20:20:57'),
(142, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-05 20:35:55', '2024-05-05 20:35:55'),
(143, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-07 08:26:03', '2024-05-07 08:26:03'),
(144, 'Birouk', 'Oumaima', '0694262922', 'oumayma.birouk@gmail.com', '2024-05-08 13:40:23', '2024-05-08 13:40:23'),
(145, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-11 23:18:19', '2024-05-11 23:18:19'),
(146, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-13 12:49:17', '2024-05-13 12:49:17'),
(147, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-13 14:28:59', '2024-05-13 14:28:59'),
(148, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-13 14:32:02', '2024-05-13 14:32:02'),
(149, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-17 16:23:24', '2024-05-17 16:23:24'),
(150, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-18 17:47:03', '2024-05-18 17:47:03'),
(151, 'oussama', 'kheddari', '0677083904', 'azerty1234@gmail.comv', '2024-05-18 22:22:57', '2024-05-18 22:22:57'),
(152, 'oussama', 'kheddari', '0677083904', 'azerty1234@gmail.comv', '2024-05-18 22:25:18', '2024-05-18 22:25:18'),
(153, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-18 22:25:45', '2024-05-18 22:25:45'),
(154, 'oussama', 'kheddari', '0677083904', 'azerty1234@gmail.comv', '2024-05-18 22:42:32', '2024-05-18 22:42:32'),
(155, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-18 22:43:29', '2024-05-18 22:43:29'),
(156, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-18 22:43:34', '2024-05-18 22:43:34'),
(157, 'oussama', 'kheddari', '0677083904', 'azerty1234@gmail.comv', '2024-05-21 09:01:18', '2024-05-21 09:01:18'),
(158, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-28 13:45:20', '2024-05-28 13:45:20'),
(159, 'RAHEL', 'OTHMANE', '0677083904', 'azerty1234@gmail.comv', '2024-05-29 15:40:30', '2024-05-29 15:40:30');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires_vol`
--

CREATE TABLE `commentaires_vol` (
  `idV` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `idVolDispo` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commentaires_voyages`
--

CREATE TABLE `commentaires_voyages` (
  `idC` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `idVygDispo` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `idC` bigint(20) UNSIGNED NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `adresseEmail` varchar(255) NOT NULL,
  `NomDemande` varchar(255) NOT NULL,
  `autre_demande` varchar(255) DEFAULT NULL,
  `demande` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`idC`, `Nom`, `Prenom`, `adresseEmail`, `NomDemande`, `autre_demande`, `demande`, `created_at`, `updated_at`) VALUES
(1, 'RAHEL', 'OTHMANE', 'azerty1234@gmail.comv', 'hotel', NULL, 'hotel', '2024-05-05 16:57:33', '2024-05-05 16:57:33'),
(2, 'RAHEL', 'OTHMANE', 'azerty1234@gmail.comv', 'autres', 'qwerty', 'ok', '2024-05-08 13:42:00', '2024-05-08 13:42:00'),
(3, 'RAHEL', 'OTHMANE', 'azerty1234@gmail.comv', 'hotel', NULL, 'qwerty', '2024-05-13 14:32:59', '2024-05-13 14:32:59'),
(4, 'RAHEL', 'OTHMANE', 'azerty1234@gmail.comv', 'hotel', NULL, 'bonjour', '2024-05-18 22:42:56', '2024-05-18 22:42:56');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `hajomra`
--

CREATE TABLE `hajomra` (
  `idHO` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_depart` date NOT NULL,
  `date_arrivee` date NOT NULL,
  `prix` double(8,2) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `hajomra`
--

INSERT INTO `hajomra` (`idHO`, `nom`, `image`, `date_depart`, `date_arrivee`, `prix`, `description`, `created_at`, `updated_at`) VALUES
(1, 'عمرة شعبان', 'picturesPFEHaj/ZuVSnDkush6fpDfM75thnxzZfHNwxJfFdwQ6nKvP.jpg', '2024-05-01', '2024-06-01', 14340.00, 'رحلة عمرة خلال شهر شعبان لزيارة المسجد النبوي وأداء العمرة في مكة المكرمة', '2024-05-04 14:46:33', '2024-05-04 14:46:33'),
(2, 'عمرة رمضان', 'picturesPFEHaj/rySfiFjn1Lu0NI4VB28UGpEyo2exPJ7sx8EGGq5M.jpg', '2024-05-01', '2024-06-01', 18700.00, 'رمضان المبارك لزيارة المسجد النبوي وأداء العمرة في مكة المكرمة والاستمتاع بالأجواء الروحانية والفضيلة خلال هذا الشهر المبارك', '2024-05-04 14:49:55', '2024-05-04 14:49:55'),
(3, 'دبي عمرة', 'picturesPFEHaj/iMOQU26RzaPtlCYj7rxTRNG4aAskOjvQ1YVvMEeI.jpg', '2024-05-01', '2024-06-01', 17900.00, 'رحلة عمرة من دبي لزيارة المسجد النبوي وأداء العمرة في مكة المكرمة والاستمتاع بجمال الديار الإماراتية قبل وبعد العمرة', '2024-05-04 14:51:17', '2024-05-04 14:51:17'),
(4, 'اسطنبول عمرة', 'picturesPFEHaj/OVN8GtpPanrQSeHzeMyOpedxAJDTkeabcps6haOo.jpg', '2024-05-01', '2024-06-01', 24900.00, 'رحلة عمرة من اسطنبول لزيارة المسجد النبوي وأداء العمرة في مكة المكرمة والاستمتاع بجمال مدينة اسطنبول الساحرة قبل وبعد العمرة', '2024-05-04 14:52:20', '2024-05-04 14:52:20');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_30_170247_create_client_table', 1),
(6, '2024_03_30_181911_create_voyage_table', 1),
(7, '2024_03_30_182339_create_vol_table', 1),
(8, '2024_03_31_014626_create-contact', 1),
(9, '2024_03_31_015352_create-_haj_omra', 1),
(10, '2024_03_30_171617_create__reservation_voyage_dispo_table', 2),
(11, '2024_03_30_171802_create__reservation_vol_dispo_table', 2),
(12, '2024_03_30_170624_create_commentaires_voyages_table', 3),
(13, '2024_03_30_170744_create_commentaires_vol_table', 3),
(14, '2024_04_29_154746_create_reservation_table', 4),
(15, '2024_04_29_155955_create_reservation_table', 5);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(5, 'App\\Models\\User', 2, 'login_test', 'bee3333163e8a04b8cac7179393710d6ed859197e75cb211d32861af68c3f012', '[\"*\"]', NULL, NULL, '2024-05-18 22:14:02', '2024-05-18 22:14:02'),
(7, 'App\\Models\\User', 2, 'login_test', '99dc2451ee0977288b1a1d11fe7b64189debebe7764b72c4e312cc74658bf82d', '[\"*\"]', NULL, NULL, '2024-05-18 22:47:01', '2024-05-18 22:47:01'),
(8, 'App\\Models\\User', 2, 'login_test', '38c88697a94e891175f4342942a9d1cbb7edebb7f2d289396339f1d9d09b6026', '[\"*\"]', NULL, NULL, '2024-05-20 18:29:06', '2024-05-20 18:29:06'),
(9, 'App\\Models\\User', 2, 'login_test', 'acec2cd2effddb68b3ce592ed698df22ae125c962c03a3f5ec980db46da39c84', '[\"*\"]', NULL, NULL, '2024-05-21 06:56:09', '2024-05-21 06:56:09'),
(10, 'App\\Models\\User', 2, 'login_test', '07746ba5a4f71eaae53d27a00004bba718c99409b4843137ff2004b2f72db587', '[\"*\"]', NULL, NULL, '2024-05-21 06:57:34', '2024-05-21 06:57:34'),
(11, 'App\\Models\\User', 2, 'login_test', '53c1145186d1290f7bf66a975dd8e3ec578ca5ce2228f1b67cafef51d870087c', '[\"*\"]', NULL, NULL, '2024-05-21 09:02:19', '2024-05-21 09:02:19'),
(12, 'App\\Models\\User', 2, 'login_test', 'af3debcaf3e60500451b92c6021478310e3e334115d2add43969cb5acbebe821', '[\"*\"]', NULL, NULL, '2024-05-21 09:15:27', '2024-05-21 09:15:27'),
(13, 'App\\Models\\User', 2, 'login_test', '8b9ce43665bf7efc5064574582ae260da6def6070ed6d8e92c58dca7f77f3d71', '[\"*\"]', NULL, NULL, '2024-05-21 11:16:52', '2024-05-21 11:16:52'),
(14, 'App\\Models\\User', 2, 'login_test', 'a06d4023b356bc0643da295ec50c0632d9c71e3402a8b71f5b600fa57d7b1034', '[\"*\"]', NULL, NULL, '2024-05-21 11:29:32', '2024-05-21 11:29:32'),
(15, 'App\\Models\\User', 2, 'login_test', '79c300080399d2dfef407c34d08fd4b4548dbff8a8b10c4c9611f376a6dc5994', '[\"*\"]', NULL, NULL, '2024-05-21 11:34:21', '2024-05-21 11:34:21'),
(16, 'App\\Models\\User', 2, 'login_test', '5a8d4abe3d506504cfbbed313db99f2c4cd1ad018b20b97a835dcc228a2f3579', '[\"*\"]', NULL, NULL, '2024-05-21 11:39:11', '2024-05-21 11:39:11'),
(17, 'App\\Models\\User', 2, 'login_test', '23720ee3561661416690d691ba97107e766c73f6950559b31cdb839c763126a6', '[\"*\"]', NULL, NULL, '2024-05-21 18:32:58', '2024-05-21 18:32:58'),
(18, 'App\\Models\\User', 2, 'login_test', '7902a0471dcd14d649789b50c55ab638a59bde130617d6a9f00fece9f64fed66', '[\"*\"]', NULL, NULL, '2024-05-21 18:33:47', '2024-05-21 18:33:47'),
(19, 'App\\Models\\User', 2, 'login_test', '359032930876a4fa208ccee78b592acba89552771f3c9ac69073cf857b1e28f3', '[\"*\"]', NULL, NULL, '2024-05-21 18:34:56', '2024-05-21 18:34:56'),
(20, 'App\\Models\\User', 2, 'login_test', '88b495305126b1a93e87d508fdd6685ab0fb9119e3d33f6f97bae32142acfb6f', '[\"*\"]', NULL, NULL, '2024-05-21 18:36:01', '2024-05-21 18:36:01'),
(21, 'App\\Models\\User', 2, 'login_test', '09941274a360a1094f36bcfd01d882f72a27fad5fb7539bca319155289bedafd', '[\"*\"]', NULL, NULL, '2024-05-21 18:37:08', '2024-05-21 18:37:08'),
(22, 'App\\Models\\User', 2, 'login_test', 'd3369957ed4ef0f2943fbdf7580c16c0cb15cb2f84812fb071236a6df31f1a41', '[\"*\"]', '2024-05-21 18:39:26', NULL, '2024-05-21 18:38:59', '2024-05-21 18:39:26'),
(23, 'App\\Models\\User', 2, 'login_test', '05dfcc117100bc47b59cb56192b3912d08cc754cedf773e9cf46d9feb3a8bb32', '[\"*\"]', NULL, NULL, '2024-05-21 19:10:24', '2024-05-21 19:10:24'),
(24, 'App\\Models\\User', 2, 'login_test', '2af213f8db12d75db00da8e5631e54fb3055eeefdddd136e67315ab07c116452', '[\"*\"]', NULL, NULL, '2024-05-21 19:24:51', '2024-05-21 19:24:51'),
(25, 'App\\Models\\User', 2, 'login_test', 'b7925b5c733266fb079652ad052cfeaf67b365ef5657c2ad7feb57ad05f6f47b', '[\"*\"]', NULL, NULL, '2024-05-21 20:24:26', '2024-05-21 20:24:26'),
(26, 'App\\Models\\User', 2, 'login_test', '14c964c7747faecdb58bff811ca2f268f719c9257fe2fc34d5e504fdc8421162', '[\"*\"]', NULL, NULL, '2024-05-21 20:25:05', '2024-05-21 20:25:05'),
(27, 'App\\Models\\User', 2, 'login_test', 'e100ab0a425d8cfa4ac843f590b453aa4b56ff26ee9201d85168553e96e26b71', '[\"*\"]', NULL, NULL, '2024-05-21 20:27:13', '2024-05-21 20:27:13'),
(28, 'App\\Models\\User', 2, 'login_test', 'de00f3804f798cbcde509946eb1a4527f514afc420c91fb0051f9a0e1b53d37f', '[\"*\"]', NULL, NULL, '2024-05-21 20:28:13', '2024-05-21 20:28:13'),
(29, 'App\\Models\\User', 2, 'login_test', '9ccd95e66355c782476095018b6735ec0515c39386daafdc43e19d6162ee1374', '[\"*\"]', NULL, NULL, '2024-05-21 20:33:33', '2024-05-21 20:33:33'),
(30, 'App\\Models\\User', 2, 'login_test', 'ee41795bde2f23958ac75bb35e5f40e25ba3d33f21df9856dd7bd2e4c4301404', '[\"*\"]', NULL, NULL, '2024-05-22 13:31:22', '2024-05-22 13:31:22'),
(31, 'App\\Models\\User', 2, 'login_test', '9b51597b7cd0c7425ce1f429a6b9f3056ee11551eb332198d1eb8791ddb52224', '[\"*\"]', NULL, NULL, '2024-05-22 13:43:55', '2024-05-22 13:43:55'),
(32, 'App\\Models\\User', 2, 'login_test', '4a69c4c8be231e8f86a450d7631ab7061d253a701ecc2f9e1531c8c026acfc3c', '[\"*\"]', NULL, NULL, '2024-05-22 13:44:49', '2024-05-22 13:44:49'),
(33, 'App\\Models\\User', 2, 'login_test', '5d14114d954b11206ff5ee2f667a84229787d9119dc9f540b4a6b8758cfca1b4', '[\"*\"]', NULL, NULL, '2024-05-22 13:46:08', '2024-05-22 13:46:08'),
(34, 'App\\Models\\User', 2, 'login_test', '51a63fdc83f186e1c1724040fc1869da63b37205a98db5c7ac968bfb5456978c', '[\"*\"]', NULL, NULL, '2024-05-22 14:38:00', '2024-05-22 14:38:00'),
(35, 'App\\Models\\User', 2, 'login_test', '58cfa068f8f44354e65c317b9fcf04a6ee3393f5fc88a23e756a082253259e67', '[\"*\"]', NULL, NULL, '2024-05-22 14:43:19', '2024-05-22 14:43:19'),
(36, 'App\\Models\\User', 2, 'login_test', '5b0705cb7bf3dd45c8515156d57510954fbc07fb3bc4f97f1d11b5a5eedf15a0', '[\"*\"]', NULL, NULL, '2024-05-22 21:16:35', '2024-05-22 21:16:35'),
(37, 'App\\Models\\User', 2, 'login_test', '3534949947e537d6922fe8c565ceb107b4bc26edb8bd3db538e7d8890ad8baec', '[\"*\"]', '2024-05-22 21:20:12', NULL, '2024-05-22 21:17:11', '2024-05-22 21:20:12'),
(38, 'App\\Models\\User', 2, 'login_test', '093683a5361933d4df7194a754f4b826cf7296035eacb9ea565659e41bf04aea', '[\"*\"]', '2024-05-22 21:23:30', NULL, '2024-05-22 21:20:02', '2024-05-22 21:23:30'),
(39, 'App\\Models\\User', 2, 'login_test', '22de34fbcf512b48d97ca5563fdfbc9bf6895a8fcdc8f2fbeb15aaece64f6a7e', '[\"*\"]', NULL, NULL, '2024-05-22 21:26:15', '2024-05-22 21:26:15'),
(40, 'App\\Models\\User', 2, 'login_test', 'd25eafd4c227e211b14fe35af77bae621af103d83f95757d05f705296414d4bb', '[\"*\"]', NULL, NULL, '2024-05-22 21:40:23', '2024-05-22 21:40:23'),
(41, 'App\\Models\\User', 2, 'login_test', '2fd4bb31b8d0f15de9f5eb0cc2039b95c110a0a5a0892844bced72a5a731acd5', '[\"*\"]', NULL, NULL, '2024-05-22 21:48:41', '2024-05-22 21:48:41'),
(42, 'App\\Models\\User', 2, 'login_test', 'c16f19c80b321ce5c2a481cdc48558627a31ef5fee45c51516270f59c06a66f5', '[\"*\"]', NULL, NULL, '2024-05-22 21:50:39', '2024-05-22 21:50:39'),
(43, 'App\\Models\\User', 2, 'login_test', '5f562a82ea7e7119ecbe61f0781fa97b3d1be7fe9dd65b68f357e44fad0075e2', '[\"*\"]', '2024-05-22 22:33:41', NULL, '2024-05-22 21:55:39', '2024-05-22 22:33:41'),
(44, 'App\\Models\\User', 2, 'login_test', '97d6138097de55d5ad0bec26da3a95d63bfe2f3390657de3c501a12a53b907d3', '[\"*\"]', NULL, NULL, '2024-05-22 22:36:58', '2024-05-22 22:36:58'),
(45, 'App\\Models\\User', 2, 'login_test', 'fd224a77f6dbd2f4d293866eaf62da93b56f3f17f73cab3d208613d8b8199297', '[\"*\"]', NULL, NULL, '2024-05-28 09:10:37', '2024-05-28 09:10:37'),
(46, 'App\\Models\\User', 2, 'login_test', '5f78246dd74e33b43b159dc8bf397c855ad78824e63eacedf5474115a63e74ce', '[\"*\"]', NULL, NULL, '2024-05-28 19:03:27', '2024-05-28 19:03:27'),
(47, 'App\\Models\\User', 2, 'login_test', '453359a74e4291021fe8d226a4ec179998e129b58643f991ff427c0ff2fc550f', '[\"*\"]', NULL, NULL, '2024-05-28 19:13:39', '2024-05-28 19:13:39'),
(48, 'App\\Models\\User', 2, 'login_test', '262d27a8a047bc1d591c569de9462f560374e7e815326b6cb0fdc0935dda8b79', '[\"*\"]', NULL, NULL, '2024-05-28 20:37:24', '2024-05-28 20:37:24'),
(49, 'App\\Models\\User', 2, 'login_test', '712914413ce3052cd2084207218fc1194c22c6366ad003e265d55c18ba4bc2ee', '[\"*\"]', NULL, NULL, '2024-05-28 20:54:15', '2024-05-28 20:54:15'),
(50, 'App\\Models\\User', 2, 'login_test', '07a54484978d3735fa73fc31fd005a5f9a316a371899e42b4b1b6b99dd6e4968', '[\"*\"]', NULL, NULL, '2024-05-29 07:23:42', '2024-05-29 07:23:42');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `idReservation` bigint(20) UNSIGNED NOT NULL,
  `nombre_chambres` int(11) NOT NULL,
  `nombre_adultes` int(11) NOT NULL,
  `nombre_enfants` int(11) NOT NULL,
  `nombre_bebe` int(11) NOT NULL,
  `montant_total` decimal(8,2) NOT NULL,
  `idclient` bigint(20) UNSIGNED NOT NULL,
  `idVolDispo` bigint(20) UNSIGNED DEFAULT NULL,
  `idVygDispo` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`idReservation`, `nombre_chambres`, `nombre_adultes`, `nombre_enfants`, `nombre_bebe`, `montant_total`, `idclient`, `idVolDispo`, `idVygDispo`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 2, 1, 31960.00, 125, NULL, 102, '2024-05-03 15:04:22', '2024-05-03 15:04:22'),
(2, 4, 6, 3, 1, 70910.00, 126, NULL, 101, '2024-05-04 16:39:05', '2024-05-04 16:39:05'),
(3, 2, 7, 3, 0, 76900.00, 127, 8, NULL, '2024-05-05 14:38:40', '2024-05-05 14:38:40'),
(4, 2, 7, 3, 0, 76900.00, 128, 8, NULL, '2024-05-05 14:42:16', '2024-05-05 14:42:16'),
(5, 4, 7, 2, 1, 71910.00, 129, 9, NULL, '2024-05-05 14:45:20', '2024-05-05 14:45:20'),
(6, 4, 7, 2, 1, 71910.00, 130, 9, NULL, '2024-05-05 14:45:56', '2024-05-05 14:45:56'),
(7, 4, 7, 2, 1, 71910.00, 131, 9, NULL, '2024-05-05 14:48:40', '2024-05-05 14:48:40'),
(8, 4, 7, 2, 1, 71910.00, 132, 9, NULL, '2024-05-05 14:52:04', '2024-05-05 14:52:04'),
(9, 4, 7, 2, 1, 71910.00, 133, 9, NULL, '2024-05-05 14:54:31', '2024-05-05 14:54:31'),
(10, 4, 7, 2, 1, 71910.00, 134, 9, NULL, '2024-05-05 14:55:34', '2024-05-05 14:55:34'),
(11, 3, 8, 1, 1, 72910.00, 135, NULL, 18, '2024-05-05 15:35:46', '2024-05-05 15:35:46'),
(12, 3, 8, 1, 1, 72910.00, 136, NULL, 18, '2024-05-05 15:36:39', '2024-05-05 15:36:39'),
(13, 2, 7, 3, 1, 78900.00, 137, NULL, 41, '2024-05-05 16:35:12', '2024-05-05 16:35:12'),
(14, 2, 8, 3, 1, 86890.00, 138, NULL, 12, '2024-05-05 16:55:23', '2024-05-05 16:55:23'),
(15, 4, 8, 3, 0, 84890.00, 139, NULL, 55, '2024-05-05 17:16:25', '2024-05-05 17:16:25'),
(16, 2, 8, 3, 1, 86890.00, 140, NULL, 12, '2024-05-05 19:31:08', '2024-05-05 19:31:08'),
(17, 1, 8, 1, 0, 70910.00, 141, NULL, 12, '2024-05-05 20:21:01', '2024-05-05 20:21:01'),
(18, 2, 0, 0, 1, 2000.00, 142, NULL, 16, '2024-05-05 20:35:57', '2024-05-05 20:35:57'),
(19, 1, 8, 1, 0, 70910.00, 143, NULL, 12, '2024-05-07 08:26:06', '2024-05-07 08:26:06'),
(20, 1, 2, 0, 0, 15980.00, 144, NULL, 86, '2024-05-08 13:40:26', '2024-05-08 13:40:26'),
(21, 2, 8, 3, 1, 86890.00, 145, NULL, 49, '2024-05-11 23:18:26', '2024-05-11 23:18:26'),
(22, 2, 0, 0, 1, 2000.00, 146, NULL, 16, '2024-05-13 12:49:19', '2024-05-13 12:49:19'),
(23, 2, 0, 0, 1, 2000.00, 147, NULL, 13, '2024-05-13 14:29:00', '2024-05-13 14:29:00'),
(24, 2, 6, 3, 1, 70910.00, 148, NULL, 33, '2024-05-13 14:32:03', '2024-05-13 14:32:03'),
(25, 4, 7, 3, 1, 78900.00, 149, 8, NULL, '2024-05-17 16:23:26', '2024-05-17 16:23:26'),
(26, 1, 8, 3, 0, 84890.00, 150, NULL, 15, '2024-05-18 17:47:06', '2024-05-18 17:47:06'),
(27, 2, 2, 0, 0, 15980.00, 151, NULL, 14, '2024-05-18 22:22:58', '2024-05-18 22:22:58'),
(28, 2, 2, 0, 0, 15980.00, 152, NULL, 14, '2024-05-18 22:25:20', '2024-05-18 22:25:20'),
(29, 2, 5, 3, 0, 60920.00, 153, 2, NULL, '2024-05-18 22:25:49', '2024-05-18 22:25:49'),
(30, 2, 2, 0, 0, 15980.00, 154, NULL, 14, '2024-05-18 22:42:36', '2024-05-18 22:42:36'),
(31, 4, 7, 3, 1, 78900.00, 155, 8, NULL, '2024-05-18 22:43:36', '2024-05-18 22:43:36'),
(32, 4, 7, 3, 1, 78900.00, 156, 8, NULL, '2024-05-18 22:43:39', '2024-05-18 22:43:39'),
(33, 2, 2, 0, 0, 15980.00, 157, NULL, 14, '2024-05-21 09:01:20', '2024-05-21 09:01:20'),
(34, 2, 4, 2, 1, 47940.00, 158, NULL, 88, '2024-05-28 13:45:22', '2024-05-28 13:45:22'),
(35, 1, 7, 3, 0, 76900.00, 159, NULL, 41, '2024-05-29 15:40:34', '2024-05-29 15:40:34');

-- --------------------------------------------------------

--
-- Structure de la table `reservation_vol_dispo`
--

CREATE TABLE `reservation_vol_dispo` (
  `idVolDispo` bigint(20) UNSIGNED NOT NULL,
  `agenceVyg` varchar(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `prixV` int(11) NOT NULL,
  `formule` varchar(255) NOT NULL,
  `idVol` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservation_vol_dispo`
--

INSERT INTO `reservation_vol_dispo` (`idVolDispo`, `agenceVyg`, `date_debut`, `date_fin`, `prixV`, `formule`, `idVol`, `created_at`, `updated_at`) VALUES
(1, 'agencesVolsDispo/pfRjgdCCCkc7MGZONlqUjbrPsRM3lSiIIN9FZ7w6.png', '2024-05-01', '2024-06-01', 12500, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 1, '2024-04-28 15:03:30', '2024-04-28 15:03:30'),
(2, 'agencesVolsDispo/Nc4rAmwGiYxhDw64DHb158Fs3EGD9MjFlta4Uzfu.png', '2024-06-02', '2024-06-12', 8999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 1, '2024-04-28 15:03:32', '2024-04-28 15:03:32'),
(3, 'agencesVolsDispo/Coqcsbyd6niB3r3U9zUmGWgDYbgEwFRM9JZbNRw4.png', '2024-06-15', '2024-06-30', 7799, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 1, '2024-04-28 15:03:33', '2024-04-28 15:03:33'),
(4, 'agencesVolsDispo/nOo2xLTWci3Y4dIZDaaZUv7t8fhQnRIQtEGuxLEs.png', '2024-05-01', '2024-06-01', 11500, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 2, '2024-04-28 18:51:25', '2024-04-28 18:51:25'),
(5, 'agencesVolsDispo/pnHWarRGkhbmRyglUWRTaA9avBUvtyJZpWUcMd2C.png', '2024-04-20', '2024-05-15', 8999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 2, '2024-04-28 18:51:25', '2024-04-28 18:51:25'),
(6, 'agencesVolsDispo/kkhBEYaKisuTkIDUvTBBM97e3pHgbLmT5WlwjfUb.png', '2024-05-20', '2024-06-15', 7799, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 2, '2024-04-28 18:51:26', '2024-04-28 18:51:26'),
(7, 'agencesVolsDispo/GL09T9eMdVuQfqP9qnHE7uyu7MD2nIFnZ0b5Ktlu.png', '2024-04-01', '2024-05-01', 17500, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-28 18:59:01', '2024-04-28 18:59:01'),
(8, 'agencesVolsDispo/3RBiEwaBdqkK1n9qKrwL86HJLsDKftK37o0OLbmJ.png', '2024-05-02', '2024-06-02', 17500, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-28 18:59:03', '2024-04-28 18:59:03'),
(9, 'agencesVolsDispo/aXlDuGB4B4UV8o4BhAQY6BiKtCBN9afhDpHsNW8t.png', '2024-06-03', '2024-07-03', 17500, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-28 18:59:04', '2024-04-28 18:59:04'),
(10, 'agencesVolsDispo/gv03Nr2OvftoSLOvPGYTJMQyEv0BacYi4Y0fUWlQ.png', '2024-06-04', '2024-07-04', 7899, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-28 18:59:04', '2024-04-28 18:59:04');

-- --------------------------------------------------------

--
-- Structure de la table `reservation_voyage_dispo`
--

CREATE TABLE `reservation_voyage_dispo` (
  `idVygDispo` bigint(20) UNSIGNED NOT NULL,
  `agenceVyg` varchar(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `prixV` int(11) NOT NULL,
  `formule` varchar(255) NOT NULL,
  `idVoyage` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservation_voyage_dispo`
--

INSERT INTO `reservation_voyage_dispo` (`idVygDispo`, `agenceVyg`, `date_debut`, `date_fin`, `prixV`, `formule`, `idVoyage`, `created_at`, `updated_at`) VALUES
(11, 'agencesVoyages/4lToRy7M7CIzS0TmXmpy1ukkzQ3fE71vmG3PRQof.png', '2024-04-28', '2024-05-05', 9290, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 2, '2024-04-26 15:12:34', '2024-04-26 15:12:34'),
(12, 'agencesVoyages/QTvXEeeflR7nkOiA6rniYExQkzqHUUPSVcdorzwM.png', '2024-05-03', '2024-05-10', 8990, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 2, '2024-04-26 15:12:34', '2024-04-26 15:12:34'),
(13, 'agencesVoyages/1oBPrtfiMGPf300k2ZfU9fMz7ZewELAHZJMzomxx.png', '2024-05-10', '2024-05-17', 7990, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 2, '2024-04-26 15:12:35', '2024-04-26 15:12:35'),
(14, 'agencesVoyages/ztZhgFoQK7qGZFtZHwJ7UTeShONnumeLTn6jbwJe.png', '2024-05-18', '2024-05-25', 7990, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 2, '2024-04-26 15:12:35', '2024-04-26 15:12:35'),
(15, 'agencesVoyages/G5vdIjDiLOPrZRr8zfAo1YWKw4ZOs1k8s0qoBjqr.png', '2024-05-26', '2024-06-01', 7990, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 2, '2024-04-26 15:12:36', '2024-04-26 15:12:36'),
(16, 'agencesVoyages/g7FAfq0mETWEpwlk5Eud93211vuw8w1Kf4K3Rkyh.png', '2024-06-02', '2024-06-09', 7990, 'Hôtel 4**** : régime Petit déjeuner (Package) 8 jours/7 nuits + VolA/R+ Transfert Aeroport', 2, '2024-04-26 15:12:36', '2024-04-26 15:12:36'),
(17, 'agencesVoyages/uYUyXSLE6GXrTbnqStCnBU02wRNB1SkHRCI72dNn.png', '2024-04-27', '2024-05-09', 15900, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:45', '2024-04-26 15:48:45'),
(18, 'agencesVoyages/OyFk8xhboqmFGvx6ApfVHf1yrWZjTNaf8en2G0BP.png', '2024-05-01', '2024-05-13', 15900, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:46', '2024-04-26 15:48:46'),
(19, 'agencesVoyages/8wU8eVW6MC9NEsk0bPqQ1wUmKPTyQV6h19NZmeHQ.png', '2024-05-18', '2024-05-30', 15900, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:46', '2024-04-26 15:48:46'),
(20, 'agencesVoyages/evw37mY5A8GYWkQBgbonkvZtdZbCCPJAFl66DdSF.png', '2024-06-05', '2024-06-18', 12900, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:47', '2024-04-26 15:48:47'),
(21, 'agencesVoyages/XUi86mlCiaponthSBq7AS8QuBb4VWcRQKCmIABBg.png', '2024-06-19', '2024-07-02', 14490, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:47', '2024-04-26 15:48:47'),
(22, 'agencesVoyages/Hr7pqte5xuDiCb8tWWfKWcTf1TjRMn11fs7FeFjq.png', '2024-07-06', '2024-07-19', 14890, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:48', '2024-04-26 15:48:48'),
(23, 'agencesVoyages/cWzXAmnu0o2dEcIihWJvHt0dyvp1hol9bV2KRKGn.png', '2024-07-15', '2024-07-28', 16900, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:49', '2024-04-26 15:48:49'),
(24, 'agencesVoyages/sFjmGajSKurdv5TMOmClYQcUjbzDKLcd3I7U6RHH.png', '2024-07-17', '2024-07-30', 16900, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:49', '2024-04-26 15:48:49'),
(25, 'agencesVoyages/jO8jQZjukq04ixlhj7XHr9UIUH8PNgKgsnMhBcNm.png', '2024-07-27', '2024-08-09', 17900, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:50', '2024-04-26 15:48:50'),
(26, 'agencesVoyages/VOh1Z2zif3cF4JzBB1J5V72ETHIGMQ3KzPs7yOWO.png', '2024-07-31', '2024-08-13', 17900, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:50', '2024-04-26 15:48:50'),
(27, 'agencesVoyages/41pQb5ZYcPcvR9JVPNoOOofR55JIfeF0TmESi5SD.png', '2024-08-07', '2024-08-20', 17900, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 3, '2024-04-26 15:48:51', '2024-04-26 15:48:51'),
(28, 'agencesVoyages/nwsyZyhWUBZFPwpRLFJwWBteBxxZgobZlS9rAT10.png', '2024-04-01', '2024-05-01', 7899, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 4, '2024-04-26 17:24:18', '2024-04-26 17:24:18'),
(29, 'agencesVoyages/b1wLxAoH7a3G2Ip49J5S7gpm7U80ZyW2zsOIAlRo.png', '2024-04-03', '2024-05-02', 7899, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 4, '2024-04-26 17:24:18', '2024-04-26 17:24:18'),
(30, 'agencesVoyages/gX5N2AVxvfTLLQ3WSrHv0dzRByzoNCUskhvcsNaF.png', '2024-04-10', '2024-06-09', 8999, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 4, '2024-04-26 17:24:19', '2024-04-26 17:24:19'),
(31, 'agencesVoyages/uGrdvbnMDLrcOYRSu1JKClotZtYwxX2epCbKJFWc.png', '2024-04-30', '2024-05-17', 10500, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 4, '2024-04-26 17:24:20', '2024-04-26 17:24:20'),
(32, 'agencesVoyages/g6eRZDX9wYCkpQWiRAdfH5OqceS0zkEzSB05XbVD.png', '2024-05-01', '2024-06-30', 9499, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 4, '2024-04-26 17:24:20', '2024-04-26 17:24:20'),
(33, 'agencesVoyages/2HdGMyS98OzqG5jISUS5jn4RjHmkpql5JXeGaBdf.png', '2024-05-15', '2024-06-15', 10000, 'Hôtel 3* : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 4, '2024-04-26 17:24:21', '2024-04-26 17:24:21'),
(34, 'agencesVoyages/6MQVGzC8T9STlcvBICxEzm7yfWXgCnqDV3DxEcFb.png', '2024-06-01', '2024-06-15', 8000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 5, '2024-04-26 17:40:28', '2024-04-26 17:40:28'),
(35, 'agencesVoyages/vgp4kvcdsDbBRB6R3EH1jRAxI4UJwvfRQnKoreIO.png', '2024-06-16', '2024-06-28', 8750, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 5, '2024-04-26 17:40:29', '2024-04-26 17:40:29'),
(36, 'agencesVoyages/ZptgF6hUg7jkbqjcBRh2JXCs0lnrq6yj8eJDuYi0.png', '2024-06-29', '2024-07-20', 9800, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 5, '2024-04-26 17:40:29', '2024-04-26 17:40:29'),
(37, 'agencesVoyages/PbclQjUjg0ISXUBCo4NrPyjrrxrN53rq08cPwDMM.png', '2024-07-03', '2024-07-17', 9900, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 5, '2024-04-26 17:40:30', '2024-04-26 17:40:30'),
(38, 'agencesVoyages/AZvo2HBBT9gEHqWGlRFZ8Lw4rP70Rf8jWKhi5h8i.png', '2024-09-09', '2024-10-09', 10000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 5, '2024-04-26 17:40:30', '2024-04-26 17:40:30'),
(39, 'agencesVoyages/X8r5YDHlDf12zLuaonY1dwcQrNuoeP2PDKqsJV8R.png', '2024-10-10', '2024-11-10', 10000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 5, '2024-04-26 17:40:31', '2024-04-26 17:40:31'),
(40, 'agencesVoyages/2stBfcSTa7NAfutNFJ0IsxnMRdCnDMHafsyoO62T.png', '2024-05-01', '2024-06-01', 10000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 6, '2024-04-27 11:21:45', '2024-04-27 11:21:45'),
(41, 'agencesVoyages/ehPA783BZ1e764Xc3C8QVHlsANOemRjy8zC38cg2.png', '2024-06-02', '2024-07-18', 8799, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 6, '2024-04-27 11:21:46', '2024-04-27 11:21:46'),
(42, 'agencesVoyages/yrRNjI22yJkSdbkkiH1yblTiIeOT6qhK9BSkBtHM.png', '2024-07-20', '2024-08-18', 9999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 6, '2024-04-27 11:21:46', '2024-04-27 11:21:46'),
(43, 'agencesVoyages/xQoIL4iFbLghQ1DXMaGvnZshhRX9DKYEnhtBA5Dz.png', '2024-08-19', '2024-08-30', 8000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 6, '2024-04-27 11:21:47', '2024-04-27 11:21:47'),
(44, 'agencesVoyages/TsNdRJJysnxyx9Ep0P5fRBpbGHFGQNNhGIhV8BLY.png', '2024-09-01', '2024-09-20', 9699, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 6, '2024-04-27 11:21:48', '2024-04-27 11:21:48'),
(48, 'agencesVoyages/BLBTk59QLgxaJRtr4DYLId3IUHrAAkPRTH07m9GU.png', '2024-05-01', '2024-06-01', 12500, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 8, '2024-04-27 14:49:33', '2024-04-27 14:49:33'),
(49, 'agencesVoyages/ReGs1NDiaKPIs6j1lG5p6gIrUtsDJZB6xuBOV461.png', '2024-06-02', '2024-07-15', 7999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 8, '2024-04-27 14:49:34', '2024-04-27 14:49:34'),
(50, 'agencesVoyages/yWAhvs2P3ZiNECjP96rmHISMBLZhsRhUbT4KN3uQ.png', '2024-07-16', '2024-08-10', 7999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 8, '2024-04-27 14:49:35', '2024-04-27 14:49:35'),
(51, 'agencesVoyages/btg2czCxtUNAKsvftPXA1bZsAU1zbcfmdKAkk5m9.png', '2024-08-11', '2024-09-09', 8899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 8, '2024-04-27 14:49:35', '2024-04-27 14:49:35'),
(52, 'agencesVoyages/GfH83A5L7jGvZABKILPC6yXBX6dFEnikbSCDo05A.png', '2024-09-10', '2024-09-30', 6500, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 8, '2024-04-27 14:49:36', '2024-04-27 14:49:36'),
(53, 'agencesVoyages/nt7TLhDfDrtUZfaAMNqoH0c2Rq3HcnxstUffGakh.png', '2024-10-01', '2024-10-20', 8999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 8, '2024-04-27 14:49:36', '2024-04-27 14:49:36'),
(54, 'agencesVoyages/yXTTJfVThJroUlcsMMEzSVvR44noxGH0nOFjPOyo.png', '2024-05-01', '2024-05-15', 7899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 9, '2024-04-27 14:58:17', '2024-04-27 14:58:17'),
(55, 'agencesVoyages/SQIK41z65ZTwjrgTdacZhF8tMDRPcrvRaYZ7OXKy.png', '2024-05-16', '2024-06-16', 9999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 9, '2024-04-27 14:58:18', '2024-04-27 14:58:18'),
(56, 'agencesVoyages/3ANUodCUMEMvbJJlL8l33FgBYePv1N6hlXgNIfnP.png', '2024-06-18', '2024-07-15', 9998, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 9, '2024-04-27 14:58:18', '2024-04-27 14:58:18'),
(57, 'agencesVoyages/qiunMJYkeRlMXjJY32i3TKTeOEUyENXEd0H54WFZ.png', '2024-07-16', '2024-08-10', 6899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 9, '2024-04-27 14:58:19', '2024-04-27 14:58:19'),
(58, 'agencesVoyages/ieMiS1ximP3maDIeEs7G16PZ9A7w5Ij0ppuUSLT6.png', '2024-08-11', '2024-09-11', 9899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 9, '2024-04-27 14:58:19', '2024-04-27 14:58:19'),
(65, 'agencesVoyages/eweHuLcCssEXOvDw8rVI7732OuImMLWEeiKf4EvN.png', '2024-04-01', '2024-05-01', 7999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 12, '2024-04-27 15:13:17', '2024-04-27 15:13:17'),
(66, 'agencesVoyages/AhIryBuAukes9WB2rk1AKFI2zXSW2pNn4kEKBJXE.png', '2024-05-02', '2024-05-30', 8500, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 12, '2024-04-27 15:13:17', '2024-04-27 15:13:17'),
(67, 'agencesVoyages/BtCzmahacBmajglAnOcWrWYQjAROMOlIDcheSwZC.png', '2024-06-01', '2024-06-16', 9000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 12, '2024-04-27 15:13:17', '2024-04-27 15:13:17'),
(68, 'agencesVoyages/dZbDZ9UiH8IKWUixBB4jsLCkNGaub84Z2CfmpX2Y.png', '2024-06-17', '2024-07-17', 12000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 12, '2024-04-27 15:13:18', '2024-04-27 15:13:18'),
(69, 'agencesVoyages/2GjThv0JLEKptjkjHGTXd8y8UC1jmxupKaeTfTmx.png', '2024-07-18', '2024-07-27', 5000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 12, '2024-04-27 15:13:19', '2024-04-27 15:13:19'),
(70, 'agencesVoyages/FAEF9Gd55ziF7MuTGPtOmAwSBwCkWNQH0lheq8Kl.png', '2024-05-01', '2024-06-01', 10000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 13, '2024-04-27 16:33:39', '2024-04-27 16:33:39'),
(71, 'agencesVoyages/pA2nbJ7GdezUkK0eRtveFSJA5Gp5JrGmsHkgNPm1.png', '2024-06-02', '2024-06-12', 9000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 13, '2024-04-27 16:33:40', '2024-04-27 16:33:40'),
(72, 'agencesVoyages/c9gy6jkwWFzFklI0p4PTEauL7OqJC63qHbLQR4Ak.png', '2024-06-15', '2024-06-25', 7500, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 13, '2024-04-27 16:33:41', '2024-04-27 16:33:41'),
(73, 'agencesVoyages/oAgLCRq2LFxm4A7CxxE8QucEl0RrtyeZSVviT0yM.png', '2024-06-26', '2024-07-15', 6500, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 13, '2024-04-27 16:33:42', '2024-04-27 16:33:42'),
(74, 'agencesVoyages/BRZplJS9ScyL7Dy31AqLpRbYWUBEepsjczK0K3Ml.png', '2024-07-16', '2024-07-31', 5000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 13, '2024-04-27 16:33:42', '2024-04-27 16:33:42'),
(75, 'agencesVoyages/X625z2jqkNSjzbODCIjEWQeJiLJ17xNhPTHpB75m.png', '2024-08-01', '2024-08-08', 2500, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 13, '2024-04-27 16:33:43', '2024-04-27 16:33:43'),
(76, 'agencesVoyages/8vnHsKBTqrEIuqX8yopxd3TZyUVzYKnSvX7wSwF1.png', '2024-05-01', '2024-06-01', 12899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 14, '2024-04-27 16:47:43', '2024-04-27 16:47:43'),
(77, 'agencesVoyages/a6iwIidoSi0FmvcAWj2evwSl4tnHePeLnCvBv0G3.png', '2024-06-02', '2024-06-17', 6449, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 14, '2024-04-27 16:47:44', '2024-04-27 16:47:44'),
(78, 'agencesVoyages/Ma5zNdeiygPccc4NnT3IY1TvAkUXEFnM1fhJYk72.png', '2024-06-18', '2024-06-28', 5499, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 14, '2024-04-27 16:47:45', '2024-04-27 16:47:45'),
(79, 'agencesVoyages/XcOJguryzcrlWWf3zeUtKhYuhtyCl8kkraFmCAVa.png', '2024-06-29', '2024-08-29', 15000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 14, '2024-04-27 16:47:45', '2024-04-27 16:47:45'),
(80, 'agencesVoyages/161oehqTXpxQC4x6bFILgRY2mg9VNIkq7ZiQVns3.png', '2024-04-01', '2024-05-05', 12000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 15, '2024-04-27 17:01:27', '2024-04-27 17:01:27'),
(81, 'agencesVoyages/dk2fEZjSbzGQuUEFeeYe8sICO1BN1BkAoe2PN0wE.png', '2024-05-06', '2024-05-31', 8000, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 15, '2024-04-27 17:01:28', '2024-04-27 17:01:28'),
(82, 'agencesVoyages/w6p2I30p7QyJTGyOk4enCGMP9aLbu11HariHkeDE.png', '2024-06-01', '2024-06-15', 4999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 15, '2024-04-27 17:01:34', '2024-04-27 17:01:34'),
(83, 'agencesVoyages/wVjV3pQYmOkp3m10lEonKpsO4Poabal6oIXTmlcW.png', '2024-06-17', '2024-07-01', 4999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 15, '2024-04-27 17:01:36', '2024-04-27 17:01:36'),
(84, 'agencesVoyages/OMmOJkZHrCUBzXwLQlZ8zdAlV3nTpUkxD7y0kQj9.png', '2024-07-01', '2024-07-15', 4999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 15, '2024-04-27 17:01:39', '2024-04-27 17:01:39'),
(85, 'agencesVoyages/ewtBkGPRvW9SFwMoh5EG9oGYGrj5IfPbkNtvcU7n.png', '2024-04-01', '2024-05-01', 17999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 16, '2024-04-27 17:07:29', '2024-04-27 17:07:29'),
(86, 'agencesVoyages/6i3wxlfufpwPt7AR0FIzySum8F94uFD1HGhv7PZm.png', '2024-05-02', '2024-05-17', 12799, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 16, '2024-04-27 17:07:31', '2024-04-27 17:07:31'),
(87, 'agencesVoyages/94gw07pKFFcWaAFnMjZ0Ubntfpb0rZXAnTvcPR73.png', '2024-05-18', '2024-05-28', 9999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 16, '2024-04-27 17:07:32', '2024-04-27 17:07:32'),
(88, 'agencesVoyages/x6UgTo3rsT7sMVdgZa7gtT24Ep00bnfjJSgwelaR.png', '2024-05-28', '2024-06-05', 7899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 16, '2024-04-27 17:07:32', '2024-04-27 17:07:32'),
(89, 'agencesVoyages/hkZbhwCuCi5B535cuC2foARFbIjUs2ef2bzqA3aA.png', '2024-04-01', '2024-05-01', 8999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 17, '2024-04-27 17:25:59', '2024-04-27 17:25:59'),
(90, 'agencesVoyages/qDvNQOpFICfpJxxIG3PBn4R2JjOBgfhqESCEi1gu.png', '2024-05-02', '2024-05-22', 7899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 17, '2024-04-27 17:26:00', '2024-04-27 17:26:00'),
(91, 'agencesVoyages/3DerLvN1qjcwC1I9GxUpTaRmCJ8PdT81KowHxQEE.png', '2024-05-25', '2024-06-15', 6799, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 17, '2024-04-27 17:26:00', '2024-04-27 17:26:00'),
(92, 'agencesVoyages/8TFy8MhmEuPcKljbwI9l9FfKJEZMP6gsfu46wXqz.png', '2024-06-20', '2024-07-15', 6799, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 17, '2024-04-27 17:26:01', '2024-04-27 17:26:01'),
(93, 'agencesVoyages/2bJlRIQbznOzPI9Qz0UqZBACzJaw21LGiVLfHWFS.png', '2024-08-01', '2024-08-10', 4999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 17, '2024-04-27 17:26:02', '2024-04-27 17:26:02'),
(94, 'agencesVoyages/Wphl1clucGPqVJC3M3PUmBHr30Kt4K1GXP3OIdJy.png', '2024-04-01', '2024-05-01', 11999, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 18, '2024-04-27 17:44:00', '2024-04-27 17:44:00'),
(95, 'agencesVoyages/lZreKdlh5HoU9OE4XkeL5AHj9Q3QvSRMtdwlcZdr.png', '2024-05-02', '2024-05-22', 10699, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 18, '2024-04-27 17:44:01', '2024-04-27 17:44:01'),
(96, 'agencesVoyages/JBPXo6gOp0ArwoSJgXodtV9mO1MTRebmXUJu2X0o.png', '2024-05-25', '2024-06-15', 9899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 18, '2024-04-27 17:44:01', '2024-04-27 17:44:01'),
(97, 'agencesVoyages/ERa8Hsa3H7rC490W4MGfJ5M5Hf7rZE1uvxnziw1a.png', '2024-06-20', '2024-07-10', 7899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 18, '2024-04-27 17:44:02', '2024-04-27 17:44:02'),
(98, 'agencesVoyages/HFp1X3sFf7ZlkkdVUkjtuiRnqsRbTEshPepKVcJC.png', '2024-08-01', '2024-08-15', 6899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 18, '2024-04-27 17:44:03', '2024-04-27 17:44:03'),
(99, 'agencesVoyages/COgHaibuBDJQ4CJToAidMyiohZc7VG5auh5SIyog.png', '2024-08-15', '2024-08-25', 6899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 18, '2024-04-27 17:44:03', '2024-04-27 17:44:03'),
(100, 'agencesVoyages/avMDlh7bsx14Dd4Y2CROOSaZO1nP3MD9cXQQIbyi.png', '2024-04-01', '2024-05-01', 16599, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 19, '2024-04-27 17:52:38', '2024-04-27 17:52:38'),
(101, 'agencesVoyages/1I7LpqJLeekGJpMZjRZWzdoHtA0xaoMNTpTkjexh.png', '2024-05-02', '2024-05-22', 14599, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 19, '2024-04-27 17:52:39', '2024-04-27 17:52:39'),
(102, 'agencesVoyages/TMkBFaFyM5aTpr7TzOVbBLZFwB78OwIHuxXBTJAW.png', '2024-05-25', '2024-06-15', 6899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 19, '2024-04-27 17:52:39', '2024-04-27 17:52:39'),
(103, 'agencesVoyages/GctCVhJCZCtpNyvg567a3UVIVq6uXFy1SL7BTW0S.png', '2024-06-20', '2024-07-15', 6899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 19, '2024-04-27 17:52:41', '2024-04-27 17:52:41'),
(104, 'agencesVoyages/CnjcYSoZITtUtNL362kI5JA3nvIRreCIzTo4sxAk.png', '2024-08-01', '2024-08-15', 6899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 19, '2024-04-27 17:52:42', '2024-04-27 17:52:42'),
(105, 'agencesVoyages/zG2hbTVUezyp0tt8ryZ1LhGGEd768gDAnoC01pdZ.png', '2024-08-16', '2024-08-31', 6899, 'Hôtel 4**** : régime Petit déjeuner (Package) 13 jours/12 nuits + VolA/R+ Transfert Aeroport', 19, '2024-04-27 17:52:42', '2024-04-27 17:52:42');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'othmane', 'rahelothmane@gmail.com', '2024-05-13 18:58:23', '123456789', NULL, '2024-05-13 18:58:23', '2024-05-13 18:58:23'),
(2, 'd4Lv7Y1p7E', 'sqiSo5XD9Z@gmail.com', NULL, '$2y$10$P4PXVXa2RiyXm7Ckb.gbOuLUG50F72CPxsXjKC4ArbxpogeGhEiDK', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `vol`
--

CREATE TABLE `vol` (
  `idVol` bigint(20) UNSIGNED NOT NULL,
  `nomVille` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `prix` int(11) NOT NULL,
  `date_depart` date NOT NULL,
  `date_arrivee` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vol`
--

INSERT INTO `vol` (`idVol`, `nomVille`, `image`, `prix`, `date_depart`, `date_arrivee`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Espagne', 'picturesPFE/G7f8uH1rH9NOrLMdXiaz7d1Jb6eImky9EZ66Q8XT.jpg', 12500, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/Espagne avec la RAM ou Emirates - 7 nuits en Hôtel 4* avec petit déjeuner - Transferts aéroport/hôtel/aéroport', '2024-04-28 15:03:30', '2024-04-28 15:03:30'),
(2, 'France', 'picturesPFE/dqkIjhSUMy1gcyd7qmH0iGxGsGJfCnNJzIrc3Kwc.jpg', 11500, '2024-05-01', '2024-06-01', '- Vol Aller/Retour Casablanca/France avec la RAM ou Emirates - 7 nuits en Hôtel 4* avec petit déjeuner - Transferts aéroport/hôtel/aéroport', '2024-04-28 18:51:22', '2024-04-28 18:51:22'),
(3, 'China', 'picturesPFE/pbMGnWw7iFVydWKaBVLrLYtoJdhDOGKqwLauQV8C.webp', 17500, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/China avec la RAM ou Emirates - 7 nuits en Hôtel 4* avec petit déjeuner - Transferts aéroport/hôtel/aéroport', '2024-04-28 18:59:00', '2024-04-28 18:59:00');

-- --------------------------------------------------------

--
-- Structure de la table `voyage`
--

CREATE TABLE `voyage` (
  `idVoyage` bigint(20) UNSIGNED NOT NULL,
  `nomVille` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `prix` int(11) NOT NULL,
  `date_depart` date NOT NULL,
  `date_arrivee` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `voyage`
--

INSERT INTO `voyage` (`idVoyage`, `nomVille`, `image`, `prix`, `date_depart`, `date_arrivee`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Dubai', 'picturesPFE/8g85o2sKToEfAjiVNW5DI3P9X2KpY3aURgbzEgBn.jpg', 7990, '2024-04-01', '2024-08-01', '- Vol Aller/Retour Casablanca/Dubai avec la RAM ou Emirates\r\n\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-26 15:12:30', '2024-04-26 15:12:30'),
(3, 'Malaisie', 'picturesPFE/u6f0rsuN5avLnZF0jpIjSIudLMJP5DcBfZOXQTSf.jpg', 12900, '2024-05-01', '2024-06-01', '- Vols Aller - Retour Casablanca - Kualalumpur avec EMIRATES ou Qatar Airways\r\n- 10 nuits hôtel metro hotel bukit bintang 3* ou similaire en petit déjeuner\r\n- Transferts: Aéroport - Hôtel - Aéropor', '2024-04-26 15:48:42', '2024-04-26 15:48:42'),
(4, 'Turkish', 'picturesPFE/V2JbjGLH4ZdgzImIxkD13ym3tvnXXxosDObocmpw.jpg', 6999, '2024-04-03', '2024-05-03', '- Vol Aller/Retour Casablanca/Turkish avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-26 17:24:15', '2024-04-26 17:24:15'),
(5, 'Canada', 'picturesPFE/8tomgAFngyoXTHowTTz3zx9QIX94KW8KMAFMJ9yY.jpg', 9999, '2024-05-01', '2024-06-01', '- Vol Aller/Retour Casablanca/Canada avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-26 17:40:26', '2024-04-26 17:40:26'),
(6, 'France', 'picturesPFE/zf5E6RirAH9Q0TIiVqrzVNZago00n6znzoZWUDYW.jpg', 7899, '2024-05-01', '2024-06-01', '- Vol Aller/Retour Casablanca/France avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 11:21:40', '2024-04-27 11:21:40'),
(8, 'China', 'picturesPFE/df5lrvwOFZIeHn1lsrQF7JSIh4rwfR2rw8isRedK.webp', 12500, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/China avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 14:49:33', '2024-04-27 14:49:33'),
(9, 'Hollande', 'picturesPFE/mMEJtVmqHRTDrUrwsMjbzzkEoNe3l7uJuRlp5Rz7.jpg', 13500, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/Hollande avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 14:58:17', '2024-04-27 14:58:17'),
(12, 'Espagne', 'picturesPFE/DFMyE3yQYb9rXpdi6f8QtLp6YZ59GDZ1ueOoatAo.jpg', 7999, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/ avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 15:13:16', '2024-04-27 15:13:16'),
(13, 'America', 'picturesPFE/CIEhLIhac0fwIRFQwgUBNbzRKgzTGKqev7Qs47QF.webp', 13000, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/America avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 16:33:33', '2024-04-27 16:33:33'),
(14, 'Thailand', 'picturesPFE/luVUspK5ShD6p09hVfbqoHosj7v8x1OWQcdp4T4b.jpg', 12899, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/ avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 16:47:43', '2024-04-27 16:47:43'),
(15, 'Tunisie', 'picturesPFE/iKdTapLuFoaYpxUjpHPvfgK83aQGLYsdgXC6amEB.jpg', 12000, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/Tunisie avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 17:01:25', '2024-04-27 17:01:25'),
(16, 'Portugal', 'picturesPFE/FXLyN1sBQLmd36SrDHaB0SIw26dWjbPi4sLS7COY.jpg', 17999, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/ avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 17:07:29', '2024-04-27 17:07:29'),
(17, 'Oman', 'picturesPFE/L9cGAxF2OGltpzycPthzhjZMROdq3Oo741BLIUhT.jpg', 8999, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/Oman avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 17:25:57', '2024-04-27 17:25:57'),
(18, 'Mouscou', 'picturesPFE/LMVGooZRoc2iIvUNnFbET2Ms79VyaZN8xy0qs65h.jpg', 11999, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/Mouscou avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 17:43:58', '2024-04-27 17:43:58'),
(19, 'London', 'picturesPFE/60wiPHDozi3Anm5Ce0bSTkCOhWXqkI3D6ZHfyGbb.jpg', 16599, '2024-04-01', '2024-05-01', '- Vol Aller/Retour Casablanca/London avec la RAM ou Emirates\r\n- 7 nuits en Hôtel 4* avec petit déjeuner\r\n- Transferts aéroport/hôtel/aéroport', '2024-04-27 17:52:35', '2024-04-27 17:52:35');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idclient`);

--
-- Index pour la table `commentaires_vol`
--
ALTER TABLE `commentaires_vol`
  ADD PRIMARY KEY (`idV`),
  ADD KEY `commentaires_vol_idvoldispo_foreign` (`idVolDispo`);

--
-- Index pour la table `commentaires_voyages`
--
ALTER TABLE `commentaires_voyages`
  ADD PRIMARY KEY (`idC`),
  ADD KEY `commentaires_voyages_idvygdispo_foreign` (`idVygDispo`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`idC`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `hajomra`
--
ALTER TABLE `hajomra`
  ADD PRIMARY KEY (`idHO`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`idReservation`),
  ADD KEY `reservation_idclient_foreign` (`idclient`),
  ADD KEY `reservation_idvoldispo_foreign` (`idVolDispo`),
  ADD KEY `reservation_idvygdispo_foreign` (`idVygDispo`);

--
-- Index pour la table `reservation_vol_dispo`
--
ALTER TABLE `reservation_vol_dispo`
  ADD PRIMARY KEY (`idVolDispo`),
  ADD KEY `reservation_vol_dispo_idvol_foreign` (`idVol`);

--
-- Index pour la table `reservation_voyage_dispo`
--
ALTER TABLE `reservation_voyage_dispo`
  ADD PRIMARY KEY (`idVygDispo`),
  ADD KEY `reservation_voyage_dispo_idvoyage_foreign` (`idVoyage`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `vol`
--
ALTER TABLE `vol`
  ADD PRIMARY KEY (`idVol`);

--
-- Index pour la table `voyage`
--
ALTER TABLE `voyage`
  ADD PRIMARY KEY (`idVoyage`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `idclient` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT pour la table `commentaires_vol`
--
ALTER TABLE `commentaires_vol`
  MODIFY `idV` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commentaires_voyages`
--
ALTER TABLE `commentaires_voyages`
  MODIFY `idC` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `idC` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hajomra`
--
ALTER TABLE `hajomra`
  MODIFY `idHO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `idReservation` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `reservation_vol_dispo`
--
ALTER TABLE `reservation_vol_dispo`
  MODIFY `idVolDispo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `reservation_voyage_dispo`
--
ALTER TABLE `reservation_voyage_dispo`
  MODIFY `idVygDispo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `vol`
--
ALTER TABLE `vol`
  MODIFY `idVol` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `voyage`
--
ALTER TABLE `voyage`
  MODIFY `idVoyage` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaires_vol`
--
ALTER TABLE `commentaires_vol`
  ADD CONSTRAINT `commentaires_vol_idvoldispo_foreign` FOREIGN KEY (`idVolDispo`) REFERENCES `reservation_vol_dispo` (`idVolDispo`);

--
-- Contraintes pour la table `commentaires_voyages`
--
ALTER TABLE `commentaires_voyages`
  ADD CONSTRAINT `commentaires_voyages_idvygdispo_foreign` FOREIGN KEY (`idVygDispo`) REFERENCES `reservation_voyage_dispo` (`idVygDispo`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_idclient_foreign` FOREIGN KEY (`idclient`) REFERENCES `client` (`idclient`),
  ADD CONSTRAINT `reservation_idvoldispo_foreign` FOREIGN KEY (`idVolDispo`) REFERENCES `reservation_vol_dispo` (`idVolDispo`),
  ADD CONSTRAINT `reservation_idvygdispo_foreign` FOREIGN KEY (`idVygDispo`) REFERENCES `reservation_voyage_dispo` (`idVygDispo`);

--
-- Contraintes pour la table `reservation_vol_dispo`
--
ALTER TABLE `reservation_vol_dispo`
  ADD CONSTRAINT `reservation_vol_dispo_idvol_foreign` FOREIGN KEY (`idVol`) REFERENCES `vol` (`idVol`);

--
-- Contraintes pour la table `reservation_voyage_dispo`
--
ALTER TABLE `reservation_voyage_dispo`
  ADD CONSTRAINT `reservation_voyage_dispo_idvoyage_foreign` FOREIGN KEY (`idVoyage`) REFERENCES `voyage` (`idVoyage`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
