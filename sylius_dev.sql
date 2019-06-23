-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 23 juin 2019 à 20:57
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sylius_dev`
--

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20170912085504', '2019-06-02 14:47:55'),
('20170913125128', '2019-06-02 14:47:56'),
('20171003103916', '2019-06-02 14:47:56'),
('20180102140039', '2019-06-02 14:47:57'),
('20190109095211', '2019-06-02 14:47:58'),
('20190109160409', '2019-06-02 14:47:59'),
('20190508083953', '2019-06-02 14:48:00');

-- --------------------------------------------------------

--
-- Structure de la table `quotationrequest`
--

DROP TABLE IF EXISTS `quotationrequest`;
CREATE TABLE IF NOT EXISTS `quotationrequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Treated` tinyint(1) NOT NULL,
  `Image1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Image5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `User_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E056E06768D3EA09` (`User_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `quotationrequest`
--

INSERT INTO `quotationrequest` (`id`, `Description`, `Treated`, `Image1`, `Image2`, `Image3`, `Image4`, `Image5`, `User_id`) VALUES
(1, 'Test', 0, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_address`
--

DROP TABLE IF EXISTS `sylius_address`;
CREATE TABLE IF NOT EXISTS `sylius_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B97FF0589395C3F3` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_address`
--

INSERT INTO `sylius_address` (`id`, `customer_id`, `first_name`, `last_name`, `phone_number`, `street`, `company`, `city`, `postcode`, `created_at`, `updated_at`, `country_code`, `province_code`, `province_name`) VALUES
(1, 5, 'Karina', 'Parisian', NULL, '69006 Thea Ford', NULL, 'West Julius', '91811', '2019-06-02 14:48:31', '2019-06-02 14:48:32', 'US', NULL, NULL),
(2, NULL, 'Karina', 'Parisian', NULL, '69006 Thea Ford', NULL, 'West Julius', '91811', '2019-06-02 14:48:31', '2019-06-02 14:48:32', 'US', NULL, NULL),
(3, NULL, 'Karina', 'Parisian', NULL, '69006 Thea Ford', NULL, 'West Julius', '91811', '2019-06-02 14:48:31', '2019-06-02 14:48:32', 'US', NULL, NULL),
(4, 3, 'Cornelius', 'Kautzer', NULL, '47230 Toy Overpass Apt. 070', NULL, 'Amyafurt', '72449', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(5, NULL, 'Cornelius', 'Kautzer', NULL, '47230 Toy Overpass Apt. 070', NULL, 'Amyafurt', '72449', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(6, NULL, 'Cornelius', 'Kautzer', NULL, '47230 Toy Overpass Apt. 070', NULL, 'Amyafurt', '72449', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(7, 12, 'Cheyenne', 'Satterfield', NULL, '277 Ettie Green', NULL, 'Port Jovaniborough', '25705', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(8, NULL, 'Cheyenne', 'Satterfield', NULL, '277 Ettie Green', NULL, 'Port Jovaniborough', '25705', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(9, NULL, 'Cheyenne', 'Satterfield', NULL, '277 Ettie Green', NULL, 'Port Jovaniborough', '25705', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(10, 1, 'Cristal', 'Herzog', NULL, '8957 Fritsch Station Apt. 466', NULL, 'Kenyattaburgh', '05478', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(11, NULL, 'Cristal', 'Herzog', NULL, '8957 Fritsch Station Apt. 466', NULL, 'Kenyattaburgh', '05478', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(12, NULL, 'Cristal', 'Herzog', NULL, '8957 Fritsch Station Apt. 466', NULL, 'Kenyattaburgh', '05478', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(13, 11, 'Mitchell', 'Mayert', NULL, '7101 Keeling Terrace', NULL, 'Harveyport', '27998-8928', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(14, NULL, 'Mitchell', 'Mayert', NULL, '7101 Keeling Terrace', NULL, 'Harveyport', '27998-8928', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(15, NULL, 'Mitchell', 'Mayert', NULL, '7101 Keeling Terrace', NULL, 'Harveyport', '27998-8928', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(16, 13, 'Anika', 'Roob', NULL, '365 Walker Lock', NULL, 'Doylehaven', '48543', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(17, NULL, 'Anika', 'Roob', NULL, '365 Walker Lock', NULL, 'Doylehaven', '48543', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(18, NULL, 'Anika', 'Roob', NULL, '365 Walker Lock', NULL, 'Doylehaven', '48543', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(19, 15, 'Hiram', 'Franecki', NULL, '3572 Barton Groves', NULL, 'Gorczanyton', '54396-9735', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(20, NULL, 'Hiram', 'Franecki', NULL, '3572 Barton Groves', NULL, 'Gorczanyton', '54396-9735', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(21, NULL, 'Hiram', 'Franecki', NULL, '3572 Barton Groves', NULL, 'Gorczanyton', '54396-9735', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(22, 7, 'Alexandra', 'Waters', NULL, '7112 Eleazar Dale', NULL, 'Beiershire', '58778-7524', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(23, NULL, 'Alexandra', 'Waters', NULL, '7112 Eleazar Dale', NULL, 'Beiershire', '58778-7524', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(24, NULL, 'Alexandra', 'Waters', NULL, '7112 Eleazar Dale', NULL, 'Beiershire', '58778-7524', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(25, 14, 'Rigoberto', 'Herman', NULL, '564 Reilly Squares', NULL, 'Chasityville', '44043', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(26, NULL, 'Rigoberto', 'Herman', NULL, '564 Reilly Squares', NULL, 'Chasityville', '44043', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(27, NULL, 'Rigoberto', 'Herman', NULL, '564 Reilly Squares', NULL, 'Chasityville', '44043', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(28, 18, 'Hubert', 'Nicolas', NULL, '140 Von Glens', NULL, 'Ricktown', '88515-6373', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(29, NULL, 'Hubert', 'Nicolas', NULL, '140 Von Glens', NULL, 'Ricktown', '88515-6373', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(30, NULL, 'Hubert', 'Nicolas', NULL, '140 Von Glens', NULL, 'Ricktown', '88515-6373', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(31, 7, 'Lysanne', 'Price', NULL, '5770 Casey Road Suite 848', NULL, 'Homenickfurt', '38491', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(32, NULL, 'Lysanne', 'Price', NULL, '5770 Casey Road Suite 848', NULL, 'Homenickfurt', '38491', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(33, NULL, 'Lysanne', 'Price', NULL, '5770 Casey Road Suite 848', NULL, 'Homenickfurt', '38491', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(34, 11, 'Erna', 'Lang', NULL, '4608 Rhett Plains', NULL, 'Uptonville', '08956-1703', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(35, NULL, 'Erna', 'Lang', NULL, '4608 Rhett Plains', NULL, 'Uptonville', '08956-1703', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(36, NULL, 'Erna', 'Lang', NULL, '4608 Rhett Plains', NULL, 'Uptonville', '08956-1703', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(37, 9, 'Garret', 'Stark', NULL, '169 Gibson Mews', NULL, 'Aniyahmouth', '63713', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(38, NULL, 'Garret', 'Stark', NULL, '169 Gibson Mews', NULL, 'Aniyahmouth', '63713', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(39, NULL, 'Garret', 'Stark', NULL, '169 Gibson Mews', NULL, 'Aniyahmouth', '63713', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(40, 2, 'Pearline', 'Kovacek', NULL, '7416 Terrell Club', NULL, 'Alberthaborough', '78361', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(41, NULL, 'Pearline', 'Kovacek', NULL, '7416 Terrell Club', NULL, 'Alberthaborough', '78361', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(42, NULL, 'Pearline', 'Kovacek', NULL, '7416 Terrell Club', NULL, 'Alberthaborough', '78361', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(43, 3, 'Oren', 'Nader', NULL, '5391 Emile Mountains Suite 949', NULL, 'Christiansenchester', '20807', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(44, NULL, 'Oren', 'Nader', NULL, '5391 Emile Mountains Suite 949', NULL, 'Christiansenchester', '20807', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(45, NULL, 'Oren', 'Nader', NULL, '5391 Emile Mountains Suite 949', NULL, 'Christiansenchester', '20807', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(46, 16, 'Sasha', 'Nolan', NULL, '2147 Mathew Shoal', NULL, 'Adamston', '04763-0312', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(47, NULL, 'Sasha', 'Nolan', NULL, '2147 Mathew Shoal', NULL, 'Adamston', '04763-0312', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(48, NULL, 'Sasha', 'Nolan', NULL, '2147 Mathew Shoal', NULL, 'Adamston', '04763-0312', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(49, 8, 'Jennyfer', 'Hammes', NULL, '1044 Aileen Run Suite 283', NULL, 'New Paula', '51892', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(50, NULL, 'Jennyfer', 'Hammes', NULL, '1044 Aileen Run Suite 283', NULL, 'New Paula', '51892', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(51, NULL, 'Jennyfer', 'Hammes', NULL, '1044 Aileen Run Suite 283', NULL, 'New Paula', '51892', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(52, 3, 'Sallie', 'Buckridge', NULL, '17915 Jakubowski Cape Apt. 918', NULL, 'Shanahanbury', '99301-1508', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(53, NULL, 'Sallie', 'Buckridge', NULL, '17915 Jakubowski Cape Apt. 918', NULL, 'Shanahanbury', '99301-1508', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(54, NULL, 'Sallie', 'Buckridge', NULL, '17915 Jakubowski Cape Apt. 918', NULL, 'Shanahanbury', '99301-1508', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(55, 17, 'Shakira', 'Dickinson', NULL, '2820 Ritchie Ways', NULL, 'West Herminiaside', '03588', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(56, NULL, 'Shakira', 'Dickinson', NULL, '2820 Ritchie Ways', NULL, 'West Herminiaside', '03588', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(57, NULL, 'Shakira', 'Dickinson', NULL, '2820 Ritchie Ways', NULL, 'West Herminiaside', '03588', '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'US', NULL, NULL),
(58, 11, 'Amelia', 'Batz', NULL, '1652 George Tunnel Suite 614', NULL, 'Savanahland', '91698', '2019-06-02 14:48:32', '2019-06-02 14:48:33', 'US', NULL, NULL),
(59, NULL, 'Amelia', 'Batz', NULL, '1652 George Tunnel Suite 614', NULL, 'Savanahland', '91698', '2019-06-02 14:48:32', '2019-06-02 14:48:33', 'US', NULL, NULL),
(60, NULL, 'Amelia', 'Batz', NULL, '1652 George Tunnel Suite 614', NULL, 'Savanahland', '91698', '2019-06-02 14:48:32', '2019-06-02 14:48:33', 'US', NULL, NULL),
(61, 15, 'Kristofer', 'Adams', NULL, '9123 Gerald Bypass', 'Hessel LLC', 'Wehnerburgh', '18160-8812', '2019-06-02 14:48:33', '2019-06-02 14:48:33', 'US', NULL, NULL),
(62, 17, 'Alyson', 'Klein', '641-445-2873', '3425 Mara Shoal Suite 647', 'Kihn LLC', 'Ankundingmouth', '65032', '2019-06-02 14:48:33', '2019-06-02 14:48:33', 'US', NULL, NULL),
(63, 3, 'Misty', 'Frami', '+15607589809', '38575 Brekke Row Apt. 813', NULL, 'Gottliebbury', '42213', '2019-06-02 14:48:33', '2019-06-02 14:48:33', 'US', NULL, NULL),
(64, 21, 'Hertha', 'Weimann', NULL, '319 Emmerich Island Apt. 167', NULL, 'Earlenehaven', '41061', '2019-06-02 14:48:33', '2019-06-02 14:48:33', 'US', NULL, NULL),
(65, 20, 'Jannie', 'Brakus', NULL, '956 Horacio Villages', NULL, 'West Pierce', '69991-5536', '2019-06-02 14:48:33', '2019-06-02 14:48:33', 'US', NULL, NULL),
(66, 12, 'Rosemarie', 'Robel', '(991) 880-0482 x08677', '2463 Kellen Circle', NULL, 'Hudsonfurt', '86151', '2019-06-02 14:48:33', '2019-06-02 14:48:33', 'US', NULL, NULL),
(67, 21, 'Bernadine', 'Price', NULL, '7391 Austen Heights', NULL, 'West Macmouth', '65937', '2019-06-02 14:48:33', '2019-06-02 14:48:33', 'US', NULL, NULL),
(68, 13, 'Adriana', 'Schowalter', '614-596-5209', '2966 Schneider Ridges Suite 596', NULL, 'New Flostad', '73137-3820', '2019-06-02 14:48:33', '2019-06-02 14:48:33', 'US', NULL, NULL),
(69, 9, 'Addie', 'Ferry', NULL, '400 Christophe Valleys', 'Nicolas Ltd', 'Corrineshire', '89058', '2019-06-02 14:48:33', '2019-06-02 14:48:33', 'US', NULL, NULL),
(70, 4, 'Name', 'Braun', '(764) 416-1894 x22783', '342 Monte Tunnel Apt. 328', 'Lockman-Rolfson', 'East Devonte', '46697', '2019-06-02 14:48:33', '2019-06-02 14:48:33', 'US', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_address_log_entries`
--

DROP TABLE IF EXISTS `sylius_address_log_entries`;
CREATE TABLE IF NOT EXISTS `sylius_address_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logged_at` datetime NOT NULL,
  `object_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_address_log_entries`
--

INSERT INTO `sylius_address_log_entries` (`id`, `action`, `logged_at`, `object_id`, `object_class`, `version`, `data`, `username`) VALUES
(1, 'create', '2019-06-02 14:48:32', '1', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Karina\";s:8:\"lastName\";s:8:\"Parisian\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"69006 Thea Ford\";s:7:\"company\";N;s:4:\"city\";s:11:\"West Julius\";s:8:\"postcode\";s:5:\"91811\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(2, 'create', '2019-06-02 14:48:32', '2', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Karina\";s:8:\"lastName\";s:8:\"Parisian\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"69006 Thea Ford\";s:7:\"company\";N;s:4:\"city\";s:11:\"West Julius\";s:8:\"postcode\";s:5:\"91811\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(3, 'create', '2019-06-02 14:48:32', '3', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Karina\";s:8:\"lastName\";s:8:\"Parisian\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"69006 Thea Ford\";s:7:\"company\";N;s:4:\"city\";s:11:\"West Julius\";s:8:\"postcode\";s:5:\"91811\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(4, 'create', '2019-06-02 14:48:33', '4', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Cornelius\";s:8:\"lastName\";s:7:\"Kautzer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"47230 Toy Overpass Apt. 070\";s:7:\"company\";N;s:4:\"city\";s:8:\"Amyafurt\";s:8:\"postcode\";s:5:\"72449\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(5, 'create', '2019-06-02 14:48:33', '5', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Cornelius\";s:8:\"lastName\";s:7:\"Kautzer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"47230 Toy Overpass Apt. 070\";s:7:\"company\";N;s:4:\"city\";s:8:\"Amyafurt\";s:8:\"postcode\";s:5:\"72449\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(6, 'create', '2019-06-02 14:48:33', '6', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Cornelius\";s:8:\"lastName\";s:7:\"Kautzer\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"47230 Toy Overpass Apt. 070\";s:7:\"company\";N;s:4:\"city\";s:8:\"Amyafurt\";s:8:\"postcode\";s:5:\"72449\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(7, 'create', '2019-06-02 14:48:33', '7', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Cheyenne\";s:8:\"lastName\";s:11:\"Satterfield\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"277 Ettie Green\";s:7:\"company\";N;s:4:\"city\";s:18:\"Port Jovaniborough\";s:8:\"postcode\";s:5:\"25705\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(8, 'create', '2019-06-02 14:48:33', '8', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Cheyenne\";s:8:\"lastName\";s:11:\"Satterfield\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"277 Ettie Green\";s:7:\"company\";N;s:4:\"city\";s:18:\"Port Jovaniborough\";s:8:\"postcode\";s:5:\"25705\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(9, 'create', '2019-06-02 14:48:33', '9', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Cheyenne\";s:8:\"lastName\";s:11:\"Satterfield\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"277 Ettie Green\";s:7:\"company\";N;s:4:\"city\";s:18:\"Port Jovaniborough\";s:8:\"postcode\";s:5:\"25705\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(10, 'create', '2019-06-02 14:48:33', '10', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Cristal\";s:8:\"lastName\";s:6:\"Herzog\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"8957 Fritsch Station Apt. 466\";s:7:\"company\";N;s:4:\"city\";s:13:\"Kenyattaburgh\";s:8:\"postcode\";s:5:\"05478\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(11, 'create', '2019-06-02 14:48:33', '11', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Cristal\";s:8:\"lastName\";s:6:\"Herzog\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"8957 Fritsch Station Apt. 466\";s:7:\"company\";N;s:4:\"city\";s:13:\"Kenyattaburgh\";s:8:\"postcode\";s:5:\"05478\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(12, 'create', '2019-06-02 14:48:33', '12', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Cristal\";s:8:\"lastName\";s:6:\"Herzog\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"8957 Fritsch Station Apt. 466\";s:7:\"company\";N;s:4:\"city\";s:13:\"Kenyattaburgh\";s:8:\"postcode\";s:5:\"05478\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(13, 'create', '2019-06-02 14:48:33', '13', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Mitchell\";s:8:\"lastName\";s:6:\"Mayert\";s:11:\"phoneNumber\";N;s:6:\"street\";s:20:\"7101 Keeling Terrace\";s:7:\"company\";N;s:4:\"city\";s:10:\"Harveyport\";s:8:\"postcode\";s:10:\"27998-8928\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(14, 'create', '2019-06-02 14:48:33', '14', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Mitchell\";s:8:\"lastName\";s:6:\"Mayert\";s:11:\"phoneNumber\";N;s:6:\"street\";s:20:\"7101 Keeling Terrace\";s:7:\"company\";N;s:4:\"city\";s:10:\"Harveyport\";s:8:\"postcode\";s:10:\"27998-8928\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(15, 'create', '2019-06-02 14:48:33', '15', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Mitchell\";s:8:\"lastName\";s:6:\"Mayert\";s:11:\"phoneNumber\";N;s:6:\"street\";s:20:\"7101 Keeling Terrace\";s:7:\"company\";N;s:4:\"city\";s:10:\"Harveyport\";s:8:\"postcode\";s:10:\"27998-8928\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(16, 'create', '2019-06-02 14:48:33', '16', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Anika\";s:8:\"lastName\";s:4:\"Roob\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"365 Walker Lock\";s:7:\"company\";N;s:4:\"city\";s:10:\"Doylehaven\";s:8:\"postcode\";s:5:\"48543\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(17, 'create', '2019-06-02 14:48:33', '17', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Anika\";s:8:\"lastName\";s:4:\"Roob\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"365 Walker Lock\";s:7:\"company\";N;s:4:\"city\";s:10:\"Doylehaven\";s:8:\"postcode\";s:5:\"48543\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(18, 'create', '2019-06-02 14:48:33', '18', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Anika\";s:8:\"lastName\";s:4:\"Roob\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"365 Walker Lock\";s:7:\"company\";N;s:4:\"city\";s:10:\"Doylehaven\";s:8:\"postcode\";s:5:\"48543\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(19, 'create', '2019-06-02 14:48:33', '19', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Hiram\";s:8:\"lastName\";s:8:\"Franecki\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"3572 Barton Groves\";s:7:\"company\";N;s:4:\"city\";s:11:\"Gorczanyton\";s:8:\"postcode\";s:10:\"54396-9735\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(20, 'create', '2019-06-02 14:48:33', '20', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Hiram\";s:8:\"lastName\";s:8:\"Franecki\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"3572 Barton Groves\";s:7:\"company\";N;s:4:\"city\";s:11:\"Gorczanyton\";s:8:\"postcode\";s:10:\"54396-9735\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(21, 'create', '2019-06-02 14:48:33', '21', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Hiram\";s:8:\"lastName\";s:8:\"Franecki\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"3572 Barton Groves\";s:7:\"company\";N;s:4:\"city\";s:11:\"Gorczanyton\";s:8:\"postcode\";s:10:\"54396-9735\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(22, 'create', '2019-06-02 14:48:33', '22', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Alexandra\";s:8:\"lastName\";s:6:\"Waters\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"7112 Eleazar Dale\";s:7:\"company\";N;s:4:\"city\";s:10:\"Beiershire\";s:8:\"postcode\";s:10:\"58778-7524\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(23, 'create', '2019-06-02 14:48:33', '23', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Alexandra\";s:8:\"lastName\";s:6:\"Waters\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"7112 Eleazar Dale\";s:7:\"company\";N;s:4:\"city\";s:10:\"Beiershire\";s:8:\"postcode\";s:10:\"58778-7524\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(24, 'create', '2019-06-02 14:48:33', '24', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Alexandra\";s:8:\"lastName\";s:6:\"Waters\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"7112 Eleazar Dale\";s:7:\"company\";N;s:4:\"city\";s:10:\"Beiershire\";s:8:\"postcode\";s:10:\"58778-7524\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(25, 'create', '2019-06-02 14:48:33', '25', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Rigoberto\";s:8:\"lastName\";s:6:\"Herman\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"564 Reilly Squares\";s:7:\"company\";N;s:4:\"city\";s:12:\"Chasityville\";s:8:\"postcode\";s:5:\"44043\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(26, 'create', '2019-06-02 14:48:33', '26', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Rigoberto\";s:8:\"lastName\";s:6:\"Herman\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"564 Reilly Squares\";s:7:\"company\";N;s:4:\"city\";s:12:\"Chasityville\";s:8:\"postcode\";s:5:\"44043\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(27, 'create', '2019-06-02 14:48:33', '27', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Rigoberto\";s:8:\"lastName\";s:6:\"Herman\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"564 Reilly Squares\";s:7:\"company\";N;s:4:\"city\";s:12:\"Chasityville\";s:8:\"postcode\";s:5:\"44043\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(28, 'create', '2019-06-02 14:48:33', '28', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Hubert\";s:8:\"lastName\";s:7:\"Nicolas\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"140 Von Glens\";s:7:\"company\";N;s:4:\"city\";s:8:\"Ricktown\";s:8:\"postcode\";s:10:\"88515-6373\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(29, 'create', '2019-06-02 14:48:33', '29', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Hubert\";s:8:\"lastName\";s:7:\"Nicolas\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"140 Von Glens\";s:7:\"company\";N;s:4:\"city\";s:8:\"Ricktown\";s:8:\"postcode\";s:10:\"88515-6373\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(30, 'create', '2019-06-02 14:48:33', '30', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Hubert\";s:8:\"lastName\";s:7:\"Nicolas\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"140 Von Glens\";s:7:\"company\";N;s:4:\"city\";s:8:\"Ricktown\";s:8:\"postcode\";s:10:\"88515-6373\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(31, 'create', '2019-06-02 14:48:33', '31', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Lysanne\";s:8:\"lastName\";s:5:\"Price\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"5770 Casey Road Suite 848\";s:7:\"company\";N;s:4:\"city\";s:12:\"Homenickfurt\";s:8:\"postcode\";s:5:\"38491\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(32, 'create', '2019-06-02 14:48:33', '32', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Lysanne\";s:8:\"lastName\";s:5:\"Price\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"5770 Casey Road Suite 848\";s:7:\"company\";N;s:4:\"city\";s:12:\"Homenickfurt\";s:8:\"postcode\";s:5:\"38491\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(33, 'create', '2019-06-02 14:48:33', '33', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Lysanne\";s:8:\"lastName\";s:5:\"Price\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"5770 Casey Road Suite 848\";s:7:\"company\";N;s:4:\"city\";s:12:\"Homenickfurt\";s:8:\"postcode\";s:5:\"38491\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(34, 'create', '2019-06-02 14:48:33', '34', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Erna\";s:8:\"lastName\";s:4:\"Lang\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"4608 Rhett Plains\";s:7:\"company\";N;s:4:\"city\";s:10:\"Uptonville\";s:8:\"postcode\";s:10:\"08956-1703\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(35, 'create', '2019-06-02 14:48:33', '35', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Erna\";s:8:\"lastName\";s:4:\"Lang\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"4608 Rhett Plains\";s:7:\"company\";N;s:4:\"city\";s:10:\"Uptonville\";s:8:\"postcode\";s:10:\"08956-1703\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(36, 'create', '2019-06-02 14:48:33', '36', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Erna\";s:8:\"lastName\";s:4:\"Lang\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"4608 Rhett Plains\";s:7:\"company\";N;s:4:\"city\";s:10:\"Uptonville\";s:8:\"postcode\";s:10:\"08956-1703\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(37, 'create', '2019-06-02 14:48:33', '37', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Garret\";s:8:\"lastName\";s:5:\"Stark\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"169 Gibson Mews\";s:7:\"company\";N;s:4:\"city\";s:11:\"Aniyahmouth\";s:8:\"postcode\";s:5:\"63713\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(38, 'create', '2019-06-02 14:48:33', '38', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Garret\";s:8:\"lastName\";s:5:\"Stark\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"169 Gibson Mews\";s:7:\"company\";N;s:4:\"city\";s:11:\"Aniyahmouth\";s:8:\"postcode\";s:5:\"63713\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(39, 'create', '2019-06-02 14:48:33', '39', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Garret\";s:8:\"lastName\";s:5:\"Stark\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"169 Gibson Mews\";s:7:\"company\";N;s:4:\"city\";s:11:\"Aniyahmouth\";s:8:\"postcode\";s:5:\"63713\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(40, 'create', '2019-06-02 14:48:33', '40', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Pearline\";s:8:\"lastName\";s:7:\"Kovacek\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"7416 Terrell Club\";s:7:\"company\";N;s:4:\"city\";s:15:\"Alberthaborough\";s:8:\"postcode\";s:5:\"78361\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(41, 'create', '2019-06-02 14:48:33', '41', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Pearline\";s:8:\"lastName\";s:7:\"Kovacek\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"7416 Terrell Club\";s:7:\"company\";N;s:4:\"city\";s:15:\"Alberthaborough\";s:8:\"postcode\";s:5:\"78361\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(42, 'create', '2019-06-02 14:48:33', '42', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Pearline\";s:8:\"lastName\";s:7:\"Kovacek\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"7416 Terrell Club\";s:7:\"company\";N;s:4:\"city\";s:15:\"Alberthaborough\";s:8:\"postcode\";s:5:\"78361\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(43, 'create', '2019-06-02 14:48:33', '43', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Oren\";s:8:\"lastName\";s:5:\"Nader\";s:11:\"phoneNumber\";N;s:6:\"street\";s:30:\"5391 Emile Mountains Suite 949\";s:7:\"company\";N;s:4:\"city\";s:19:\"Christiansenchester\";s:8:\"postcode\";s:5:\"20807\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(44, 'create', '2019-06-02 14:48:33', '44', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Oren\";s:8:\"lastName\";s:5:\"Nader\";s:11:\"phoneNumber\";N;s:6:\"street\";s:30:\"5391 Emile Mountains Suite 949\";s:7:\"company\";N;s:4:\"city\";s:19:\"Christiansenchester\";s:8:\"postcode\";s:5:\"20807\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(45, 'create', '2019-06-02 14:48:33', '45', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Oren\";s:8:\"lastName\";s:5:\"Nader\";s:11:\"phoneNumber\";N;s:6:\"street\";s:30:\"5391 Emile Mountains Suite 949\";s:7:\"company\";N;s:4:\"city\";s:19:\"Christiansenchester\";s:8:\"postcode\";s:5:\"20807\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(46, 'create', '2019-06-02 14:48:33', '46', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Sasha\";s:8:\"lastName\";s:5:\"Nolan\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"2147 Mathew Shoal\";s:7:\"company\";N;s:4:\"city\";s:8:\"Adamston\";s:8:\"postcode\";s:10:\"04763-0312\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(47, 'create', '2019-06-02 14:48:33', '47', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Sasha\";s:8:\"lastName\";s:5:\"Nolan\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"2147 Mathew Shoal\";s:7:\"company\";N;s:4:\"city\";s:8:\"Adamston\";s:8:\"postcode\";s:10:\"04763-0312\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(48, 'create', '2019-06-02 14:48:33', '48', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Sasha\";s:8:\"lastName\";s:5:\"Nolan\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"2147 Mathew Shoal\";s:7:\"company\";N;s:4:\"city\";s:8:\"Adamston\";s:8:\"postcode\";s:10:\"04763-0312\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(49, 'create', '2019-06-02 14:48:33', '49', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Jennyfer\";s:8:\"lastName\";s:6:\"Hammes\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"1044 Aileen Run Suite 283\";s:7:\"company\";N;s:4:\"city\";s:9:\"New Paula\";s:8:\"postcode\";s:5:\"51892\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(50, 'create', '2019-06-02 14:48:33', '50', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Jennyfer\";s:8:\"lastName\";s:6:\"Hammes\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"1044 Aileen Run Suite 283\";s:7:\"company\";N;s:4:\"city\";s:9:\"New Paula\";s:8:\"postcode\";s:5:\"51892\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(51, 'create', '2019-06-02 14:48:33', '51', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Jennyfer\";s:8:\"lastName\";s:6:\"Hammes\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"1044 Aileen Run Suite 283\";s:7:\"company\";N;s:4:\"city\";s:9:\"New Paula\";s:8:\"postcode\";s:5:\"51892\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(52, 'create', '2019-06-02 14:48:33', '52', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Sallie\";s:8:\"lastName\";s:9:\"Buckridge\";s:11:\"phoneNumber\";N;s:6:\"street\";s:30:\"17915 Jakubowski Cape Apt. 918\";s:7:\"company\";N;s:4:\"city\";s:12:\"Shanahanbury\";s:8:\"postcode\";s:10:\"99301-1508\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(53, 'create', '2019-06-02 14:48:33', '53', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Sallie\";s:8:\"lastName\";s:9:\"Buckridge\";s:11:\"phoneNumber\";N;s:6:\"street\";s:30:\"17915 Jakubowski Cape Apt. 918\";s:7:\"company\";N;s:4:\"city\";s:12:\"Shanahanbury\";s:8:\"postcode\";s:10:\"99301-1508\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(54, 'create', '2019-06-02 14:48:33', '54', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Sallie\";s:8:\"lastName\";s:9:\"Buckridge\";s:11:\"phoneNumber\";N;s:6:\"street\";s:30:\"17915 Jakubowski Cape Apt. 918\";s:7:\"company\";N;s:4:\"city\";s:12:\"Shanahanbury\";s:8:\"postcode\";s:10:\"99301-1508\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(55, 'create', '2019-06-02 14:48:33', '55', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Shakira\";s:8:\"lastName\";s:9:\"Dickinson\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"2820 Ritchie Ways\";s:7:\"company\";N;s:4:\"city\";s:17:\"West Herminiaside\";s:8:\"postcode\";s:5:\"03588\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(56, 'create', '2019-06-02 14:48:33', '56', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Shakira\";s:8:\"lastName\";s:9:\"Dickinson\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"2820 Ritchie Ways\";s:7:\"company\";N;s:4:\"city\";s:17:\"West Herminiaside\";s:8:\"postcode\";s:5:\"03588\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(57, 'create', '2019-06-02 14:48:33', '57', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Shakira\";s:8:\"lastName\";s:9:\"Dickinson\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"2820 Ritchie Ways\";s:7:\"company\";N;s:4:\"city\";s:17:\"West Herminiaside\";s:8:\"postcode\";s:5:\"03588\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(58, 'create', '2019-06-02 14:48:33', '58', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Amelia\";s:8:\"lastName\";s:4:\"Batz\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"1652 George Tunnel Suite 614\";s:7:\"company\";N;s:4:\"city\";s:11:\"Savanahland\";s:8:\"postcode\";s:5:\"91698\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(59, 'create', '2019-06-02 14:48:33', '59', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Amelia\";s:8:\"lastName\";s:4:\"Batz\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"1652 George Tunnel Suite 614\";s:7:\"company\";N;s:4:\"city\";s:11:\"Savanahland\";s:8:\"postcode\";s:5:\"91698\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(60, 'create', '2019-06-02 14:48:33', '60', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Amelia\";s:8:\"lastName\";s:4:\"Batz\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"1652 George Tunnel Suite 614\";s:7:\"company\";N;s:4:\"city\";s:11:\"Savanahland\";s:8:\"postcode\";s:5:\"91698\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(61, 'create', '2019-06-02 14:48:33', '61', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Kristofer\";s:8:\"lastName\";s:5:\"Adams\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"9123 Gerald Bypass\";s:7:\"company\";s:10:\"Hessel LLC\";s:4:\"city\";s:11:\"Wehnerburgh\";s:8:\"postcode\";s:10:\"18160-8812\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(62, 'create', '2019-06-02 14:48:33', '62', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Alyson\";s:8:\"lastName\";s:5:\"Klein\";s:11:\"phoneNumber\";s:12:\"641-445-2873\";s:6:\"street\";s:25:\"3425 Mara Shoal Suite 647\";s:7:\"company\";s:8:\"Kihn LLC\";s:4:\"city\";s:14:\"Ankundingmouth\";s:8:\"postcode\";s:5:\"65032\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(63, 'create', '2019-06-02 14:48:33', '63', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Misty\";s:8:\"lastName\";s:5:\"Frami\";s:11:\"phoneNumber\";s:12:\"+15607589809\";s:6:\"street\";s:25:\"38575 Brekke Row Apt. 813\";s:7:\"company\";N;s:4:\"city\";s:12:\"Gottliebbury\";s:8:\"postcode\";s:5:\"42213\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(64, 'create', '2019-06-02 14:48:33', '64', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Hertha\";s:8:\"lastName\";s:7:\"Weimann\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"319 Emmerich Island Apt. 167\";s:7:\"company\";N;s:4:\"city\";s:12:\"Earlenehaven\";s:8:\"postcode\";s:5:\"41061\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(65, 'create', '2019-06-02 14:48:33', '65', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Jannie\";s:8:\"lastName\";s:6:\"Brakus\";s:11:\"phoneNumber\";N;s:6:\"street\";s:20:\"956 Horacio Villages\";s:7:\"company\";N;s:4:\"city\";s:11:\"West Pierce\";s:8:\"postcode\";s:10:\"69991-5536\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(66, 'create', '2019-06-02 14:48:33', '66', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Rosemarie\";s:8:\"lastName\";s:5:\"Robel\";s:11:\"phoneNumber\";s:21:\"(991) 880-0482 x08677\";s:6:\"street\";s:18:\"2463 Kellen Circle\";s:7:\"company\";N;s:4:\"city\";s:10:\"Hudsonfurt\";s:8:\"postcode\";s:5:\"86151\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(67, 'create', '2019-06-02 14:48:33', '67', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Bernadine\";s:8:\"lastName\";s:5:\"Price\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"7391 Austen Heights\";s:7:\"company\";N;s:4:\"city\";s:13:\"West Macmouth\";s:8:\"postcode\";s:5:\"65937\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(68, 'create', '2019-06-02 14:48:33', '68', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Adriana\";s:8:\"lastName\";s:10:\"Schowalter\";s:11:\"phoneNumber\";s:12:\"614-596-5209\";s:6:\"street\";s:31:\"2966 Schneider Ridges Suite 596\";s:7:\"company\";N;s:4:\"city\";s:11:\"New Flostad\";s:8:\"postcode\";s:10:\"73137-3820\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(69, 'create', '2019-06-02 14:48:33', '69', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Addie\";s:8:\"lastName\";s:5:\"Ferry\";s:11:\"phoneNumber\";N;s:6:\"street\";s:22:\"400 Christophe Valleys\";s:7:\"company\";s:11:\"Nicolas Ltd\";s:4:\"city\";s:12:\"Corrineshire\";s:8:\"postcode\";s:5:\"89058\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(70, 'create', '2019-06-02 14:48:33', '70', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Name\";s:8:\"lastName\";s:5:\"Braun\";s:11:\"phoneNumber\";s:21:\"(764) 416-1894 x22783\";s:6:\"street\";s:25:\"342 Monte Tunnel Apt. 328\";s:7:\"company\";s:15:\"Lockman-Rolfson\";s:4:\"city\";s:12:\"East Devonte\";s:8:\"postcode\";s:5:\"46697\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_adjustment`
--

DROP TABLE IF EXISTS `sylius_adjustment`;
CREATE TABLE IF NOT EXISTS `sylius_adjustment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `order_item_unit_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `is_neutral` tinyint(1) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `origin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ACA6E0F28D9F6D38` (`order_id`),
  KEY `IDX_ACA6E0F2E415FB15` (`order_item_id`),
  KEY `IDX_ACA6E0F2F720C233` (`order_item_unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_adjustment`
--

INSERT INTO `sylius_adjustment` (`id`, `order_id`, `order_item_id`, `order_item_unit_id`, `type`, `label`, `amount`, `is_neutral`, `is_locked`, `origin_code`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, 'order_promotion', 'Christmas', -170, 0, 0, 'christmas', '2019-06-02 14:48:31', '2019-06-02 14:48:32'),
(2, NULL, NULL, 2, 'order_promotion', 'Christmas', -170, 0, 0, 'christmas', '2019-06-02 14:48:31', '2019-06-02 14:48:32'),
(3, NULL, NULL, 3, 'order_promotion', 'Christmas', -312, 0, 0, 'christmas', '2019-06-02 14:48:31', '2019-06-02 14:48:32'),
(4, NULL, NULL, 4, 'order_promotion', 'Christmas', -311, 0, 0, 'christmas', '2019-06-02 14:48:31', '2019-06-02 14:48:32'),
(5, 1, NULL, NULL, 'shipping', 'DHL Express', 135, 0, 0, NULL, '2019-06-02 14:48:31', '2019-06-02 14:48:32'),
(6, NULL, NULL, 5, 'order_promotion', 'Christmas', -883, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(7, NULL, NULL, 6, 'order_promotion', 'Christmas', -882, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(8, 2, NULL, NULL, 'shipping', 'UPS', 5877, 0, 0, NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(9, NULL, NULL, 7, 'order_promotion', 'Christmas', -809, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(10, NULL, NULL, 8, 'order_promotion', 'Christmas', -808, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(11, NULL, NULL, 9, 'order_promotion', 'Christmas', -808, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(12, NULL, NULL, 10, 'order_promotion', 'Christmas', -42, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(13, NULL, NULL, 11, 'order_promotion', 'Christmas', -42, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(14, NULL, NULL, 12, 'order_promotion', 'Christmas', -561, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(15, NULL, NULL, 13, 'order_promotion', 'Christmas', -560, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(16, NULL, NULL, 14, 'order_promotion', 'Christmas', -202, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(17, NULL, NULL, 15, 'order_promotion', 'Christmas', -201, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(18, NULL, NULL, 16, 'order_promotion', 'Christmas', -69, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(19, 3, NULL, NULL, 'shipping', 'FedEx', 2015, 0, 0, NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(20, NULL, NULL, 17, 'order_promotion', 'Christmas', -477, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(21, NULL, NULL, 18, 'order_promotion', 'Christmas', -946, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(22, NULL, NULL, 19, 'order_promotion', 'Christmas', -945, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(23, NULL, NULL, 20, 'order_promotion', 'Christmas', -945, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(24, NULL, NULL, 21, 'order_promotion', 'Christmas', -945, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(25, 4, NULL, NULL, 'shipping', 'FedEx', 2015, 0, 0, NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(26, NULL, NULL, 22, 'order_promotion', 'Christmas', -945, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(27, NULL, NULL, 23, 'order_promotion', 'Christmas', -256, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(28, NULL, NULL, 24, 'order_promotion', 'Christmas', -256, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(29, NULL, NULL, 25, 'order_promotion', 'Christmas', -255, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(30, NULL, NULL, 26, 'order_promotion', 'Christmas', -77, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(31, NULL, NULL, 27, 'order_promotion', 'Christmas', -77, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(32, NULL, NULL, 28, 'order_promotion', 'Christmas', -77, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(33, NULL, NULL, 29, 'order_promotion', 'Christmas', -774, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(34, NULL, NULL, 30, 'order_promotion', 'Christmas', -773, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(35, NULL, NULL, 31, 'order_promotion', 'Christmas', -773, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(36, NULL, NULL, 32, 'order_promotion', 'Christmas', -773, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(37, NULL, NULL, 33, 'order_promotion', 'Christmas', -473, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(38, NULL, NULL, 34, 'order_promotion', 'Christmas', -473, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(39, NULL, NULL, 35, 'order_promotion', 'Christmas', -473, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(40, NULL, NULL, 36, 'order_promotion', 'Christmas', -473, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(41, 5, NULL, NULL, 'shipping', 'UPS', 5877, 0, 0, NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(42, NULL, NULL, 37, 'order_promotion', 'Christmas', -138, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(43, NULL, NULL, 38, 'order_promotion', 'Christmas', -138, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(44, NULL, NULL, 39, 'order_promotion', 'Christmas', -138, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(45, NULL, NULL, 40, 'order_promotion', 'Christmas', -137, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(46, NULL, NULL, 41, 'order_promotion', 'Christmas', -471, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(47, NULL, NULL, 42, 'order_promotion', 'Christmas', -470, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(48, NULL, NULL, 43, 'order_promotion', 'Christmas', -470, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(49, 6, NULL, NULL, 'shipping', 'DHL Express', 135, 0, 0, NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(50, NULL, NULL, 44, 'order_promotion', 'New Year', -11, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(51, NULL, NULL, 44, 'order_promotion', 'Christmas', -106, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(52, NULL, NULL, 45, 'order_promotion', 'New Year', -11, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(53, NULL, NULL, 45, 'order_promotion', 'Christmas', -106, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(54, NULL, NULL, 46, 'order_promotion', 'New Year', -10, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(55, NULL, NULL, 46, 'order_promotion', 'Christmas', -106, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(56, NULL, NULL, 47, 'order_promotion', 'New Year', -10, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(57, NULL, NULL, 47, 'order_promotion', 'Christmas', -106, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(58, NULL, NULL, 48, 'order_promotion', 'New Year', -10, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(59, NULL, NULL, 48, 'order_promotion', 'Christmas', -106, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(60, NULL, NULL, 49, 'order_promotion', 'New Year', -69, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(61, NULL, NULL, 49, 'order_promotion', 'Christmas', -708, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(62, NULL, NULL, 50, 'order_promotion', 'New Year', -69, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(63, NULL, NULL, 50, 'order_promotion', 'Christmas', -708, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(64, NULL, NULL, 51, 'order_promotion', 'New Year', -69, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(65, NULL, NULL, 51, 'order_promotion', 'Christmas', -708, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(66, NULL, NULL, 52, 'order_promotion', 'New Year', -69, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(67, NULL, NULL, 52, 'order_promotion', 'Christmas', -708, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(68, NULL, NULL, 53, 'order_promotion', 'New Year', -69, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(69, NULL, NULL, 53, 'order_promotion', 'Christmas', -707, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(70, NULL, NULL, 54, 'order_promotion', 'New Year', -13, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(71, NULL, NULL, 54, 'order_promotion', 'Christmas', -126, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(72, NULL, NULL, 55, 'order_promotion', 'New Year', -12, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(73, NULL, NULL, 55, 'order_promotion', 'Christmas', -126, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(74, NULL, NULL, 56, 'order_promotion', 'New Year', -65, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(75, NULL, NULL, 56, 'order_promotion', 'Christmas', -659, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(76, NULL, NULL, 57, 'order_promotion', 'New Year', -64, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(77, NULL, NULL, 57, 'order_promotion', 'Christmas', -658, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(78, NULL, NULL, 58, 'order_promotion', 'New Year', -64, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(79, NULL, NULL, 58, 'order_promotion', 'Christmas', -658, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(80, NULL, NULL, 59, 'order_promotion', 'New Year', -64, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(81, NULL, NULL, 59, 'order_promotion', 'Christmas', -658, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(82, NULL, NULL, 60, 'order_promotion', 'New Year', -64, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(83, NULL, NULL, 60, 'order_promotion', 'Christmas', -658, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(84, NULL, NULL, 61, 'order_promotion', 'New Year', -65, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(85, NULL, NULL, 61, 'order_promotion', 'Christmas', -658, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(86, NULL, NULL, 62, 'order_promotion', 'New Year', -64, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(87, NULL, NULL, 62, 'order_promotion', 'Christmas', -658, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(88, NULL, NULL, 63, 'order_promotion', 'New Year', -64, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(89, NULL, NULL, 63, 'order_promotion', 'Christmas', -658, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(90, NULL, NULL, 64, 'order_promotion', 'New Year', -64, 0, 0, 'new_year', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(91, NULL, NULL, 64, 'order_promotion', 'Christmas', -658, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(92, 7, NULL, NULL, 'shipping', 'DHL Express', 135, 0, 0, NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(93, NULL, NULL, 65, 'order_promotion', 'Christmas', -804, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(94, NULL, NULL, 66, 'order_promotion', 'Christmas', -803, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(95, NULL, NULL, 67, 'order_promotion', 'Christmas', -803, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(96, NULL, NULL, 68, 'order_promotion', 'Christmas', -809, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(97, NULL, NULL, 69, 'order_promotion', 'Christmas', -809, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(98, NULL, NULL, 70, 'order_promotion', 'Christmas', -808, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(99, NULL, NULL, 71, 'order_promotion', 'Christmas', -808, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(100, NULL, NULL, 72, 'order_promotion', 'Christmas', -229, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(101, NULL, NULL, 73, 'order_promotion', 'Christmas', -368, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(102, NULL, NULL, 74, 'order_promotion', 'Christmas', -368, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(103, NULL, NULL, 75, 'order_promotion', 'Christmas', -368, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(104, NULL, NULL, 76, 'order_promotion', 'Christmas', -367, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(105, NULL, NULL, 77, 'order_promotion', 'Christmas', -77, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(106, NULL, NULL, 78, 'order_promotion', 'Christmas', -77, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(107, NULL, NULL, 79, 'order_promotion', 'Christmas', -77, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(108, NULL, NULL, 80, 'order_promotion', 'Christmas', -77, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(109, 8, NULL, NULL, 'shipping', 'UPS', 5877, 0, 0, NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(110, NULL, NULL, 81, 'order_promotion', 'Christmas', -477, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(111, NULL, NULL, 82, 'order_promotion', 'Christmas', -477, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(112, NULL, NULL, 83, 'order_promotion', 'Christmas', -477, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(113, NULL, NULL, 84, 'order_promotion', 'Christmas', -477, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(114, NULL, NULL, 85, 'order_promotion', 'Christmas', -476, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(115, NULL, NULL, 86, 'order_promotion', 'Christmas', -463, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(116, 9, NULL, NULL, 'shipping', 'DHL Express', 135, 0, 0, NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(117, NULL, NULL, 87, 'order_promotion', 'Christmas', -116, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(118, NULL, NULL, 88, 'order_promotion', 'Christmas', -116, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(119, NULL, NULL, 89, 'order_promotion', 'Christmas', -116, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(120, NULL, NULL, 90, 'order_promotion', 'Christmas', -193, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(121, NULL, NULL, 91, 'order_promotion', 'Christmas', -192, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(122, 10, NULL, NULL, 'shipping', 'DHL Express', 135, 0, 0, NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(123, NULL, NULL, 92, 'order_promotion', 'Christmas', -156, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(124, 11, NULL, NULL, 'shipping', 'FedEx', 2015, 0, 0, NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(125, NULL, NULL, 93, 'order_promotion', 'Christmas', -634, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(126, NULL, NULL, 94, 'order_promotion', 'Christmas', -633, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(127, NULL, NULL, 95, 'order_promotion', 'Christmas', -577, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(128, NULL, NULL, 96, 'order_promotion', 'Christmas', -577, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(129, NULL, NULL, 97, 'order_promotion', 'Christmas', -576, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(130, NULL, NULL, 98, 'order_promotion', 'Christmas', -634, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(131, NULL, NULL, 99, 'order_promotion', 'Christmas', -634, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(132, NULL, NULL, 100, 'order_promotion', 'Christmas', -634, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(133, NULL, NULL, 101, 'order_promotion', 'Christmas', -633, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(134, 12, NULL, NULL, 'shipping', 'UPS', 5877, 0, 0, NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(135, NULL, NULL, 102, 'order_promotion', 'Christmas', -428, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(136, NULL, NULL, 103, 'order_promotion', 'Christmas', -427, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(137, NULL, NULL, 104, 'order_promotion', 'Christmas', -299, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(138, NULL, NULL, 105, 'order_promotion', 'Christmas', -686, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(139, NULL, NULL, 106, 'order_promotion', 'Christmas', -686, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(140, NULL, NULL, 107, 'order_promotion', 'Christmas', -686, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(141, NULL, NULL, 108, 'order_promotion', 'Christmas', -686, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(142, NULL, NULL, 109, 'order_promotion', 'Christmas', -686, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(143, NULL, NULL, 110, 'order_promotion', 'Christmas', -601, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(144, NULL, NULL, 111, 'order_promotion', 'Christmas', -601, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(145, NULL, NULL, 112, 'order_promotion', 'Christmas', -600, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(146, NULL, NULL, 113, 'order_promotion', 'Christmas', -600, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(147, NULL, NULL, 114, 'order_promotion', 'Christmas', -600, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(148, 13, NULL, NULL, 'shipping', 'FedEx', 2015, 0, 0, NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(149, NULL, NULL, 115, 'order_promotion', 'Christmas', -444, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(150, NULL, NULL, 116, 'order_promotion', 'Christmas', -444, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(151, NULL, NULL, 117, 'order_promotion', 'Christmas', -444, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(152, NULL, NULL, 118, 'order_promotion', 'Christmas', -443, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(153, NULL, NULL, 119, 'order_promotion', 'Christmas', -635, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(154, NULL, NULL, 120, 'order_promotion', 'Christmas', -634, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(155, NULL, NULL, 121, 'order_promotion', 'Christmas', -96, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(156, NULL, NULL, 122, 'order_promotion', 'Christmas', -96, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(157, NULL, NULL, 123, 'order_promotion', 'Christmas', -901, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(158, NULL, NULL, 124, 'order_promotion', 'Christmas', -900, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(159, NULL, NULL, 125, 'order_promotion', 'Christmas', -562, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(160, NULL, NULL, 126, 'order_promotion', 'Christmas', -561, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(161, NULL, NULL, 127, 'order_promotion', 'Christmas', -561, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(162, 14, NULL, NULL, 'shipping', 'UPS', 5877, 0, 0, NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(163, NULL, NULL, 128, 'order_promotion', 'Christmas', -319, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(164, 15, NULL, NULL, 'shipping', 'UPS', 5877, 0, 0, NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(165, NULL, NULL, 129, 'order_promotion', 'Christmas', -300, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(166, NULL, NULL, 130, 'order_promotion', 'Christmas', -299, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(167, NULL, NULL, 131, 'order_promotion', 'Christmas', -299, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(168, 16, NULL, NULL, 'shipping', 'UPS', 5877, 0, 0, NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(169, NULL, NULL, 132, 'order_promotion', 'Christmas', -220, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(170, NULL, NULL, 133, 'order_promotion', 'Christmas', -220, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(171, NULL, NULL, 134, 'order_promotion', 'Christmas', -219, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(172, NULL, NULL, 135, 'order_promotion', 'Christmas', -219, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(173, NULL, NULL, 136, 'order_promotion', 'Christmas', -577, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(174, NULL, NULL, 137, 'order_promotion', 'Christmas', -514, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(175, NULL, NULL, 138, 'order_promotion', 'Christmas', -170, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(176, NULL, NULL, 139, 'order_promotion', 'Christmas', -170, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(177, NULL, NULL, 140, 'order_promotion', 'Christmas', -170, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(178, NULL, NULL, 141, 'order_promotion', 'Christmas', -170, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(179, NULL, NULL, 142, 'order_promotion', 'Christmas', -170, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(180, 17, NULL, NULL, 'shipping', 'DHL Express', 135, 0, 0, NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(181, NULL, NULL, 143, 'order_promotion', 'Christmas', -669, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(182, NULL, NULL, 144, 'order_promotion', 'Christmas', -256, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(183, NULL, NULL, 145, 'order_promotion', 'Christmas', -256, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(184, NULL, NULL, 146, 'order_promotion', 'Christmas', -255, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(185, NULL, NULL, 147, 'order_promotion', 'Christmas', -602, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(186, 18, NULL, NULL, 'shipping', 'UPS', 5877, 0, 0, NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(187, NULL, NULL, 148, 'order_promotion', 'Christmas', -635, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(188, NULL, NULL, 149, 'order_promotion', 'Christmas', -642, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(189, NULL, NULL, 150, 'order_promotion', 'Christmas', -642, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(190, NULL, NULL, 151, 'order_promotion', 'Christmas', -642, 0, 0, 'christmas', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(191, 19, NULL, NULL, 'shipping', 'FedEx', 2015, 0, 0, NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(192, NULL, NULL, 152, 'order_promotion', 'Christmas', -395, 0, 0, 'christmas', '2019-06-02 14:48:33', '2019-06-02 14:48:33'),
(193, NULL, NULL, 153, 'order_promotion', 'Christmas', -395, 0, 0, 'christmas', '2019-06-02 14:48:33', '2019-06-02 14:48:33'),
(194, NULL, NULL, 154, 'order_promotion', 'Christmas', -395, 0, 0, 'christmas', '2019-06-02 14:48:33', '2019-06-02 14:48:33'),
(195, NULL, NULL, 155, 'order_promotion', 'Christmas', -395, 0, 0, 'christmas', '2019-06-02 14:48:33', '2019-06-02 14:48:33'),
(196, NULL, NULL, 156, 'order_promotion', 'Christmas', -528, 0, 0, 'christmas', '2019-06-02 14:48:33', '2019-06-02 14:48:33'),
(197, NULL, NULL, 157, 'order_promotion', 'Christmas', -527, 0, 0, 'christmas', '2019-06-02 14:48:33', '2019-06-02 14:48:33'),
(198, NULL, NULL, 158, 'order_promotion', 'Christmas', -527, 0, 0, 'christmas', '2019-06-02 14:48:33', '2019-06-02 14:48:33'),
(199, NULL, NULL, 159, 'order_promotion', 'Christmas', -665, 0, 0, 'christmas', '2019-06-02 14:48:33', '2019-06-02 14:48:33'),
(200, NULL, NULL, 160, 'order_promotion', 'Christmas', -917, 0, 0, 'christmas', '2019-06-02 14:48:33', '2019-06-02 14:48:33'),
(201, NULL, NULL, 161, 'order_promotion', 'Christmas', -742, 0, 0, 'christmas', '2019-06-02 14:48:33', '2019-06-02 14:48:33'),
(202, NULL, NULL, 162, 'order_promotion', 'Christmas', -742, 0, 0, 'christmas', '2019-06-02 14:48:33', '2019-06-02 14:48:33'),
(203, 20, NULL, NULL, 'shipping', 'UPS', 5877, 0, 0, NULL, '2019-06-02 14:48:33', '2019-06-02 14:48:33');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_admin_api_access_token`
--

DROP TABLE IF EXISTS `sylius_admin_api_access_token`;
CREATE TABLE IF NOT EXISTS `sylius_admin_api_access_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2AA4915D5F37A13B` (`token`),
  KEY `IDX_2AA4915D19EB6921` (`client_id`),
  KEY `IDX_2AA4915DA76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_admin_api_access_token`
--

INSERT INTO `sylius_admin_api_access_token` (`id`, `client_id`, `user_id`, `token`, `expires_at`, `scope`) VALUES
(1, 1, 2, 'SampleToken', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_admin_api_auth_code`
--

DROP TABLE IF EXISTS `sylius_admin_api_auth_code`;
CREATE TABLE IF NOT EXISTS `sylius_admin_api_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E366D8485F37A13B` (`token`),
  KEY `IDX_E366D84819EB6921` (`client_id`),
  KEY `IDX_E366D848A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_admin_api_client`
--

DROP TABLE IF EXISTS `sylius_admin_api_client`;
CREATE TABLE IF NOT EXISTS `sylius_admin_api_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `random_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_grant_types` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_admin_api_client`
--

INSERT INTO `sylius_admin_api_client` (`id`, `random_id`, `redirect_uris`, `secret`, `allowed_grant_types`) VALUES
(1, 'demo_client', 'a:0:{}', 'secret_demo_client', 'a:1:{i:0;s:8:\"password\";}');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_admin_api_refresh_token`
--

DROP TABLE IF EXISTS `sylius_admin_api_refresh_token`;
CREATE TABLE IF NOT EXISTS `sylius_admin_api_refresh_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9160E3FA5F37A13B` (`token`),
  KEY `IDX_9160E3FA19EB6921` (`client_id`),
  KEY `IDX_9160E3FAA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_admin_user`
--

DROP TABLE IF EXISTS `sylius_admin_user`;
CREATE TABLE IF NOT EXISTS `sylius_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `encoder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_admin_user`
--

INSERT INTO `sylius_admin_user` (`id`, `username`, `username_canonical`, `enabled`, `salt`, `password`, `last_login`, `password_reset_token`, `password_requested_at`, `email_verification_token`, `verified_at`, `locked`, `expires_at`, `credentials_expire_at`, `roles`, `email`, `email_canonical`, `created_at`, `updated_at`, `first_name`, `last_name`, `locale_code`, `encoder_name`) VALUES
(1, 'sylius', 'sylius', 1, 'org2xuayna8kwgw888c0g4co40kgk8o', '$argon2i$v=19$m=1024,t=2,p=2$a0VYbVYub2NsY3JLazQxVw$j24We9ud+QNxPILMZQQWeqzk9p4pPTxTxQxm+lca8Qs', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}', 'sylius@example.com', 'sylius@example.com', '2019-06-02 14:48:23', '2019-06-02 14:48:23', 'John', 'Doe', 'en_US', 'argon2i'),
(2, 'api', 'api', 1, 'kwfr5kmg4kggko8sogwgcgo08g0c08o', '$argon2i$v=19$m=1024,t=2,p=2$MlQ0Z0dmZ3kzdVBULmVUTw$D2GuJCE3DDTd8QvlQ5AXBM9t/N5H5q7g0/MwhFEAFWA', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:2:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";i:1;s:15:\"ROLE_API_ACCESS\";}', 'api@example.com', 'api@example.com', '2019-06-02 14:48:23', '2019-06-02 14:48:23', 'Luke', 'Brushwood', 'en_US', 'argon2i'),
(3, 'packie', 'packie', 1, 'hyyp2tzy8jcw4880kckkso044k4csoo', '$argon2i$v=19$m=1024,t=2,p=2$RGYwZ1c5Q2JBOFdjaWxTcA$ts9QZ02zaSMBkHcRuzaWSTE1ORgYOQ+zHbOfQBJWofM', '2019-06-02 15:01:56', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}', 'packie@hotmail.fr', 'packie@hotmail.fr', '2019-06-02 14:48:57', '2019-06-02 15:01:56', NULL, NULL, 'fr_FR', 'argon2i');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_channel`
--

DROP TABLE IF EXISTS `sylius_channel`;
CREATE TABLE IF NOT EXISTS `sylius_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_locale_id` int(11) NOT NULL,
  `base_currency_id` int(11) NOT NULL,
  `default_tax_zone_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `theme_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_calculation_strategy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skipping_shipping_step_allowed` tinyint(1) NOT NULL,
  `skipping_payment_step_allowed` tinyint(1) NOT NULL,
  `account_verification_required` tinyint(1) NOT NULL,
  `shop_billing_data_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_16C8119E77153098` (`code`),
  UNIQUE KEY `UNIQ_16C8119EB5282EDF` (`shop_billing_data_id`),
  KEY `IDX_16C8119E743BF776` (`default_locale_id`),
  KEY `IDX_16C8119E3101778E` (`base_currency_id`),
  KEY `IDX_16C8119EA978C17` (`default_tax_zone_id`),
  KEY `IDX_16C8119EE551C011` (`hostname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_channel`
--

INSERT INTO `sylius_channel` (`id`, `default_locale_id`, `base_currency_id`, `default_tax_zone_id`, `code`, `name`, `color`, `description`, `enabled`, `hostname`, `created_at`, `updated_at`, `theme_name`, `tax_calculation_strategy`, `contact_email`, `skipping_shipping_step_allowed`, `skipping_payment_step_allowed`, `account_verification_required`, `shop_billing_data_id`) VALUES
(1, 2, 2, 1, 'US_WEB', 'US Web Store', 'LightCoral', NULL, 1, 'localhost', '2019-06-02 14:48:21', '2019-06-02 14:48:57', NULL, 'order_items_based', NULL, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_channel_currencies`
--

DROP TABLE IF EXISTS `sylius_channel_currencies`;
CREATE TABLE IF NOT EXISTS `sylius_channel_currencies` (
  `channel_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`currency_id`),
  KEY `IDX_AE491F9372F5A1AA` (`channel_id`),
  KEY `IDX_AE491F9338248176` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_channel_currencies`
--

INSERT INTO `sylius_channel_currencies` (`channel_id`, `currency_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_channel_locales`
--

DROP TABLE IF EXISTS `sylius_channel_locales`;
CREATE TABLE IF NOT EXISTS `sylius_channel_locales` (
  `channel_id` int(11) NOT NULL,
  `locale_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`locale_id`),
  KEY `IDX_786B7A8472F5A1AA` (`channel_id`),
  KEY `IDX_786B7A84E559DFD1` (`locale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_channel_locales`
--

INSERT INTO `sylius_channel_locales` (`channel_id`, `locale_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_channel_pricing`
--

DROP TABLE IF EXISTS `sylius_channel_pricing`;
CREATE TABLE IF NOT EXISTS `sylius_channel_pricing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_variant_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `original_price` int(11) DEFAULT NULL,
  `channel_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_variant_channel_idx` (`product_variant_id`,`channel_code`),
  KEY `IDX_7801820CA80EF684` (`product_variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_channel_pricing`
--

INSERT INTO `sylius_channel_pricing` (`id`, `product_variant_id`, `price`, `original_price`, `channel_code`) VALUES
(1, 1, 940, NULL, 'US_WEB'),
(2, 2, 549, NULL, 'US_WEB'),
(3, 3, 715, NULL, 'US_WEB'),
(4, 4, 977, NULL, 'US_WEB'),
(5, 5, 203, NULL, 'US_WEB'),
(6, 6, 198, NULL, 'US_WEB'),
(7, 7, 336, NULL, 'US_WEB'),
(8, 8, 103, NULL, 'US_WEB'),
(9, 9, 965, NULL, 'US_WEB'),
(10, 10, 204, NULL, 'US_WEB'),
(11, 11, 467, NULL, 'US_WEB'),
(12, 12, 607, NULL, 'US_WEB'),
(13, 13, 461, NULL, 'US_WEB'),
(14, 14, 875, NULL, 'US_WEB'),
(15, 15, 90, NULL, 'US_WEB'),
(16, 16, 997, NULL, 'US_WEB'),
(17, 17, 548, NULL, 'US_WEB'),
(18, 18, 522, NULL, 'US_WEB'),
(19, 19, 237, NULL, 'US_WEB'),
(20, 20, 315, NULL, 'US_WEB'),
(21, 21, 416, NULL, 'US_WEB'),
(22, 22, 576, NULL, 'US_WEB'),
(23, 23, 115, NULL, 'US_WEB'),
(24, 24, 102, NULL, 'US_WEB'),
(25, 25, 607, NULL, 'US_WEB'),
(26, 26, 777, NULL, 'US_WEB'),
(27, 27, 590, NULL, 'US_WEB'),
(28, 28, 282, NULL, 'US_WEB'),
(29, 29, 668, NULL, 'US_WEB'),
(30, 30, 498, NULL, 'US_WEB'),
(31, 31, 830, NULL, 'US_WEB'),
(32, 32, 948, NULL, 'US_WEB'),
(33, 33, 756, NULL, 'US_WEB'),
(34, 34, 733, NULL, 'US_WEB'),
(35, 35, 968, NULL, 'US_WEB'),
(36, 36, 221, NULL, 'US_WEB'),
(37, 37, 400, NULL, 'US_WEB'),
(38, 38, 814, NULL, 'US_WEB'),
(39, 39, 503, NULL, 'US_WEB'),
(40, 40, 98, NULL, 'US_WEB'),
(41, 41, 144, NULL, 'US_WEB'),
(42, 42, 722, NULL, 'US_WEB'),
(43, 43, 34, NULL, 'US_WEB'),
(44, 44, 34, NULL, 'US_WEB'),
(45, 45, 282, NULL, 'US_WEB'),
(46, 46, 51, NULL, 'US_WEB'),
(47, 47, 84, NULL, 'US_WEB'),
(48, 48, 718, NULL, 'US_WEB'),
(49, 49, 758, NULL, 'US_WEB'),
(50, 50, 44, NULL, 'US_WEB'),
(51, 51, 37, NULL, 'US_WEB'),
(52, 52, 179, NULL, 'US_WEB'),
(53, 53, 241, NULL, 'US_WEB'),
(54, 54, 354, NULL, 'US_WEB'),
(55, 55, 479, NULL, 'US_WEB'),
(56, 56, 929, NULL, 'US_WEB'),
(57, 57, 281, NULL, 'US_WEB'),
(58, 58, 214, NULL, 'US_WEB'),
(59, 59, 73, NULL, 'US_WEB'),
(60, 60, 525, NULL, 'US_WEB'),
(61, 61, 798, NULL, 'US_WEB'),
(62, 62, 775, NULL, 'US_WEB'),
(63, 63, 522, NULL, 'US_WEB'),
(64, 64, 397, NULL, 'US_WEB'),
(65, 65, 178, NULL, 'US_WEB'),
(66, 66, 673, NULL, 'US_WEB'),
(67, 67, 315, NULL, 'US_WEB'),
(68, 68, 579, NULL, 'US_WEB'),
(69, 69, 122, NULL, 'US_WEB'),
(70, 70, 269, NULL, 'US_WEB'),
(71, 71, 879, NULL, 'US_WEB'),
(72, 72, 2, NULL, 'US_WEB'),
(73, 73, 794, NULL, 'US_WEB'),
(74, 74, 450, NULL, 'US_WEB'),
(75, 75, 995, NULL, 'US_WEB'),
(76, 76, 486, NULL, 'US_WEB'),
(77, 77, 220, NULL, 'US_WEB'),
(78, 78, 547, NULL, 'US_WEB'),
(79, 79, 429, NULL, 'US_WEB'),
(80, 80, 984, NULL, 'US_WEB'),
(81, 81, 729, NULL, 'US_WEB'),
(82, 82, 723, NULL, 'US_WEB'),
(83, 83, 700, NULL, 'US_WEB'),
(84, 84, 241, NULL, 'US_WEB'),
(85, 85, 237, NULL, 'US_WEB'),
(86, 86, 157, NULL, 'US_WEB'),
(87, 87, 173, NULL, 'US_WEB'),
(88, 88, 556, NULL, 'US_WEB'),
(89, 89, 445, NULL, 'US_WEB'),
(90, 90, 809, NULL, 'US_WEB'),
(91, 91, 667, NULL, 'US_WEB'),
(92, 92, 819, NULL, 'US_WEB'),
(93, 93, 78, NULL, 'US_WEB'),
(94, 94, 757, NULL, 'US_WEB'),
(95, 95, 953, NULL, 'US_WEB'),
(96, 96, 620, NULL, 'US_WEB'),
(97, 97, 929, NULL, 'US_WEB'),
(98, 98, 502, NULL, 'US_WEB'),
(99, 99, 695, NULL, 'US_WEB'),
(100, 100, 851, NULL, 'US_WEB'),
(101, 101, 127, NULL, 'US_WEB'),
(102, 102, 704, NULL, 'US_WEB'),
(103, 103, 328, NULL, 'US_WEB'),
(104, 104, 781, NULL, 'US_WEB'),
(105, 105, 145, NULL, 'US_WEB'),
(106, 106, 68, NULL, 'US_WEB'),
(107, 107, 928, NULL, 'US_WEB'),
(108, 108, 622, NULL, 'US_WEB'),
(109, 109, 54, NULL, 'US_WEB'),
(110, 110, 732, NULL, 'US_WEB'),
(111, 111, 487, NULL, 'US_WEB'),
(112, 112, 98, NULL, 'US_WEB'),
(113, 113, 366, NULL, 'US_WEB'),
(114, 114, 721, NULL, 'US_WEB'),
(115, 115, 955, NULL, 'US_WEB'),
(116, 116, 313, NULL, 'US_WEB'),
(117, 117, 552, NULL, 'US_WEB'),
(118, 118, 594, NULL, 'US_WEB'),
(119, 119, 940, NULL, 'US_WEB'),
(120, 120, 184, NULL, 'US_WEB'),
(121, 121, 259, NULL, 'US_WEB'),
(122, 122, 487, NULL, 'US_WEB'),
(123, 123, 676, NULL, 'US_WEB'),
(124, 124, 615, NULL, 'US_WEB'),
(125, 125, 459, NULL, 'US_WEB'),
(126, 126, 693, NULL, 'US_WEB'),
(127, 127, 383, NULL, 'US_WEB'),
(128, 128, 60, NULL, 'US_WEB'),
(129, 129, 184, NULL, 'US_WEB'),
(130, 130, 623, NULL, 'US_WEB'),
(131, 131, 991, NULL, 'US_WEB'),
(132, 132, 151, NULL, 'US_WEB'),
(133, 133, 24, NULL, 'US_WEB'),
(134, 134, 437, NULL, 'US_WEB'),
(135, 135, 54, NULL, 'US_WEB'),
(136, 136, 134, NULL, 'US_WEB'),
(137, 137, 698, NULL, 'US_WEB'),
(138, 138, 698, NULL, 'US_WEB'),
(139, 139, 734, NULL, 'US_WEB'),
(140, 140, 482, NULL, 'US_WEB'),
(141, 141, 145, NULL, 'US_WEB'),
(142, 142, 815, NULL, 'US_WEB'),
(143, 143, 632, NULL, 'US_WEB'),
(144, 144, 236, NULL, 'US_WEB'),
(145, 145, 4, NULL, 'US_WEB'),
(146, 146, 948, NULL, 'US_WEB'),
(147, 147, 102, NULL, 'US_WEB'),
(148, 148, 401, NULL, 'US_WEB'),
(149, 149, 844, NULL, 'US_WEB'),
(150, 150, 714, NULL, 'US_WEB'),
(151, 151, 91, NULL, 'US_WEB'),
(152, 152, 174, NULL, 'US_WEB'),
(153, 153, 634, NULL, 'US_WEB'),
(154, 154, 509, NULL, 'US_WEB'),
(155, 155, 176, NULL, 'US_WEB'),
(156, 156, 539, NULL, 'US_WEB'),
(157, 157, 522, NULL, 'US_WEB'),
(158, 158, 22, NULL, 'US_WEB'),
(159, 159, 497, NULL, 'US_WEB'),
(160, 160, 129, NULL, 'US_WEB'),
(161, 161, 993, NULL, 'US_WEB'),
(162, 162, 212, NULL, 'US_WEB'),
(163, 163, 118, NULL, 'US_WEB'),
(164, 164, 648, NULL, 'US_WEB'),
(165, 165, 780, NULL, 'US_WEB'),
(166, 166, 954, NULL, 'US_WEB'),
(167, 167, 140, NULL, 'US_WEB'),
(168, 168, 437, NULL, 'US_WEB'),
(169, 169, 913, NULL, 'US_WEB'),
(170, 170, 474, NULL, 'US_WEB'),
(171, 171, 502, NULL, 'US_WEB'),
(172, 172, 164, NULL, 'US_WEB'),
(173, 173, 338, NULL, 'US_WEB'),
(174, 174, 101, NULL, 'US_WEB'),
(175, 175, 835, NULL, 'US_WEB'),
(176, 176, 137, NULL, 'US_WEB'),
(177, 177, 872, NULL, 'US_WEB'),
(178, 178, 706, NULL, 'US_WEB'),
(179, 179, 611, NULL, 'US_WEB'),
(180, 180, 843, NULL, 'US_WEB'),
(181, 181, 234, NULL, 'US_WEB'),
(182, 182, 571, NULL, 'US_WEB'),
(183, 183, 114, NULL, 'US_WEB'),
(184, 184, 871, NULL, 'US_WEB'),
(185, 185, 210, NULL, 'US_WEB'),
(186, 186, 495, NULL, 'US_WEB'),
(187, 187, 826, NULL, 'US_WEB'),
(188, 188, 279, NULL, 'US_WEB'),
(189, 189, 400, NULL, 'US_WEB'),
(190, 190, 159, NULL, 'US_WEB'),
(191, 191, 464, NULL, 'US_WEB'),
(192, 192, 102, NULL, 'US_WEB'),
(193, 193, 702, NULL, 'US_WEB'),
(194, 194, 886, NULL, 'US_WEB'),
(195, 195, 473, NULL, 'US_WEB'),
(196, 196, 354, NULL, 'US_WEB'),
(197, 197, 322, NULL, 'US_WEB'),
(198, 198, 895, NULL, 'US_WEB'),
(199, 199, 865, NULL, 'US_WEB'),
(200, 200, 963, NULL, 'US_WEB'),
(201, 201, 73, NULL, 'US_WEB'),
(202, 202, 703, NULL, 'US_WEB'),
(203, 203, 694, NULL, 'US_WEB'),
(204, 204, 355, NULL, 'US_WEB'),
(205, 205, 333, NULL, 'US_WEB'),
(206, 206, 216, NULL, 'US_WEB'),
(207, 207, 77, NULL, 'US_WEB'),
(208, 208, 555, NULL, 'US_WEB'),
(209, 209, 527, NULL, 'US_WEB'),
(210, 210, 40, NULL, 'US_WEB'),
(211, 211, 853, NULL, 'US_WEB'),
(212, 212, 585, NULL, 'US_WEB'),
(213, 213, 655, NULL, 'US_WEB'),
(214, 214, 537, NULL, 'US_WEB'),
(215, 215, 170, NULL, 'US_WEB'),
(216, 216, 594, NULL, 'US_WEB'),
(217, 217, 815, NULL, 'US_WEB'),
(218, 218, 68, NULL, 'US_WEB'),
(219, 219, 231, NULL, 'US_WEB'),
(220, 220, 776, NULL, 'US_WEB'),
(221, 221, 800, NULL, 'US_WEB'),
(222, 222, 81, NULL, 'US_WEB'),
(223, 223, 16, NULL, 'US_WEB'),
(224, 224, 180, NULL, 'US_WEB'),
(225, 225, 150, NULL, 'US_WEB'),
(226, 226, 246, NULL, 'US_WEB'),
(227, 227, 664, NULL, 'US_WEB'),
(228, 228, 241, NULL, 'US_WEB'),
(229, 229, 627, NULL, 'US_WEB'),
(230, 230, 830, NULL, 'US_WEB'),
(231, 231, 752, NULL, 'US_WEB'),
(232, 232, 563, NULL, 'US_WEB'),
(233, 233, 44, NULL, 'US_WEB'),
(234, 234, 161, NULL, 'US_WEB'),
(235, 235, 666, NULL, 'US_WEB'),
(236, 236, 180, NULL, 'US_WEB'),
(237, 237, 490, NULL, 'US_WEB'),
(238, 238, 945, NULL, 'US_WEB'),
(239, 239, 916, NULL, 'US_WEB'),
(240, 240, 187, NULL, 'US_WEB'),
(241, 241, 13, NULL, 'US_WEB'),
(242, 242, 843, NULL, 'US_WEB'),
(243, 243, 905, NULL, 'US_WEB'),
(244, 244, 802, NULL, 'US_WEB'),
(245, 245, 373, NULL, 'US_WEB'),
(246, 246, 838, NULL, 'US_WEB'),
(247, 247, 655, NULL, 'US_WEB'),
(248, 248, 45, NULL, 'US_WEB'),
(249, 249, 935, NULL, 'US_WEB'),
(250, 250, 312, NULL, 'US_WEB'),
(251, 251, 493, NULL, 'US_WEB'),
(252, 252, 867, NULL, 'US_WEB'),
(253, 253, 387, NULL, 'US_WEB'),
(254, 254, 815, NULL, 'US_WEB'),
(255, 255, 683, NULL, 'US_WEB'),
(256, 256, 135, NULL, 'US_WEB'),
(257, 257, 937, NULL, 'US_WEB'),
(258, 258, 751, NULL, 'US_WEB'),
(259, 259, 858, NULL, 'US_WEB'),
(260, 260, 85, NULL, 'US_WEB'),
(261, 261, 508, NULL, 'US_WEB'),
(262, 262, 915, NULL, 'US_WEB'),
(263, 263, 703, NULL, 'US_WEB'),
(264, 264, 379, NULL, 'US_WEB'),
(265, 265, 514, NULL, 'US_WEB'),
(266, 266, 866, NULL, 'US_WEB'),
(267, 267, 270, NULL, 'US_WEB'),
(268, 268, 118, NULL, 'US_WEB'),
(269, 269, 118, NULL, 'US_WEB'),
(270, 270, 370, NULL, 'US_WEB'),
(271, 271, 55, NULL, 'US_WEB'),
(272, 272, 396, NULL, 'US_WEB'),
(273, 273, 498, NULL, 'US_WEB'),
(274, 274, 644, NULL, 'US_WEB'),
(275, 275, 162, NULL, 'US_WEB'),
(276, 276, 349, NULL, 'US_WEB'),
(277, 277, 530, NULL, 'US_WEB'),
(278, 278, 798, NULL, 'US_WEB'),
(279, 279, 904, NULL, 'US_WEB'),
(280, 280, 593, NULL, 'US_WEB'),
(281, 281, 549, NULL, 'US_WEB'),
(282, 282, 769, NULL, 'US_WEB'),
(283, 283, 814, NULL, 'US_WEB'),
(284, 284, 543, NULL, 'US_WEB'),
(285, 285, 544, NULL, 'US_WEB'),
(286, 286, 34, NULL, 'US_WEB'),
(287, 287, 305, NULL, 'US_WEB'),
(288, 288, 913, NULL, 'US_WEB'),
(289, 289, 541, NULL, 'US_WEB'),
(290, 290, 999, NULL, 'US_WEB'),
(291, 291, 213, NULL, 'US_WEB'),
(292, 292, 5, NULL, 'US_WEB'),
(293, 293, 978, NULL, 'US_WEB'),
(294, 294, 125, NULL, 'US_WEB'),
(295, 295, 846, NULL, 'US_WEB'),
(296, 296, 676, NULL, 'US_WEB'),
(297, 297, 893, NULL, 'US_WEB'),
(298, 298, 487, NULL, 'US_WEB'),
(299, 299, 591, NULL, 'US_WEB'),
(300, 300, 114, NULL, 'US_WEB'),
(301, 301, 630, NULL, 'US_WEB'),
(302, 302, 3, NULL, 'US_WEB'),
(303, 303, 235, NULL, 'US_WEB'),
(304, 304, 827, NULL, 'US_WEB'),
(305, 305, 983, NULL, 'US_WEB'),
(306, 306, 240, NULL, 'US_WEB'),
(307, 307, 708, NULL, 'US_WEB'),
(308, 308, 389, NULL, 'US_WEB'),
(309, 309, 867, NULL, 'US_WEB'),
(310, 310, 984, NULL, 'US_WEB'),
(311, 311, 763, NULL, 'US_WEB'),
(312, 312, 881, NULL, 'US_WEB'),
(313, 313, 476, NULL, 'US_WEB'),
(314, 314, 275, NULL, 'US_WEB'),
(315, 315, 464, NULL, 'US_WEB'),
(316, 316, 446, NULL, 'US_WEB'),
(317, 317, 359, NULL, 'US_WEB'),
(318, 318, 822, NULL, 'US_WEB'),
(319, 319, 117, NULL, 'US_WEB'),
(320, 320, 129, NULL, 'US_WEB'),
(321, 321, 786, NULL, 'US_WEB'),
(322, 322, 990, NULL, 'US_WEB'),
(323, 323, 159, NULL, 'US_WEB'),
(324, 324, 660, NULL, 'US_WEB'),
(325, 325, 115, NULL, 'US_WEB'),
(326, 326, 473, NULL, 'US_WEB'),
(327, 327, 901, NULL, 'US_WEB'),
(328, 328, 0, NULL, 'US_WEB'),
(329, 329, 615, NULL, 'US_WEB'),
(330, 330, 194, NULL, 'US_WEB');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_country`
--

DROP TABLE IF EXISTS `sylius_country`;
CREATE TABLE IF NOT EXISTS `sylius_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E74256BF77153098` (`code`),
  KEY `IDX_E74256BF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_country`
--

INSERT INTO `sylius_country` (`id`, `code`, `enabled`) VALUES
(1, 'US', 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_currency`
--

DROP TABLE IF EXISTS `sylius_currency`;
CREATE TABLE IF NOT EXISTS `sylius_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_96EDD3D077153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_currency`
--

INSERT INTO `sylius_currency` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'USD', '2019-06-02 14:48:21', '2019-06-02 14:48:21'),
(2, 'EUR', '2019-06-02 14:48:44', '2019-06-02 14:48:44');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_customer`
--

DROP TABLE IF EXISTS `sylius_customer`;
CREATE TABLE IF NOT EXISTS `sylius_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) DEFAULT NULL,
  `default_address_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'u',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribed_to_newsletter` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7E82D5E6E7927C74` (`email`),
  UNIQUE KEY `UNIQ_7E82D5E6A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_7E82D5E6BD94FB16` (`default_address_id`),
  KEY `IDX_7E82D5E6D2919A68` (`customer_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_customer`
--

INSERT INTO `sylius_customer` (`id`, `customer_group_id`, `default_address_id`, `email`, `email_canonical`, `first_name`, `last_name`, `birthday`, `gender`, `created_at`, `updated_at`, `phone_number`, `subscribed_to_newsletter`) VALUES
(1, 2, NULL, 'shop@example.com', 'shop@example.com', 'John', 'Doe', '1980-01-15 00:41:28', 'u', '2019-06-02 14:48:22', '2019-06-02 14:48:22', '1-395-244-8591', 0),
(2, 2, NULL, 'laurine.marvin@gmail.com', 'laurine.marvin@gmail.com', 'Berry', 'Haag', '1922-10-08 18:56:53', 'u', '2019-06-02 14:48:22', '2019-06-02 14:48:22', '376-992-5221', 0),
(3, 2, NULL, 'larry98@yahoo.com', 'larry98@yahoo.com', 'Jaleel', 'Wisozk', '1972-12-24 09:54:31', 'u', '2019-06-02 14:48:22', '2019-06-02 14:48:22', '+1.662.474.5383', 0),
(4, 2, NULL, 'rebekah21@fay.com', 'rebekah21@fay.com', 'Cameron', 'Stiedemann', '1955-01-22 19:41:30', 'u', '2019-06-02 14:48:22', '2019-06-02 14:48:22', '1-280-835-7554', 0),
(5, 1, NULL, 'brooks.romaguera@gmail.com', 'brooks.romaguera@gmail.com', 'Cary', 'Cartwright', '1964-08-31 05:26:23', 'u', '2019-06-02 14:48:22', '2019-06-02 14:48:22', '270.615.8056 x370', 0),
(6, 1, NULL, 'rrosenbaum@hotmail.com', 'rrosenbaum@hotmail.com', 'Zoey', 'Konopelski', '1956-03-04 04:11:30', 'u', '2019-06-02 14:48:22', '2019-06-02 14:48:22', '+1-341-253-8035', 0),
(7, 2, NULL, 'savanna71@quigley.com', 'savanna71@quigley.com', 'Hadley', 'Langworth', '1995-04-25 03:30:28', 'u', '2019-06-02 14:48:22', '2019-06-02 14:48:22', '756-710-5903', 0),
(8, 2, NULL, 'maxine36@gmail.com', 'maxine36@gmail.com', 'Laverna', 'Tromp', '1954-05-31 02:36:27', 'u', '2019-06-02 14:48:22', '2019-06-02 14:48:22', '331.347.6872 x04156', 0),
(9, 2, NULL, 'helmer.willms@torphy.biz', 'helmer.willms@torphy.biz', 'Caterina', 'Hane', '1978-12-22 01:52:32', 'u', '2019-06-02 14:48:22', '2019-06-02 14:48:22', '1-305-551-1359 x6879', 0),
(10, 2, NULL, 'harber.abner@yahoo.com', 'harber.abner@yahoo.com', 'Audrey', 'Bergnaum', '1923-11-09 06:21:17', 'u', '2019-06-02 14:48:22', '2019-06-02 14:48:22', '1-706-205-9282 x258', 0),
(11, 1, NULL, 'kaylah.spinka@feeney.net', 'kaylah.spinka@feeney.net', 'Providenci', 'Kozey', '1956-02-27 14:55:54', 'u', '2019-06-02 14:48:22', '2019-06-02 14:48:22', '260.690.3405', 0),
(12, 1, NULL, 'ghills@gmail.com', 'ghills@gmail.com', 'Wellington', 'Hamill', '1939-02-08 07:19:31', 'u', '2019-06-02 14:48:22', '2019-06-02 14:48:22', '1-312-590-1694 x500', 0),
(13, 1, NULL, 'hstoltenberg@hotmail.com', 'hstoltenberg@hotmail.com', 'Darrin', 'Runolfsson', '1935-10-02 21:37:08', 'u', '2019-06-02 14:48:22', '2019-06-02 14:48:22', '1-767-886-9109 x628', 0),
(14, 1, NULL, 'julianne33@gmail.com', 'julianne33@gmail.com', 'Lottie', 'O\'Keefe', '1957-09-10 17:39:28', 'u', '2019-06-02 14:48:22', '2019-06-02 14:48:22', '1-554-280-1878', 0),
(15, 2, NULL, 'marie61@keebler.com', 'marie61@keebler.com', 'Edna', 'Bednar', '1972-08-16 21:39:31', 'u', '2019-06-02 14:48:22', '2019-06-02 14:48:22', '1-645-774-6859', 0),
(16, 1, NULL, 'rau.lemuel@jakubowski.com', 'rau.lemuel@jakubowski.com', 'Nella', 'Rice', '1981-06-04 08:20:24', 'u', '2019-06-02 14:48:22', '2019-06-02 14:48:22', '382-869-4065', 0),
(17, 2, NULL, 'stoltenberg.yvette@little.com', 'stoltenberg.yvette@little.com', 'Ransom', 'Strosin', '1960-10-04 10:59:23', 'u', '2019-06-02 14:48:22', '2019-06-02 14:48:22', '714.476.9562 x357', 0),
(18, 2, NULL, 'schneider.jedediah@runolfsson.net', 'schneider.jedediah@runolfsson.net', 'Deangelo', 'Powlowski', '1923-04-21 21:49:32', 'u', '2019-06-02 14:48:22', '2019-06-02 14:48:22', '+1-510-322-2403', 0),
(19, 1, NULL, 'lrosenbaum@ledner.com', 'lrosenbaum@ledner.com', 'Aisha', 'Funk', '1979-03-19 04:45:14', 'u', '2019-06-02 14:48:22', '2019-06-02 14:48:23', '640.545.7612 x64720', 0),
(20, 1, NULL, 'elebsack@grimes.org', 'elebsack@grimes.org', 'Gisselle', 'White', '1999-12-05 19:38:29', 'u', '2019-06-02 14:48:23', '2019-06-02 14:48:23', '(991) 883-9582 x889', 0),
(21, 1, NULL, 'strosin.camilla@ferry.com', 'strosin.camilla@ferry.com', 'Aileen', 'Kerluke', '1994-12-20 21:26:08', 'u', '2019-06-02 14:48:23', '2019-06-02 14:48:23', '+1-826-307-4330', 0);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_customer_group`
--

DROP TABLE IF EXISTS `sylius_customer_group`;
CREATE TABLE IF NOT EXISTS `sylius_customer_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7FCF9B0577153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_customer_group`
--

INSERT INTO `sylius_customer_group` (`id`, `code`, `name`) VALUES
(1, 'retail', 'Retail'),
(2, 'wholesale', 'Wholesale');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_exchange_rate`
--

DROP TABLE IF EXISTS `sylius_exchange_rate`;
CREATE TABLE IF NOT EXISTS `sylius_exchange_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_currency` int(11) NOT NULL,
  `target_currency` int(11) NOT NULL,
  `ratio` decimal(10,5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5F52B852A76BEEDB3FD5856` (`source_currency`,`target_currency`),
  KEY `IDX_5F52B852A76BEED` (`source_currency`),
  KEY `IDX_5F52B85B3FD5856` (`target_currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_gateway_config`
--

DROP TABLE IF EXISTS `sylius_gateway_config`;
CREATE TABLE IF NOT EXISTS `sylius_gateway_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `factory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_gateway_config`
--

INSERT INTO `sylius_gateway_config` (`id`, `gateway_name`, `factory_name`, `config`) VALUES
(1, 'Offline', 'offline', '[]'),
(2, 'Offline', 'offline', '[]');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_locale`
--

DROP TABLE IF EXISTS `sylius_locale`;
CREATE TABLE IF NOT EXISTS `sylius_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BA1286477153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_locale`
--

INSERT INTO `sylius_locale` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'en_US', '2019-06-02 14:48:21', '2019-06-02 14:48:21'),
(2, 'fr_FR', '2019-06-02 14:48:57', '2019-06-02 14:48:57');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_order`
--

DROP TABLE IF EXISTS `sylius_order`;
CREATE TABLE IF NOT EXISTS `sylius_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_address_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `promotion_coupon_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8_unicode_ci,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_completed_at` datetime DEFAULT NULL,
  `items_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6196A1F996901F54` (`number`),
  UNIQUE KEY `UNIQ_6196A1F94D4CFF2B` (`shipping_address_id`),
  UNIQUE KEY `UNIQ_6196A1F979D0C0E4` (`billing_address_id`),
  KEY `IDX_6196A1F972F5A1AA` (`channel_id`),
  KEY `IDX_6196A1F917B24436` (`promotion_coupon_id`),
  KEY `IDX_6196A1F99395C3F3` (`customer_id`),
  KEY `IDX_6196A1F9A393D2FB43625D9F` (`state`,`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_order`
--

INSERT INTO `sylius_order` (`id`, `shipping_address_id`, `billing_address_id`, `channel_id`, `promotion_coupon_id`, `customer_id`, `number`, `notes`, `state`, `checkout_completed_at`, `items_total`, `adjustments_total`, `total`, `created_at`, `updated_at`, `currency_code`, `locale_code`, `checkout_state`, `payment_state`, `shipping_state`, `token_value`, `customer_ip`) VALUES
(1, 2, 3, 1, NULL, 5, '000000001', 'In consequatur ipsum dolore.', 'new', '2019-06-02 14:48:32', 51, 135, 186, '2019-06-02 14:48:31', '2019-06-02 14:48:32', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'KP0aflU706', NULL),
(2, 5, 6, 1, NULL, 3, '000000002', 'Harum nesciunt eum architecto sunt hic odio tenetur.', 'new', '2019-06-02 14:48:32', 93, 5877, 5970, '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'PkPEwZGf3n', NULL),
(3, 8, 9, 1, NULL, 12, '000000003', NULL, 'new', '2019-06-02 14:48:32', 216, 2015, 2231, '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'kxJjqUrZq2', NULL),
(4, 11, 12, 1, NULL, 1, '000000004', NULL, 'new', '2019-06-02 14:48:32', 224, 2015, 2239, '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'XOiqVEIotF', NULL),
(5, 14, 15, 1, NULL, 11, '000000005', NULL, 'new', '2019-06-02 14:48:32', 365, 5877, 6242, '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '4kFgL~XiP~', NULL),
(6, 17, 18, 1, NULL, 13, '000000006', NULL, 'new', '2019-06-02 14:48:32', 103, 135, 238, '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'x_X-wI3Fmc', NULL),
(7, 20, 21, 1, NULL, 15, '000000007', NULL, 'new', '2019-06-02 14:48:32', 539, 135, 674, '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '5w3xhnbgBC', NULL),
(8, 23, 24, 1, NULL, 7, '000000008', NULL, 'new', '2019-06-02 14:48:32', 403, 5877, 6280, '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'HnbRDE2-q1', NULL),
(9, 26, 27, 1, NULL, 14, '000000009', NULL, 'new', '2019-06-02 14:48:32', 150, 135, 285, '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'q7epRmnM5w', NULL),
(10, 29, 30, 1, NULL, 18, '000000010', 'Accusantium sequi velit qui ullam officia.', 'new', '2019-06-02 14:48:32', 39, 135, 174, '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'KWMwvk0EyF', NULL),
(11, 32, 33, 1, NULL, 7, '000000011', 'Ut quia doloremque atque sunt esse quaerat placeat ullam.', 'new', '2019-06-02 14:48:32', 8, 2015, 2023, '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'W1nySuSu_j', NULL),
(12, 35, 36, 1, NULL, 11, '000000012', NULL, 'new', '2019-06-02 14:48:32', 291, 5877, 6168, '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'zK9ttoN3aV', NULL),
(13, 38, 39, 1, NULL, 9, '000000013', NULL, 'new', '2019-06-02 14:48:32', 399, 2015, 2414, '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'YD73T_LNU6', NULL),
(14, 41, 42, 1, NULL, 2, '000000014', NULL, 'new', '2019-06-02 14:48:32', 354, 5877, 6231, '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'Ss0FGebJAn', NULL),
(15, 44, 45, 1, NULL, 3, '000000015', NULL, 'new', '2019-06-02 14:48:32', 17, 5877, 5894, '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'PBoS-wcGNg', NULL),
(16, 47, 48, 1, NULL, 16, '000000016', NULL, 'new', '2019-06-02 14:48:32', 47, 5877, 5924, '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '8Sto6T12LZ', NULL),
(17, 50, 51, 1, NULL, 8, '000000017', NULL, 'new', '2019-06-02 14:48:32', 148, 135, 283, '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '6Lu3rNTkfM', NULL),
(18, 53, 54, 1, NULL, 3, '000000018', NULL, 'new', '2019-06-02 14:48:32', 107, 5877, 5984, '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'hVR3sqAhv7', NULL),
(19, 56, 57, 1, NULL, 17, '000000019', NULL, 'new', '2019-06-02 14:48:32', 135, 2015, 2150, '2019-06-02 14:48:32', '2019-06-02 14:48:32', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '78teulQaR5', NULL),
(20, 59, 60, 1, NULL, 11, '000000020', NULL, 'new', '2019-06-02 14:48:33', 328, 5877, 6205, '2019-06-02 14:48:32', '2019-06-02 14:48:33', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'qKVL-e_c3P', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_order_item`
--

DROP TABLE IF EXISTS `sylius_order_item`;
CREATE TABLE IF NOT EXISTS `sylius_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `units_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `is_immutable` tinyint(1) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_77B587ED8D9F6D38` (`order_id`),
  KEY `IDX_77B587ED3B69A9AF` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_order_item`
--

INSERT INTO `sylius_order_item` (`id`, `order_id`, `variant_id`, `quantity`, `unit_price`, `units_total`, `adjustments_total`, `total`, `is_immutable`, `product_name`, `variant_name`) VALUES
(1, 1, 52, 2, 179, 18, 0, 18, 0, 'Sticker \"dolor\"', 'at'),
(2, 1, 103, 2, 328, 33, 0, 33, 0, 'Book \"officiis\" by Zachariah Reichert', 'est'),
(3, 2, 97, 2, 929, 93, 0, 93, 0, 'Book \"magnam\" by Reid Cole', 'accusantium'),
(4, 3, 100, 3, 851, 128, 0, 128, 0, 'Book \"reiciendis\" by D\'angelo Graham V', 'aut'),
(5, 3, 50, 2, 44, 4, 0, 4, 0, 'Sticker \"ullam\"', 'illum'),
(6, 3, 27, 2, 590, 59, 0, 59, 0, 'Mug \"voluptate\"', 'sunt'),
(7, 3, 162, 2, 212, 21, 0, 21, 0, 'T-Shirt \"rerum\"', 'aliquam'),
(8, 3, 59, 1, 73, 4, 0, 4, 0, 'Sticker \"facere\"', 'velit'),
(9, 4, 98, 1, 502, 25, 0, 25, 0, 'Book \"adipisci\" by Ezekiel Murazik', 'vel'),
(10, 4, 75, 4, 995, 199, 0, 199, 0, 'Sticker \"dicta\"', 'aspernatur'),
(11, 5, 75, 1, 995, 50, 0, 50, 0, 'Sticker \"dicta\"', 'aspernatur'),
(12, 5, 70, 3, 269, 40, 0, 40, 0, 'Sticker \"impedit\"', 'iure'),
(13, 5, 222, 3, 81, 12, 0, 12, 0, 'T-Shirt \"facere\"', 'velit'),
(14, 5, 38, 4, 814, 163, 0, 163, 0, 'Mug \"quam\"', 'ea'),
(15, 5, 30, 4, 498, 100, 0, 100, 0, 'Mug \"ipsa\"', 'distinctio'),
(16, 6, 105, 4, 145, 29, 0, 29, 0, 'Book \"laboriosam\" by Prof. Markus Gislason', 'iure'),
(17, 6, 186, 3, 495, 74, 0, 74, 0, 'T-Shirt \"mollitia\"', 'id'),
(18, 7, 69, 5, 122, 28, 0, 28, 0, 'Sticker \"perspiciatis\"', 'voluptatem'),
(19, 7, 38, 5, 814, 186, 0, 186, 0, 'Mug \"quam\"', 'ea'),
(20, 7, 105, 2, 145, 13, 0, 13, 0, 'Book \"laboriosam\" by Prof. Markus Gislason', 'iure'),
(21, 7, 94, 5, 757, 173, 0, 173, 0, 'Book \"corrupti\" by Dena Hermiston', 'omnis'),
(22, 7, 94, 4, 757, 139, 0, 139, 0, 'Book \"corrupti\" by Dena Hermiston', 'omnis'),
(23, 8, 295, 3, 846, 128, 0, 128, 0, 'T-Shirt \"eaque\"', 'non'),
(24, 8, 100, 4, 851, 170, 0, 170, 0, 'Book \"reiciendis\" by D\'angelo Graham V', 'aut'),
(25, 8, 84, 1, 241, 12, 0, 12, 0, 'Sticker \"quos\"', 'cupiditate'),
(26, 8, 253, 4, 387, 77, 0, 77, 0, 'T-Shirt \"porro\"', 'commodi'),
(27, 8, 222, 4, 81, 16, 0, 16, 0, 'T-Shirt \"facere\"', 'velit'),
(28, 9, 98, 5, 502, 126, 0, 126, 0, 'Book \"adipisci\" by Ezekiel Murazik', 'vel'),
(29, 9, 298, 1, 487, 24, 0, 24, 0, 'T-Shirt \"eaque\"', 'est'),
(30, 10, 69, 3, 122, 18, 0, 18, 0, 'Sticker \"perspiciatis\"', 'voluptatem'),
(31, 10, 5, 2, 203, 21, 0, 21, 0, 'Mug \"quidem\"', 'illo'),
(32, 11, 172, 1, 164, 8, 0, 8, 0, 'T-Shirt \"itaque\"', 'assumenda'),
(33, 12, 91, 2, 667, 67, 0, 67, 0, 'Book \"voluptatem\" by Mae Franecki', 'similique'),
(34, 12, 12, 3, 607, 91, 0, 91, 0, 'Mug \"cumque\"', 'porro'),
(35, 12, 91, 4, 667, 133, 0, 133, 0, 'Book \"voluptatem\" by Mae Franecki', 'similique'),
(36, 13, 74, 2, 450, 45, 0, 45, 0, 'Sticker \"dicta\"', 'rerum'),
(37, 13, 67, 1, 315, 16, 0, 16, 0, 'Sticker \"perspiciatis\"', 'dolorem'),
(38, 13, 42, 5, 722, 180, 0, 180, 0, 'Mug \"vel\"', 'veniam'),
(39, 13, 143, 5, 632, 158, 0, 158, 0, 'T-Shirt \"voluptatem\"', 'qui'),
(40, 14, 11, 4, 467, 93, 0, 93, 0, 'Mug \"cumque\"', 'doloremque'),
(41, 14, 29, 2, 668, 67, 0, 67, 0, 'Mug \"ipsa\"', 'hic'),
(42, 14, 174, 2, 101, 10, 0, 10, 0, 'T-Shirt \"itaque\"', 'est'),
(43, 14, 32, 2, 948, 95, 0, 95, 0, 'Mug \"explicabo\"', 'rerum'),
(44, 14, 299, 3, 591, 89, 0, 89, 0, 'T-Shirt \"eaque\"', 'occaecati'),
(45, 15, 7, 1, 336, 17, 0, 17, 0, 'Mug \"esse\"', 'enim'),
(46, 16, 67, 3, 315, 47, 0, 47, 0, 'Sticker \"perspiciatis\"', 'dolorem'),
(47, 17, 219, 4, 231, 46, 0, 46, 0, 'T-Shirt \"facere\"', 'inventore'),
(48, 17, 12, 1, 607, 30, 0, 30, 0, 'Mug \"cumque\"', 'porro'),
(49, 17, 289, 1, 541, 27, 0, 27, 0, 'T-Shirt \"eaque\"', 'recusandae'),
(50, 17, 52, 5, 179, 45, 0, 45, 0, 'Sticker \"dolor\"', 'at'),
(51, 18, 102, 1, 704, 35, 0, 35, 0, 'Book \"nemo\" by Mrs. Margarett Wyman', 'occaecati'),
(52, 18, 70, 3, 269, 40, 0, 40, 0, 'Sticker \"impedit\"', 'iure'),
(53, 18, 153, 1, 634, 32, 0, 32, 0, 'T-Shirt \"rerum\"', 'quisquam'),
(54, 19, 29, 1, 668, 33, 0, 33, 0, 'Mug \"ipsa\"', 'hic'),
(55, 19, 296, 3, 676, 102, 0, 102, 0, 'T-Shirt \"eaque\"', 'necessitatibus'),
(56, 20, 21, 4, 416, 84, 0, 84, 0, 'Mug \"corporis\"', 'facilis'),
(57, 20, 208, 3, 555, 83, 0, 83, 0, 'T-Shirt \"molestiae\"', 'sed'),
(58, 20, 83, 1, 700, 35, 0, 35, 0, 'Sticker \"quos\"', 'accusantium'),
(59, 20, 9, 1, 965, 48, 0, 48, 0, 'Mug \"esse\"', 'fugit'),
(60, 20, 104, 2, 781, 78, 0, 78, 0, 'Book \"sunt\" by Mrs. Anne Ullrich', 'et');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_order_item_unit`
--

DROP TABLE IF EXISTS `sylius_order_item_unit`;
CREATE TABLE IF NOT EXISTS `sylius_order_item_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_item_id` int(11) NOT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `adjustments_total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_82BF226EE415FB15` (`order_item_id`),
  KEY `IDX_82BF226E7BE036FC` (`shipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_order_item_unit`
--

INSERT INTO `sylius_order_item_unit` (`id`, `order_item_id`, `shipment_id`, `adjustments_total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, -170, '2019-06-02 14:48:31', '2019-06-02 14:48:32'),
(2, 1, 1, -170, '2019-06-02 14:48:31', '2019-06-02 14:48:32'),
(3, 2, 1, -312, '2019-06-02 14:48:31', '2019-06-02 14:48:32'),
(4, 2, 1, -311, '2019-06-02 14:48:31', '2019-06-02 14:48:32'),
(5, 3, 2, -883, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(6, 3, 2, -882, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(7, 4, 3, -809, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(8, 4, 3, -808, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(9, 4, 3, -808, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(10, 5, 3, -42, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(11, 5, 3, -42, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(12, 6, 3, -561, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(13, 6, 3, -560, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(14, 7, 3, -202, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(15, 7, 3, -201, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(16, 8, 3, -69, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(17, 9, 4, -477, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(18, 10, 4, -946, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(19, 10, 4, -945, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(20, 10, 4, -945, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(21, 10, 4, -945, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(22, 11, 5, -945, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(23, 12, 5, -256, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(24, 12, 5, -256, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(25, 12, 5, -255, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(26, 13, 5, -77, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(27, 13, 5, -77, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(28, 13, 5, -77, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(29, 14, 5, -774, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(30, 14, 5, -773, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(31, 14, 5, -773, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(32, 14, 5, -773, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(33, 15, 5, -473, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(34, 15, 5, -473, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(35, 15, 5, -473, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(36, 15, 5, -473, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(37, 16, 6, -138, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(38, 16, 6, -138, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(39, 16, 6, -138, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(40, 16, 6, -137, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(41, 17, 6, -471, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(42, 17, 6, -470, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(43, 17, 6, -470, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(44, 18, 7, -117, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(45, 18, 7, -117, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(46, 18, 7, -116, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(47, 18, 7, -116, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(48, 18, 7, -116, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(49, 19, 7, -777, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(50, 19, 7, -777, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(51, 19, 7, -777, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(52, 19, 7, -777, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(53, 19, 7, -776, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(54, 20, 7, -139, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(55, 20, 7, -138, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(56, 21, 7, -724, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(57, 21, 7, -722, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(58, 21, 7, -722, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(59, 21, 7, -722, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(60, 21, 7, -722, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(61, 22, 7, -723, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(62, 22, 7, -722, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(63, 22, 7, -722, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(64, 22, 7, -722, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(65, 23, 8, -804, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(66, 23, 8, -803, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(67, 23, 8, -803, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(68, 24, 8, -809, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(69, 24, 8, -809, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(70, 24, 8, -808, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(71, 24, 8, -808, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(72, 25, 8, -229, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(73, 26, 8, -368, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(74, 26, 8, -368, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(75, 26, 8, -368, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(76, 26, 8, -367, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(77, 27, 8, -77, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(78, 27, 8, -77, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(79, 27, 8, -77, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(80, 27, 8, -77, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(81, 28, 9, -477, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(82, 28, 9, -477, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(83, 28, 9, -477, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(84, 28, 9, -477, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(85, 28, 9, -476, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(86, 29, 9, -463, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(87, 30, 10, -116, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(88, 30, 10, -116, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(89, 30, 10, -116, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(90, 31, 10, -193, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(91, 31, 10, -192, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(92, 32, 11, -156, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(93, 33, 12, -634, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(94, 33, 12, -633, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(95, 34, 12, -577, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(96, 34, 12, -577, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(97, 34, 12, -576, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(98, 35, 12, -634, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(99, 35, 12, -634, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(100, 35, 12, -634, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(101, 35, 12, -633, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(102, 36, 13, -428, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(103, 36, 13, -427, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(104, 37, 13, -299, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(105, 38, 13, -686, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(106, 38, 13, -686, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(107, 38, 13, -686, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(108, 38, 13, -686, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(109, 38, 13, -686, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(110, 39, 13, -601, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(111, 39, 13, -601, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(112, 39, 13, -600, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(113, 39, 13, -600, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(114, 39, 13, -600, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(115, 40, 14, -444, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(116, 40, 14, -444, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(117, 40, 14, -444, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(118, 40, 14, -443, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(119, 41, 14, -635, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(120, 41, 14, -634, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(121, 42, 14, -96, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(122, 42, 14, -96, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(123, 43, 14, -901, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(124, 43, 14, -900, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(125, 44, 14, -562, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(126, 44, 14, -561, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(127, 44, 14, -561, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(128, 45, 15, -319, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(129, 46, 16, -300, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(130, 46, 16, -299, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(131, 46, 16, -299, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(132, 47, 17, -220, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(133, 47, 17, -220, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(134, 47, 17, -219, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(135, 47, 17, -219, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(136, 48, 17, -577, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(137, 49, 17, -514, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(138, 50, 17, -170, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(139, 50, 17, -170, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(140, 50, 17, -170, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(141, 50, 17, -170, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(142, 50, 17, -170, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(143, 51, 18, -669, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(144, 52, 18, -256, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(145, 52, 18, -256, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(146, 52, 18, -255, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(147, 53, 18, -602, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(148, 54, 19, -635, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(149, 55, 19, -642, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(150, 55, 19, -642, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(151, 55, 19, -642, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(152, 56, 20, -395, '2019-06-02 14:48:32', '2019-06-02 14:48:33'),
(153, 56, 20, -395, '2019-06-02 14:48:32', '2019-06-02 14:48:33'),
(154, 56, 20, -395, '2019-06-02 14:48:32', '2019-06-02 14:48:33'),
(155, 56, 20, -395, '2019-06-02 14:48:32', '2019-06-02 14:48:33'),
(156, 57, 20, -528, '2019-06-02 14:48:32', '2019-06-02 14:48:33'),
(157, 57, 20, -527, '2019-06-02 14:48:32', '2019-06-02 14:48:33'),
(158, 57, 20, -527, '2019-06-02 14:48:32', '2019-06-02 14:48:33'),
(159, 58, 20, -665, '2019-06-02 14:48:32', '2019-06-02 14:48:33'),
(160, 59, 20, -917, '2019-06-02 14:48:32', '2019-06-02 14:48:33'),
(161, 60, 20, -742, '2019-06-02 14:48:32', '2019-06-02 14:48:33'),
(162, 60, 20, -742, '2019-06-02 14:48:32', '2019-06-02 14:48:33');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_order_sequence`
--

DROP TABLE IF EXISTS `sylius_order_sequence`;
CREATE TABLE IF NOT EXISTS `sylius_order_sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idx` int(11) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_order_sequence`
--

INSERT INTO `sylius_order_sequence` (`id`, `idx`, `version`) VALUES
(1, 20, 2);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_payment`
--

DROP TABLE IF EXISTS `sylius_payment`;
CREATE TABLE IF NOT EXISTS `sylius_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D9191BD419883967` (`method_id`),
  KEY `IDX_D9191BD48D9F6D38` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_payment`
--

INSERT INTO `sylius_payment` (`id`, `method_id`, `order_id`, `currency_code`, `amount`, `state`, `details`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'USD', 186, 'new', '[]', '2019-06-02 14:48:31', '2019-06-02 14:48:32'),
(2, 2, 2, 'USD', 5970, 'new', '[]', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(3, 2, 3, 'USD', 2231, 'new', '[]', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(4, 2, 4, 'USD', 2239, 'new', '[]', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(5, 2, 5, 'USD', 6242, 'new', '[]', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(6, 2, 6, 'USD', 238, 'new', '[]', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(7, 2, 7, 'USD', 674, 'new', '[]', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(8, 2, 8, 'USD', 6280, 'new', '[]', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(9, 2, 9, 'USD', 285, 'new', '[]', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(10, 2, 10, 'USD', 174, 'new', '[]', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(11, 2, 11, 'USD', 2023, 'new', '[]', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(12, 2, 12, 'USD', 6168, 'new', '[]', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(13, 2, 13, 'USD', 2414, 'new', '[]', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(14, 2, 14, 'USD', 6231, 'new', '[]', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(15, 2, 15, 'USD', 5894, 'new', '[]', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(16, 2, 16, 'USD', 5924, 'new', '[]', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(17, 2, 17, 'USD', 283, 'new', '[]', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(18, 2, 18, 'USD', 5984, 'new', '[]', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(19, 2, 19, 'USD', 2150, 'new', '[]', '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(20, 2, 20, 'USD', 6205, 'new', '[]', '2019-06-02 14:48:33', '2019-06-02 14:48:33');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_payment_method`
--

DROP TABLE IF EXISTS `sylius_payment_method`;
CREATE TABLE IF NOT EXISTS `sylius_payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway_config_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A75B0B0D77153098` (`code`),
  KEY `IDX_A75B0B0DF23D6140` (`gateway_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_payment_method`
--

INSERT INTO `sylius_payment_method` (`id`, `gateway_config_id`, `code`, `environment`, `is_enabled`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 'cash_on_delivery', NULL, 0, 0, '2019-06-02 14:48:21', '2019-06-02 14:48:21'),
(2, 2, 'bank_transfer', NULL, 1, 1, '2019-06-02 14:48:22', '2019-06-02 14:48:22');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_payment_method_channels`
--

DROP TABLE IF EXISTS `sylius_payment_method_channels`;
CREATE TABLE IF NOT EXISTS `sylius_payment_method_channels` (
  `payment_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_method_id`,`channel_id`),
  KEY `IDX_543AC0CC5AA1164F` (`payment_method_id`),
  KEY `IDX_543AC0CC72F5A1AA` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_payment_method_channels`
--

INSERT INTO `sylius_payment_method_channels` (`payment_method_id`, `channel_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_payment_method_translation`
--

DROP TABLE IF EXISTS `sylius_payment_method_translation`;
CREATE TABLE IF NOT EXISTS `sylius_payment_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `instructions` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_payment_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_966BE3A12C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_payment_method_translation`
--

INSERT INTO `sylius_payment_method_translation` (`id`, `translatable_id`, `name`, `description`, `instructions`, `locale`) VALUES
(1, 1, 'Cash on delivery', 'Quidem totam est provident corrupti illum consequatur voluptatem.', NULL, 'en_US'),
(2, 2, 'Bank transfer', 'Quaerat rerum veritatis deleniti at.', NULL, 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_payment_security_token`
--

DROP TABLE IF EXISTS `sylius_payment_security_token`;
CREATE TABLE IF NOT EXISTS `sylius_payment_security_token` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)',
  `after_url` longtext COLLATE utf8_unicode_ci,
  `target_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product`
--

DROP TABLE IF EXISTS `sylius_product`;
CREATE TABLE IF NOT EXISTS `sylius_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_taxon_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `variant_selection_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `average_rating` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_677B9B7477153098` (`code`),
  KEY `IDX_677B9B74731E505` (`main_taxon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product`
--

INSERT INTO `sylius_product` (`id`, `main_taxon_id`, `code`, `created_at`, `updated_at`, `enabled`, `variant_selection_method`, `average_rating`) VALUES
(1, 2, '0fa2767c-86d8-337b-8fe3-610cc050cf0e', '2019-06-01 09:54:41', '2019-06-02 14:48:30', 0, 'match', 4),
(2, 2, '6c978c9f-a8e9-3fe7-b8d1-44c3f870e35f', '2019-06-01 18:06:30', '2019-06-02 14:48:24', 1, 'match', 0),
(3, 2, 'ce49213d-df40-3867-a68d-9092b21ac177', '2019-05-31 08:37:56', '2019-06-02 14:48:24', 1, 'match', 0),
(4, 2, '05fa9cf1-90f0-379f-8595-dc2dd4bd70c8', '2019-05-27 18:45:18', '2019-06-02 14:48:24', 1, 'match', 0),
(5, 2, '0da6b4cd-9963-32e9-8d21-7c42381b60d1', '2019-06-01 23:14:15', '2019-06-02 14:48:30', 0, 'match', 5),
(6, 2, '38803ce8-2754-3af7-a6cf-feffff47d37c', '2019-06-02 02:57:14', '2019-06-02 14:48:30', 1, 'match', 4),
(7, 2, '009ceab4-a77f-35c1-9000-c1e84916d111', '2019-05-30 14:55:38', '2019-06-02 14:48:24', 1, 'match', 0),
(8, 2, '9a096fb6-39ab-324e-8c34-587d9d9f6a6b', '2019-05-29 13:20:22', '2019-06-02 14:48:24', 1, 'match', 0),
(9, 2, '86636ac0-9a15-3ddc-9bde-94c2dc920425', '2019-05-30 20:31:36', '2019-06-02 14:48:24', 1, 'match', 0),
(10, 2, '9f909731-f7c9-35b7-a18e-6376c096d33a', '2019-05-31 18:34:06', '2019-06-02 14:48:24', 1, 'match', 0),
(11, 2, '53294881-3b76-37df-82fe-640f829ae080', '2019-05-30 04:09:39', '2019-06-02 14:48:25', 1, 'match', 0),
(12, 2, '10aa9d57-8e6d-3127-bc5c-ab0b8ca4bbf9', '2019-05-31 02:24:06', '2019-06-02 14:48:25', 1, 'match', 0),
(13, 2, 'a1bff28d-86ec-36e7-babd-8abdb2587a31', '2019-06-01 21:57:11', '2019-06-02 14:48:25', 1, 'match', 0),
(14, 2, '1407d28a-47bd-3f4d-bdf4-f40346ee7b6b', '2019-05-30 00:27:11', '2019-06-02 14:48:25', 1, 'match', 0),
(15, 2, 'e0bcb394-3676-36ce-9ca1-11bf5b075b10', '2019-05-29 06:49:08', '2019-06-02 14:48:30', 0, 'match', 2),
(16, 3, 'd02e0d91-29cb-3cdb-91d5-6503740f6a13', '2019-06-01 16:25:29', '2019-06-02 14:48:26', 1, 'choice', 0),
(17, 3, '2eedd9b5-e11f-39f6-b683-71cdc43d59dd', '2019-05-27 19:48:57', '2019-06-02 14:48:26', 1, 'choice', 0),
(18, 3, '946984bc-fd70-30a8-9e93-23c59b2bd54d', '2019-05-31 03:18:48', '2019-06-02 14:48:30', 1, 'choice', 5),
(19, 3, 'ba94df67-84be-38e1-8ac0-49c183889932', '2019-05-30 12:40:05', '2019-06-02 14:48:30', 1, 'choice', 5),
(20, 3, 'a26addf8-f687-3d49-9245-563a6632506b', '2019-06-02 07:25:03', '2019-06-02 14:48:26', 1, 'choice', 0),
(21, 3, '3c4ddc77-b8ae-3bec-820e-70064d195ee5', '2019-05-26 17:02:44', '2019-06-02 14:48:26', 1, 'choice', 0),
(22, 3, '198cea38-d4e7-3c82-a19d-6b90f3e92e8d', '2019-06-01 13:56:34', '2019-06-02 14:48:26', 1, 'choice', 0),
(23, 3, '85610ef0-cd13-39e9-933f-746f23a9407e', '2019-05-31 05:09:54', '2019-06-02 14:48:26', 0, 'choice', 0),
(24, 3, 'f63860a4-8df9-32fa-abc9-5e76c4e27723', '2019-05-29 15:50:29', '2019-06-02 14:48:26', 1, 'choice', 0),
(25, 3, '098d1cce-bba3-3a7f-86b5-cfd212c94a2a', '2019-05-26 20:39:49', '2019-06-02 14:48:26', 1, 'choice', 0),
(26, 3, '999eae6b-fa94-3982-bf82-203d4da9d0c7', '2019-05-26 19:37:28', '2019-06-02 14:48:26', 1, 'choice', 0),
(27, 3, 'efadd580-8a52-3030-b930-d2efa50c35c6', '2019-05-28 15:48:15', '2019-06-02 14:48:26', 1, 'choice', 0),
(28, 3, '13373355-171e-340c-8f75-c2a61ef226ba', '2019-05-29 22:39:41', '2019-06-02 14:48:26', 1, 'choice', 0),
(29, 3, 'd748e2ea-0cb2-3403-9013-88f0d67a3c31', '2019-05-27 16:30:29', '2019-06-02 14:48:26', 1, 'choice', 0),
(30, 3, 'c6075d20-6ca3-3e8c-89c7-6d78ae40991c', '2019-06-01 02:37:23', '2019-06-02 14:48:27', 1, 'choice', 0),
(31, 4, 'ef60deeb-6370-3b98-853e-e8266c1fcefe', '2019-06-01 21:26:14', '2019-06-02 14:48:27', 1, 'match', 0),
(32, 4, '14fd5a00-3ccc-3c75-a019-43040519adce', '2019-06-02 07:36:18', '2019-06-02 14:48:27', 0, 'match', 0),
(33, 4, 'f8e0a4e1-e911-36b8-aaea-a1d36116b221', '2019-05-29 22:18:09', '2019-06-02 14:48:27', 1, 'match', 0),
(34, 4, '27ed0d92-4316-3a35-bea0-2d731c172c51', '2019-06-01 05:38:26', '2019-06-02 14:48:27', 1, 'match', 0),
(35, 4, 'f089ab16-d2b1-3f73-8d08-eadf0352d47d', '2019-05-31 23:05:40', '2019-06-02 14:48:27', 1, 'match', 0),
(36, 4, 'b1cbca92-0577-3a89-b024-7c30c7f6c6f6', '2019-05-29 07:29:52', '2019-06-02 14:48:30', 1, 'match', 5),
(37, 4, 'c6fe759a-cfa7-3162-8cae-fe7a5acee34c', '2019-05-27 21:47:22', '2019-06-02 14:48:29', 1, 'match', 4),
(38, 4, '8021eae2-5e8e-35c0-9235-2df7d480cf91', '2019-05-29 01:05:40', '2019-06-02 14:48:27', 1, 'match', 0),
(39, 4, 'c2fafbad-c6ee-3600-9d78-4e7599937662', '2019-05-30 16:47:45', '2019-06-02 14:48:27', 1, 'match', 0),
(40, 4, 'b068c580-5581-3192-851d-ced4b2180c59', '2019-05-30 19:22:54', '2019-06-02 14:48:27', 1, 'match', 0),
(41, 4, '848c798d-be4e-3425-ad42-a065dfff83b2', '2019-05-26 17:38:29', '2019-06-02 14:48:27', 1, 'match', 0),
(42, 4, 'fda692a8-bc75-3cba-9314-f9693c93e4aa', '2019-05-28 09:42:52', '2019-06-02 14:48:27', 1, 'match', 0),
(43, 4, '569294d0-662f-3a4f-bbe9-97fb1f6dce03', '2019-06-01 18:24:43', '2019-06-02 14:48:30', 0, 'match', 2),
(44, 4, '2d9abc33-3b0a-397b-8ffe-e03d73379311', '2019-05-26 18:10:37', '2019-06-02 14:48:27', 1, 'match', 0),
(45, 4, 'd4a60c2e-e902-3dd3-84f1-8a6198264ca1', '2019-05-31 17:43:32', '2019-06-02 14:48:27', 0, 'match', 0),
(46, 7, '70318ea7-4f32-369c-9729-d2098fdfcca4', '2019-05-28 11:00:34', '2019-06-02 14:48:28', 1, 'match', 0),
(47, 6, 'be54a539-b1f7-353e-8622-3f244a9fe930', '2019-05-29 03:13:16', '2019-06-02 14:48:28', 1, 'match', 0),
(48, 7, '045dca80-a4ab-3328-b8f4-0651af1d1334', '2019-05-26 16:53:29', '2019-06-02 14:48:28', 1, 'match', 0),
(49, 6, 'a7343675-04da-3be4-97ee-54cfda43ec6e', '2019-05-30 11:45:55', '2019-06-02 14:48:31', 0, 'match', 1),
(50, 7, 'ea0e0794-f604-35eb-85fb-e8649ccddeb1', '2019-05-29 22:00:54', '2019-06-02 14:48:28', 1, 'match', 0),
(51, 7, '292247d9-25ac-3998-917d-1d4dfe1a305f', '2019-05-29 01:39:09', '2019-06-02 14:48:31', 1, 'match', 2),
(52, 6, '94338f64-6aab-3ad9-bb80-56c6205c7089', '2019-05-27 11:38:04', '2019-06-02 14:48:28', 1, 'match', 0),
(53, 7, '89804d5f-6a15-301e-ac79-eca0c1ae9941', '2019-06-01 05:54:03', '2019-06-02 14:48:28', 1, 'match', 0),
(54, 6, '8fe8de54-5848-3598-aaa5-8f505d5e8377', '2019-05-30 00:44:44', '2019-06-02 14:48:31', 1, 'match', 3),
(55, 6, 'a3d7b854-8df6-3118-aff5-06ee9a2db613', '2019-05-28 10:53:03', '2019-06-02 14:48:28', 1, 'match', 0),
(56, 7, 'fb320421-f3dd-355b-9d48-586bc991000b', '2019-05-27 22:03:11', '2019-06-02 14:48:30', 1, 'match', 1),
(57, 6, 'c0121c2a-d282-382d-a6fa-3469729a945a', '2019-06-01 10:53:50', '2019-06-02 14:48:28', 1, 'match', 0),
(58, 7, '4574937f-3bcf-3874-a84c-a332a7b16e32', '2019-06-02 09:12:39', '2019-06-02 14:48:29', 1, 'match', 0),
(59, 7, 'c425415a-6839-3e9e-9393-4e943c8b47a3', '2019-05-27 16:37:19', '2019-06-02 14:48:31', 0, 'match', 3),
(60, 6, 'fff7a11a-50e1-3549-9f70-79190d12cc31', '2019-05-31 18:37:03', '2019-06-02 14:48:29', 1, 'match', 0);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_association`
--

DROP TABLE IF EXISTS `sylius_product_association`;
CREATE TABLE IF NOT EXISTS `sylius_product_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `association_type_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_association_idx` (`product_id`,`association_type_id`),
  KEY `IDX_48E9CDABB1E1C39` (`association_type_id`),
  KEY `IDX_48E9CDAB4584665A` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_association`
--

INSERT INTO `sylius_product_association` (`id`, `association_type_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 24, '2019-06-02 14:48:31', '2019-06-02 14:48:31'),
(2, 1, 45, '2019-06-02 14:48:31', '2019-06-02 14:48:31'),
(3, 1, 5, '2019-06-02 14:48:31', '2019-06-02 14:48:31'),
(4, 1, 40, '2019-06-02 14:48:31', '2019-06-02 14:48:31'),
(5, 1, 4, '2019-06-02 14:48:31', '2019-06-02 14:48:31'),
(6, 1, 6, '2019-06-02 14:48:31', '2019-06-02 14:48:31'),
(7, 1, 2, '2019-06-02 14:48:31', '2019-06-02 14:48:31'),
(8, 1, 39, '2019-06-02 14:48:31', '2019-06-02 14:48:31'),
(9, 1, 36, '2019-06-02 14:48:31', '2019-06-02 14:48:31'),
(10, 1, 9, '2019-06-02 14:48:31', '2019-06-02 14:48:31');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_association_product`
--

DROP TABLE IF EXISTS `sylius_product_association_product`;
CREATE TABLE IF NOT EXISTS `sylius_product_association_product` (
  `association_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`association_id`,`product_id`),
  KEY `IDX_A427B983EFB9C8A5` (`association_id`),
  KEY `IDX_A427B9834584665A` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_association_product`
--

INSERT INTO `sylius_product_association_product` (`association_id`, `product_id`) VALUES
(1, 17),
(1, 20),
(1, 22),
(2, 42),
(2, 44),
(2, 45),
(3, 12),
(3, 14),
(3, 15),
(4, 36),
(4, 37),
(4, 39),
(5, 10),
(5, 13),
(5, 15),
(6, 11),
(6, 13),
(6, 15),
(7, 5),
(7, 7),
(7, 14),
(8, 36),
(8, 37),
(8, 43),
(9, 41),
(9, 42),
(9, 44),
(10, 4),
(10, 13),
(10, 15);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_association_type`
--

DROP TABLE IF EXISTS `sylius_product_association_type`;
CREATE TABLE IF NOT EXISTS `sylius_product_association_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CCB8914C77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_association_type`
--

INSERT INTO `sylius_product_association_type` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'similar_products', '2019-06-02 14:48:31', '2019-06-02 14:48:31');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_association_type_translation`
--

DROP TABLE IF EXISTS `sylius_product_association_type_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_association_type_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_association_type_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_4F618E52C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_association_type_translation`
--

INSERT INTO `sylius_product_association_type_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
(1, 1, 'Similar products', 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_attribute`
--

DROP TABLE IF EXISTS `sylius_product_attribute`;
CREATE TABLE IF NOT EXISTS `sylius_product_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BFAF484A77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_attribute`
--

INSERT INTO `sylius_product_attribute` (`id`, `code`, `type`, `storage_type`, `configuration`, `created_at`, `updated_at`, `position`) VALUES
(1, 'mug_material', 'select', 'json', 'a:2:{s:8:\"multiple\";b:0;s:7:\"choices\";a:4:{s:36:\"9e25168e-9201-343d-ade6-3ff397a5aea8\";a:1:{s:5:\"en_US\";s:19:\"Invisible porcelain\";}s:36:\"1db29bb0-78fd-3b71-b832-5ebef4651eeb\";a:1:{s:5:\"en_US\";s:11:\"Banana skin\";}s:36:\"9a7ecd37-634d-36f3-8143-acb7d08c0901\";a:1:{s:5:\"en_US\";s:9:\"Porcelain\";}s:36:\"895e0b6c-bc81-3643-b9ae-51ac037b718d\";a:1:{s:5:\"en_US\";s:9:\"Centipede\";}}}', '2019-06-02 14:48:23', '2019-06-02 14:48:23', 0),
(2, 'sticker_paper', 'text', 'text', 'a:0:{}', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 1),
(3, 'sticker_resolution', 'text', 'text', 'a:0:{}', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 2),
(4, 'book_author', 'text', 'text', 'a:0:{}', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 3),
(5, 'book_isbn', 'text', 'text', 'a:0:{}', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 4),
(6, 'book_pages', 'integer', 'integer', 'a:0:{}', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 5),
(7, 'book_genre', 'select', 'json', 'a:2:{s:8:\"multiple\";b:1;s:7:\"choices\";a:4:{s:36:\"b897cbca-f4d5-3968-ad13-547c05b30bf8\";a:1:{s:5:\"en_US\";s:15:\"Science Fiction\";}s:36:\"17940d69-2a99-3046-a733-e9cc245f0738\";a:1:{s:5:\"en_US\";s:7:\"Romance\";}s:36:\"47c222ff-0709-3949-91d7-767044532aa3\";a:1:{s:5:\"en_US\";s:8:\"Thriller\";}s:36:\"a633997e-fe90-38f2-a96f-b354fd219673\";a:1:{s:5:\"en_US\";s:6:\"Sports\";}}}', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 6),
(8, 't_shirt_brand', 'text', 'text', 'a:0:{}', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 7),
(9, 't_shirt_collection', 'text', 'text', 'a:0:{}', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 8),
(10, 't_shirt_material', 'text', 'text', 'a:0:{}', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 9);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_attribute_translation`
--

DROP TABLE IF EXISTS `sylius_product_attribute_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_attribute_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_attribute_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_93850EBA2C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_attribute_translation`
--

INSERT INTO `sylius_product_attribute_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
(1, 1, 'Mug material', 'en_US'),
(2, 2, 'Sticker paper', 'en_US'),
(3, 3, 'Sticker resolution', 'en_US'),
(4, 4, 'Book author', 'en_US'),
(5, 5, 'Book ISBN', 'en_US'),
(6, 6, 'Book pages', 'en_US'),
(7, 7, 'Book genre', 'en_US'),
(8, 8, 'T-Shirt brand', 'en_US'),
(9, 9, 'T-Shirt collection', 'en_US'),
(10, 10, 'T-Shirt material', 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_attribute_value`
--

DROP TABLE IF EXISTS `sylius_product_attribute_value`;
CREATE TABLE IF NOT EXISTS `sylius_product_attribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text_value` longtext COLLATE utf8_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  KEY `IDX_8A053E544584665A` (`product_id`),
  KEY `IDX_8A053E54B6E62EFA` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_attribute_value`
--

INSERT INTO `sylius_product_attribute_value` (`id`, `product_id`, `attribute_id`, `locale_code`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`) VALUES
(1, 1, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"895e0b6c-bc81-3643-b9ae-51ac037b718d\"]'),
(2, 2, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"9a7ecd37-634d-36f3-8143-acb7d08c0901\"]'),
(3, 3, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"9a7ecd37-634d-36f3-8143-acb7d08c0901\"]'),
(4, 4, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"9e25168e-9201-343d-ade6-3ff397a5aea8\"]'),
(5, 5, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"1db29bb0-78fd-3b71-b832-5ebef4651eeb\"]'),
(6, 6, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"9e25168e-9201-343d-ade6-3ff397a5aea8\"]'),
(7, 7, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"895e0b6c-bc81-3643-b9ae-51ac037b718d\"]'),
(8, 8, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"895e0b6c-bc81-3643-b9ae-51ac037b718d\"]'),
(9, 9, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"1db29bb0-78fd-3b71-b832-5ebef4651eeb\"]'),
(10, 10, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"895e0b6c-bc81-3643-b9ae-51ac037b718d\"]'),
(11, 11, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"1db29bb0-78fd-3b71-b832-5ebef4651eeb\"]'),
(12, 12, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"9e25168e-9201-343d-ade6-3ff397a5aea8\"]'),
(13, 13, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"9a7ecd37-634d-36f3-8143-acb7d08c0901\"]'),
(14, 14, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"1db29bb0-78fd-3b71-b832-5ebef4651eeb\"]'),
(15, 15, 1, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"895e0b6c-bc81-3643-b9ae-51ac037b718d\"]'),
(16, 16, 2, 'en_US', 'Paper from tree Lemon-San', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 16, 3, 'en_US', '200DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 17, 2, 'en_US', 'Paper from tree Me-Gusta', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 17, 3, 'en_US', 'JKM XD', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 18, 2, 'en_US', 'Paper from tree Wung', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 18, 3, 'en_US', '476DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 19, 2, 'en_US', 'Paper from tree Tanajno', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 19, 3, 'en_US', 'JKM XD', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 20, 2, 'en_US', 'Paper from tree Tanajno', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 20, 3, 'en_US', 'JKM XD', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 21, 2, 'en_US', 'Paper from tree Lemon-San', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 21, 3, 'en_US', '476DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 22, 2, 'en_US', 'Paper from tree Tanajno', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 22, 3, 'en_US', '476DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 23, 2, 'en_US', 'Paper from tree Wung', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 23, 3, 'en_US', 'JKM XD', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 24, 2, 'en_US', 'Paper from tree Wung', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 24, 3, 'en_US', 'JKM XD', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 25, 2, 'en_US', 'Paper from tree Me-Gusta', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 25, 3, 'en_US', '200DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 26, 2, 'en_US', 'Paper from tree Tanajno', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 26, 3, 'en_US', 'JKM XD', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 27, 2, 'en_US', 'Paper from tree Me-Gusta', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 27, 3, 'en_US', '476DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 28, 2, 'en_US', 'Paper from tree Tanajno', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 28, 3, 'en_US', '200DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 29, 2, 'en_US', 'Paper from tree Me-Gusta', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 29, 3, 'en_US', '476DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 30, 2, 'en_US', 'Paper from tree Wung', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 30, 3, 'en_US', '476DPI', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 31, 4, 'en_US', 'Mae Franecki', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 31, 5, 'en_US', '9796151133438', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 31, 6, 'en_US', NULL, NULL, 254, NULL, NULL, NULL, NULL),
(49, 31, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"17940d69-2a99-3046-a733-e9cc245f0738\"]'),
(50, 32, 4, 'en_US', 'Petra Brakus', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 32, 5, 'en_US', '9786615607438', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 32, 6, 'en_US', NULL, NULL, 609, NULL, NULL, NULL, NULL),
(53, 32, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"a633997e-fe90-38f2-a96f-b354fd219673\",\"47c222ff-0709-3949-91d7-767044532aa3\"]'),
(54, 33, 4, 'en_US', 'Dr. Dandre Kulas Sr.', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 33, 5, 'en_US', '9785361903962', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 33, 6, 'en_US', NULL, NULL, 890, NULL, NULL, NULL, NULL),
(57, 33, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"47c222ff-0709-3949-91d7-767044532aa3\",\"b897cbca-f4d5-3968-ad13-547c05b30bf8\",\"a633997e-fe90-38f2-a96f-b354fd219673\",\"17940d69-2a99-3046-a733-e9cc245f0738\"]'),
(58, 34, 4, 'en_US', 'Dena Hermiston', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 34, 5, 'en_US', '9782009200599', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 34, 6, 'en_US', NULL, NULL, 700, NULL, NULL, NULL, NULL),
(61, 34, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"b897cbca-f4d5-3968-ad13-547c05b30bf8\",\"47c222ff-0709-3949-91d7-767044532aa3\",\"17940d69-2a99-3046-a733-e9cc245f0738\"]'),
(62, 35, 4, 'en_US', 'Syble O\'Keefe', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 35, 5, 'en_US', '9791264281489', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 35, 6, 'en_US', NULL, NULL, 759, NULL, NULL, NULL, NULL),
(65, 35, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"47c222ff-0709-3949-91d7-767044532aa3\",\"b897cbca-f4d5-3968-ad13-547c05b30bf8\",\"a633997e-fe90-38f2-a96f-b354fd219673\",\"17940d69-2a99-3046-a733-e9cc245f0738\"]'),
(66, 36, 4, 'en_US', 'Mr. Elian Bernier', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 36, 5, 'en_US', '9785606489565', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 36, 6, 'en_US', NULL, NULL, 917, NULL, NULL, NULL, NULL),
(69, 36, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"17940d69-2a99-3046-a733-e9cc245f0738\",\"a633997e-fe90-38f2-a96f-b354fd219673\"]'),
(70, 37, 4, 'en_US', 'Reid Cole', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 37, 5, 'en_US', '9790544330251', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 37, 6, 'en_US', NULL, NULL, 1015, NULL, NULL, NULL, NULL),
(73, 37, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"b897cbca-f4d5-3968-ad13-547c05b30bf8\"]'),
(74, 38, 4, 'en_US', 'Ezekiel Murazik', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 38, 5, 'en_US', '9789615073081', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 38, 6, 'en_US', NULL, NULL, 343, NULL, NULL, NULL, NULL),
(77, 38, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"a633997e-fe90-38f2-a96f-b354fd219673\",\"47c222ff-0709-3949-91d7-767044532aa3\",\"17940d69-2a99-3046-a733-e9cc245f0738\",\"b897cbca-f4d5-3968-ad13-547c05b30bf8\"]'),
(78, 39, 4, 'en_US', 'Ms. Lonie McGlynn MD', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 39, 5, 'en_US', '9799604586102', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 39, 6, 'en_US', NULL, NULL, 606, NULL, NULL, NULL, NULL),
(81, 39, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"47c222ff-0709-3949-91d7-767044532aa3\"]'),
(82, 40, 4, 'en_US', 'D\'angelo Graham V', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 40, 5, 'en_US', '9798243975568', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 40, 6, 'en_US', NULL, NULL, 517, NULL, NULL, NULL, NULL),
(85, 40, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"17940d69-2a99-3046-a733-e9cc245f0738\",\"a633997e-fe90-38f2-a96f-b354fd219673\",\"47c222ff-0709-3949-91d7-767044532aa3\",\"b897cbca-f4d5-3968-ad13-547c05b30bf8\"]'),
(86, 41, 4, 'en_US', 'Dr. Percy Morar', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 41, 5, 'en_US', '9780094226326', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 41, 6, 'en_US', NULL, NULL, 704, NULL, NULL, NULL, NULL),
(89, 41, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"b897cbca-f4d5-3968-ad13-547c05b30bf8\",\"47c222ff-0709-3949-91d7-767044532aa3\"]'),
(90, 42, 4, 'en_US', 'Mrs. Margarett Wyman', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 42, 5, 'en_US', '9799796369323', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 42, 6, 'en_US', NULL, NULL, 858, NULL, NULL, NULL, NULL),
(93, 42, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"17940d69-2a99-3046-a733-e9cc245f0738\",\"a633997e-fe90-38f2-a96f-b354fd219673\",\"b897cbca-f4d5-3968-ad13-547c05b30bf8\",\"47c222ff-0709-3949-91d7-767044532aa3\"]'),
(94, 43, 4, 'en_US', 'Zachariah Reichert', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 43, 5, 'en_US', '9798812915353', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 43, 6, 'en_US', NULL, NULL, 942, NULL, NULL, NULL, NULL),
(97, 43, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"47c222ff-0709-3949-91d7-767044532aa3\",\"a633997e-fe90-38f2-a96f-b354fd219673\",\"b897cbca-f4d5-3968-ad13-547c05b30bf8\"]'),
(98, 44, 4, 'en_US', 'Mrs. Anne Ullrich', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 44, 5, 'en_US', '9782174747479', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 44, 6, 'en_US', NULL, NULL, 316, NULL, NULL, NULL, NULL),
(101, 44, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"b897cbca-f4d5-3968-ad13-547c05b30bf8\",\"a633997e-fe90-38f2-a96f-b354fd219673\",\"47c222ff-0709-3949-91d7-767044532aa3\",\"17940d69-2a99-3046-a733-e9cc245f0738\"]'),
(102, 45, 4, 'en_US', 'Prof. Markus Gislason', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 45, 5, 'en_US', '9785078673820', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 45, 6, 'en_US', NULL, NULL, 144, NULL, NULL, NULL, NULL),
(105, 45, 7, 'en_US', NULL, NULL, NULL, NULL, NULL, NULL, '[\"17940d69-2a99-3046-a733-e9cc245f0738\"]'),
(106, 46, 8, 'en_US', 'Nike', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 46, 9, 'en_US', 'Sylius Spring 2010', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 46, 10, 'en_US', 'Centipede 10% / Wool 90%', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 47, 8, 'en_US', 'Centipede Wear', NULL, NULL, NULL, NULL, NULL, NULL),
(110, 47, 9, 'en_US', 'Sylius Winter 2003', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 47, 10, 'en_US', 'Wool', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 48, 8, 'en_US', 'Potato', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 48, 9, 'en_US', 'Sylius Autumn 2001', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 48, 10, 'en_US', 'Wool', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 49, 8, 'en_US', 'Potato', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 49, 9, 'en_US', 'Sylius Winter 2003', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 49, 10, 'en_US', 'Centipede', NULL, NULL, NULL, NULL, NULL, NULL),
(118, 50, 8, 'en_US', 'JKM-476 Streetwear', NULL, NULL, NULL, NULL, NULL, NULL),
(119, 50, 9, 'en_US', 'Sylius Winter 2003', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 50, 10, 'en_US', 'Potato 100%', NULL, NULL, NULL, NULL, NULL, NULL),
(121, 51, 8, 'en_US', 'JKM-476 Streetwear', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 51, 9, 'en_US', 'Sylius Summer 2011', NULL, NULL, NULL, NULL, NULL, NULL),
(123, 51, 10, 'en_US', 'Centipede 10% / Wool 90%', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 52, 8, 'en_US', 'Centipede Wear', NULL, NULL, NULL, NULL, NULL, NULL),
(125, 52, 9, 'en_US', 'Sylius Winter 2002', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 52, 10, 'en_US', 'Centipede 10% / Wool 90%', NULL, NULL, NULL, NULL, NULL, NULL),
(127, 53, 8, 'en_US', 'Centipede Wear', NULL, NULL, NULL, NULL, NULL, NULL),
(128, 53, 9, 'en_US', 'Sylius Autumn 2010', NULL, NULL, NULL, NULL, NULL, NULL),
(129, 53, 10, 'en_US', 'Centipede 10% / Wool 90%', NULL, NULL, NULL, NULL, NULL, NULL),
(130, 54, 8, 'en_US', 'JKM-476 Streetwear', NULL, NULL, NULL, NULL, NULL, NULL),
(131, 54, 9, 'en_US', 'Sylius Spring 2011', NULL, NULL, NULL, NULL, NULL, NULL),
(132, 54, 10, 'en_US', 'Centipede 10% / Wool 90%', NULL, NULL, NULL, NULL, NULL, NULL),
(133, 55, 8, 'en_US', 'Centipede Wear', NULL, NULL, NULL, NULL, NULL, NULL),
(134, 55, 9, 'en_US', 'Sylius Spring 2009', NULL, NULL, NULL, NULL, NULL, NULL),
(135, 55, 10, 'en_US', 'Centipede', NULL, NULL, NULL, NULL, NULL, NULL),
(136, 56, 8, 'en_US', 'Centipede Wear', NULL, NULL, NULL, NULL, NULL, NULL),
(137, 56, 9, 'en_US', 'Sylius Winter 2009', NULL, NULL, NULL, NULL, NULL, NULL),
(138, 56, 10, 'en_US', 'Centipede', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 57, 8, 'en_US', 'Centipede Wear', NULL, NULL, NULL, NULL, NULL, NULL),
(140, 57, 9, 'en_US', 'Sylius Winter 1995', NULL, NULL, NULL, NULL, NULL, NULL),
(141, 57, 10, 'en_US', 'Potato 100%', NULL, NULL, NULL, NULL, NULL, NULL),
(142, 58, 8, 'en_US', 'JKM-476 Streetwear', NULL, NULL, NULL, NULL, NULL, NULL),
(143, 58, 9, 'en_US', 'Sylius Spring 2005', NULL, NULL, NULL, NULL, NULL, NULL),
(144, 58, 10, 'en_US', 'Centipede 10% / Wool 90%', NULL, NULL, NULL, NULL, NULL, NULL),
(145, 59, 8, 'en_US', 'Centipede Wear', NULL, NULL, NULL, NULL, NULL, NULL),
(146, 59, 9, 'en_US', 'Sylius Spring 2008', NULL, NULL, NULL, NULL, NULL, NULL),
(147, 59, 10, 'en_US', 'Potato 100%', NULL, NULL, NULL, NULL, NULL, NULL),
(148, 60, 8, 'en_US', 'Potato', NULL, NULL, NULL, NULL, NULL, NULL),
(149, 60, 9, 'en_US', 'Sylius Summer 2011', NULL, NULL, NULL, NULL, NULL, NULL),
(150, 60, 10, 'en_US', 'Centipede', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_channels`
--

DROP TABLE IF EXISTS `sylius_product_channels`;
CREATE TABLE IF NOT EXISTS `sylius_product_channels` (
  `product_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`channel_id`),
  KEY `IDX_F9EF269B4584665A` (`product_id`),
  KEY `IDX_F9EF269B72F5A1AA` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_channels`
--

INSERT INTO `sylius_product_channels` (`product_id`, `channel_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_image`
--

DROP TABLE IF EXISTS `sylius_product_image`;
CREATE TABLE IF NOT EXISTS `sylius_product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_88C64B2D7E3C61F9` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_image`
--

INSERT INTO `sylius_product_image` (`id`, `owner_id`, `type`, `path`) VALUES
(1, 1, 'main', '80/07/920e1f44bbe1a270d181fde682c8.jpeg'),
(2, 1, 'thumbnail', 'aa/46/f1ee28c32a29b8116285aa42aaa7.jpeg'),
(3, 2, 'main', '20/39/6fd0e0b99caea7d7e42e55646382.jpeg'),
(4, 2, 'thumbnail', '01/99/7814368b240dd4fde2fd943ff4f7.jpeg'),
(5, 3, 'main', 'b3/bd/ba36239fb0ee8b0f78ea06807c9a.jpeg'),
(6, 3, 'thumbnail', 'a1/1f/9341a979d3e24c4fd0dacec3591c.jpeg'),
(7, 4, 'main', '96/88/2a428b30c7dbcb3828085795115a.jpeg'),
(8, 4, 'thumbnail', 'b1/a9/415e9ff7a3b5de0649d25cf78061.jpeg'),
(9, 5, 'main', '0e/e9/9c00ab9ef86e6cf8022015356535.jpeg'),
(10, 5, 'thumbnail', '2b/64/33431a7a25d00f98f65fddfb8861.jpeg'),
(11, 6, 'main', '77/48/52cf03f43fc6959603e1fcc0457a.jpeg'),
(12, 6, 'thumbnail', '71/ce/c99860745db61ab84c58ab6cbb28.jpeg'),
(13, 7, 'main', '18/e9/eaf5de689ccdc3460e816aa38e42.jpeg'),
(14, 7, 'thumbnail', '15/78/353e3019fb147bb37d4f56c99b1d.jpeg'),
(15, 8, 'main', '23/3e/5a3c8c3e457d7c13d771058a64fe.jpeg'),
(16, 8, 'thumbnail', '77/8b/175e99ff48220174d3576b3fb6dc.jpeg'),
(17, 9, 'main', '3f/52/4be9e02366ca15e3b7474623b9ed.jpeg'),
(18, 9, 'thumbnail', 'db/b8/453f8982b22cbe22b926f2fa6fb5.jpeg'),
(19, 10, 'main', '0e/1d/210ea0aca6f59853fb899d37d127.jpeg'),
(20, 10, 'thumbnail', 'aa/e7/05827567639a08e1bd584a6c6d7f.jpeg'),
(21, 11, 'main', '5a/d0/14be09bba31458f20e8937598702.jpeg'),
(22, 11, 'thumbnail', 'd4/56/00f0757962deeebd665883d566f3.jpeg'),
(23, 12, 'main', '9d/cc/088290e026aa2b804c42f78748cc.jpeg'),
(24, 12, 'thumbnail', 'ff/f8/5191b189078dcf6efae10d493b94.jpeg'),
(25, 13, 'main', '25/54/6c94fdb151a4774a1ae37db8f597.jpeg'),
(26, 13, 'thumbnail', '05/af/2b45095a1203a1f65ed63051239c.jpeg'),
(27, 14, 'main', 'ca/51/dcd6a075f2f3b841ceff434547f0.jpeg'),
(28, 14, 'thumbnail', 'a3/fc/cc8b61691bdb78c99c1c523140bb.jpeg'),
(29, 15, 'main', '0c/ac/f1657d91541a91315fc863a1d23e.jpeg'),
(30, 15, 'thumbnail', '1f/17/efa47691dfe86295b46fc3d1c82b.jpeg'),
(31, 16, 'main', '5c/df/bdd2bd002f77e319f4ee5d1b2263.jpeg'),
(32, 16, 'thumbnail', '6d/85/0c4f805d7c61611cabd908ca43a4.jpeg'),
(33, 17, 'main', 'df/1f/f7a6bc80d15ae8302dd0324f8845.jpeg'),
(34, 17, 'thumbnail', 'a1/f6/e803e58d40ba9f5ce3a796480e08.jpeg'),
(35, 18, 'main', 'a1/7a/d6cac334ea800270f3e4ac4229ba.jpeg'),
(36, 18, 'thumbnail', 'e5/bf/cce166bd0de04c0a67bd2b5c528b.jpeg'),
(37, 19, 'main', '10/9d/5a218ce3488bd798572f9a9c48b9.jpeg'),
(38, 19, 'thumbnail', '1c/a8/139a6f51cb690a1572acf6a12c8d.jpeg'),
(39, 20, 'main', 'a2/6b/1a69c1247a20531e3ccd5a9fb1ec.jpeg'),
(40, 20, 'thumbnail', '7e/1b/bc487dec36a64b6e8295b3811678.jpeg'),
(41, 21, 'main', '07/34/95e202d2785cfa79d068cca91f4a.jpeg'),
(42, 21, 'thumbnail', 'bf/23/fec0a46f85a7c8cb52d3a3aa9f4b.jpeg'),
(43, 22, 'main', 'c4/8b/62ef54a127af97995e4eb8e2f7bc.jpeg'),
(44, 22, 'thumbnail', '7b/10/0d6efc2be6cb730329c6d23655f0.jpeg'),
(45, 23, 'main', 'db/08/517d6a2999ee2a52a2d8af3cca6e.jpeg'),
(46, 23, 'thumbnail', 'a5/4d/099fbb699d9544f1a82e2dd72dfe.jpeg'),
(47, 24, 'main', 'db/64/a9d3f306a5e615e28ab1889f68f8.jpeg'),
(48, 24, 'thumbnail', '4e/04/acba8bfe3458f98706fcd7671040.jpeg'),
(49, 25, 'main', '7d/4b/f6b4202cccbebc9d3880d34b3ec8.jpeg'),
(50, 25, 'thumbnail', '9d/60/7a3347bde4d3ba57fcaf9768d068.jpeg'),
(51, 26, 'main', 'ba/46/6dfe6f9fd606959d63ca97a8749f.jpeg'),
(52, 26, 'thumbnail', '4d/1b/23e38be9489346130f22ae024a4c.jpeg'),
(53, 27, 'main', '12/b6/1c40242e5c0c5bb4c5f99c7bf709.jpeg'),
(54, 27, 'thumbnail', '01/da/0365db7632ddfca8f15b62279740.jpeg'),
(55, 28, 'main', 'b6/6c/424abec62707716cb3cc85d71b80.jpeg'),
(56, 28, 'thumbnail', '15/a4/aa4743e52d1c8c69e5f808e936ba.jpeg'),
(57, 29, 'main', 'e9/87/77d303a5b319ab284eef638b52c6.jpeg'),
(58, 29, 'thumbnail', '8c/07/21288e329bfe41ec6fa6c0f1f8ba.jpeg'),
(59, 30, 'main', '25/2a/eb6d7b2e50e7122e8934ebd80d88.jpeg'),
(60, 30, 'thumbnail', '76/24/a53c18486036b43d68306d49e86e.jpeg'),
(61, 31, 'main', 'e5/7c/07a33bb48ba34e6121d2ca08226e.jpeg'),
(62, 31, 'thumbnail', '3b/b0/38689490b7a4d5e9e67124a81481.jpeg'),
(63, 32, 'main', 'e3/b3/d29f7e761c3ec509d97502e90977.jpeg'),
(64, 32, 'thumbnail', 'fa/00/cf18582f6e41ccb8c5e7ee4d4eb1.jpeg'),
(65, 33, 'main', '95/8d/3f60afc1c99e1364ba798919d19f.jpeg'),
(66, 33, 'thumbnail', '52/ab/f7d2d3116d67d3a0d653d9f8b285.jpeg'),
(67, 34, 'main', 'c6/d9/b21166e712c5891e1562fe48d5ea.jpeg'),
(68, 34, 'thumbnail', '16/da/96bfe16aac4d377dc99b6d4e1ec3.jpeg'),
(69, 35, 'main', '39/60/580f3762a6f978642d0ac08739d3.jpeg'),
(70, 35, 'thumbnail', '67/ea/25832e2e89f92f497131b710b50e.jpeg'),
(71, 36, 'main', '03/96/2b0df83d92f37c5f7720985c3c3b.jpeg'),
(72, 36, 'thumbnail', '58/f8/81b456edda9bc58a889b4035b964.jpeg'),
(73, 37, 'main', '15/10/2e2427927da7670ea588c855614a.jpeg'),
(74, 37, 'thumbnail', 'b9/db/a365a35abbb336287a1fb02af67a.jpeg'),
(75, 38, 'main', '21/87/bd94fd7bb9704a1440c9b236b253.jpeg'),
(76, 38, 'thumbnail', '9d/03/2350ac435316ba16864c7838e60d.jpeg'),
(77, 39, 'main', '71/fe/c648d92d0876f8bfd881040d69ea.jpeg'),
(78, 39, 'thumbnail', '1f/9f/3f42dc39c963fe2f2309aee74eb2.jpeg'),
(79, 40, 'main', '50/11/45399c416fea4f624ae0daa70c68.jpeg'),
(80, 40, 'thumbnail', '59/a5/93130a28203015ef0e85220e6d24.jpeg'),
(81, 41, 'main', '41/f1/88cdc869df816f2e0c387f2c6f7e.jpeg'),
(82, 41, 'thumbnail', '2c/7d/fa6f5293d615cd0f801206fc3c9e.jpeg'),
(83, 42, 'main', 'fd/02/fba61986b35a3b68cbdea6aa395b.jpeg'),
(84, 42, 'thumbnail', '5b/b1/11187217c850bdde8af00e0d0376.jpeg'),
(85, 43, 'main', 'ff/e6/5847cf1aca7b38aa121de84ebfa8.jpeg'),
(86, 43, 'thumbnail', '67/40/8afb520bec02a38edc01fc96bef9.jpeg'),
(87, 44, 'main', 'cb/d7/1dcabe435a86f7d470aaecb98265.jpeg'),
(88, 44, 'thumbnail', '41/42/171076b90080d03194a1f216e86e.jpeg'),
(89, 45, 'main', '3e/03/c2d7fe157327f57bcd0df1b5e315.jpeg'),
(90, 45, 'thumbnail', 'd1/29/f06b131260433df02bc53a45a65a.jpeg'),
(91, 46, 'main', 'ae/1e/029fedd9a5e9dc541b88072a5f77.jpeg'),
(92, 46, 'thumbnail', 'e9/fc/9d95597c48dbb0bf07770b3c62f9.jpeg'),
(93, 47, 'main', '89/7c/3bfe75b9ce90cd93a8c6778f2af1.jpeg'),
(94, 47, 'thumbnail', '1c/98/d3d21f05ea092550c4682807b92a.jpeg'),
(95, 48, 'main', '36/c3/59d64320be7811ec7c837d044387.jpeg'),
(96, 48, 'thumbnail', 'e0/dd/40f83ec0ab27269a73bc34151b3b.jpeg'),
(97, 49, 'main', '82/8c/5082cff07a5affd366e322a40f0f.jpeg'),
(98, 49, 'thumbnail', '99/30/7d59901e1969192854c9e711815d.jpeg'),
(99, 50, 'main', 'f9/d0/6936888dbb68fb9ae2f4605b79e1.jpeg'),
(100, 50, 'thumbnail', 'd2/e5/87cab73713738768c9d5b36e6c7c.jpeg'),
(101, 51, 'main', '6b/27/260ab8957892e77314eb041d96af.jpeg'),
(102, 51, 'thumbnail', '2c/40/6695f4bf19e0c53ce2d543a4f437.jpeg'),
(103, 52, 'main', 'd7/ab/c6afb5cc7c2fc67cae04b63df553.jpeg'),
(104, 52, 'thumbnail', '4e/a2/886b7c2fd21f41d658b518b9c5c6.jpeg'),
(105, 53, 'main', '35/93/4dbd826aa643d3b42bed479a122d.jpeg'),
(106, 53, 'thumbnail', '04/4c/2d91e6374e6cd0bef15266a884b9.jpeg'),
(107, 54, 'main', '6c/a6/d798cb951bcd13eee8fca7077c80.jpeg'),
(108, 54, 'thumbnail', 'fa/c6/2cbe29913ca786ce9afd0a38ff3f.jpeg'),
(109, 55, 'main', 'ae/38/6e1305948fcaa1d60cd69323eb06.jpeg'),
(110, 55, 'thumbnail', '72/4e/e7f085c9cd1a9acda57ceed331bf.jpeg'),
(111, 56, 'main', '7f/59/6c609ef092169a6778ab9d6f753c.jpeg'),
(112, 56, 'thumbnail', 'b4/55/16484d6251000ca1469ef16afd20.jpeg'),
(113, 57, 'main', '35/8d/4bcdc208097b7a7a572f497fa2e0.jpeg'),
(114, 57, 'thumbnail', '43/da/196942ed6895257c3022b713a5b9.jpeg'),
(115, 58, 'main', 'd4/2a/c77d04de1165797cf5b25d4cffd4.jpeg'),
(116, 58, 'thumbnail', '99/ba/85c7bd70e886627d4a4416c1b666.jpeg'),
(117, 59, 'main', 'fe/00/16d35affd5a6c5445330b9a46ff3.jpeg'),
(118, 59, 'thumbnail', 'a1/dc/ef8536a6c2fd1baac9e9458b76ec.jpeg'),
(119, 60, 'main', '79/e2/a8c1843a4870aa48ccafae52d76e.jpeg'),
(120, 60, 'thumbnail', '8d/62/9e41f3ceb960c5ba7daabda8d8e8.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_image_product_variants`
--

DROP TABLE IF EXISTS `sylius_product_image_product_variants`;
CREATE TABLE IF NOT EXISTS `sylius_product_image_product_variants` (
  `image_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  PRIMARY KEY (`image_id`,`variant_id`),
  KEY `IDX_8FFDAE8D3DA5256D` (`image_id`),
  KEY `IDX_8FFDAE8D3B69A9AF` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_option`
--

DROP TABLE IF EXISTS `sylius_product_option`;
CREATE TABLE IF NOT EXISTS `sylius_product_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E4C0EBEF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_option`
--

INSERT INTO `sylius_product_option` (`id`, `code`, `position`, `created_at`, `updated_at`) VALUES
(1, 'mug_type', 0, '2019-06-02 14:48:23', '2019-06-02 14:48:23'),
(2, 'sticker_size', 1, '2019-06-02 14:48:26', '2019-06-02 14:48:26'),
(3, 't_shirt_color', 2, '2019-06-02 14:48:27', '2019-06-02 14:48:27'),
(4, 't_shirt_size', 3, '2019-06-02 14:48:27', '2019-06-02 14:48:27');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_options`
--

DROP TABLE IF EXISTS `sylius_product_options`;
CREATE TABLE IF NOT EXISTS `sylius_product_options` (
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`option_id`),
  KEY `IDX_2B5FF0094584665A` (`product_id`),
  KEY `IDX_2B5FF009A7C41D6F` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_options`
--

INSERT INTO `sylius_product_options` (`product_id`, `option_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(46, 3),
(46, 4),
(47, 3),
(47, 4),
(48, 3),
(48, 4),
(49, 3),
(49, 4),
(50, 3),
(50, 4),
(51, 3),
(51, 4),
(52, 3),
(52, 4),
(53, 3),
(53, 4),
(54, 3),
(54, 4),
(55, 3),
(55, 4),
(56, 3),
(56, 4),
(57, 3),
(57, 4),
(58, 3),
(58, 4),
(59, 3),
(59, 4),
(60, 3),
(60, 4);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_option_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_option_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_CBA491AD2C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_option_translation`
--

INSERT INTO `sylius_product_option_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
(1, 1, 'Mug type', 'en_US'),
(2, 2, 'Sticker size', 'en_US'),
(3, 3, 'T-Shirt color', 'en_US'),
(4, 4, 'T-Shirt size', 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_option_value`
--

DROP TABLE IF EXISTS `sylius_product_option_value`;
CREATE TABLE IF NOT EXISTS `sylius_product_option_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F7FF7D4B77153098` (`code`),
  KEY `IDX_F7FF7D4BA7C41D6F` (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_option_value`
--

INSERT INTO `sylius_product_option_value` (`id`, `option_id`, `code`) VALUES
(1, 1, 'mug_type_medium'),
(2, 1, 'mug_type_double'),
(3, 1, 'mug_type_monster'),
(4, 2, 'sticker_size_3'),
(5, 2, 'sticker_size_5'),
(6, 2, 'sticker_size_7'),
(7, 3, 't_shirt_color_red'),
(8, 3, 't_shirt_color_black'),
(9, 3, 't_shirt_color_white'),
(10, 4, 't_shirt_size_s'),
(11, 4, 't_shirt_size_m'),
(12, 4, 't_shirt_size_l'),
(13, 4, 't_shirt_size_xl'),
(14, 4, 't_shirt_size_xxl');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_option_value_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_value_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_option_value_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_value_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8D4382DC2C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_option_value_translation`
--

INSERT INTO `sylius_product_option_value_translation` (`id`, `translatable_id`, `value`, `locale`) VALUES
(1, 1, 'Medium mug', 'en_US'),
(2, 2, 'Double mug', 'en_US'),
(3, 3, 'Monster mug', 'en_US'),
(4, 4, '3\"', 'en_US'),
(5, 5, '5\"', 'en_US'),
(6, 6, '7\"', 'en_US'),
(7, 7, 'Red', 'en_US'),
(8, 8, 'Black', 'en_US'),
(9, 9, 'White', 'en_US'),
(10, 10, 'S', 'en_US'),
(11, 11, 'M', 'en_US'),
(12, 12, 'L', 'en_US'),
(13, 13, 'XL', 'en_US'),
(14, 14, 'XXL', 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_review`
--

DROP TABLE IF EXISTS `sylius_product_review`;
CREATE TABLE IF NOT EXISTS `sylius_product_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C7056A994584665A` (`product_id`),
  KEY `IDX_C7056A99F675F31B` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_review`
--

INSERT INTO `sylius_product_review` (`id`, `product_id`, `author_id`, `title`, `rating`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 48, 17, 'in asperiores consequatur', 4, 'Labore asperiores rerum accusamus saepe et voluptatem. Mollitia et voluptas eius sed eos sunt aut optio. Sunt velit dolorum est quis omnis laboriosam.', 'rejected', '2019-06-02 14:48:29', '2019-06-02 14:48:29'),
(2, 1, 15, 'maiores quidem perspiciatis', 5, 'Quaerat amet dolorem aut sint id consequatur. Ad dolores odit eaque ea. Rem magni est cupiditate.', 'new', '2019-06-02 14:48:29', '2019-06-02 14:48:29'),
(3, 38, 15, 'ut ut officia', 3, 'Ea id voluptatibus sint omnis. Repudiandae quam magnam est tenetur provident. Sit et officia labore velit.', 'rejected', '2019-06-02 14:48:29', '2019-06-02 14:48:29'),
(4, 25, 2, 'ullam et dolore', 1, 'Enim nesciunt voluptas vero ut ea. Ut deserunt animi ut. Qui velit enim cumque at aut velit.', 'new', '2019-06-02 14:48:29', '2019-06-02 14:48:29'),
(5, 43, 2, 'corrupti qui voluptas', 4, 'Neque corporis eaque vitae et nobis aspernatur deleniti doloremque. Sit dicta maxime officia adipisci optio. Suscipit cum odit vitae quibusdam et velit facere.', 'new', '2019-06-02 14:48:29', '2019-06-02 14:48:29'),
(6, 25, 19, 'aliquid nihil officiis', 3, 'Corporis quo dolores qui dolor. Qui odio fugit qui ea. Placeat sed dolor harum assumenda molestiae.', 'rejected', '2019-06-02 14:48:29', '2019-06-02 14:48:29'),
(7, 37, 3, 'aut qui laborum', 4, 'Illo placeat commodi eius ullam earum ut. Ullam consequatur doloribus sed labore. Dignissimos aut iusto culpa est.', 'accepted', '2019-06-02 14:48:29', '2019-06-02 14:48:29'),
(8, 22, 19, 'non autem a', 3, 'Provident aliquam fugit necessitatibus deserunt accusamus voluptatem. Iste molestiae ipsa repudiandae ducimus reprehenderit. Ad placeat voluptatem ipsum accusantium sit voluptas.', 'rejected', '2019-06-02 14:48:29', '2019-06-02 14:48:29'),
(9, 48, 6, 'vitae aut quae', 2, 'Assumenda dolore sit ipsum placeat quaerat. Illum et veniam voluptates sint. Fugiat laborum error nihil inventore.', 'new', '2019-06-02 14:48:29', '2019-06-02 14:48:29'),
(10, 31, 2, 'aspernatur sequi sit', 1, 'Minima dolorum numquam dicta quo praesentium ex. Praesentium velit laboriosam sit et vel et rerum odio. Quibusdam minus distinctio delectus ad aliquid.', 'rejected', '2019-06-02 14:48:29', '2019-06-02 14:48:29'),
(11, 51, 13, 'facilis doloribus nostrum', 3, 'Cumque distinctio neque tempora magnam cupiditate excepturi. Qui sed rem delectus ipsum. Rerum praesentium sed magni velit.', 'accepted', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(12, 48, 7, 'qui est sit', 1, 'Itaque sed nihil sint accusamus autem. Animi itaque rerum distinctio ipsam quos vel. Ipsum quibusdam quibusdam sit sit.', 'rejected', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(13, 5, 17, 'id sed vel', 5, 'Rerum aut dolore voluptas quasi provident. Quia debitis rem quas vel fuga. Cum consequatur molestiae reiciendis quisquam eius ipsa iusto dolor.', 'accepted', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(14, 18, 8, 'minus vero blanditiis', 5, 'Dolores iure voluptate et non recusandae sunt quasi. Et nisi modi eos est aperiam. Reiciendis debitis placeat minus unde numquam.', 'accepted', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(15, 56, 17, 'voluptas et quia', 5, 'Temporibus quod porro vero illum enim enim. Dicta et non incidunt sit consequuntur. Quo adipisci voluptatem a.', 'rejected', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(16, 55, 10, 'et minus quis', 1, 'Itaque vitae non consequatur aperiam laboriosam animi dolorum maiores. Magni dolore harum atque ad consequatur porro distinctio. Exercitationem qui quam similique soluta et placeat hic.', 'new', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(17, 15, 2, 'ea aut consequatur', 2, 'Reprehenderit pariatur ea voluptatem voluptatem quis. Quidem quasi recusandae ab quidem. Voluptas dignissimos temporibus omnis.', 'accepted', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(18, 43, 15, 'voluptatibus quod quis', 4, 'Omnis ut magnam est explicabo vel vitae veniam. Est quis suscipit sunt. Doloremque consectetur quis reprehenderit ipsam voluptate.', 'rejected', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(19, 59, 17, 'voluptatem totam suscipit', 3, 'Illum esse iure aperiam quasi incidunt cum quas. Dolorum dicta totam sequi ut. Aut velit error sed quibusdam.', 'rejected', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(20, 6, 12, 'enim ea consequatur', 4, 'Neque quia ex optio omnis suscipit. Doloribus est molestias ea quidem minima in dolor. Cum magnam porro impedit explicabo architecto.', 'accepted', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(21, 40, 20, 'necessitatibus sit neque', 4, 'Asperiores iusto quisquam debitis non ab quis. Cum nemo quia deleniti eveniet totam. Voluptatem veritatis et aperiam dolores sint possimus qui.', 'rejected', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(22, 6, 15, 'facere accusamus ut', 4, 'Voluptatum eum consequatur quam. Totam assumenda aut placeat esse laudantium qui soluta. Id repudiandae aut iure est.', 'accepted', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(23, 19, 2, 'repudiandae esse eos', 5, 'Voluptate suscipit et ut qui libero necessitatibus libero. Quia commodi eius fugit similique ex repellat aut. Qui quis aut et consequatur asperiores.', 'accepted', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(24, 5, 16, 'perspiciatis consectetur maiores', 4, 'Illum aut magni sit eveniet. Animi omnis qui sed velit libero vel eos. Delectus fuga enim molestias est.', 'new', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(25, 43, 7, 'excepturi velit omnis', 2, 'Ipsum dolorem voluptas reiciendis omnis quo ipsa sunt. Eius autem ut quisquam quidem quia ea aut. Ipsum aut tempore dolores sed.', 'accepted', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(26, 1, 7, 'ea possimus corrupti', 4, 'Nam culpa libero id ab excepturi. Dolores rerum qui ea laboriosam asperiores. Qui consequatur et repellat exercitationem laudantium.', 'accepted', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(27, 2, 18, 'optio suscipit fugit', 5, 'Culpa ea pariatur impedit esse suscipit voluptatem ad. Quaerat officiis vel unde nobis. Veritatis sequi ipsum dolor.', 'rejected', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(28, 36, 4, 'sint aut laborum', 5, 'Aliquam modi omnis quod eum. Unde nihil ut consectetur ut nihil. Sapiente ullam labore amet in eaque tempora.', 'accepted', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(29, 42, 21, 'quasi nostrum quibusdam', 5, 'Harum explicabo reiciendis et sed ut. Quia ex cum expedita sit ea aut. Vitae nihil rerum provident.', 'new', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(30, 18, 13, 'aut et labore', 5, 'Enim dignissimos nihil est omnis enim velit. Nisi quod dolore vel veniam hic. Occaecati sed reiciendis vitae.', 'accepted', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(31, 56, 17, 'eum quo tenetur', 1, 'Nostrum eum totam enim. Maxime consequatur veritatis consectetur occaecati laboriosam. Quia nemo labore ut eligendi voluptates et.', 'accepted', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(32, 43, 21, 'optio ipsam et', 2, 'Est cum in optio eveniet adipisci sequi. Ab accusantium repellendus eaque ad distinctio et. Dolores libero placeat nulla quae saepe.', 'accepted', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(33, 51, 13, 'id quis itaque', 4, 'Rerum quidem repellat cumque voluptatem modi. Sit beatae dolores expedita sit. Possimus dolorem exercitationem non aliquam.', 'rejected', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(34, 40, 4, 'unde cupiditate quasi', 3, 'Voluptatibus ullam rerum ea natus tempore ut. Eos non accusamus aspernatur quas error a et. Inventore dolor dolores laborum sunt.', 'rejected', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(35, 9, 3, 'modi vel nihil', 5, 'Et sit molestiae rerum nobis qui ad. Qui quo ex vel voluptatem ea velit. Illo est fugit illo.', 'rejected', '2019-06-02 14:48:30', '2019-06-02 14:48:30'),
(36, 7, 19, 'voluptas omnis id', 3, 'Excepturi tempora enim labore eos molestiae sit. Ut quia dolores qui est consequuntur assumenda est. Voluptates et molestiae earum corporis ipsam.', 'new', '2019-06-02 14:48:31', '2019-06-02 14:48:31'),
(37, 49, 10, 'debitis molestiae voluptates', 1, 'Consequatur quo aut error. Explicabo et aut ipsam. Esse officiis sunt sapiente dolores voluptatem.', 'accepted', '2019-06-02 14:48:31', '2019-06-02 14:48:31'),
(38, 59, 19, 'dolorem est pariatur', 3, 'Debitis magni quaerat libero. Vitae ut doloribus dicta voluptatum. Aut reiciendis voluptatem ab cupiditate laboriosam dolores.', 'accepted', '2019-06-02 14:48:31', '2019-06-02 14:48:31'),
(39, 54, 14, 'voluptatem unde sit', 3, 'Velit sint non atque omnis ratione accusantium nihil. Ab veritatis dolor vero totam laboriosam. Corrupti optio velit voluptatem.', 'accepted', '2019-06-02 14:48:31', '2019-06-02 14:48:31'),
(40, 51, 8, 'repellat provident quae', 1, 'Et quaerat delectus saepe qui sed dolores. Quisquam iste asperiores est et facilis adipisci. Dolor cupiditate reiciendis atque ut fugit.', 'accepted', '2019-06-02 14:48:31', '2019-06-02 14:48:31');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_taxon`
--

DROP TABLE IF EXISTS `sylius_product_taxon`;
CREATE TABLE IF NOT EXISTS `sylius_product_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `taxon_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_taxon_idx` (`product_id`,`taxon_id`),
  KEY `IDX_169C6CD94584665A` (`product_id`),
  KEY `IDX_169C6CD9DE13F470` (`taxon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_taxon`
--

INSERT INTO `sylius_product_taxon` (`id`, `product_id`, `taxon_id`, `position`) VALUES
(1, 1, 2, 0),
(2, 2, 2, 1),
(3, 3, 2, 2),
(4, 4, 2, 3),
(5, 5, 2, 4),
(6, 6, 2, 5),
(7, 7, 2, 6),
(8, 8, 2, 7),
(9, 9, 2, 8),
(10, 10, 2, 9),
(11, 11, 2, 10),
(12, 12, 2, 11),
(13, 13, 2, 12),
(14, 14, 2, 13),
(15, 15, 2, 14),
(16, 16, 3, 0),
(17, 17, 3, 1),
(18, 18, 3, 2),
(19, 19, 3, 3),
(20, 20, 3, 4),
(21, 21, 3, 5),
(22, 22, 3, 6),
(23, 23, 3, 7),
(24, 24, 3, 8),
(25, 25, 3, 9),
(26, 26, 3, 10),
(27, 27, 3, 11),
(28, 28, 3, 12),
(29, 29, 3, 13),
(30, 30, 3, 14),
(31, 31, 4, 0),
(32, 32, 4, 1),
(33, 33, 4, 2),
(34, 34, 4, 3),
(35, 35, 4, 4),
(36, 36, 4, 5),
(37, 37, 4, 6),
(38, 38, 4, 7),
(39, 39, 4, 8),
(40, 40, 4, 9),
(41, 41, 4, 10),
(42, 42, 4, 11),
(43, 43, 4, 12),
(44, 44, 4, 13),
(45, 45, 4, 14),
(46, 46, 5, 0),
(47, 46, 7, 0),
(48, 47, 5, 1),
(49, 47, 6, 0),
(50, 48, 5, 2),
(51, 48, 7, 1),
(52, 49, 5, 3),
(53, 49, 6, 1),
(54, 50, 5, 4),
(55, 50, 7, 2),
(56, 51, 5, 5),
(57, 51, 7, 3),
(58, 52, 5, 6),
(59, 52, 6, 2),
(60, 53, 5, 7),
(61, 53, 7, 4),
(62, 54, 5, 8),
(63, 54, 6, 3),
(64, 55, 5, 9),
(65, 55, 6, 4),
(66, 56, 5, 10),
(67, 56, 7, 5),
(68, 57, 5, 11),
(69, 57, 6, 5),
(70, 58, 5, 12),
(71, 58, 7, 6),
(72, 59, 5, 13),
(73, 59, 7, 7),
(74, 60, 5, 14),
(75, 60, 6, 6);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_translation`
--

DROP TABLE IF EXISTS `sylius_product_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_105A9084180C698989D9B62` (`locale`,`slug`),
  UNIQUE KEY `sylius_product_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_105A9082C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_translation`
--

INSERT INTO `sylius_product_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `meta_keywords`, `meta_description`, `short_description`, `locale`) VALUES
(1, 1, 'Mug \"enim\"', 'mug-enim', 'Eveniet nam ex commodi voluptatem exercitationem corrupti. Nihil deserunt similique sunt facere consequuntur. Nihil magni quidem nihil deserunt fugit ducimus. Autem nulla nisi ipsam dicta ut eveniet.\n\nExcepturi deleniti itaque odit modi dolor voluptas maiores. Eos minus autem exercitationem voluptas temporibus veniam. Est ea eveniet consequuntur cumque ut. Distinctio unde in quia labore.\n\nPraesentium rerum commodi et quo sunt omnis. Vitae atque perspiciatis tenetur quo omnis magni quae. Autem veritatis rem quia vel voluptatem fugit corporis. Veritatis nihil saepe expedita pariatur ipsa.', NULL, NULL, 'Aperiam esse quidem sunt vel optio. Similique impedit minima sequi officiis et pariatur dolor. Animi reiciendis sit sit rerum aliquam architecto. Non dicta similique ut consequatur.', 'en_US'),
(2, 2, 'Mug \"quidem\"', 'mug-quidem', 'Voluptatem sequi et assumenda eos sed cupiditate. Ut odit fuga saepe sunt sit quod. Molestiae vero ab aperiam et et dicta quos similique.\n\nEligendi deserunt placeat ut ut repellat voluptas nihil. Dicta et inventore enim corporis aut voluptas et. Quia repudiandae perspiciatis quae sequi deleniti.\n\nOmnis omnis sapiente exercitationem aut impedit. Magnam veritatis recusandae repellat aspernatur voluptatem esse. Quasi molestias dolores dolore dolores et.', NULL, NULL, 'Accusamus et eos nesciunt voluptas itaque. Quia natus at a aliquid laudantium culpa enim odit. Iusto ut recusandae rerum dolore placeat aliquam. Eos consectetur excepturi inventore et.', 'en_US'),
(3, 3, 'Mug \"esse\"', 'mug-esse', 'Sed aspernatur est veritatis eligendi est. Necessitatibus ipsam id reiciendis. Ut id voluptas qui. Ut qui cumque vero. Dolor nulla eum id sed alias vel temporibus.\n\nQuia enim quisquam ut sunt tempore ut quia animi. Laborum dignissimos dicta ad dicta. Ab inventore iure voluptas deserunt explicabo optio quia. Sed reprehenderit eligendi accusamus error omnis eveniet. Nemo nihil quis modi.\n\nEt eligendi unde molestiae ut. Expedita nobis illum eos. Ipsam cupiditate fugit tempora deleniti tenetur illum hic.', NULL, NULL, 'Sint ut natus et eius et corrupti ut. Modi dolorem cupiditate ea unde autem fuga enim in. Reprehenderit amet ad eum eveniet ab est.', 'en_US'),
(4, 4, 'Mug \"cumque\"', 'mug-cumque', 'Qui harum in nostrum quae dicta quo. Fugit autem dolorum laborum velit dolorem totam. Perferendis voluptatem et magni tempora sint soluta.\n\nEt hic suscipit animi temporibus aut iste consequatur. Vero repudiandae qui deleniti praesentium minus. Sed et harum non ut voluptas.\n\nUllam quidem et enim doloribus dolorem sed. Voluptates nemo voluptatem dolor eum quis voluptatem. Perspiciatis laborum odit praesentium molestiae repudiandae inventore est.', NULL, NULL, 'Ducimus quos blanditiis incidunt facilis. Doloremque assumenda mollitia qui molestias qui et vel. Non aspernatur qui porro vel quam ut.', 'en_US'),
(5, 5, 'Mug \"dolor\"', 'mug-dolor', 'Porro explicabo esse aut id velit ipsam. Minima ut atque quis eum quis atque eaque sint. Hic quia hic qui enim animi laboriosam quasi.\n\nNon earum expedita dolores voluptatem saepe. Dolorum et temporibus voluptas dolorum. Eos laborum enim similique est impedit iusto. Recusandae eos aut odio quod.\n\nFuga itaque veritatis alias. Quos autem rerum cupiditate ut. Blanditiis consequatur quia sunt ut mollitia. At autem repudiandae sit. Nam beatae et omnis illo modi ut.', NULL, NULL, 'Atque ex recusandae est omnis. Occaecati soluta accusamus laudantium earum id in vitae. Ipsa corporis at tenetur id. Vitae omnis totam similique.', 'en_US'),
(6, 6, 'Mug \"quo\"', 'mug-quo', 'Corporis incidunt repudiandae maiores. Tenetur fuga nemo consectetur blanditiis similique et quisquam. Neque adipisci non unde non iure.\n\nAliquid maiores qui natus omnis. Nihil quibusdam doloribus fugiat omnis. Sit aspernatur dicta excepturi ipsa vel incidunt.\n\nDolorem harum reprehenderit cum molestiae vel porro. Consequatur reiciendis pariatur praesentium beatae. Cum aliquam sint voluptatem dolores vel.', NULL, NULL, 'Aut eius quisquam pariatur dolor tempore quisquam. Et delectus error cum dolorem unde sint ducimus. Quo omnis vero iste qui ut voluptatum vero. Non amet ea aliquid est et.', 'en_US'),
(7, 7, 'Mug \"corporis\"', 'mug-corporis', 'Provident enim atque corporis atque non assumenda modi. Nesciunt corporis praesentium tenetur inventore tempora est. Molestiae sit voluptas aut.\n\nFacere non iusto eum non ducimus eos. Voluptas a aliquid voluptatibus modi et perspiciatis qui. Sed dolore libero fuga rerum atque.\n\nQuis sit libero voluptatem ipsa consequatur dolorem dignissimos. Quibusdam sit soluta numquam quo similique. Qui aut corrupti incidunt cumque laboriosam ex.', NULL, NULL, 'Est dolores illo sit ad saepe. Aut nobis voluptatem dignissimos rerum occaecati. Rerum inventore maxime accusantium. Deserunt dolore iste illo quibusdam dolorem et culpa.', 'en_US'),
(8, 8, 'Mug \"quibusdam\"', 'mug-quibusdam', 'Sit est magni magni. Nisi voluptatem enim ducimus. Voluptatem deleniti aut necessitatibus dolor ea minima.\n\nEst error fuga illo quia sint. In ut similique tenetur velit ipsum porro molestiae reprehenderit. Inventore ratione cumque maxime vel aut et sunt est.\n\nQui omnis autem eaque occaecati non nemo corrupti harum. Aut recusandae reprehenderit pariatur alias ea officia beatae. At officiis quae facilis inventore sapiente aut tempore. Doloremque reprehenderit dolores corrupti.', NULL, NULL, 'Voluptatem in doloribus voluptatum. Nisi ad sit quod quas ad eveniet. Eveniet ea tenetur et quis debitis ducimus rerum.', 'en_US'),
(9, 9, 'Mug \"voluptate\"', 'mug-voluptate', 'Molestiae vitae doloribus ut asperiores. Nemo consequatur autem quo exercitationem. Sequi aut ullam pariatur veniam ut. Possimus et commodi consequatur et.\n\nConsequatur ut nam veniam rem. Temporibus adipisci dolorem nesciunt fugit libero totam voluptatem omnis. Aut iusto aut reiciendis sed ut id. Aut minima nobis odit voluptate. Itaque quisquam non quasi nam autem voluptatem.\n\nVoluptatem laudantium repellendus quam voluptas enim corrupti. Voluptatum officiis ad provident id consectetur natus temporibus. Eum est illum molestias fugiat nobis.', NULL, NULL, 'Expedita suscipit sunt quia consequatur quis. Reiciendis sit sit ut sunt dolore. Enim eligendi id qui quia.', 'en_US'),
(10, 10, 'Mug \"ipsa\"', 'mug-ipsa', 'Maiores sunt et vitae numquam. Quae ut quo qui quo. Autem rerum et maiores et praesentium repellendus soluta. Quo similique voluptatem nulla blanditiis nam qui pariatur.\n\nMaiores enim aut aut repudiandae sed nobis. Animi ut quo vero omnis. Impedit quis quia accusamus dolor. Eius incidunt deserunt magnam.\n\nConsectetur quod ut neque et. Temporibus accusantium molestias fugit laudantium blanditiis. Eos fuga unde velit ad. Enim praesentium porro ullam dicta rerum sapiente.', NULL, NULL, 'Fuga nostrum qui molestiae qui veniam deserunt. Cupiditate perspiciatis et pariatur sit fuga. Et est et voluptatem quam. Non rerum quam ab.', 'en_US'),
(11, 11, 'Mug \"explicabo\"', 'mug-explicabo', 'Incidunt omnis illum voluptas excepturi dolor est. Ipsa hic unde repudiandae dolor inventore eveniet odit qui. Sed et laborum rerum quod adipisci ut. Corrupti non ad omnis ut aut doloremque.\n\nDoloremque omnis repudiandae fugit quia molestiae optio. Optio et velit harum sit vel in. Dolores sit libero quis sint deleniti aperiam necessitatibus. Maxime fuga odio animi cupiditate.\n\nPerspiciatis exercitationem voluptatum odio eaque non debitis. Itaque id eos et accusamus sequi. Architecto veniam dignissimos officiis ut eum est eum.', NULL, NULL, 'Est ut officia recusandae placeat. Omnis velit dolores dignissimos et sit accusantium praesentium enim. Necessitatibus necessitatibus sit dolore earum sint sed est necessitatibus. Minima molestias maxime facilis blanditiis sit non.', 'en_US'),
(12, 12, 'Mug \"laboriosam\"', 'mug-laboriosam', 'Ut natus quos fugit aliquid ea. Perspiciatis quisquam quaerat occaecati est officia. Quam iusto necessitatibus magni dolorem repellendus. Itaque sapiente quas fuga eaque.\n\nCorrupti sapiente qui labore exercitationem ipsa accusamus a. Sunt explicabo optio doloremque. Cumque tenetur eveniet sed rerum est quis labore ipsum.\n\nEt saepe rerum eius harum molestias eos voluptatem. Delectus dignissimos aut ab rem et et rerum dolorem. Eius mollitia sed et.', NULL, NULL, 'Eius iure maiores modi. Ex autem est hic ut. Consequatur et at consectetur sed et. Libero dolores dolorem eum temporibus consequuntur.', 'en_US'),
(13, 13, 'Mug \"quam\"', 'mug-quam', 'Est repellendus qui sapiente. Odio totam ducimus ut accusantium est velit. Sed officia unde qui quo saepe corporis voluptas quidem.\n\nSimilique eos odio blanditiis. Ipsa ab sint et ad tempore perspiciatis. Consequatur cupiditate explicabo et labore culpa dolore. Non vel fuga exercitationem.\n\nLibero corrupti distinctio dolorem qui illum dolor sit voluptas. Non asperiores quis voluptates dolorem perferendis. Voluptatem id ipsum nam at delectus quia occaecati minima. Ut non impedit sunt quia unde facere velit.', NULL, NULL, 'Blanditiis qui iure iure dolorum. Et qui veritatis est iure quasi. Incidunt molestiae sunt et dolore hic id esse. Sed enim quisquam modi blanditiis iure.', 'en_US'),
(14, 14, 'Mug \"vel\"', 'mug-vel', 'Nulla minima magni molestiae dolorem. Nesciunt aut voluptas enim in. Deserunt quam dolores alias occaecati qui aut.\n\nVoluptatem eos recusandae quae molestiae et ipsam. Veniam quidem tempore enim incidunt et porro non. Dolor quia quidem voluptatem consequatur molestias non.\n\nRepellendus sint inventore soluta ipsam iste eius. Occaecati libero suscipit est ea a. In quisquam at neque a earum molestias qui facilis.', NULL, NULL, 'Excepturi quia aut voluptas nobis. Quod voluptas odit rerum et exercitationem dolores et.', 'en_US'),
(15, 15, 'Mug \"temporibus\"', 'mug-temporibus', 'Sunt autem ut voluptates omnis saepe et. Voluptatem voluptatem quasi voluptas.\n\nAperiam ipsum ut sed dolorem enim voluptatem. Quas doloribus ipsam et qui. Et rerum necessitatibus dolorem voluptatem.\n\nMagnam enim voluptatibus consequatur. Ratione distinctio non qui. Alias quasi sit sequi eius. Quam incidunt impedit eligendi esse veritatis illum.', NULL, NULL, 'Consequuntur praesentium beatae voluptas omnis assumenda odio. Adipisci laborum aut sint.', 'en_US'),
(16, 16, 'Sticker \"et\"', 'sticker-et', 'Similique aut dolorem quis placeat aut. Consectetur hic laudantium aspernatur minus ut adipisci qui nisi. Ut exercitationem minima ut. Autem nobis voluptatem non omnis consequatur occaecati ducimus ut.\n\nAut assumenda molestiae dolor dolores sed. Minima earum tempora dignissimos dolore. Repellat distinctio fugiat cumque amet.\n\nQuia distinctio sed et similique minus. Nemo cupiditate aspernatur nemo amet consequatur voluptates sed. Debitis iusto maiores rerum atque et. Repudiandae debitis porro libero ipsam porro ut.', NULL, NULL, 'Doloribus eum quaerat ut voluptatem eum ipsa. Omnis et rerum atque voluptatem cumque harum odit. Accusamus culpa earum aliquam ad.', 'en_US'),
(17, 17, 'Sticker \"ullam\"', 'sticker-ullam', 'Adipisci vero perferendis sit nobis qui ex temporibus. Et quis est ea ad. Ut nihil quas vero optio laboriosam. Dolores assumenda perferendis dicta consequatur.\n\nEt aut rem quidem maxime autem. Est architecto at esse odio quia. Error enim praesentium odit error dignissimos voluptate voluptatibus commodi.\n\nEt molestiae possimus accusamus. Quis modi nihil molestias architecto. Inventore explicabo id nobis natus.', NULL, NULL, 'Commodi aut in sit reprehenderit in nihil. Illum ullam veniam id doloremque id maiores repudiandae. Et rerum autem in occaecati repellendus. Consectetur facilis harum assumenda.', 'en_US'),
(18, 18, 'Sticker \"dolor\"', 'sticker-dolor', 'Atque consequatur dignissimos corrupti cumque consequatur. Placeat eaque voluptatem officia iusto magni corporis. Et corrupti sunt suscipit. Numquam iure voluptas consequatur. Accusamus commodi cupiditate rerum illum et aut officiis.\n\nAccusamus et reprehenderit voluptatem sit aliquid. Labore ratione odit distinctio similique consequatur vel et aut. Quia alias sed molestiae reiciendis quos iusto veniam. Animi impedit cupiditate nesciunt perspiciatis animi voluptate et totam.\n\nSequi quia dolor vero. Qui ipsum placeat voluptatum et facere. Eum omnis iste omnis et nobis. Perspiciatis officia voluptatem sit nemo optio eum asperiores. Culpa aliquam facilis facilis.', NULL, NULL, 'Qui voluptates rerum est harum ipsa occaecati. Beatae eaque sit dolorem hic.', 'en_US'),
(19, 19, 'Sticker \"nemo\"', 'sticker-nemo', 'Eos necessitatibus excepturi est occaecati dignissimos. Et voluptatem recusandae in recusandae qui cum ut excepturi. Quae natus doloremque mollitia ut et itaque voluptatem.\n\nNihil aut temporibus et totam temporibus cum. Similique sed minima similique et. Odit nobis incidunt dolorem aut quia sunt.\n\nIpsa facilis possimus deleniti laborum in. Sunt vel sed molestiae temporibus quasi placeat. Aspernatur et consequatur numquam repellat reiciendis. Vitae commodi quo sapiente magni. A dolores fugiat nostrum recusandae vel velit consequatur.', NULL, NULL, 'Non praesentium consequuntur quo commodi id autem quasi. Dolor aspernatur id perferendis ducimus sit praesentium. Error aut quis rem velit et enim.', 'en_US'),
(20, 20, 'Sticker \"facere\"', 'sticker-facere', 'Omnis fuga eaque autem. Repellendus veniam magnam et quo magnam. Rerum et voluptatem eos quo iste molestias. Et eveniet odio molestias officia aut id.\n\nEt magni molestias vero architecto harum. Officiis explicabo corporis et neque qui voluptas. Reiciendis ad debitis iure enim aperiam quis odit.\n\nAutem rem enim mollitia ipsa. Deserunt a voluptatum quibusdam neque. Nulla dolorum qui necessitatibus corporis quaerat et.', NULL, NULL, 'Minus aut enim quo et aspernatur modi. Inventore ab et earum qui libero quibusdam. Aut sit aspernatur sed quaerat vero.', 'en_US'),
(21, 21, 'Sticker \"veritatis\"', 'sticker-veritatis', 'Rerum delectus dolores nam rem deserunt voluptatem et. At velit eum ad qui excepturi.\n\nNon quod omnis quo tenetur. Perferendis consequuntur labore quisquam repellat. Magni quas necessitatibus qui culpa minima.\n\nNihil assumenda deserunt explicabo occaecati. Quia amet quia provident voluptate.', NULL, NULL, 'Tempore ut itaque sunt aut expedita. Laudantium voluptatem numquam tempora voluptas rem facilis distinctio. Et necessitatibus enim quis. Itaque omnis facilis voluptatem reiciendis.', 'en_US'),
(22, 22, 'Sticker \"sint\"', 'sticker-sint', 'Delectus nam voluptatem atque natus ipsum. Vitae ducimus quos exercitationem laudantium. Sed iusto dolor rerum ipsa commodi dolores occaecati illum. Consequatur aliquid magnam voluptas molestiae sed quos.\n\nOmnis possimus qui vero provident ducimus nihil. Et inventore assumenda assumenda voluptatem. Excepturi illo quis laudantium.\n\nQuod earum ipsa autem ipsum maiores distinctio tempora minus. Animi quasi at saepe harum impedit maiores repudiandae ea. Ut harum esse molestias consequatur placeat vel.', NULL, NULL, 'Ratione id nihil excepturi quisquam sequi facilis. Odio distinctio alias dolor. Aut odit id sit unde cumque ad aliquid. Quis reprehenderit esse voluptas ut eum aspernatur.', 'en_US'),
(23, 23, 'Sticker \"perspiciatis\"', 'sticker-perspiciatis', 'Iste eaque laboriosam eaque illo earum recusandae consequuntur. Aliquam non tenetur id consectetur vero aut et. Nihil vero veniam qui in asperiores aut. Eum reiciendis sunt ea veritatis quasi velit numquam.\n\nOmnis et beatae quasi fuga dolorem fugit. Asperiores sequi rerum atque. Reprehenderit magni facere qui id officiis reprehenderit amet. Iure est itaque occaecati doloremque saepe.\n\nFugit aliquid vero eos pariatur omnis. Dolore amet laboriosam cum voluptatem illum sint dolores esse. Voluptas eum laboriosam non voluptatibus. Deserunt totam dolorum alias fugit quos ut.', NULL, NULL, 'Et vero consequatur libero est in. Error consequatur doloribus maxime odit eum.', 'en_US'),
(24, 24, 'Sticker \"impedit\"', 'sticker-impedit', 'Qui accusamus pariatur vitae nesciunt veritatis porro minus. Aut ut laboriosam tempora non et tempore quidem. Molestiae repellendus ea maiores quos velit culpa. Totam quibusdam at facilis non et aut.\n\nIpsam soluta et minima et aut. Aliquam magni ut ut officia. Et occaecati impedit commodi nulla aliquam voluptas. Quia omnis architecto omnis qui aliquam id beatae. Aut eligendi voluptatibus officiis possimus assumenda dolore nulla.\n\nPraesentium et quibusdam aliquam. Exercitationem ut quia expedita voluptas. Excepturi sunt vel inventore qui dolorem ab velit.', NULL, NULL, 'Rerum maiores dolor veniam incidunt. Illum consequatur cumque aut dolores facere dolorum. Nisi totam necessitatibus culpa aut dolor. Labore sit veritatis rem facere cumque aut consequatur. Ducimus vel placeat quis minus cumque ullam.', 'en_US'),
(25, 25, 'Sticker \"dicta\"', 'sticker-dicta', 'Id consequuntur aut minus sapiente et aut dolorem. Voluptatem ut voluptas et vel vel. Ut deserunt voluptatum veniam libero est alias nisi.\n\nRepellat vel et placeat. Rerum rerum aut cumque debitis occaecati cumque qui iusto. Quis ex reprehenderit sint corporis qui molestias.\n\nAlias accusantium ad sed non aut ratione itaque. Doloribus aut non ad minima eaque.', NULL, NULL, 'Saepe magnam ipsam eaque cupiditate. Qui expedita aut rerum aliquam. Voluptates debitis temporibus similique est. Fugit magni veritatis amet quae.', 'en_US'),
(26, 26, 'Sticker \"debitis\"', 'sticker-debitis', 'Quia dolores optio et eligendi blanditiis quam. Est quaerat rerum veniam dolores non. Itaque maiores ipsum deleniti et. Dolores in sit quis corporis dolor quis. Facilis quas a sint cum.\n\nDucimus quis nostrum labore impedit. Dolorum cum ab voluptatibus fugiat eum. Eos ut excepturi atque est nam est. Voluptates impedit tempore vero error id ut quo voluptatem.\n\nIllo id illum quis provident sit. Quia in eum placeat nihil nostrum. Ex dolores eum at culpa. Consequatur cum quod harum perspiciatis.', NULL, NULL, 'Sint nemo aliquam voluptatibus quasi qui. Odit vel eius dolore sit porro minima qui quis. Id eaque voluptatum vel illo praesentium laborum aspernatur.', 'en_US'),
(27, 27, 'Sticker \"praesentium\"', 'sticker-praesentium', 'Voluptatem aut reprehenderit facere aut. Delectus et similique tempore harum rerum enim. Doloribus numquam rerum est qui ratione voluptatem consequatur.\n\nArchitecto nostrum quos laudantium repellendus voluptatem nobis reiciendis. In omnis voluptas non illo. Iure adipisci deleniti voluptates hic. Veritatis placeat et a quasi nostrum ipsa ut.\n\nConsequatur harum nihil similique rerum assumenda. Voluptatem est accusantium totam rerum. Incidunt fugiat et quo iusto quasi enim dignissimos. Autem repellat mollitia veniam distinctio.', NULL, NULL, 'Cupiditate dolores sit quisquam repudiandae. Nostrum et maiores provident est est nisi. Beatae quia eos aut in maxime repudiandae velit. Dolorum asperiores sunt odit explicabo maxime fuga.', 'en_US'),
(28, 28, 'Sticker \"quos\"', 'sticker-quos', 'Exercitationem porro ad laboriosam non et sunt sed. Velit nobis recusandae rerum quae. Quasi libero aut recusandae qui non non odio. Et consequatur voluptatem quod ut ipsa quia.\n\nUllam ullam consequuntur est facere eum consectetur. Maxime hic laboriosam quasi rerum accusamus ipsum a blanditiis. Veritatis quibusdam quia quos vitae nihil doloremque nobis.\n\nAut quam molestiae maxime accusamus quaerat. Rerum adipisci saepe hic ab dolorem hic. Aut facere dolores recusandae sint consequuntur rerum ipsam. Necessitatibus occaecati veritatis quasi omnis dolore pariatur esse.', NULL, NULL, 'Rerum et nisi ut neque est deserunt alias. Est quibusdam aut commodi commodi non iusto maiores. Eaque sed et eaque labore voluptates accusamus totam harum.', 'en_US'),
(29, 29, 'Sticker \"animi\"', 'sticker-animi', 'Mollitia ratione a accusantium veniam ex corrupti aperiam. Inventore ratione odit et dolorum. Et ut numquam a quam velit ex quia excepturi.\n\nAliquid ut exercitationem beatae sunt. Dolores sed voluptas laborum incidunt sed. Doloribus reiciendis facere similique officia.\n\nSed excepturi sapiente maxime aliquid pariatur veniam. Est iusto veniam est tempora distinctio est omnis. Saepe provident dolorem minus ut hic. Ducimus odit voluptatem nobis nemo et est quos.', NULL, NULL, 'Dicta at laudantium voluptas aut. Amet sequi cum voluptatem inventore pariatur est sed. Et tempore laborum dolorem eum dolorem provident quod.', 'en_US'),
(30, 30, 'Sticker \"soluta\"', 'sticker-soluta', 'Quod vel nemo blanditiis dolor est saepe assumenda. Enim voluptas ipsam perspiciatis inventore dicta possimus tempora. Quia enim sapiente quia non nihil. Ut facere sed temporibus aperiam. Laborum beatae et aspernatur quia architecto.\n\nCorporis itaque ipsum ea accusamus nihil aut est. Voluptatem libero enim dolore. Aut tenetur deleniti quia et nostrum blanditiis suscipit. Ut est quia optio ut nihil.\n\nNobis qui qui id voluptas distinctio necessitatibus eveniet. Qui laborum ea iure vel aut sed quo. In esse qui id quis tempora vel. Veniam qui harum quisquam aut.', NULL, NULL, 'Provident et optio voluptatem voluptas consectetur nulla illo. In omnis vel in laboriosam dolorum labore quaerat sed. Autem rerum cum est officiis. Dignissimos neque provident est.', 'en_US'),
(31, 31, 'Book \"voluptatem\" by Mae Franecki', 'book-voluptatem-by-mae-franecki', 'Enim nisi sit aut asperiores ex dolorum nesciunt mollitia. Earum exercitationem soluta veritatis aspernatur mollitia non adipisci. Vel libero eos nesciunt dolores a vel. Cum illo sed aliquid molestias. Ut et id consequatur sit dolor reiciendis ut.\n\nExplicabo sit a a adipisci corporis fugiat unde. Suscipit consectetur deserunt fugiat quos consequuntur eum quia pariatur. Illo distinctio est est facere tenetur nostrum iure. Laboriosam quo nobis eos dolorum consequatur saepe.\n\nA aut mollitia voluptate modi. Id quidem quae est nihil. Alias et non consequatur sint quasi. Non sint voluptas necessitatibus vel earum officia id. Qui saepe nulla laborum ea.', NULL, NULL, 'Officiis explicabo quo dolores. Ad magni dolor officia. Sit architecto est harum provident exercitationem vel. Dolor libero molestiae earum sed itaque quae et optio.', 'en_US'),
(32, 32, 'Book \"et\" by Petra Brakus', 'book-et-by-petra-brakus', 'Aut et est non. Eligendi architecto ipsam quam a aut tenetur. Quia ut soluta doloremque libero ducimus doloremque natus.\n\nVeritatis maiores officia explicabo ab debitis necessitatibus eligendi. Adipisci occaecati dolore sed doloremque quaerat.\n\nVel est non consequuntur totam ducimus sequi sed. Officia assumenda dolore est veniam rerum optio expedita. Non vitae quo saepe corporis voluptates cum.', NULL, NULL, 'Doloribus deserunt aut illo quisquam aspernatur tempore. Quidem nihil beatae commodi omnis enim rerum esse illum. Occaecati voluptas quaerat aut sit consequatur a praesentium ut.', 'en_US'),
(33, 33, 'Book \"veniam\" by Dr. Dandre Kulas Sr.', 'book-veniam-by-dr-dandre-kulas-sr', 'Culpa id eveniet consequatur aut omnis veniam velit. Dolor sunt iusto blanditiis consequatur est voluptate explicabo. Et consectetur ipsam occaecati aliquid et aut voluptatum. Accusamus necessitatibus a eos alias et. Culpa molestiae laborum facere ut consequatur.\n\nBeatae dolorum doloribus ut. Id deleniti qui autem qui eos doloribus. Et voluptatem unde fugit porro qui quisquam ex. Iste assumenda eveniet ullam totam enim et voluptatum.\n\nUt placeat voluptatem iste ab corrupti non. Autem mollitia ipsa sed aliquam. Quas fuga ab tenetur laudantium quisquam. Asperiores voluptatibus dolorum tempore molestiae. Odio sit adipisci voluptates adipisci possimus.', NULL, NULL, 'Qui sunt reiciendis laboriosam fuga quam vel. Aut est vero consequatur sit sunt. Quia eos vel et nobis soluta non velit. Praesentium placeat blanditiis deleniti doloribus.', 'en_US'),
(34, 34, 'Book \"corrupti\" by Dena Hermiston', 'book-corrupti-by-dena-hermiston', 'Eum dolores sint rerum aliquam. Quas nam iste officiis vitae necessitatibus. Ut dolor praesentium accusantium harum sed amet et provident.\n\nItaque magnam sint quo in quis rem ipsam. Animi assumenda cumque dolor ea et blanditiis facere. Perferendis ut dolor non laboriosam inventore officiis. Est omnis tempora velit incidunt autem illum enim. Illum distinctio molestias qui quia iure.\n\nEos ea qui neque dolorem sapiente dolores. Similique non quidem aliquid ut non consectetur recusandae. Minus blanditiis at libero debitis consequatur sint ut.', NULL, NULL, 'Voluptas exercitationem qui velit quos doloremque quas. Dolor assumenda reprehenderit sapiente doloribus nihil error. Ab aut officia omnis ut voluptas.', 'en_US'),
(35, 35, 'Book \"molestias\" by Syble O\'Keefe', 'book-molestias-by-syble-o-keefe', 'Dolor assumenda sunt eos non architecto omnis cum. Aliquam repudiandae est neque. Minima cupiditate officia et perferendis accusamus similique sed. Praesentium sit iure nisi culpa est.\n\nRatione est et eum aliquam error cupiditate explicabo. Et mollitia dignissimos quisquam sed incidunt nihil voluptatem possimus.\n\nAut qui pariatur non. Consequatur ratione aspernatur et rerum voluptas minima dolores et. Voluptatem dolor et eum soluta.', NULL, NULL, 'Porro quam sed consequatur pariatur enim voluptas quia. Vero eum et consequuntur et modi aut natus. Nulla commodi velit sit eos est odit. Odit officia omnis ea odit quibusdam repellat est. Totam voluptas officiis accusantium molestiae nulla.', 'en_US'),
(36, 36, 'Book \"sit\" by Mr. Elian Bernier', 'book-sit-by-mr-elian-bernier', 'Et tempore veritatis culpa sit possimus sint sint. Rerum aut voluptas atque quo consequatur quos. Ea qui aut nam delectus laudantium consequatur et. Qui eligendi non quaerat voluptas quas veniam similique.\n\nIure voluptas quis quam sed doloremque voluptatibus. Eos repellendus odit fugit.\n\nUt velit recusandae error saepe est facere suscipit. Velit corrupti soluta tempore consequuntur nesciunt. Id enim sunt magnam qui qui pariatur dolores. Magni non sit omnis facilis commodi officia vel.', NULL, NULL, 'Voluptatem aut omnis expedita et alias corporis laboriosam. Neque quisquam totam quia ut molestiae cum. Excepturi aspernatur delectus laboriosam. Ab molestias minus natus officiis in quia voluptas.', 'en_US'),
(37, 37, 'Book \"magnam\" by Reid Cole', 'book-magnam-by-reid-cole', 'Quis eius autem est ullam minus quod consectetur. Molestiae voluptatem quia repellendus nisi et ea deserunt minima. Expedita nihil et at nulla repudiandae quasi consectetur.\n\nEveniet fuga voluptate quo est aut ex non qui. Ullam quasi molestiae et voluptatem id quibusdam tenetur. Earum qui ad sunt. Est similique modi quis eligendi accusantium. Quis et animi assumenda labore architecto.\n\nAut molestiae repellendus sunt. Nihil maxime non voluptas aut. Hic vel error consequatur rem soluta.', NULL, NULL, 'Aliquam ratione eos neque error. Pariatur odio est quos aut totam et. Accusantium numquam nisi qui totam delectus officiis harum. Enim ut vitae ratione enim dicta et.', 'en_US'),
(38, 38, 'Book \"adipisci\" by Ezekiel Murazik', 'book-adipisci-by-ezekiel-murazik', 'Quasi tenetur distinctio officiis dolor. Voluptas hic quis totam. Totam illum doloremque veritatis aliquid.\n\nSaepe praesentium dolores harum beatae nihil. Consequatur soluta quasi consequuntur in maxime. Ut veritatis delectus voluptatem nihil nam sapiente. Qui sit voluptatem magni quod aut impedit qui neque.\n\nSoluta asperiores qui nam sed. Praesentium odit autem aut omnis. Molestiae distinctio accusamus similique laudantium numquam sed vero. Nihil voluptatem eveniet et rerum dolorem.', NULL, NULL, 'Ex et est fuga aut quas. Voluptas tempora quia aut unde accusantium impedit vitae. Aspernatur minima vel officia.', 'en_US'),
(39, 39, 'Book \"dolore\" by Ms. Lonie McGlynn MD', 'book-dolore-by-ms-lonie-mcglynn-md', 'Expedita maxime quod rerum iste at asperiores qui. Quod numquam maiores itaque quaerat est libero porro quia. Vero voluptatibus doloribus maxime qui ut. Libero nostrum nam praesentium facilis aliquam nobis ullam.\n\nCorporis quidem expedita commodi expedita sed hic. Ipsa itaque accusantium repellendus. Omnis sunt nisi consequatur maiores ullam quod. Quia dolores rem quo sit.\n\nEligendi at tempora sequi consectetur nulla dolorum. Tempora in fugiat repellat. Voluptate laudantium molestias animi sint dolores adipisci at. Sapiente aspernatur consectetur in blanditiis ipsum cumque.', NULL, NULL, 'Delectus sint temporibus eos amet qui id minima. Officiis ullam et id magni est libero. Magni beatae et ut fuga.', 'en_US'),
(40, 40, 'Book \"reiciendis\" by D\'angelo Graham V', 'book-reiciendis-by-d-angelo-graham-v', 'Nihil quo quia labore quia consequatur explicabo. Non eos accusantium odit reprehenderit saepe qui. Autem quam consequuntur totam aut dolor neque. Earum atque labore voluptatem blanditiis et eos.\n\nDignissimos vel quo qui distinctio quo. Sit et id repudiandae minima in fuga voluptatum. Nostrum accusamus voluptas omnis eveniet. Beatae et pariatur minus et totam quod.\n\nDeleniti ipsum qui inventore consectetur omnis eius harum. Facere fugit illum adipisci hic dolores suscipit. Saepe omnis quo accusamus in sit sunt. Consequatur in provident id expedita quia et soluta.', NULL, NULL, 'Aut voluptatem qui occaecati aut omnis repellat. Eligendi consequatur consequuntur quia at voluptas laboriosam. Dignissimos est nam tempora aspernatur.', 'en_US'),
(41, 41, 'Book \"ratione\" by Dr. Percy Morar', 'book-ratione-by-dr-percy-morar', 'Quia earum suscipit eum consequatur omnis quos iusto. Cupiditate harum culpa dolor deleniti. Aut et ut ad porro suscipit. Ut aspernatur repellendus et et sed temporibus.\n\nIn fugit voluptas quos. Vel alias suscipit in corrupti nobis distinctio. Sunt iste magnam culpa ullam quaerat iure expedita.\n\nRepellat minus et suscipit dolor et ullam. Optio perferendis ipsum qui aut ad autem illum. Quisquam quasi et nemo assumenda quo non magnam. Fugiat unde error alias dolor et esse.', NULL, NULL, 'Quidem omnis corporis voluptas sapiente voluptatem. Nostrum necessitatibus aut vero est molestiae. Doloribus a et et dignissimos.', 'en_US'),
(42, 42, 'Book \"nemo\" by Mrs. Margarett Wyman', 'book-nemo-by-mrs-margarett-wyman', 'Doloribus quia tempora excepturi quas eveniet fuga eius. Cupiditate consequatur est corporis illo eaque nulla odio est.\n\nArchitecto ut et repudiandae quod voluptatem optio ut. Et sit velit in consequatur repellat repellendus commodi. Sed quisquam magnam odio ratione. Doloremque minima quia doloremque consectetur nihil omnis aut praesentium.\n\nVelit adipisci voluptas maiores non. Libero in laborum vitae qui ducimus vel est. Reprehenderit dolorem voluptas est occaecati laudantium. Aliquam veritatis quod tempora.', NULL, NULL, 'Ea eum non et qui voluptas dolorem odio debitis. Iusto sunt repellat quam. Sed vitae vitae aut ut consectetur blanditiis.', 'en_US'),
(43, 43, 'Book \"officiis\" by Zachariah Reichert', 'book-officiis-by-zachariah-reichert', 'Voluptas est ea enim accusamus. Repellendus qui cum beatae aut. Velit itaque eum iste tempora laborum esse sequi. Praesentium occaecati iste quibusdam.\n\nFuga et quam id explicabo id deserunt consequatur. Quos assumenda provident nesciunt dolorum animi. Et architecto ut ut voluptate quia voluptates tempore. Et ab occaecati voluptatem provident ullam odio.\n\nDeserunt quia unde occaecati sed nobis maiores. Sit alias perferendis qui veniam quibusdam. Sit hic pariatur hic.', NULL, NULL, 'Est harum qui voluptas assumenda. Ut sapiente natus fuga veniam omnis sit nesciunt. Repellat accusantium doloremque et voluptatibus dolorem eum explicabo.', 'en_US'),
(44, 44, 'Book \"sunt\" by Mrs. Anne Ullrich', 'book-sunt-by-mrs-anne-ullrich', 'Quidem est expedita dolorem dolores provident repellendus voluptatem. Provident in occaecati mollitia sed vero aut consequatur. Necessitatibus omnis eaque reiciendis impedit et velit.\n\nEa minus sit hic cumque ullam omnis. Sit quo esse quisquam maiores. Ducimus at harum tenetur ratione sit eius distinctio. Molestiae magnam quia voluptate maxime sit inventore quo.\n\nNesciunt eum culpa est dignissimos voluptatem qui quos. Aut illo dolor quos. Fugiat aut odit omnis id aspernatur. Laborum eius consequatur quo omnis vel laboriosam eligendi facilis.', NULL, NULL, 'Omnis quia in qui labore et. Cupiditate quis voluptate et optio sit itaque debitis ullam. Veritatis architecto et numquam vel possimus et. Sed occaecati quo autem et nihil enim quam sunt.', 'en_US'),
(45, 45, 'Book \"laboriosam\" by Prof. Markus Gislason', 'book-laboriosam-by-prof-markus-gislason', 'Nisi eius quia quae eius. Nihil qui minus odio unde porro eveniet repellendus. Explicabo eos qui ipsum dolor.\n\nAssumenda qui minus qui laborum excepturi maiores rem dolorem. Quia sint autem inventore accusamus. Cumque vel iure sapiente est qui explicabo et. Dolor itaque hic consectetur sequi facere.\n\nAssumenda fugiat facere eius. Atque repudiandae numquam magni voluptatibus at in. Dolorem consequatur repudiandae unde pariatur.', NULL, NULL, 'Nisi eligendi consequatur ullam minima. Ipsa omnis quia exercitationem nihil et minus. Quos repellat magni tempora numquam.', 'en_US'),
(46, 46, 'T-Shirt \"quam\"', 't-shirt-quam', 'Aut laborum est in cumque sint dolorem. Pariatur doloribus ipsa dolorem nihil sapiente itaque pariatur. Est aut eveniet explicabo repellendus omnis. Officia sunt veniam praesentium magni autem illum molestiae.\n\nUt dignissimos qui consequatur voluptatum perspiciatis. Omnis ea ut pariatur aut repellat veniam. Ut cumque qui ea voluptas unde.\n\nQuis accusamus totam voluptatibus totam id repellat. Dicta beatae facere accusantium a. Porro qui sapiente nisi dolores.', NULL, NULL, 'Possimus deleniti id libero corrupti cumque. Sunt similique quidem qui dolores est earum. A consectetur accusamus et eaque cupiditate illo alias. Officiis eveniet quis in alias necessitatibus molestiae doloremque. Sunt placeat dicta ut.', 'en_US'),
(47, 47, 'T-Shirt \"quo\"', 't-shirt-quo', 'Repellendus enim tempore velit ea blanditiis corrupti eum. Eos impedit repellat sequi qui.\n\nAt unde eaque doloremque accusamus qui atque. Fugit iusto autem voluptas aperiam est inventore minima. Vel hic velit voluptatem eum.\n\nIllum id exercitationem placeat ad quam odit nesciunt. Est est dignissimos quo ut sed tempora. Pariatur dolore sint beatae quis minus atque eius.', NULL, NULL, 'Laudantium dolores enim quod totam quis blanditiis consequatur sed. Nesciunt nesciunt fuga praesentium sunt voluptatem. Quibusdam aperiam non qui. Iure cupiditate ea soluta sunt sed.', 'en_US'),
(48, 48, 'T-Shirt \"voluptatem\"', 't-shirt-voluptatem', 'Corporis qui delectus hic et. Sequi neque alias voluptas sequi et id sequi. Ipsam facilis est temporibus et voluptatem. Vero optio maiores impedit officiis cupiditate.\n\nQuis eaque minima qui consequatur et. Et voluptatem alias molestias totam unde velit eveniet. Sequi nihil rerum cumque sit placeat libero.\n\nQuisquam expedita dolores deleniti sunt inventore odit quia laboriosam. Repellendus optio quis at eum. Voluptatem quibusdam aut suscipit. Dolores ipsam quo repellat odit sed nisi.', NULL, NULL, 'Omnis tenetur fugit non accusamus tempore est. At quis voluptatum aspernatur aut aut illo. Et excepturi eaque amet expedita. Qui omnis iure exercitationem aut et.', 'en_US'),
(49, 49, 'T-Shirt \"rerum\"', 't-shirt-rerum', 'Est eveniet voluptas incidunt nobis. Adipisci ullam voluptas magnam culpa blanditiis. Fuga soluta incidunt magnam doloremque et.\n\nVitae esse dolor voluptas rerum. Animi dolorum est ab vel deserunt sint. Quisquam quos necessitatibus voluptatem est ut est.\n\nUllam soluta sunt facilis. Sed sapiente qui eaque itaque numquam ab. Soluta sed cum animi nesciunt exercitationem. Sint minima itaque repellat sunt omnis ipsa iste.', NULL, NULL, 'In dolorem iusto in commodi hic labore officiis. Sunt iure blanditiis consequatur nihil. Fugit culpa animi et dolorem perferendis expedita. Nihil eos aut optio nesciunt distinctio sed eaque.', 'en_US'),
(50, 50, 'T-Shirt \"itaque\"', 't-shirt-itaque', 'Dolorum tempore eveniet rerum non. Odio laborum optio rerum repellat tenetur. Voluptatem nam iusto sint deleniti similique ipsum.\n\nMollitia atque neque similique consequatur aspernatur nemo et omnis. Sint dolores voluptas vero et distinctio.\n\nIpsa modi id nisi. Quidem est modi eaque excepturi rerum iure. Rerum quibusdam excepturi corporis quia accusantium ipsum fuga. Voluptas et adipisci incidunt perferendis quo laborum sint. Aliquid exercitationem eveniet aperiam eos.', NULL, NULL, 'Qui quae non vel magnam et voluptas ducimus. Doloremque dolores minima eligendi similique cum modi officiis. Aut cupiditate perspiciatis possimus nihil non. Inventore commodi dolores hic aut.', 'en_US'),
(51, 51, 'T-Shirt \"mollitia\"', 't-shirt-mollitia', 'Ratione alias fuga molestias nisi ducimus earum. Incidunt repudiandae voluptas rerum sapiente laborum maiores est. Ut aliquam aut et est quibusdam enim. Accusantium qui illo temporibus tenetur.\n\nAccusamus excepturi repellat commodi rem voluptatem. Enim adipisci eum enim quia quisquam reprehenderit repellendus voluptatem. Qui et architecto tempore molestiae impedit.\n\nVoluptatibus rerum voluptas et aspernatur est autem earum. Deleniti mollitia blanditiis voluptas sunt odio ipsam. Accusantium consectetur rerum cupiditate temporibus quibusdam. Quia est doloremque et perferendis.', NULL, NULL, 'Exercitationem aut suscipit et voluptas itaque sunt. Sit est laudantium temporibus numquam delectus. Omnis quam iste deserunt neque non. Iusto sit deserunt autem aut ipsum dignissimos.', 'en_US'),
(52, 52, 'T-Shirt \"molestiae\"', 't-shirt-molestiae', 'Ratione et aut nam iusto sunt. Rerum ut dolorum consequatur repudiandae. Temporibus qui occaecati est est porro aut similique.\n\nAccusantium dolores culpa dolore architecto quo. Non in ut qui voluptas.\n\nNecessitatibus tenetur qui enim ut. Id quibusdam eius quia autem a consectetur. Corporis molestiae tempora laborum animi cumque dolores. Nihil et repellat voluptas quis. Harum necessitatibus asperiores optio consequatur vero.', NULL, NULL, 'Sed non ea repudiandae ipsam quia incidunt aspernatur. Expedita sunt et dolorem cupiditate laudantium eos eos. Sit ut sit ab pariatur nesciunt autem.', 'en_US'),
(53, 53, 'T-Shirt \"facere\"', 't-shirt-facere', 'Non est nemo porro. Consequatur necessitatibus pariatur voluptatem. Non minus eveniet omnis cumque.\n\nSint nesciunt architecto autem molestias itaque optio cumque. Aut dolorem incidunt rem eaque atque. Dolore et reprehenderit eum autem ea quo reprehenderit itaque. Magnam qui sit dolorem.\n\nAtque non aut ut ullam. Quam illo et et sapiente minima quia laboriosam. Consequatur suscipit facere cupiditate reprehenderit. Ad molestiae aut suscipit sapiente.', NULL, NULL, 'Veniam assumenda quis minima nesciunt harum. Nobis consequatur aut deserunt dolorum et atque officia. Odit eligendi dicta quia rem est quia dolores.', 'en_US'),
(54, 54, 'T-Shirt \"consequatur\"', 't-shirt-consequatur', 'Cumque sint rem fugit molestias. Ullam ea repellendus reiciendis. Eum odit iusto illum eos. Quam dolor consequatur quia aut provident vero dolores ea.\n\nQuis consectetur expedita asperiores voluptates. Similique temporibus similique quia iusto. Voluptatem quae enim praesentium qui.\n\nImpedit tempore qui asperiores necessitatibus consequatur quam laudantium. Et accusamus eos totam labore qui dignissimos laudantium corrupti. Beatae alias in ut animi eius.', NULL, NULL, 'Cum cum quisquam eius tempore accusamus minima qui. Temporibus quas nisi temporibus velit soluta. Harum laudantium veniam officiis quia fugiat amet minus consequatur.', 'en_US'),
(55, 55, 'T-Shirt \"porro\"', 't-shirt-porro', 'Hic provident quidem quisquam tempore hic voluptate ipsum. Placeat sed doloribus fuga sunt debitis quaerat deserunt. Voluptate debitis porro repudiandae.\n\nAut totam beatae repellendus ut. Libero voluptatem corporis quis excepturi. Labore cum et consequatur architecto.\n\nConsequatur molestiae expedita quasi nostrum a sunt. Nemo fugiat similique autem odio illo omnis et. Qui possimus et occaecati nam placeat quis voluptas officiis.', NULL, NULL, 'Alias accusantium officiis qui est voluptatibus vel. Ut maxime rem quia doloremque voluptatem et. Laboriosam odit et aut consectetur cumque.', 'en_US'),
(56, 56, 'T-Shirt \"quidem\"', 't-shirt-quidem', 'Occaecati accusantium architecto sit eum facilis perferendis. Saepe iste possimus quibusdam iure nemo libero sed. Quis odio blanditiis vero ut ea. Aut perferendis odit consequuntur eum et quis earum.\n\nIn dolorem corporis suscipit sunt. Porro alias illum cumque quia in illum qui. Deserunt voluptas autem corporis delectus ipsum blanditiis. Eum dignissimos quaerat sequi eos harum rem atque molestiae.\n\nFugiat aut voluptatem laborum consequatur atque est. Est voluptates voluptates ut et. Odit commodi quaerat sapiente hic harum perspiciatis rerum ut.', NULL, NULL, 'Dignissimos recusandae et accusantium beatae ut. Magni rerum omnis reprehenderit nisi et eius. Voluptates in maxime ut vel quisquam cumque non.', 'en_US'),
(57, 57, 'T-Shirt \"corrupti\"', 't-shirt-corrupti', 'Voluptates qui in et consectetur quibusdam cum qui facere. Facilis magnam voluptas dolore sit modi ut sit. Iusto omnis harum non praesentium.\n\nUt nam alias quo voluptatem eveniet quisquam repellat magnam. Voluptatum velit sequi officia incidunt ea cumque sunt. Sed mollitia repellat dolorum voluptatem in corrupti.\n\nQuia laudantium ratione eum et. Praesentium aliquam voluptas occaecati consequatur repellat maxime explicabo.', NULL, NULL, 'Quos blanditiis et modi facere. Sit qui rerum deserunt aut quos. Dolor ea sed et beatae optio voluptas eius. Tenetur architecto et ullam eius doloribus.', 'en_US'),
(58, 58, 'T-Shirt \"eaque\"', 't-shirt-eaque', 'Doloremque est et itaque est ipsum saepe voluptas. Excepturi odit suscipit dolor molestiae cumque nesciunt alias. Voluptatem dolorum accusamus voluptate.\n\nOdit aut sed reiciendis mollitia ut aut. Maxime aperiam itaque eligendi rem impedit minima minus minima. Est eos ea veniam voluptatum consequatur. Consectetur ut quaerat aut officia sit ad excepturi.\n\nNecessitatibus quo fugiat quia velit architecto minima dolor aut. Eos dolorem voluptas officiis quis excepturi ut. Iusto commodi consequatur vel nulla nostrum ipsum deleniti mollitia. Omnis aut est illum nobis est ducimus facere.', NULL, NULL, 'Autem sed odit earum. Et voluptatum quidem non officia. Atque delectus quo accusamus ipsa. At magni suscipit saepe in sint autem aut.', 'en_US'),
(59, 59, 'T-Shirt \"veritatis\"', 't-shirt-veritatis', 'Eligendi et eum architecto. Praesentium et labore cum neque quis deleniti voluptas. Cum sint consequuntur dolorem culpa. Voluptatibus et aut saepe vero incidunt perspiciatis eos quis.\n\nAutem nam cupiditate eos nihil sed fuga. Blanditiis reiciendis omnis omnis quo consequatur harum. Numquam neque culpa recusandae excepturi. Dolorem repellat praesentium molestiae eius cum autem aliquam.\n\nCulpa voluptatem sunt voluptatibus laboriosam aut. Harum et ipsa quia nemo mollitia.', NULL, NULL, 'Consectetur et aperiam cupiditate illum quia. Omnis ducimus ut ad omnis nam incidunt incidunt. Ducimus sint et repellat fuga voluptatibus repudiandae expedita. Omnis debitis dolore consequatur qui maxime.', 'en_US'),
(60, 60, 'T-Shirt \"explicabo\"', 't-shirt-explicabo', 'Velit inventore eos optio. Nam neque animi fugiat voluptatum ut dicta. Iusto a reprehenderit ex ducimus autem placeat dolorem sint. Est facere tempore modi porro recusandae vitae tempora aut.\n\nImpedit quod eum aliquid enim veritatis omnis quas. Doloremque maiores ut et rerum ab. Vel est et rerum reiciendis non.\n\nEveniet non voluptatibus vitae omnis nesciunt. Dolor veniam vel sed aut vero veritatis qui. Et aut explicabo quaerat ab eaque. Autem consequatur et ea quas debitis.', NULL, NULL, 'Assumenda quibusdam aut possimus placeat molestias voluptatum. Natus laborum quia vel et nesciunt aut laudantium. Illo recusandae qui labore fuga adipisci illo et. Quo reprehenderit a ipsa est molestiae autem ut.', 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_variant`
--

DROP TABLE IF EXISTS `sylius_product_variant`;
CREATE TABLE IF NOT EXISTS `sylius_product_variant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `on_hold` int(11) NOT NULL,
  `on_hand` int(11) NOT NULL,
  `tracked` tinyint(1) NOT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `depth` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `shipping_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A29B52377153098` (`code`),
  KEY `IDX_A29B5234584665A` (`product_id`),
  KEY `IDX_A29B5239DF894ED` (`tax_category_id`),
  KEY `IDX_A29B5239E2D1A41` (`shipping_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_variant`
--

INSERT INTO `sylius_product_variant` (`id`, `product_id`, `tax_category_id`, `shipping_category_id`, `code`, `created_at`, `updated_at`, `position`, `version`, `on_hold`, `on_hand`, `tracked`, `width`, `height`, `depth`, `weight`, `shipping_required`) VALUES
(1, 1, NULL, NULL, '0fa2767c-86d8-337b-8fe3-610cc050cf0e-variant-0', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 0, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(2, 1, NULL, NULL, '0fa2767c-86d8-337b-8fe3-610cc050cf0e-variant-1', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 1, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(3, 1, NULL, NULL, '0fa2767c-86d8-337b-8fe3-610cc050cf0e-variant-2', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 2, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(4, 2, NULL, NULL, '6c978c9f-a8e9-3fe7-b8d1-44c3f870e35f-variant-0', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(5, 2, NULL, NULL, '6c978c9f-a8e9-3fe7-b8d1-44c3f870e35f-variant-1', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 1, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(6, 2, NULL, NULL, '6c978c9f-a8e9-3fe7-b8d1-44c3f870e35f-variant-2', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 2, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(7, 3, NULL, NULL, 'ce49213d-df40-3867-a68d-9092b21ac177-variant-0', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 0, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(8, 3, NULL, NULL, 'ce49213d-df40-3867-a68d-9092b21ac177-variant-1', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(9, 3, NULL, NULL, 'ce49213d-df40-3867-a68d-9092b21ac177-variant-2', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(10, 4, NULL, NULL, '05fa9cf1-90f0-379f-8595-dc2dd4bd70c8-variant-0', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(11, 4, NULL, NULL, '05fa9cf1-90f0-379f-8595-dc2dd4bd70c8-variant-1', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(12, 4, NULL, NULL, '05fa9cf1-90f0-379f-8595-dc2dd4bd70c8-variant-2', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(13, 5, NULL, NULL, '0da6b4cd-9963-32e9-8d21-7c42381b60d1-variant-0', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(14, 5, NULL, NULL, '0da6b4cd-9963-32e9-8d21-7c42381b60d1-variant-1', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(15, 5, NULL, NULL, '0da6b4cd-9963-32e9-8d21-7c42381b60d1-variant-2', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 2, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(16, 6, NULL, NULL, '38803ce8-2754-3af7-a6cf-feffff47d37c-variant-0', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(17, 6, NULL, NULL, '38803ce8-2754-3af7-a6cf-feffff47d37c-variant-1', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 1, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(18, 6, NULL, NULL, '38803ce8-2754-3af7-a6cf-feffff47d37c-variant-2', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 2, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(19, 7, NULL, NULL, '009ceab4-a77f-35c1-9000-c1e84916d111-variant-0', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(20, 7, NULL, NULL, '009ceab4-a77f-35c1-9000-c1e84916d111-variant-1', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 1, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(21, 7, NULL, NULL, '009ceab4-a77f-35c1-9000-c1e84916d111-variant-2', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 2, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(22, 8, NULL, NULL, '9a096fb6-39ab-324e-8c34-587d9d9f6a6b-variant-0', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(23, 8, NULL, NULL, '9a096fb6-39ab-324e-8c34-587d9d9f6a6b-variant-1', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 1, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(24, 8, NULL, NULL, '9a096fb6-39ab-324e-8c34-587d9d9f6a6b-variant-2', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 2, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(25, 9, NULL, NULL, '86636ac0-9a15-3ddc-9bde-94c2dc920425-variant-0', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(26, 9, NULL, NULL, '86636ac0-9a15-3ddc-9bde-94c2dc920425-variant-1', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 1, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(27, 9, NULL, NULL, '86636ac0-9a15-3ddc-9bde-94c2dc920425-variant-2', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(28, 10, NULL, NULL, '9f909731-f7c9-35b7-a18e-6376c096d33a-variant-0', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 0, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(29, 10, NULL, NULL, '9f909731-f7c9-35b7-a18e-6376c096d33a-variant-1', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(30, 10, NULL, NULL, '9f909731-f7c9-35b7-a18e-6376c096d33a-variant-2', '2019-06-02 14:48:24', '2019-06-02 14:48:24', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(31, 11, NULL, NULL, '53294881-3b76-37df-82fe-640f829ae080-variant-0', '2019-06-02 14:48:25', '2019-06-02 14:48:25', 0, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(32, 11, NULL, NULL, '53294881-3b76-37df-82fe-640f829ae080-variant-1', '2019-06-02 14:48:25', '2019-06-02 14:48:25', 1, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(33, 11, NULL, NULL, '53294881-3b76-37df-82fe-640f829ae080-variant-2', '2019-06-02 14:48:25', '2019-06-02 14:48:25', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(34, 12, NULL, NULL, '10aa9d57-8e6d-3127-bc5c-ab0b8ca4bbf9-variant-0', '2019-06-02 14:48:25', '2019-06-02 14:48:25', 0, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(35, 12, NULL, NULL, '10aa9d57-8e6d-3127-bc5c-ab0b8ca4bbf9-variant-1', '2019-06-02 14:48:25', '2019-06-02 14:48:25', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(36, 12, NULL, NULL, '10aa9d57-8e6d-3127-bc5c-ab0b8ca4bbf9-variant-2', '2019-06-02 14:48:25', '2019-06-02 14:48:25', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(37, 13, NULL, NULL, 'a1bff28d-86ec-36e7-babd-8abdb2587a31-variant-0', '2019-06-02 14:48:25', '2019-06-02 14:48:25', 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(38, 13, NULL, NULL, 'a1bff28d-86ec-36e7-babd-8abdb2587a31-variant-1', '2019-06-02 14:48:25', '2019-06-02 14:48:25', 1, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(39, 13, NULL, NULL, 'a1bff28d-86ec-36e7-babd-8abdb2587a31-variant-2', '2019-06-02 14:48:25', '2019-06-02 14:48:25', 2, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(40, 14, NULL, NULL, '1407d28a-47bd-3f4d-bdf4-f40346ee7b6b-variant-0', '2019-06-02 14:48:25', '2019-06-02 14:48:25', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(41, 14, NULL, NULL, '1407d28a-47bd-3f4d-bdf4-f40346ee7b6b-variant-1', '2019-06-02 14:48:25', '2019-06-02 14:48:25', 1, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(42, 14, NULL, NULL, '1407d28a-47bd-3f4d-bdf4-f40346ee7b6b-variant-2', '2019-06-02 14:48:25', '2019-06-02 14:48:25', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(43, 15, NULL, NULL, 'e0bcb394-3676-36ce-9ca1-11bf5b075b10-variant-0', '2019-06-02 14:48:25', '2019-06-02 14:48:25', 0, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(44, 15, NULL, NULL, 'e0bcb394-3676-36ce-9ca1-11bf5b075b10-variant-1', '2019-06-02 14:48:25', '2019-06-02 14:48:25', 1, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(45, 15, NULL, NULL, 'e0bcb394-3676-36ce-9ca1-11bf5b075b10-variant-2', '2019-06-02 14:48:25', '2019-06-02 14:48:25', 2, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(46, 16, NULL, NULL, 'd02e0d91-29cb-3cdb-91d5-6503740f6a13-variant-0', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 0, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(47, 16, NULL, NULL, 'd02e0d91-29cb-3cdb-91d5-6503740f6a13-variant-1', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(48, 16, NULL, NULL, 'd02e0d91-29cb-3cdb-91d5-6503740f6a13-variant-2', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(49, 17, NULL, NULL, '2eedd9b5-e11f-39f6-b683-71cdc43d59dd-variant-0', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(50, 17, NULL, NULL, '2eedd9b5-e11f-39f6-b683-71cdc43d59dd-variant-1', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 1, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(51, 17, NULL, NULL, '2eedd9b5-e11f-39f6-b683-71cdc43d59dd-variant-2', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 2, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(52, 18, NULL, NULL, '946984bc-fd70-30a8-9e93-23c59b2bd54d-variant-0', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(53, 18, NULL, NULL, '946984bc-fd70-30a8-9e93-23c59b2bd54d-variant-1', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 1, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(54, 18, NULL, NULL, '946984bc-fd70-30a8-9e93-23c59b2bd54d-variant-2', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 2, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(55, 19, NULL, NULL, 'ba94df67-84be-38e1-8ac0-49c183889932-variant-0', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(56, 19, NULL, NULL, 'ba94df67-84be-38e1-8ac0-49c183889932-variant-1', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 1, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(57, 19, NULL, NULL, 'ba94df67-84be-38e1-8ac0-49c183889932-variant-2', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 2, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(58, 20, NULL, NULL, 'a26addf8-f687-3d49-9245-563a6632506b-variant-0', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(59, 20, NULL, NULL, 'a26addf8-f687-3d49-9245-563a6632506b-variant-1', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 1, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(60, 20, NULL, NULL, 'a26addf8-f687-3d49-9245-563a6632506b-variant-2', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 2, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(61, 21, NULL, NULL, '3c4ddc77-b8ae-3bec-820e-70064d195ee5-variant-0', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 0, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(62, 21, NULL, NULL, '3c4ddc77-b8ae-3bec-820e-70064d195ee5-variant-1', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 1, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(63, 21, NULL, NULL, '3c4ddc77-b8ae-3bec-820e-70064d195ee5-variant-2', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 2, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(64, 22, NULL, NULL, '198cea38-d4e7-3c82-a19d-6b90f3e92e8d-variant-0', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(65, 22, NULL, NULL, '198cea38-d4e7-3c82-a19d-6b90f3e92e8d-variant-1', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(66, 22, NULL, NULL, '198cea38-d4e7-3c82-a19d-6b90f3e92e8d-variant-2', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 2, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(67, 23, NULL, NULL, '85610ef0-cd13-39e9-933f-746f23a9407e-variant-0', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 0, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(68, 23, NULL, NULL, '85610ef0-cd13-39e9-933f-746f23a9407e-variant-1', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 1, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(69, 23, NULL, NULL, '85610ef0-cd13-39e9-933f-746f23a9407e-variant-2', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 2, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(70, 24, NULL, NULL, 'f63860a4-8df9-32fa-abc9-5e76c4e27723-variant-0', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(71, 24, NULL, NULL, 'f63860a4-8df9-32fa-abc9-5e76c4e27723-variant-1', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 1, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(72, 24, NULL, NULL, 'f63860a4-8df9-32fa-abc9-5e76c4e27723-variant-2', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(73, 25, NULL, NULL, '098d1cce-bba3-3a7f-86b5-cfd212c94a2a-variant-0', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(74, 25, NULL, NULL, '098d1cce-bba3-3a7f-86b5-cfd212c94a2a-variant-1', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(75, 25, NULL, NULL, '098d1cce-bba3-3a7f-86b5-cfd212c94a2a-variant-2', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 2, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(76, 26, NULL, NULL, '999eae6b-fa94-3982-bf82-203d4da9d0c7-variant-0', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(77, 26, NULL, NULL, '999eae6b-fa94-3982-bf82-203d4da9d0c7-variant-1', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(78, 26, NULL, NULL, '999eae6b-fa94-3982-bf82-203d4da9d0c7-variant-2', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 2, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(79, 27, NULL, NULL, 'efadd580-8a52-3030-b930-d2efa50c35c6-variant-0', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(80, 27, NULL, NULL, 'efadd580-8a52-3030-b930-d2efa50c35c6-variant-1', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 1, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(81, 27, NULL, NULL, 'efadd580-8a52-3030-b930-d2efa50c35c6-variant-2', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 2, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(82, 28, NULL, NULL, '13373355-171e-340c-8f75-c2a61ef226ba-variant-0', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 0, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(83, 28, NULL, NULL, '13373355-171e-340c-8f75-c2a61ef226ba-variant-1', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(84, 28, NULL, NULL, '13373355-171e-340c-8f75-c2a61ef226ba-variant-2', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 2, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(85, 29, NULL, NULL, 'd748e2ea-0cb2-3403-9013-88f0d67a3c31-variant-0', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(86, 29, NULL, NULL, 'd748e2ea-0cb2-3403-9013-88f0d67a3c31-variant-1', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 1, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(87, 29, NULL, NULL, 'd748e2ea-0cb2-3403-9013-88f0d67a3c31-variant-2', '2019-06-02 14:48:26', '2019-06-02 14:48:26', 2, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(88, 30, NULL, NULL, 'c6075d20-6ca3-3e8c-89c7-6d78ae40991c-variant-0', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 0, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(89, 30, NULL, NULL, 'c6075d20-6ca3-3e8c-89c7-6d78ae40991c-variant-1', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 1, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(90, 30, NULL, NULL, 'c6075d20-6ca3-3e8c-89c7-6d78ae40991c-variant-2', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 2, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(91, 31, NULL, NULL, 'ef60deeb-6370-3b98-853e-e8266c1fcefe-variant-0', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 0, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(92, 32, NULL, NULL, '14fd5a00-3ccc-3c75-a019-43040519adce-variant-0', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(93, 33, NULL, NULL, 'f8e0a4e1-e911-36b8-aaea-a1d36116b221-variant-0', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(94, 34, NULL, NULL, '27ed0d92-4316-3a35-bea0-2d731c172c51-variant-0', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(95, 35, NULL, NULL, 'f089ab16-d2b1-3f73-8d08-eadf0352d47d-variant-0', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(96, 36, NULL, NULL, 'b1cbca92-0577-3a89-b024-7c30c7f6c6f6-variant-0', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(97, 37, NULL, NULL, 'c6fe759a-cfa7-3162-8cae-fe7a5acee34c-variant-0', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(98, 38, NULL, NULL, '8021eae2-5e8e-35c0-9235-2df7d480cf91-variant-0', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(99, 39, NULL, NULL, 'c2fafbad-c6ee-3600-9d78-4e7599937662-variant-0', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 0, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(100, 40, NULL, NULL, 'b068c580-5581-3192-851d-ced4b2180c59-variant-0', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(101, 41, NULL, NULL, '848c798d-be4e-3425-ad42-a065dfff83b2-variant-0', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 0, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(102, 42, NULL, NULL, 'fda692a8-bc75-3cba-9314-f9693c93e4aa-variant-0', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(103, 43, NULL, NULL, '569294d0-662f-3a4f-bbe9-97fb1f6dce03-variant-0', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(104, 44, NULL, NULL, '2d9abc33-3b0a-397b-8ffe-e03d73379311-variant-0', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(105, 45, NULL, NULL, 'd4a60c2e-e902-3dd3-84f1-8a6198264ca1-variant-0', '2019-06-02 14:48:27', '2019-06-02 14:48:27', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(106, 46, NULL, NULL, '70318ea7-4f32-369c-9729-d2098fdfcca4-variant-0', '2019-06-02 14:48:27', '2019-06-02 14:48:28', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(107, 46, NULL, NULL, '70318ea7-4f32-369c-9729-d2098fdfcca4-variant-1', '2019-06-02 14:48:27', '2019-06-02 14:48:28', 1, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(108, 46, NULL, NULL, '70318ea7-4f32-369c-9729-d2098fdfcca4-variant-2', '2019-06-02 14:48:27', '2019-06-02 14:48:28', 2, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(109, 46, NULL, NULL, '70318ea7-4f32-369c-9729-d2098fdfcca4-variant-3', '2019-06-02 14:48:27', '2019-06-02 14:48:28', 3, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(110, 46, NULL, NULL, '70318ea7-4f32-369c-9729-d2098fdfcca4-variant-4', '2019-06-02 14:48:27', '2019-06-02 14:48:28', 4, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(111, 46, NULL, NULL, '70318ea7-4f32-369c-9729-d2098fdfcca4-variant-5', '2019-06-02 14:48:27', '2019-06-02 14:48:28', 5, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(112, 46, NULL, NULL, '70318ea7-4f32-369c-9729-d2098fdfcca4-variant-6', '2019-06-02 14:48:27', '2019-06-02 14:48:28', 6, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(113, 46, NULL, NULL, '70318ea7-4f32-369c-9729-d2098fdfcca4-variant-7', '2019-06-02 14:48:27', '2019-06-02 14:48:28', 7, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(114, 46, NULL, NULL, '70318ea7-4f32-369c-9729-d2098fdfcca4-variant-8', '2019-06-02 14:48:27', '2019-06-02 14:48:28', 8, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(115, 46, NULL, NULL, '70318ea7-4f32-369c-9729-d2098fdfcca4-variant-9', '2019-06-02 14:48:27', '2019-06-02 14:48:28', 9, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(116, 46, NULL, NULL, '70318ea7-4f32-369c-9729-d2098fdfcca4-variant-10', '2019-06-02 14:48:27', '2019-06-02 14:48:28', 10, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(117, 46, NULL, NULL, '70318ea7-4f32-369c-9729-d2098fdfcca4-variant-11', '2019-06-02 14:48:27', '2019-06-02 14:48:28', 11, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(118, 46, NULL, NULL, '70318ea7-4f32-369c-9729-d2098fdfcca4-variant-12', '2019-06-02 14:48:27', '2019-06-02 14:48:28', 12, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(119, 46, NULL, NULL, '70318ea7-4f32-369c-9729-d2098fdfcca4-variant-13', '2019-06-02 14:48:27', '2019-06-02 14:48:28', 13, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(120, 46, NULL, NULL, '70318ea7-4f32-369c-9729-d2098fdfcca4-variant-14', '2019-06-02 14:48:27', '2019-06-02 14:48:28', 14, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(121, 47, NULL, NULL, 'be54a539-b1f7-353e-8622-3f244a9fe930-variant-0', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(122, 47, NULL, NULL, 'be54a539-b1f7-353e-8622-3f244a9fe930-variant-1', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 1, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(123, 47, NULL, NULL, 'be54a539-b1f7-353e-8622-3f244a9fe930-variant-2', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 2, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(124, 47, NULL, NULL, 'be54a539-b1f7-353e-8622-3f244a9fe930-variant-3', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 3, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(125, 47, NULL, NULL, 'be54a539-b1f7-353e-8622-3f244a9fe930-variant-4', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 4, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(126, 47, NULL, NULL, 'be54a539-b1f7-353e-8622-3f244a9fe930-variant-5', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 5, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(127, 47, NULL, NULL, 'be54a539-b1f7-353e-8622-3f244a9fe930-variant-6', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 6, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(128, 47, NULL, NULL, 'be54a539-b1f7-353e-8622-3f244a9fe930-variant-7', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 7, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(129, 47, NULL, NULL, 'be54a539-b1f7-353e-8622-3f244a9fe930-variant-8', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 8, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(130, 47, NULL, NULL, 'be54a539-b1f7-353e-8622-3f244a9fe930-variant-9', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 9, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(131, 47, NULL, NULL, 'be54a539-b1f7-353e-8622-3f244a9fe930-variant-10', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 10, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(132, 47, NULL, NULL, 'be54a539-b1f7-353e-8622-3f244a9fe930-variant-11', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 11, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(133, 47, NULL, NULL, 'be54a539-b1f7-353e-8622-3f244a9fe930-variant-12', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 12, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(134, 47, NULL, NULL, 'be54a539-b1f7-353e-8622-3f244a9fe930-variant-13', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 13, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(135, 47, NULL, NULL, 'be54a539-b1f7-353e-8622-3f244a9fe930-variant-14', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 14, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(136, 48, NULL, NULL, '045dca80-a4ab-3328-b8f4-0651af1d1334-variant-0', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(137, 48, NULL, NULL, '045dca80-a4ab-3328-b8f4-0651af1d1334-variant-1', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 1, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(138, 48, NULL, NULL, '045dca80-a4ab-3328-b8f4-0651af1d1334-variant-2', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(139, 48, NULL, NULL, '045dca80-a4ab-3328-b8f4-0651af1d1334-variant-3', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 3, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(140, 48, NULL, NULL, '045dca80-a4ab-3328-b8f4-0651af1d1334-variant-4', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 4, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(141, 48, NULL, NULL, '045dca80-a4ab-3328-b8f4-0651af1d1334-variant-5', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 5, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(142, 48, NULL, NULL, '045dca80-a4ab-3328-b8f4-0651af1d1334-variant-6', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 6, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(143, 48, NULL, NULL, '045dca80-a4ab-3328-b8f4-0651af1d1334-variant-7', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 7, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(144, 48, NULL, NULL, '045dca80-a4ab-3328-b8f4-0651af1d1334-variant-8', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 8, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(145, 48, NULL, NULL, '045dca80-a4ab-3328-b8f4-0651af1d1334-variant-9', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 9, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(146, 48, NULL, NULL, '045dca80-a4ab-3328-b8f4-0651af1d1334-variant-10', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 10, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(147, 48, NULL, NULL, '045dca80-a4ab-3328-b8f4-0651af1d1334-variant-11', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 11, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(148, 48, NULL, NULL, '045dca80-a4ab-3328-b8f4-0651af1d1334-variant-12', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 12, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(149, 48, NULL, NULL, '045dca80-a4ab-3328-b8f4-0651af1d1334-variant-13', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 13, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(150, 48, NULL, NULL, '045dca80-a4ab-3328-b8f4-0651af1d1334-variant-14', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 14, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(151, 49, NULL, NULL, 'a7343675-04da-3be4-97ee-54cfda43ec6e-variant-0', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(152, 49, NULL, NULL, 'a7343675-04da-3be4-97ee-54cfda43ec6e-variant-1', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 1, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(153, 49, NULL, NULL, 'a7343675-04da-3be4-97ee-54cfda43ec6e-variant-2', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 2, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(154, 49, NULL, NULL, 'a7343675-04da-3be4-97ee-54cfda43ec6e-variant-3', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 3, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(155, 49, NULL, NULL, 'a7343675-04da-3be4-97ee-54cfda43ec6e-variant-4', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 4, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(156, 49, NULL, NULL, 'a7343675-04da-3be4-97ee-54cfda43ec6e-variant-5', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 5, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(157, 49, NULL, NULL, 'a7343675-04da-3be4-97ee-54cfda43ec6e-variant-6', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 6, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(158, 49, NULL, NULL, 'a7343675-04da-3be4-97ee-54cfda43ec6e-variant-7', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 7, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(159, 49, NULL, NULL, 'a7343675-04da-3be4-97ee-54cfda43ec6e-variant-8', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 8, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(160, 49, NULL, NULL, 'a7343675-04da-3be4-97ee-54cfda43ec6e-variant-9', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 9, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(161, 49, NULL, NULL, 'a7343675-04da-3be4-97ee-54cfda43ec6e-variant-10', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 10, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(162, 49, NULL, NULL, 'a7343675-04da-3be4-97ee-54cfda43ec6e-variant-11', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 11, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(163, 49, NULL, NULL, 'a7343675-04da-3be4-97ee-54cfda43ec6e-variant-12', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 12, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(164, 49, NULL, NULL, 'a7343675-04da-3be4-97ee-54cfda43ec6e-variant-13', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 13, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(165, 49, NULL, NULL, 'a7343675-04da-3be4-97ee-54cfda43ec6e-variant-14', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 14, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(166, 50, NULL, NULL, 'ea0e0794-f604-35eb-85fb-e8649ccddeb1-variant-0', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 0, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(167, 50, NULL, NULL, 'ea0e0794-f604-35eb-85fb-e8649ccddeb1-variant-1', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 1, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(168, 50, NULL, NULL, 'ea0e0794-f604-35eb-85fb-e8649ccddeb1-variant-2', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(169, 50, NULL, NULL, 'ea0e0794-f604-35eb-85fb-e8649ccddeb1-variant-3', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 3, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(170, 50, NULL, NULL, 'ea0e0794-f604-35eb-85fb-e8649ccddeb1-variant-4', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 4, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(171, 50, NULL, NULL, 'ea0e0794-f604-35eb-85fb-e8649ccddeb1-variant-5', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 5, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(172, 50, NULL, NULL, 'ea0e0794-f604-35eb-85fb-e8649ccddeb1-variant-6', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 6, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(173, 50, NULL, NULL, 'ea0e0794-f604-35eb-85fb-e8649ccddeb1-variant-7', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 7, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(174, 50, NULL, NULL, 'ea0e0794-f604-35eb-85fb-e8649ccddeb1-variant-8', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 8, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(175, 50, NULL, NULL, 'ea0e0794-f604-35eb-85fb-e8649ccddeb1-variant-9', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 9, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(176, 50, NULL, NULL, 'ea0e0794-f604-35eb-85fb-e8649ccddeb1-variant-10', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 10, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(177, 50, NULL, NULL, 'ea0e0794-f604-35eb-85fb-e8649ccddeb1-variant-11', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 11, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(178, 50, NULL, NULL, 'ea0e0794-f604-35eb-85fb-e8649ccddeb1-variant-12', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 12, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(179, 50, NULL, NULL, 'ea0e0794-f604-35eb-85fb-e8649ccddeb1-variant-13', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 13, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(180, 50, NULL, NULL, 'ea0e0794-f604-35eb-85fb-e8649ccddeb1-variant-14', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 14, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(181, 51, NULL, NULL, '292247d9-25ac-3998-917d-1d4dfe1a305f-variant-0', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 0, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(182, 51, NULL, NULL, '292247d9-25ac-3998-917d-1d4dfe1a305f-variant-1', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(183, 51, NULL, NULL, '292247d9-25ac-3998-917d-1d4dfe1a305f-variant-2', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 2, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(184, 51, NULL, NULL, '292247d9-25ac-3998-917d-1d4dfe1a305f-variant-3', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 3, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(185, 51, NULL, NULL, '292247d9-25ac-3998-917d-1d4dfe1a305f-variant-4', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 4, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(186, 51, NULL, NULL, '292247d9-25ac-3998-917d-1d4dfe1a305f-variant-5', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 5, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(187, 51, NULL, NULL, '292247d9-25ac-3998-917d-1d4dfe1a305f-variant-6', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 6, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(188, 51, NULL, NULL, '292247d9-25ac-3998-917d-1d4dfe1a305f-variant-7', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 7, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(189, 51, NULL, NULL, '292247d9-25ac-3998-917d-1d4dfe1a305f-variant-8', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 8, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(190, 51, NULL, NULL, '292247d9-25ac-3998-917d-1d4dfe1a305f-variant-9', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 9, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(191, 51, NULL, NULL, '292247d9-25ac-3998-917d-1d4dfe1a305f-variant-10', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 10, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(192, 51, NULL, NULL, '292247d9-25ac-3998-917d-1d4dfe1a305f-variant-11', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 11, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(193, 51, NULL, NULL, '292247d9-25ac-3998-917d-1d4dfe1a305f-variant-12', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 12, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(194, 51, NULL, NULL, '292247d9-25ac-3998-917d-1d4dfe1a305f-variant-13', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 13, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(195, 51, NULL, NULL, '292247d9-25ac-3998-917d-1d4dfe1a305f-variant-14', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 14, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(196, 52, NULL, NULL, '94338f64-6aab-3ad9-bb80-56c6205c7089-variant-0', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(197, 52, NULL, NULL, '94338f64-6aab-3ad9-bb80-56c6205c7089-variant-1', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(198, 52, NULL, NULL, '94338f64-6aab-3ad9-bb80-56c6205c7089-variant-2', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 2, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(199, 52, NULL, NULL, '94338f64-6aab-3ad9-bb80-56c6205c7089-variant-3', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 3, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(200, 52, NULL, NULL, '94338f64-6aab-3ad9-bb80-56c6205c7089-variant-4', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 4, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(201, 52, NULL, NULL, '94338f64-6aab-3ad9-bb80-56c6205c7089-variant-5', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 5, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(202, 52, NULL, NULL, '94338f64-6aab-3ad9-bb80-56c6205c7089-variant-6', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 6, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(203, 52, NULL, NULL, '94338f64-6aab-3ad9-bb80-56c6205c7089-variant-7', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 7, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(204, 52, NULL, NULL, '94338f64-6aab-3ad9-bb80-56c6205c7089-variant-8', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 8, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(205, 52, NULL, NULL, '94338f64-6aab-3ad9-bb80-56c6205c7089-variant-9', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 9, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(206, 52, NULL, NULL, '94338f64-6aab-3ad9-bb80-56c6205c7089-variant-10', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 10, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(207, 52, NULL, NULL, '94338f64-6aab-3ad9-bb80-56c6205c7089-variant-11', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 11, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(208, 52, NULL, NULL, '94338f64-6aab-3ad9-bb80-56c6205c7089-variant-12', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 12, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(209, 52, NULL, NULL, '94338f64-6aab-3ad9-bb80-56c6205c7089-variant-13', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 13, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(210, 52, NULL, NULL, '94338f64-6aab-3ad9-bb80-56c6205c7089-variant-14', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 14, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(211, 53, NULL, NULL, '89804d5f-6a15-301e-ac79-eca0c1ae9941-variant-0', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 0, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(212, 53, NULL, NULL, '89804d5f-6a15-301e-ac79-eca0c1ae9941-variant-1', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(213, 53, NULL, NULL, '89804d5f-6a15-301e-ac79-eca0c1ae9941-variant-2', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(214, 53, NULL, NULL, '89804d5f-6a15-301e-ac79-eca0c1ae9941-variant-3', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 3, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(215, 53, NULL, NULL, '89804d5f-6a15-301e-ac79-eca0c1ae9941-variant-4', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 4, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(216, 53, NULL, NULL, '89804d5f-6a15-301e-ac79-eca0c1ae9941-variant-5', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 5, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(217, 53, NULL, NULL, '89804d5f-6a15-301e-ac79-eca0c1ae9941-variant-6', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 6, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(218, 53, NULL, NULL, '89804d5f-6a15-301e-ac79-eca0c1ae9941-variant-7', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 7, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(219, 53, NULL, NULL, '89804d5f-6a15-301e-ac79-eca0c1ae9941-variant-8', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 8, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(220, 53, NULL, NULL, '89804d5f-6a15-301e-ac79-eca0c1ae9941-variant-9', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 9, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(221, 53, NULL, NULL, '89804d5f-6a15-301e-ac79-eca0c1ae9941-variant-10', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 10, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(222, 53, NULL, NULL, '89804d5f-6a15-301e-ac79-eca0c1ae9941-variant-11', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 11, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(223, 53, NULL, NULL, '89804d5f-6a15-301e-ac79-eca0c1ae9941-variant-12', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 12, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(224, 53, NULL, NULL, '89804d5f-6a15-301e-ac79-eca0c1ae9941-variant-13', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 13, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(225, 53, NULL, NULL, '89804d5f-6a15-301e-ac79-eca0c1ae9941-variant-14', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 14, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(226, 54, NULL, NULL, '8fe8de54-5848-3598-aaa5-8f505d5e8377-variant-0', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(227, 54, NULL, NULL, '8fe8de54-5848-3598-aaa5-8f505d5e8377-variant-1', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 1, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(228, 54, NULL, NULL, '8fe8de54-5848-3598-aaa5-8f505d5e8377-variant-2', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(229, 54, NULL, NULL, '8fe8de54-5848-3598-aaa5-8f505d5e8377-variant-3', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 3, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(230, 54, NULL, NULL, '8fe8de54-5848-3598-aaa5-8f505d5e8377-variant-4', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 4, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(231, 54, NULL, NULL, '8fe8de54-5848-3598-aaa5-8f505d5e8377-variant-5', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 5, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(232, 54, NULL, NULL, '8fe8de54-5848-3598-aaa5-8f505d5e8377-variant-6', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 6, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(233, 54, NULL, NULL, '8fe8de54-5848-3598-aaa5-8f505d5e8377-variant-7', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 7, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(234, 54, NULL, NULL, '8fe8de54-5848-3598-aaa5-8f505d5e8377-variant-8', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 8, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(235, 54, NULL, NULL, '8fe8de54-5848-3598-aaa5-8f505d5e8377-variant-9', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 9, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(236, 54, NULL, NULL, '8fe8de54-5848-3598-aaa5-8f505d5e8377-variant-10', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 10, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(237, 54, NULL, NULL, '8fe8de54-5848-3598-aaa5-8f505d5e8377-variant-11', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 11, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(238, 54, NULL, NULL, '8fe8de54-5848-3598-aaa5-8f505d5e8377-variant-12', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 12, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(239, 54, NULL, NULL, '8fe8de54-5848-3598-aaa5-8f505d5e8377-variant-13', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 13, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(240, 54, NULL, NULL, '8fe8de54-5848-3598-aaa5-8f505d5e8377-variant-14', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 14, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(241, 55, NULL, NULL, 'a3d7b854-8df6-3118-aff5-06ee9a2db613-variant-0', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(242, 55, NULL, NULL, 'a3d7b854-8df6-3118-aff5-06ee9a2db613-variant-1', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 1, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(243, 55, NULL, NULL, 'a3d7b854-8df6-3118-aff5-06ee9a2db613-variant-2', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(244, 55, NULL, NULL, 'a3d7b854-8df6-3118-aff5-06ee9a2db613-variant-3', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 3, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(245, 55, NULL, NULL, 'a3d7b854-8df6-3118-aff5-06ee9a2db613-variant-4', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 4, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(246, 55, NULL, NULL, 'a3d7b854-8df6-3118-aff5-06ee9a2db613-variant-5', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 5, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(247, 55, NULL, NULL, 'a3d7b854-8df6-3118-aff5-06ee9a2db613-variant-6', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 6, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(248, 55, NULL, NULL, 'a3d7b854-8df6-3118-aff5-06ee9a2db613-variant-7', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 7, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(249, 55, NULL, NULL, 'a3d7b854-8df6-3118-aff5-06ee9a2db613-variant-8', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 8, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(250, 55, NULL, NULL, 'a3d7b854-8df6-3118-aff5-06ee9a2db613-variant-9', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 9, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(251, 55, NULL, NULL, 'a3d7b854-8df6-3118-aff5-06ee9a2db613-variant-10', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 10, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(252, 55, NULL, NULL, 'a3d7b854-8df6-3118-aff5-06ee9a2db613-variant-11', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 11, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(253, 55, NULL, NULL, 'a3d7b854-8df6-3118-aff5-06ee9a2db613-variant-12', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 12, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(254, 55, NULL, NULL, 'a3d7b854-8df6-3118-aff5-06ee9a2db613-variant-13', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 13, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(255, 55, NULL, NULL, 'a3d7b854-8df6-3118-aff5-06ee9a2db613-variant-14', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 14, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(256, 56, NULL, NULL, 'fb320421-f3dd-355b-9d48-586bc991000b-variant-0', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(257, 56, NULL, NULL, 'fb320421-f3dd-355b-9d48-586bc991000b-variant-1', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 1, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(258, 56, NULL, NULL, 'fb320421-f3dd-355b-9d48-586bc991000b-variant-2', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 2, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(259, 56, NULL, NULL, 'fb320421-f3dd-355b-9d48-586bc991000b-variant-3', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 3, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(260, 56, NULL, NULL, 'fb320421-f3dd-355b-9d48-586bc991000b-variant-4', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 4, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(261, 56, NULL, NULL, 'fb320421-f3dd-355b-9d48-586bc991000b-variant-5', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 5, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(262, 56, NULL, NULL, 'fb320421-f3dd-355b-9d48-586bc991000b-variant-6', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 6, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(263, 56, NULL, NULL, 'fb320421-f3dd-355b-9d48-586bc991000b-variant-7', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 7, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(264, 56, NULL, NULL, 'fb320421-f3dd-355b-9d48-586bc991000b-variant-8', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 8, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(265, 56, NULL, NULL, 'fb320421-f3dd-355b-9d48-586bc991000b-variant-9', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 9, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(266, 56, NULL, NULL, 'fb320421-f3dd-355b-9d48-586bc991000b-variant-10', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 10, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(267, 56, NULL, NULL, 'fb320421-f3dd-355b-9d48-586bc991000b-variant-11', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 11, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(268, 56, NULL, NULL, 'fb320421-f3dd-355b-9d48-586bc991000b-variant-12', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 12, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(269, 56, NULL, NULL, 'fb320421-f3dd-355b-9d48-586bc991000b-variant-13', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 13, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(270, 56, NULL, NULL, 'fb320421-f3dd-355b-9d48-586bc991000b-variant-14', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 14, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(271, 57, NULL, NULL, 'c0121c2a-d282-382d-a6fa-3469729a945a-variant-0', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 0, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(272, 57, NULL, NULL, 'c0121c2a-d282-382d-a6fa-3469729a945a-variant-1', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 1, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(273, 57, NULL, NULL, 'c0121c2a-d282-382d-a6fa-3469729a945a-variant-2', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 2, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(274, 57, NULL, NULL, 'c0121c2a-d282-382d-a6fa-3469729a945a-variant-3', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 3, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(275, 57, NULL, NULL, 'c0121c2a-d282-382d-a6fa-3469729a945a-variant-4', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 4, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(276, 57, NULL, NULL, 'c0121c2a-d282-382d-a6fa-3469729a945a-variant-5', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 5, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(277, 57, NULL, NULL, 'c0121c2a-d282-382d-a6fa-3469729a945a-variant-6', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 6, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(278, 57, NULL, NULL, 'c0121c2a-d282-382d-a6fa-3469729a945a-variant-7', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 7, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(279, 57, NULL, NULL, 'c0121c2a-d282-382d-a6fa-3469729a945a-variant-8', '2019-06-02 14:48:28', '2019-06-02 14:48:28', 8, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(280, 57, NULL, NULL, 'c0121c2a-d282-382d-a6fa-3469729a945a-variant-9', '2019-06-02 14:48:28', '2019-06-02 14:48:29', 9, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(281, 57, NULL, NULL, 'c0121c2a-d282-382d-a6fa-3469729a945a-variant-10', '2019-06-02 14:48:28', '2019-06-02 14:48:29', 10, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(282, 57, NULL, NULL, 'c0121c2a-d282-382d-a6fa-3469729a945a-variant-11', '2019-06-02 14:48:28', '2019-06-02 14:48:29', 11, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(283, 57, NULL, NULL, 'c0121c2a-d282-382d-a6fa-3469729a945a-variant-12', '2019-06-02 14:48:28', '2019-06-02 14:48:29', 12, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(284, 57, NULL, NULL, 'c0121c2a-d282-382d-a6fa-3469729a945a-variant-13', '2019-06-02 14:48:28', '2019-06-02 14:48:29', 13, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(285, 57, NULL, NULL, 'c0121c2a-d282-382d-a6fa-3469729a945a-variant-14', '2019-06-02 14:48:28', '2019-06-02 14:48:29', 14, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(286, 58, NULL, NULL, '4574937f-3bcf-3874-a84c-a332a7b16e32-variant-0', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 0, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(287, 58, NULL, NULL, '4574937f-3bcf-3874-a84c-a332a7b16e32-variant-1', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 1, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(288, 58, NULL, NULL, '4574937f-3bcf-3874-a84c-a332a7b16e32-variant-2', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 2, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(289, 58, NULL, NULL, '4574937f-3bcf-3874-a84c-a332a7b16e32-variant-3', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 3, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(290, 58, NULL, NULL, '4574937f-3bcf-3874-a84c-a332a7b16e32-variant-4', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 4, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(291, 58, NULL, NULL, '4574937f-3bcf-3874-a84c-a332a7b16e32-variant-5', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 5, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(292, 58, NULL, NULL, '4574937f-3bcf-3874-a84c-a332a7b16e32-variant-6', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 6, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(293, 58, NULL, NULL, '4574937f-3bcf-3874-a84c-a332a7b16e32-variant-7', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 7, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(294, 58, NULL, NULL, '4574937f-3bcf-3874-a84c-a332a7b16e32-variant-8', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 8, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(295, 58, NULL, NULL, '4574937f-3bcf-3874-a84c-a332a7b16e32-variant-9', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 9, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(296, 58, NULL, NULL, '4574937f-3bcf-3874-a84c-a332a7b16e32-variant-10', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 10, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(297, 58, NULL, NULL, '4574937f-3bcf-3874-a84c-a332a7b16e32-variant-11', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 11, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(298, 58, NULL, NULL, '4574937f-3bcf-3874-a84c-a332a7b16e32-variant-12', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 12, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(299, 58, NULL, NULL, '4574937f-3bcf-3874-a84c-a332a7b16e32-variant-13', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 13, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(300, 58, NULL, NULL, '4574937f-3bcf-3874-a84c-a332a7b16e32-variant-14', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 14, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(301, 59, NULL, NULL, 'c425415a-6839-3e9e-9393-4e943c8b47a3-variant-0', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(302, 59, NULL, NULL, 'c425415a-6839-3e9e-9393-4e943c8b47a3-variant-1', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(303, 59, NULL, NULL, 'c425415a-6839-3e9e-9393-4e943c8b47a3-variant-2', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 2, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(304, 59, NULL, NULL, 'c425415a-6839-3e9e-9393-4e943c8b47a3-variant-3', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 3, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(305, 59, NULL, NULL, 'c425415a-6839-3e9e-9393-4e943c8b47a3-variant-4', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 4, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(306, 59, NULL, NULL, 'c425415a-6839-3e9e-9393-4e943c8b47a3-variant-5', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 5, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(307, 59, NULL, NULL, 'c425415a-6839-3e9e-9393-4e943c8b47a3-variant-6', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 6, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(308, 59, NULL, NULL, 'c425415a-6839-3e9e-9393-4e943c8b47a3-variant-7', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 7, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(309, 59, NULL, NULL, 'c425415a-6839-3e9e-9393-4e943c8b47a3-variant-8', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 8, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(310, 59, NULL, NULL, 'c425415a-6839-3e9e-9393-4e943c8b47a3-variant-9', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 9, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(311, 59, NULL, NULL, 'c425415a-6839-3e9e-9393-4e943c8b47a3-variant-10', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 10, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(312, 59, NULL, NULL, 'c425415a-6839-3e9e-9393-4e943c8b47a3-variant-11', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 11, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1);
INSERT INTO `sylius_product_variant` (`id`, `product_id`, `tax_category_id`, `shipping_category_id`, `code`, `created_at`, `updated_at`, `position`, `version`, `on_hold`, `on_hand`, `tracked`, `width`, `height`, `depth`, `weight`, `shipping_required`) VALUES
(313, 59, NULL, NULL, 'c425415a-6839-3e9e-9393-4e943c8b47a3-variant-12', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 12, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(314, 59, NULL, NULL, 'c425415a-6839-3e9e-9393-4e943c8b47a3-variant-13', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 13, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(315, 59, NULL, NULL, 'c425415a-6839-3e9e-9393-4e943c8b47a3-variant-14', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 14, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(316, 60, NULL, NULL, 'fff7a11a-50e1-3549-9f70-79190d12cc31-variant-0', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(317, 60, NULL, NULL, 'fff7a11a-50e1-3549-9f70-79190d12cc31-variant-1', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 1, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(318, 60, NULL, NULL, 'fff7a11a-50e1-3549-9f70-79190d12cc31-variant-2', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(319, 60, NULL, NULL, 'fff7a11a-50e1-3549-9f70-79190d12cc31-variant-3', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 3, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(320, 60, NULL, NULL, 'fff7a11a-50e1-3549-9f70-79190d12cc31-variant-4', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 4, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(321, 60, NULL, NULL, 'fff7a11a-50e1-3549-9f70-79190d12cc31-variant-5', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 5, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(322, 60, NULL, NULL, 'fff7a11a-50e1-3549-9f70-79190d12cc31-variant-6', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 6, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(323, 60, NULL, NULL, 'fff7a11a-50e1-3549-9f70-79190d12cc31-variant-7', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 7, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(324, 60, NULL, NULL, 'fff7a11a-50e1-3549-9f70-79190d12cc31-variant-8', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 8, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(325, 60, NULL, NULL, 'fff7a11a-50e1-3549-9f70-79190d12cc31-variant-9', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 9, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(326, 60, NULL, NULL, 'fff7a11a-50e1-3549-9f70-79190d12cc31-variant-10', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 10, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(327, 60, NULL, NULL, 'fff7a11a-50e1-3549-9f70-79190d12cc31-variant-11', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 11, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(328, 60, NULL, NULL, 'fff7a11a-50e1-3549-9f70-79190d12cc31-variant-12', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 12, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(329, 60, NULL, NULL, 'fff7a11a-50e1-3549-9f70-79190d12cc31-variant-13', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 13, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(330, 60, NULL, NULL, 'fff7a11a-50e1-3549-9f70-79190d12cc31-variant-14', '2019-06-02 14:48:29', '2019-06-02 14:48:29', 14, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_variant_option_value`
--

DROP TABLE IF EXISTS `sylius_product_variant_option_value`;
CREATE TABLE IF NOT EXISTS `sylius_product_variant_option_value` (
  `variant_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  PRIMARY KEY (`variant_id`,`option_value_id`),
  KEY `IDX_76CDAFA13B69A9AF` (`variant_id`),
  KEY `IDX_76CDAFA1D957CA06` (`option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_variant_option_value`
--

INSERT INTO `sylius_product_variant_option_value` (`variant_id`, `option_value_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(5, 2),
(6, 3),
(7, 1),
(8, 2),
(9, 3),
(10, 1),
(11, 2),
(12, 3),
(13, 1),
(14, 2),
(15, 3),
(16, 1),
(17, 2),
(18, 3),
(19, 1),
(20, 2),
(21, 3),
(22, 1),
(23, 2),
(24, 3),
(25, 1),
(26, 2),
(27, 3),
(28, 1),
(29, 2),
(30, 3),
(31, 1),
(32, 2),
(33, 3),
(34, 1),
(35, 2),
(36, 3),
(37, 1),
(38, 2),
(39, 3),
(40, 1),
(41, 2),
(42, 3),
(43, 1),
(44, 2),
(45, 3),
(46, 4),
(47, 5),
(48, 6),
(49, 4),
(50, 5),
(51, 6),
(52, 4),
(53, 5),
(54, 6),
(55, 4),
(56, 5),
(57, 6),
(58, 4),
(59, 5),
(60, 6),
(61, 4),
(62, 5),
(63, 6),
(64, 4),
(65, 5),
(66, 6),
(67, 4),
(68, 5),
(69, 6),
(70, 4),
(71, 5),
(72, 6),
(73, 4),
(74, 5),
(75, 6),
(76, 4),
(77, 5),
(78, 6),
(79, 4),
(80, 5),
(81, 6),
(82, 4),
(83, 5),
(84, 6),
(85, 4),
(86, 5),
(87, 6),
(88, 4),
(89, 5),
(90, 6),
(106, 7),
(106, 10),
(107, 7),
(107, 11),
(108, 7),
(108, 12),
(109, 7),
(109, 13),
(110, 7),
(110, 14),
(111, 8),
(111, 10),
(112, 8),
(112, 11),
(113, 8),
(113, 12),
(114, 8),
(114, 13),
(115, 8),
(115, 14),
(116, 9),
(116, 10),
(117, 9),
(117, 11),
(118, 9),
(118, 12),
(119, 9),
(119, 13),
(120, 9),
(120, 14),
(121, 7),
(121, 10),
(122, 7),
(122, 11),
(123, 7),
(123, 12),
(124, 7),
(124, 13),
(125, 7),
(125, 14),
(126, 8),
(126, 10),
(127, 8),
(127, 11),
(128, 8),
(128, 12),
(129, 8),
(129, 13),
(130, 8),
(130, 14),
(131, 9),
(131, 10),
(132, 9),
(132, 11),
(133, 9),
(133, 12),
(134, 9),
(134, 13),
(135, 9),
(135, 14),
(136, 7),
(136, 10),
(137, 7),
(137, 11),
(138, 7),
(138, 12),
(139, 7),
(139, 13),
(140, 7),
(140, 14),
(141, 8),
(141, 10),
(142, 8),
(142, 11),
(143, 8),
(143, 12),
(144, 8),
(144, 13),
(145, 8),
(145, 14),
(146, 9),
(146, 10),
(147, 9),
(147, 11),
(148, 9),
(148, 12),
(149, 9),
(149, 13),
(150, 9),
(150, 14),
(151, 7),
(151, 10),
(152, 7),
(152, 11),
(153, 7),
(153, 12),
(154, 7),
(154, 13),
(155, 7),
(155, 14),
(156, 8),
(156, 10),
(157, 8),
(157, 11),
(158, 8),
(158, 12),
(159, 8),
(159, 13),
(160, 8),
(160, 14),
(161, 9),
(161, 10),
(162, 9),
(162, 11),
(163, 9),
(163, 12),
(164, 9),
(164, 13),
(165, 9),
(165, 14),
(166, 7),
(166, 10),
(167, 7),
(167, 11),
(168, 7),
(168, 12),
(169, 7),
(169, 13),
(170, 7),
(170, 14),
(171, 8),
(171, 10),
(172, 8),
(172, 11),
(173, 8),
(173, 12),
(174, 8),
(174, 13),
(175, 8),
(175, 14),
(176, 9),
(176, 10),
(177, 9),
(177, 11),
(178, 9),
(178, 12),
(179, 9),
(179, 13),
(180, 9),
(180, 14),
(181, 7),
(181, 10),
(182, 7),
(182, 11),
(183, 7),
(183, 12),
(184, 7),
(184, 13),
(185, 7),
(185, 14),
(186, 8),
(186, 10),
(187, 8),
(187, 11),
(188, 8),
(188, 12),
(189, 8),
(189, 13),
(190, 8),
(190, 14),
(191, 9),
(191, 10),
(192, 9),
(192, 11),
(193, 9),
(193, 12),
(194, 9),
(194, 13),
(195, 9),
(195, 14),
(196, 7),
(196, 10),
(197, 7),
(197, 11),
(198, 7),
(198, 12),
(199, 7),
(199, 13),
(200, 7),
(200, 14),
(201, 8),
(201, 10),
(202, 8),
(202, 11),
(203, 8),
(203, 12),
(204, 8),
(204, 13),
(205, 8),
(205, 14),
(206, 9),
(206, 10),
(207, 9),
(207, 11),
(208, 9),
(208, 12),
(209, 9),
(209, 13),
(210, 9),
(210, 14),
(211, 7),
(211, 10),
(212, 7),
(212, 11),
(213, 7),
(213, 12),
(214, 7),
(214, 13),
(215, 7),
(215, 14),
(216, 8),
(216, 10),
(217, 8),
(217, 11),
(218, 8),
(218, 12),
(219, 8),
(219, 13),
(220, 8),
(220, 14),
(221, 9),
(221, 10),
(222, 9),
(222, 11),
(223, 9),
(223, 12),
(224, 9),
(224, 13),
(225, 9),
(225, 14),
(226, 7),
(226, 10),
(227, 7),
(227, 11),
(228, 7),
(228, 12),
(229, 7),
(229, 13),
(230, 7),
(230, 14),
(231, 8),
(231, 10),
(232, 8),
(232, 11),
(233, 8),
(233, 12),
(234, 8),
(234, 13),
(235, 8),
(235, 14),
(236, 9),
(236, 10),
(237, 9),
(237, 11),
(238, 9),
(238, 12),
(239, 9),
(239, 13),
(240, 9),
(240, 14),
(241, 7),
(241, 10),
(242, 7),
(242, 11),
(243, 7),
(243, 12),
(244, 7),
(244, 13),
(245, 7),
(245, 14),
(246, 8),
(246, 10),
(247, 8),
(247, 11),
(248, 8),
(248, 12),
(249, 8),
(249, 13),
(250, 8),
(250, 14),
(251, 9),
(251, 10),
(252, 9),
(252, 11),
(253, 9),
(253, 12),
(254, 9),
(254, 13),
(255, 9),
(255, 14),
(256, 7),
(256, 10),
(257, 7),
(257, 11),
(258, 7),
(258, 12),
(259, 7),
(259, 13),
(260, 7),
(260, 14),
(261, 8),
(261, 10),
(262, 8),
(262, 11),
(263, 8),
(263, 12),
(264, 8),
(264, 13),
(265, 8),
(265, 14),
(266, 9),
(266, 10),
(267, 9),
(267, 11),
(268, 9),
(268, 12),
(269, 9),
(269, 13),
(270, 9),
(270, 14),
(271, 7),
(271, 10),
(272, 7),
(272, 11),
(273, 7),
(273, 12),
(274, 7),
(274, 13),
(275, 7),
(275, 14),
(276, 8),
(276, 10),
(277, 8),
(277, 11),
(278, 8),
(278, 12),
(279, 8),
(279, 13),
(280, 8),
(280, 14),
(281, 9),
(281, 10),
(282, 9),
(282, 11),
(283, 9),
(283, 12),
(284, 9),
(284, 13),
(285, 9),
(285, 14),
(286, 7),
(286, 10),
(287, 7),
(287, 11),
(288, 7),
(288, 12),
(289, 7),
(289, 13),
(290, 7),
(290, 14),
(291, 8),
(291, 10),
(292, 8),
(292, 11),
(293, 8),
(293, 12),
(294, 8),
(294, 13),
(295, 8),
(295, 14),
(296, 9),
(296, 10),
(297, 9),
(297, 11),
(298, 9),
(298, 12),
(299, 9),
(299, 13),
(300, 9),
(300, 14),
(301, 7),
(301, 10),
(302, 7),
(302, 11),
(303, 7),
(303, 12),
(304, 7),
(304, 13),
(305, 7),
(305, 14),
(306, 8),
(306, 10),
(307, 8),
(307, 11),
(308, 8),
(308, 12),
(309, 8),
(309, 13),
(310, 8),
(310, 14),
(311, 9),
(311, 10),
(312, 9),
(312, 11),
(313, 9),
(313, 12),
(314, 9),
(314, 13),
(315, 9),
(315, 14),
(316, 7),
(316, 10),
(317, 7),
(317, 11),
(318, 7),
(318, 12),
(319, 7),
(319, 13),
(320, 7),
(320, 14),
(321, 8),
(321, 10),
(322, 8),
(322, 11),
(323, 8),
(323, 12),
(324, 8),
(324, 13),
(325, 8),
(325, 14),
(326, 9),
(326, 10),
(327, 9),
(327, 11),
(328, 9),
(328, 12),
(329, 9),
(329, 13),
(330, 9),
(330, 14);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_variant_translation`
--

DROP TABLE IF EXISTS `sylius_product_variant_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_variant_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_variant_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8DC18EDC2C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_variant_translation`
--

INSERT INTO `sylius_product_variant_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
(1, 1, 'error', 'en_US'),
(2, 2, 'minus', 'en_US'),
(3, 3, 'delectus', 'en_US'),
(4, 4, 'doloremque', 'en_US'),
(5, 5, 'illo', 'en_US'),
(6, 6, 'impedit', 'en_US'),
(7, 7, 'enim', 'en_US'),
(8, 8, 'ipsum', 'en_US'),
(9, 9, 'fugit', 'en_US'),
(10, 10, 'ullam', 'en_US'),
(11, 11, 'doloremque', 'en_US'),
(12, 12, 'porro', 'en_US'),
(13, 13, 'laborum', 'en_US'),
(14, 14, 'et', 'en_US'),
(15, 15, 'porro', 'en_US'),
(16, 16, 'id', 'en_US'),
(17, 17, 'temporibus', 'en_US'),
(18, 18, 'placeat', 'en_US'),
(19, 19, 'iure', 'en_US'),
(20, 20, 'ut', 'en_US'),
(21, 21, 'facilis', 'en_US'),
(22, 22, 'corporis', 'en_US'),
(23, 23, 'voluptas', 'en_US'),
(24, 24, 'laboriosam', 'en_US'),
(25, 25, 'qui', 'en_US'),
(26, 26, 'molestias', 'en_US'),
(27, 27, 'sunt', 'en_US'),
(28, 28, 'quia', 'en_US'),
(29, 29, 'hic', 'en_US'),
(30, 30, 'distinctio', 'en_US'),
(31, 31, 'perferendis', 'en_US'),
(32, 32, 'rerum', 'en_US'),
(33, 33, 'earum', 'en_US'),
(34, 34, 'est', 'en_US'),
(35, 35, 'ipsam', 'en_US'),
(36, 36, 'ut', 'en_US'),
(37, 37, 'debitis', 'en_US'),
(38, 38, 'ea', 'en_US'),
(39, 39, 'ut', 'en_US'),
(40, 40, 'vel', 'en_US'),
(41, 41, 'occaecati', 'en_US'),
(42, 42, 'veniam', 'en_US'),
(43, 43, 'debitis', 'en_US'),
(44, 44, 'est', 'en_US'),
(45, 45, 'libero', 'en_US'),
(46, 46, 'praesentium', 'en_US'),
(47, 47, 'blanditiis', 'en_US'),
(48, 48, 'ut', 'en_US'),
(49, 49, 'aut', 'en_US'),
(50, 50, 'illum', 'en_US'),
(51, 51, 'expedita', 'en_US'),
(52, 52, 'at', 'en_US'),
(53, 53, 'asperiores', 'en_US'),
(54, 54, 'recusandae', 'en_US'),
(55, 55, 'ut', 'en_US'),
(56, 56, 'et', 'en_US'),
(57, 57, 'dolores', 'en_US'),
(58, 58, 'ad', 'en_US'),
(59, 59, 'velit', 'en_US'),
(60, 60, 'voluptas', 'en_US'),
(61, 61, 'commodi', 'en_US'),
(62, 62, 'eum', 'en_US'),
(63, 63, 'in', 'en_US'),
(64, 64, 'qui', 'en_US'),
(65, 65, 'exercitationem', 'en_US'),
(66, 66, 'sed', 'en_US'),
(67, 67, 'dolorem', 'en_US'),
(68, 68, 'accusantium', 'en_US'),
(69, 69, 'voluptatem', 'en_US'),
(70, 70, 'iure', 'en_US'),
(71, 71, 'pariatur', 'en_US'),
(72, 72, 'rerum', 'en_US'),
(73, 73, 'earum', 'en_US'),
(74, 74, 'rerum', 'en_US'),
(75, 75, 'aspernatur', 'en_US'),
(76, 76, 'nihil', 'en_US'),
(77, 77, 'sunt', 'en_US'),
(78, 78, 'dignissimos', 'en_US'),
(79, 79, 'laudantium', 'en_US'),
(80, 80, 'odio', 'en_US'),
(81, 81, 'temporibus', 'en_US'),
(82, 82, 'aut', 'en_US'),
(83, 83, 'accusantium', 'en_US'),
(84, 84, 'cupiditate', 'en_US'),
(85, 85, 'inventore', 'en_US'),
(86, 86, 'pariatur', 'en_US'),
(87, 87, 'quidem', 'en_US'),
(88, 88, 'ut', 'en_US'),
(89, 89, 'quisquam', 'en_US'),
(90, 90, 'aut', 'en_US'),
(91, 91, 'similique', 'en_US'),
(92, 92, 'dolor', 'en_US'),
(93, 93, 'quod', 'en_US'),
(94, 94, 'omnis', 'en_US'),
(95, 95, 'temporibus', 'en_US'),
(96, 96, 'hic', 'en_US'),
(97, 97, 'accusantium', 'en_US'),
(98, 98, 'vel', 'en_US'),
(99, 99, 'tempore', 'en_US'),
(100, 100, 'aut', 'en_US'),
(101, 101, 'voluptatibus', 'en_US'),
(102, 102, 'occaecati', 'en_US'),
(103, 103, 'est', 'en_US'),
(104, 104, 'et', 'en_US'),
(105, 105, 'iure', 'en_US'),
(106, 106, 'itaque', 'en_US'),
(107, 107, 'et', 'en_US'),
(108, 108, 'dolorem', 'en_US'),
(109, 109, 'qui', 'en_US'),
(110, 110, 'odio', 'en_US'),
(111, 111, 'est', 'en_US'),
(112, 112, 'alias', 'en_US'),
(113, 113, 'error', 'en_US'),
(114, 114, 'harum', 'en_US'),
(115, 115, 'tempore', 'en_US'),
(116, 116, 'quia', 'en_US'),
(117, 117, 'accusamus', 'en_US'),
(118, 118, 'amet', 'en_US'),
(119, 119, 'aliquam', 'en_US'),
(120, 120, 'vel', 'en_US'),
(121, 121, 'accusantium', 'en_US'),
(122, 122, 'ut', 'en_US'),
(123, 123, 'ex', 'en_US'),
(124, 124, 'et', 'en_US'),
(125, 125, 'cupiditate', 'en_US'),
(126, 126, 'amet', 'en_US'),
(127, 127, 'omnis', 'en_US'),
(128, 128, 'et', 'en_US'),
(129, 129, 'rerum', 'en_US'),
(130, 130, 'voluptatem', 'en_US'),
(131, 131, 'porro', 'en_US'),
(132, 132, 'nihil', 'en_US'),
(133, 133, 'quia', 'en_US'),
(134, 134, 'dolores', 'en_US'),
(135, 135, 'et', 'en_US'),
(136, 136, 'non', 'en_US'),
(137, 137, 'voluptatem', 'en_US'),
(138, 138, 'voluptatem', 'en_US'),
(139, 139, 'est', 'en_US'),
(140, 140, 'animi', 'en_US'),
(141, 141, 'ut', 'en_US'),
(142, 142, 'magni', 'en_US'),
(143, 143, 'qui', 'en_US'),
(144, 144, 'tenetur', 'en_US'),
(145, 145, 'velit', 'en_US'),
(146, 146, 'iure', 'en_US'),
(147, 147, 'consequatur', 'en_US'),
(148, 148, 'et', 'en_US'),
(149, 149, 'sequi', 'en_US'),
(150, 150, 'impedit', 'en_US'),
(151, 151, 'aut', 'en_US'),
(152, 152, 'optio', 'en_US'),
(153, 153, 'quisquam', 'en_US'),
(154, 154, 'pariatur', 'en_US'),
(155, 155, 'ex', 'en_US'),
(156, 156, 'nihil', 'en_US'),
(157, 157, 'iste', 'en_US'),
(158, 158, 'autem', 'en_US'),
(159, 159, 'maxime', 'en_US'),
(160, 160, 'quibusdam', 'en_US'),
(161, 161, 'soluta', 'en_US'),
(162, 162, 'aliquam', 'en_US'),
(163, 163, 'amet', 'en_US'),
(164, 164, 'sit', 'en_US'),
(165, 165, 'ut', 'en_US'),
(166, 166, 'doloribus', 'en_US'),
(167, 167, 'optio', 'en_US'),
(168, 168, 'ea', 'en_US'),
(169, 169, 'nesciunt', 'en_US'),
(170, 170, 'cupiditate', 'en_US'),
(171, 171, 'illum', 'en_US'),
(172, 172, 'assumenda', 'en_US'),
(173, 173, 'tenetur', 'en_US'),
(174, 174, 'est', 'en_US'),
(175, 175, 'dolores', 'en_US'),
(176, 176, 'libero', 'en_US'),
(177, 177, 'sed', 'en_US'),
(178, 178, 'rem', 'en_US'),
(179, 179, 'quos', 'en_US'),
(180, 180, 'officiis', 'en_US'),
(181, 181, 'molestiae', 'en_US'),
(182, 182, 'vel', 'en_US'),
(183, 183, 'ut', 'en_US'),
(184, 184, 'quam', 'en_US'),
(185, 185, 'quam', 'en_US'),
(186, 186, 'id', 'en_US'),
(187, 187, 'accusamus', 'en_US'),
(188, 188, 'qui', 'en_US'),
(189, 189, 'eaque', 'en_US'),
(190, 190, 'consequatur', 'en_US'),
(191, 191, 'doloribus', 'en_US'),
(192, 192, 'accusantium', 'en_US'),
(193, 193, 'voluptatem', 'en_US'),
(194, 194, 'at', 'en_US'),
(195, 195, 'et', 'en_US'),
(196, 196, 'deserunt', 'en_US'),
(197, 197, 'id', 'en_US'),
(198, 198, 'voluptate', 'en_US'),
(199, 199, 'rem', 'en_US'),
(200, 200, 'asperiores', 'en_US'),
(201, 201, 'non', 'en_US'),
(202, 202, 'minus', 'en_US'),
(203, 203, 'ad', 'en_US'),
(204, 204, 'modi', 'en_US'),
(205, 205, 'iste', 'en_US'),
(206, 206, 'aut', 'en_US'),
(207, 207, 'quas', 'en_US'),
(208, 208, 'sed', 'en_US'),
(209, 209, 'et', 'en_US'),
(210, 210, 'quia', 'en_US'),
(211, 211, 'laboriosam', 'en_US'),
(212, 212, 'id', 'en_US'),
(213, 213, 'molestiae', 'en_US'),
(214, 214, 'velit', 'en_US'),
(215, 215, 'ad', 'en_US'),
(216, 216, 'perferendis', 'en_US'),
(217, 217, 'est', 'en_US'),
(218, 218, 'adipisci', 'en_US'),
(219, 219, 'inventore', 'en_US'),
(220, 220, 'voluptatum', 'en_US'),
(221, 221, 'neque', 'en_US'),
(222, 222, 'velit', 'en_US'),
(223, 223, 'ea', 'en_US'),
(224, 224, 'sit', 'en_US'),
(225, 225, 'a', 'en_US'),
(226, 226, 'aut', 'en_US'),
(227, 227, 'non', 'en_US'),
(228, 228, 'libero', 'en_US'),
(229, 229, 'quam', 'en_US'),
(230, 230, 'alias', 'en_US'),
(231, 231, 'minima', 'en_US'),
(232, 232, 'eos', 'en_US'),
(233, 233, 'animi', 'en_US'),
(234, 234, 'quis', 'en_US'),
(235, 235, 'voluptatum', 'en_US'),
(236, 236, 'molestiae', 'en_US'),
(237, 237, 'enim', 'en_US'),
(238, 238, 'dolorem', 'en_US'),
(239, 239, 'omnis', 'en_US'),
(240, 240, 'aliquid', 'en_US'),
(241, 241, 'molestiae', 'en_US'),
(242, 242, 'tenetur', 'en_US'),
(243, 243, 'maxime', 'en_US'),
(244, 244, 'quo', 'en_US'),
(245, 245, 'a', 'en_US'),
(246, 246, 'quo', 'en_US'),
(247, 247, 'magnam', 'en_US'),
(248, 248, 'rerum', 'en_US'),
(249, 249, 'consequatur', 'en_US'),
(250, 250, 'quo', 'en_US'),
(251, 251, 'qui', 'en_US'),
(252, 252, 'minus', 'en_US'),
(253, 253, 'commodi', 'en_US'),
(254, 254, 'impedit', 'en_US'),
(255, 255, 'quos', 'en_US'),
(256, 256, 'hic', 'en_US'),
(257, 257, 'nobis', 'en_US'),
(258, 258, 'nobis', 'en_US'),
(259, 259, 'qui', 'en_US'),
(260, 260, 'veniam', 'en_US'),
(261, 261, 'cumque', 'en_US'),
(262, 262, 'quo', 'en_US'),
(263, 263, 'velit', 'en_US'),
(264, 264, 'accusantium', 'en_US'),
(265, 265, 'cumque', 'en_US'),
(266, 266, 'et', 'en_US'),
(267, 267, 'tempore', 'en_US'),
(268, 268, 'et', 'en_US'),
(269, 269, 'earum', 'en_US'),
(270, 270, 'sit', 'en_US'),
(271, 271, 'ut', 'en_US'),
(272, 272, 'quod', 'en_US'),
(273, 273, 'eos', 'en_US'),
(274, 274, 'qui', 'en_US'),
(275, 275, 'earum', 'en_US'),
(276, 276, 'commodi', 'en_US'),
(277, 277, 'adipisci', 'en_US'),
(278, 278, 'eius', 'en_US'),
(279, 279, 'assumenda', 'en_US'),
(280, 280, 'vel', 'en_US'),
(281, 281, 'asperiores', 'en_US'),
(282, 282, 'aliquam', 'en_US'),
(283, 283, 'maxime', 'en_US'),
(284, 284, 'voluptatem', 'en_US'),
(285, 285, 'in', 'en_US'),
(286, 286, 'sed', 'en_US'),
(287, 287, 'a', 'en_US'),
(288, 288, 'earum', 'en_US'),
(289, 289, 'recusandae', 'en_US'),
(290, 290, 'non', 'en_US'),
(291, 291, 'optio', 'en_US'),
(292, 292, 'tenetur', 'en_US'),
(293, 293, 'dolorem', 'en_US'),
(294, 294, 'aut', 'en_US'),
(295, 295, 'non', 'en_US'),
(296, 296, 'necessitatibus', 'en_US'),
(297, 297, 'sed', 'en_US'),
(298, 298, 'est', 'en_US'),
(299, 299, 'occaecati', 'en_US'),
(300, 300, 'et', 'en_US'),
(301, 301, 'molestiae', 'en_US'),
(302, 302, 'asperiores', 'en_US'),
(303, 303, 'vel', 'en_US'),
(304, 304, 'rerum', 'en_US'),
(305, 305, 'voluptatibus', 'en_US'),
(306, 306, 'mollitia', 'en_US'),
(307, 307, 'eos', 'en_US'),
(308, 308, 'necessitatibus', 'en_US'),
(309, 309, 'et', 'en_US'),
(310, 310, 'libero', 'en_US'),
(311, 311, 'odit', 'en_US'),
(312, 312, 'vero', 'en_US'),
(313, 313, 'hic', 'en_US'),
(314, 314, 'et', 'en_US'),
(315, 315, 'ab', 'en_US'),
(316, 316, 'officiis', 'en_US'),
(317, 317, 'dignissimos', 'en_US'),
(318, 318, 'ut', 'en_US'),
(319, 319, 'ut', 'en_US'),
(320, 320, 'aperiam', 'en_US'),
(321, 321, 'ipsum', 'en_US'),
(322, 322, 'quo', 'en_US'),
(323, 323, 'placeat', 'en_US'),
(324, 324, 'quas', 'en_US'),
(325, 325, 'quo', 'en_US'),
(326, 326, 'quis', 'en_US'),
(327, 327, 'odio', 'en_US'),
(328, 328, 'corporis', 'en_US'),
(329, 329, 'rerum', 'en_US'),
(330, 330, 'maxime', 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_promotion`
--

DROP TABLE IF EXISTS `sylius_promotion`;
CREATE TABLE IF NOT EXISTS `sylius_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `exclusive` tinyint(1) NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `coupon_based` tinyint(1) NOT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F157396377153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_promotion`
--

INSERT INTO `sylius_promotion` (`id`, `code`, `name`, `description`, `priority`, `exclusive`, `usage_limit`, `used`, `coupon_based`, `starts_at`, `ends_at`, `created_at`, `updated_at`) VALUES
(1, 'christmas', 'Christmas', 'Eveniet quia rem quae enim in itaque esse.', 0, 0, NULL, 20, 0, NULL, NULL, '2019-06-02 14:48:23', '2019-06-02 14:48:33'),
(2, 'new_year', 'New Year', 'Eveniet quia rem quae enim in itaque esse.', 2, 0, 10, 1, 0, '2019-05-26 14:48:23', '2019-06-09 14:48:23', '2019-06-02 14:48:23', '2019-06-02 14:48:33');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_promotion_action`
--

DROP TABLE IF EXISTS `sylius_promotion_action`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_933D0915139DF194` (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_promotion_action`
--

INSERT INTO `sylius_promotion_action` (`id`, `promotion_id`, `type`, `configuration`) VALUES
(1, 1, 'order_percentage_discount', 'a:1:{s:10:\"percentage\";d:0.95;}'),
(2, 2, 'order_fixed_discount', 'a:1:{s:6:\"US_WEB\";a:1:{s:6:\"amount\";i:1000;}}');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_promotion_channels`
--

DROP TABLE IF EXISTS `sylius_promotion_channels`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_channels` (
  `promotion_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`promotion_id`,`channel_id`),
  KEY `IDX_1A044F64139DF194` (`promotion_id`),
  KEY `IDX_1A044F6472F5A1AA` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_promotion_channels`
--

INSERT INTO `sylius_promotion_channels` (`promotion_id`, `channel_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_promotion_coupon`
--

DROP TABLE IF EXISTS `sylius_promotion_coupon`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `per_customer_usage_limit` int(11) DEFAULT NULL,
  `reusable_from_cancelled_orders` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B04EBA8577153098` (`code`),
  KEY `IDX_B04EBA85139DF194` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_promotion_order`
--

DROP TABLE IF EXISTS `sylius_promotion_order`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_order` (
  `order_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`promotion_id`),
  KEY `IDX_BF9CF6FB8D9F6D38` (`order_id`),
  KEY `IDX_BF9CF6FB139DF194` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_promotion_order`
--

INSERT INTO `sylius_promotion_order` (`order_id`, `promotion_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(7, 2),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_promotion_rule`
--

DROP TABLE IF EXISTS `sylius_promotion_rule`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_2C188EA8139DF194` (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_promotion_rule`
--

INSERT INTO `sylius_promotion_rule` (`id`, `promotion_id`, `type`, `configuration`) VALUES
(1, 1, 'cart_quantity', 'a:1:{s:5:\"count\";i:1;}'),
(2, 2, 'item_total', 'a:1:{s:6:\"US_WEB\";a:1:{s:6:\"amount\";i:10000;}}');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_province`
--

DROP TABLE IF EXISTS `sylius_province`;
CREATE TABLE IF NOT EXISTS `sylius_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B5618FE477153098` (`code`),
  UNIQUE KEY `UNIQ_B5618FE4F92F3E705E237E06` (`country_id`,`name`),
  KEY `IDX_B5618FE4F92F3E70` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shipment`
--

DROP TABLE IF EXISTS `sylius_shipment`;
CREATE TABLE IF NOT EXISTS `sylius_shipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FD707B3319883967` (`method_id`),
  KEY `IDX_FD707B338D9F6D38` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_shipment`
--

INSERT INTO `sylius_shipment` (`id`, `method_id`, `order_id`, `state`, `tracking`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'ready', NULL, '2019-06-02 14:48:31', '2019-06-02 14:48:32'),
(2, 1, 2, 'ready', NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(3, 3, 3, 'ready', NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(4, 3, 4, 'ready', NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(5, 1, 5, 'ready', NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(6, 2, 6, 'ready', NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(7, 2, 7, 'ready', NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(8, 1, 8, 'ready', NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(9, 2, 9, 'ready', NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(10, 2, 10, 'ready', NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(11, 3, 11, 'ready', NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(12, 1, 12, 'ready', NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(13, 3, 13, 'ready', NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(14, 1, 14, 'ready', NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(15, 1, 15, 'ready', NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(16, 1, 16, 'ready', NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(17, 2, 17, 'ready', NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(18, 1, 18, 'ready', NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(19, 3, 19, 'ready', NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:32'),
(20, 1, 20, 'ready', NULL, '2019-06-02 14:48:32', '2019-06-02 14:48:33');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shipping_category`
--

DROP TABLE IF EXISTS `sylius_shipping_category`;
CREATE TABLE IF NOT EXISTS `sylius_shipping_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B1D6465277153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shipping_method`
--

DROP TABLE IF EXISTS `sylius_shipping_method`;
CREATE TABLE IF NOT EXISTS `sylius_shipping_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `category_requirement` int(11) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `archived_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5FB0EE1177153098` (`code`),
  KEY `IDX_5FB0EE1112469DE2` (`category_id`),
  KEY `IDX_5FB0EE119F2C3FAB` (`zone_id`),
  KEY `IDX_5FB0EE119DF894ED` (`tax_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_shipping_method`
--

INSERT INTO `sylius_shipping_method` (`id`, `category_id`, `zone_id`, `tax_category_id`, `code`, `configuration`, `category_requirement`, `calculator`, `is_enabled`, `position`, `archived_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, NULL, 'ups', 'a:1:{s:6:\"US_WEB\";a:1:{s:6:\"amount\";i:5877;}}', 1, 'flat_rate', 1, 0, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22'),
(2, NULL, 1, NULL, 'dhl_express', 'a:1:{s:6:\"US_WEB\";a:1:{s:6:\"amount\";i:135;}}', 1, 'flat_rate', 1, 1, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22'),
(3, NULL, 1, NULL, 'fedex', 'a:1:{s:6:\"US_WEB\";a:1:{s:6:\"amount\";i:2015;}}', 1, 'flat_rate', 1, 2, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shipping_method_channels`
--

DROP TABLE IF EXISTS `sylius_shipping_method_channels`;
CREATE TABLE IF NOT EXISTS `sylius_shipping_method_channels` (
  `shipping_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`shipping_method_id`,`channel_id`),
  KEY `IDX_2D9833355F7D6850` (`shipping_method_id`),
  KEY `IDX_2D98333572F5A1AA` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_shipping_method_channels`
--

INSERT INTO `sylius_shipping_method_channels` (`shipping_method_id`, `channel_id`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shipping_method_translation`
--

DROP TABLE IF EXISTS `sylius_shipping_method_translation`;
CREATE TABLE IF NOT EXISTS `sylius_shipping_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_shipping_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_2B37DB3D2C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_shipping_method_translation`
--

INSERT INTO `sylius_shipping_method_translation` (`id`, `translatable_id`, `name`, `description`, `locale`) VALUES
(1, 1, 'UPS', 'Nostrum blanditiis inventore excepturi.', 'en_US'),
(2, 2, 'DHL Express', 'Aut suscipit quia ex non sint velit numquam quibusdam.', 'en_US'),
(3, 3, 'FedEx', 'Non unde consectetur nulla reprehenderit incidunt ut placeat.', 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shop_billing_data`
--

DROP TABLE IF EXISTS `sylius_shop_billing_data`;
CREATE TABLE IF NOT EXISTS `sylius_shop_billing_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_shop_billing_data`
--

INSERT INTO `sylius_shop_billing_data` (`id`, `company`, `tax_id`, `country_code`, `street`, `city`, `postcode`) VALUES
(1, 'Sylius', '0001112222', 'US', 'Test St. 15', 'eCommerce Town', '00 33 22');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shop_user`
--

DROP TABLE IF EXISTS `sylius_shop_user`;
CREATE TABLE IF NOT EXISTS `sylius_shop_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `encoder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7C2B74809395C3F3` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_shop_user`
--

INSERT INTO `sylius_shop_user` (`id`, `customer_id`, `username`, `username_canonical`, `enabled`, `salt`, `password`, `last_login`, `password_reset_token`, `password_requested_at`, `email_verification_token`, `verified_at`, `locked`, `expires_at`, `credentials_expire_at`, `roles`, `email`, `email_canonical`, `created_at`, `updated_at`, `encoder_name`) VALUES
(1, 1, 'shop@example.com', 'shop@example.com', 1, 'mnp655vf5dwksksw4g8wg0888k4804c', '$argon2i$v=19$m=1024,t=2,p=2$dkxJQ0YydkNzSDFqTTIzNw$qB89YtyBHz093X9U4wKSyv/Vo4/jfshfKPX5Sc2LfI8', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22', 'argon2i'),
(2, 2, 'laurine.marvin@gmail.com', 'laurine.marvin@gmail.com', 1, 'ndkpac8t9pckcok0oskkkcc48w48wgo', '$argon2i$v=19$m=1024,t=2,p=2$UEp0bUFxSWpjOTd5U1JmZA$qVGEym7DluJt4Nqv2DkaqjhP3N1XuQmcw/47fVlDBW4', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22', 'argon2i'),
(3, 3, 'larry98@yahoo.com', 'larry98@yahoo.com', 1, 'sxzgxzbsgfkoo4g8k8w0gcos0sgocco', '$argon2i$v=19$m=1024,t=2,p=2$clBNdFNLaUVXdEY4eUI5Zw$VC9MWfPxkahJFq77ckvP8cpWTQHweICEEcmd7k2bscE', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22', 'argon2i'),
(4, 4, 'rebekah21@fay.com', 'rebekah21@fay.com', 1, 'lgj95pvs79c48kc0kwksgk44kco88co', '$argon2i$v=19$m=1024,t=2,p=2$T0hMYjdsNHAwcFVja0RvMA$4YNO4kr3HbPsHF+zqpwvEMW2WLYTfryeNi0RYCmkrXg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22', 'argon2i'),
(5, 5, 'brooks.romaguera@gmail.com', 'brooks.romaguera@gmail.com', 1, 'apgmo24ty2w40gck048cwg44s44ks40', '$argon2i$v=19$m=1024,t=2,p=2$djJGQ2FtTHhKaUdheHZuaA$e8V6+NB5lOdiOBf1qFtQy6VIPaS7SM2eMVym+90ufOo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22', 'argon2i'),
(6, 6, 'rrosenbaum@hotmail.com', 'rrosenbaum@hotmail.com', 1, 'vljl5x6krqossc8kkwkowwo8s8k400', '$argon2i$v=19$m=1024,t=2,p=2$VGZZaE92RWVtQ0Z2RWJGMQ$2cOUr5wbYS1IMB8s6ZMDhp4Ejw1nGag3H8M0RVA4vEs', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22', 'argon2i'),
(7, 7, 'savanna71@quigley.com', 'savanna71@quigley.com', 1, 'hzdgy0iu32808ok88ggwok4c0k0ccs0', '$argon2i$v=19$m=1024,t=2,p=2$VVdQazBYTGdPZjFCZDlIMA$X19B2A+0LsEhJNhZ5s7U/bUbgy6gXYvwp0KSc3ZzzRc', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22', 'argon2i'),
(8, 8, 'maxine36@gmail.com', 'maxine36@gmail.com', 1, 'sws8hlwq4iok4oow8k00os8cccg008c', '$argon2i$v=19$m=1024,t=2,p=2$Rnk5eGVCbUExMmlEQnI1Yw$+2EIuA8YF4crc38ghjcYk0lRJcabLXh5sqp9rIcjXcM', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22', 'argon2i'),
(9, 9, 'helmer.willms@torphy.biz', 'helmer.willms@torphy.biz', 1, 's0qezxgnd68sg4o88oocsskw4owoko8', '$argon2i$v=19$m=1024,t=2,p=2$T0ZyeVlST0dpR2NoRUFUUg$yHAna1GP6UJ1XG93MQnNnEJKHWLXxWgg1J0HJk/ZRSo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22', 'argon2i'),
(10, 10, 'harber.abner@yahoo.com', 'harber.abner@yahoo.com', 1, 'bkc9z2olm94oc88sgoog80kgggg0ok4', '$argon2i$v=19$m=1024,t=2,p=2$TXNWeEJCR3NDa0Y0NWlhMg$L4wK3izB/uiT5/xGYATNUdI/3jbVJtVr8L9RWhJp6BM', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22', 'argon2i'),
(11, 11, 'kaylah.spinka@feeney.net', 'kaylah.spinka@feeney.net', 1, 't9qfik75xf4sskck8og8kcgwooc4s4s', '$argon2i$v=19$m=1024,t=2,p=2$d1hUcnZCLzRqNDBwSTZZcA$aL2Itay2osb0wukSEi09xPQB2YealK9NHQhFMztr3nU', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22', 'argon2i'),
(12, 12, 'ghills@gmail.com', 'ghills@gmail.com', 1, 'b9atqhg40f4kkokgsog0k000w80o4w4', '$argon2i$v=19$m=1024,t=2,p=2$VWp0VmpHekFaZ2oyajBDOQ$ppSJ0TI1ADTgG4Q2ARMSR2Oim5BI9kk0GNg5T34o5cY', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22', 'argon2i'),
(13, 13, 'hstoltenberg@hotmail.com', 'hstoltenberg@hotmail.com', 1, '79bx6wqokfwgc8kc4gc040808k80g8c', '$argon2i$v=19$m=1024,t=2,p=2$QzVqUGtHT3J6RG00bkZhTA$y7o2I7vS4bR8zsD3KKlRFtkTMNf1xCa0BeyLv4FtftA', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22', 'argon2i'),
(14, 14, 'julianne33@gmail.com', 'julianne33@gmail.com', 1, 'piky7fcvxasow0w8sc4sk0c8w4k084o', '$argon2i$v=19$m=1024,t=2,p=2$VzFEZjJNWEFFN255N1lkcg$vS0fH8phqX+MIFB6spJ7WYFHNnBzh/YRXaMbWkQxNcc', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22', 'argon2i'),
(15, 15, 'marie61@keebler.com', 'marie61@keebler.com', 1, 'eycz7ctchnsoos0ggw4oc4ccc88ckkw', '$argon2i$v=19$m=1024,t=2,p=2$YkIxYjd6bkRHZEFmWG5SZA$sxEKwII+FTrm7tuXseGgTEA6UDiBUHBvSKG5dPnGdgg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22', 'argon2i'),
(16, 16, 'rau.lemuel@jakubowski.com', 'rau.lemuel@jakubowski.com', 1, 'atdbiqgxvrscg88kc48s8scoookgkw0', '$argon2i$v=19$m=1024,t=2,p=2$Z2dNT3N6ZmVpYWRILmRaaw$9Z2AA+w763QiVWbieW97Ky4RobugM0rogjMkgpqx3qY', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22', 'argon2i'),
(17, 17, 'stoltenberg.yvette@little.com', 'stoltenberg.yvette@little.com', 1, 'o74vrubnankoggggw0kss4k4w0g0ko8', '$argon2i$v=19$m=1024,t=2,p=2$a24xTHgvMzVseDY1VUtJMg$eZRqxPcoD5YieJSx/ew7N7fxXmlRLikI3F5FMrEotsQ', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22', 'argon2i'),
(18, 18, 'schneider.jedediah@runolfsson.net', 'schneider.jedediah@runolfsson.net', 1, '30hdxlr74jk0g84wo4socc8o40ooo88', '$argon2i$v=19$m=1024,t=2,p=2$cmJ0Y2YuQTI4cGczUWNKRA$miqivcYPVmstSY/kozsPB1cYpa/yxV7WSpeI6NXcp5U', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22', 'argon2i'),
(19, 19, 'lrosenbaum@ledner.com', 'lrosenbaum@ledner.com', 1, 'mll6ne01cess44sgk4k4o4cwgkwsk4g', '$argon2i$v=19$m=1024,t=2,p=2$aE9XdXdUWlNGWEh5TlgyZA$wr44xAASmafTQsRpwPsgXXu/qE3pIXx0Fyn8aWCfyyw', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:22', '2019-06-02 14:48:22', 'argon2i'),
(20, 20, 'elebsack@grimes.org', 'elebsack@grimes.org', 1, 'qc8piib1elw8w40c8g04ogkw4cwo4w4', '$argon2i$v=19$m=1024,t=2,p=2$RUY2TlJrVWNqUWtHLkFYMw$SHfvC9jTDDBRjln/k3BRcK/dE9hWh9zxjxRqld4CKgo', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:23', '2019-06-02 14:48:23', 'argon2i'),
(21, 21, 'strosin.camilla@ferry.com', 'strosin.camilla@ferry.com', 1, 'nk72ppng4moskock08s8g4g4kwowk4w', '$argon2i$v=19$m=1024,t=2,p=2$UUFpWWtKQ05hdDY3NERGZg$WLCopfmiPWr5uIqsdJt7lMGx3IuPUoAgOB8ng84ZidM', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-06-02 14:48:23', '2019-06-02 14:48:23', 'argon2i');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_taxon`
--

DROP TABLE IF EXISTS `sylius_taxon`;
CREATE TABLE IF NOT EXISTS `sylius_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tree_root` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tree_left` int(11) NOT NULL,
  `tree_right` int(11) NOT NULL,
  `tree_level` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CFD811CA77153098` (`code`),
  KEY `IDX_CFD811CAA977936C` (`tree_root`),
  KEY `IDX_CFD811CA727ACA70` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_taxon`
--

INSERT INTO `sylius_taxon` (`id`, `tree_root`, `parent_id`, `code`, `tree_left`, `tree_right`, `tree_level`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'category', 1, 14, 0, 0, '2019-06-02 14:48:23', '2019-06-02 14:48:23'),
(2, 1, 1, 'mugs', 2, 3, 1, 0, '2019-06-02 14:48:23', '2019-06-02 14:48:23'),
(3, 1, 1, 'stickers', 4, 5, 1, 1, '2019-06-02 14:48:25', '2019-06-02 14:48:26'),
(4, 1, 1, 'books', 6, 7, 1, 2, '2019-06-02 14:48:27', '2019-06-02 14:48:27'),
(5, 1, 1, 't_shirts', 8, 13, 1, 3, '2019-06-02 14:48:27', '2019-06-02 14:48:27'),
(6, 1, 5, 'mens_t_shirts', 9, 10, 2, 0, '2019-06-02 14:48:27', '2019-06-02 14:48:27'),
(7, 1, 5, 'womens_t_shirts', 11, 12, 2, 1, '2019-06-02 14:48:27', '2019-06-02 14:48:27');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_taxon_image`
--

DROP TABLE IF EXISTS `sylius_taxon_image`;
CREATE TABLE IF NOT EXISTS `sylius_taxon_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DBE52B287E3C61F9` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_taxon_translation`
--

DROP TABLE IF EXISTS `sylius_taxon_translation`;
CREATE TABLE IF NOT EXISTS `sylius_taxon_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_uidx` (`locale`,`slug`),
  UNIQUE KEY `sylius_taxon_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_1487DFCF2C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_taxon_translation`
--

INSERT INTO `sylius_taxon_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `locale`) VALUES
(1, 1, 'Category', 'category', 'Omnis excepturi sed quam fuga. Hic dolorum est voluptatem est porro minus cupiditate. Nihil et architecto recusandae aspernatur nam a quod.', 'en_US'),
(2, 2, 'Mugs', 'mugs', 'Sit distinctio omnis autem omnis exercitationem magnam eveniet. Ex possimus voluptatum dolores maxime. Perspiciatis omnis vel vel et nihil mollitia. Ut iure molestias repellendus nihil ipsum.', 'en_US'),
(3, 2, 'Tasses', 'tasses', 'Beatae minus distinctio voluptatum quam vero minus fugit. Fuga dolor voluptatem aut nesciunt. Est quo nostrum explicabo excepturi. Rem omnis atque et est dolore.', 'fr_FR'),
(4, 3, 'Stickers', 'stickers', 'Aut rerum aut ipsam. Omnis dolorem vel iste tenetur adipisci. Molestiae quis laudantium non eveniet. Quis voluptatum nulla ratione qui voluptas odio.', 'en_US'),
(5, 3, 'Étiquettes', 'etiquettes', 'Expedita quo et qui harum ratione non. Cum officiis ut sit autem quo. Est quia laborum quia tempore. Incidunt aut quos ut omnis.', 'fr_FR'),
(6, 4, 'Books', 'books', 'Quae aut odio impedit molestias. Nulla veritatis ut excepturi unde. Aut pariatur eligendi expedita aut perspiciatis.', 'en_US'),
(7, 4, 'Livres', 'livres', 'Veniam itaque dicta libero non. Non ut id est enim deleniti quia. Quisquam consequatur et rerum ullam sapiente possimus.', 'fr_FR'),
(8, 5, 'T-Shirts', 't-shirts', 'Rerum sint velit recusandae recusandae iusto quam. Provident est porro repudiandae nesciunt cumque. Sequi vero et molestias velit temporibus aut. Dolores iure totam unde et aut.', 'en_US'),
(9, 6, 'Men', 't-shirts/men', 'Accusamus nesciunt rerum autem sed ut aut. Eius et nisi ea eligendi quam. Aut et voluptas qui ipsum impedit quis et. Optio accusamus possimus inventore quis in officiis.', 'en_US'),
(10, 6, 'Hommes', 't-shirts/hommes', 'Molestias quaerat placeat hic quo aut. Non id qui odit rem nostrum perferendis nostrum.', 'fr_FR'),
(11, 7, 'Women', 't-shirts/women', 'Consequatur sint ducimus tenetur qui excepturi veritatis et temporibus. Hic cumque nisi eos fugit qui. Minus qui et alias architecto dolor est ut.', 'en_US'),
(12, 7, 'Hommes', 't-shirts/femmes', 'Sit molestiae dolorem recusandae beatae. Officia quia et adipisci voluptatem eum voluptas totam. Inventore nihil dolores omnis aut voluptatem et.', 'fr_FR');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_tax_category`
--

DROP TABLE IF EXISTS `sylius_tax_category`;
CREATE TABLE IF NOT EXISTS `sylius_tax_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_221EB0BE77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_tax_category`
--

INSERT INTO `sylius_tax_category` (`id`, `code`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'clothing', 'Clothing', 'Et accusantium nihil odio quae ut atque. Facere rerum dolores facilis quidem. Consectetur qui voluptatem quam temporibus. Id et earum eos numquam ex eos sed.', '2019-06-02 14:48:23', '2019-06-02 14:48:23'),
(2, 'books', 'Books', 'Repellat officiis ut sint qui ducimus est repudiandae velit. Quae voluptas ut enim non. Et debitis a dolores expedita repellat fugit. Doloremque voluptatem distinctio voluptatem deserunt consequatur nostrum error dignissimos.', '2019-06-02 14:48:23', '2019-06-02 14:48:23'),
(3, 'other', 'Other', 'Ut aut consequatur sunt nihil mollitia et. Optio cumque necessitatibus ut non laudantium. Ut aut sed minus perferendis asperiores eaque. Ipsum deserunt adipisci vel necessitatibus voluptas sed. Et similique dolor ea non id.', '2019-06-02 14:48:23', '2019-06-02 14:48:23');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_tax_rate`
--

DROP TABLE IF EXISTS `sylius_tax_rate`;
CREATE TABLE IF NOT EXISTS `sylius_tax_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,5) NOT NULL,
  `included_in_price` tinyint(1) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3CD86B2E77153098` (`code`),
  KEY `IDX_3CD86B2E12469DE2` (`category_id`),
  KEY `IDX_3CD86B2E9F2C3FAB` (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_tax_rate`
--

INSERT INTO `sylius_tax_rate` (`id`, `category_id`, `zone_id`, `code`, `name`, `amount`, `included_in_price`, `calculator`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'clothing_sales_tax_7', 'Clothing Sales Tax 7%', '0.07000', 1, 'default', '2019-06-02 14:48:23', '2019-06-02 14:48:23'),
(2, 2, 1, 'books_sales_tax_2', 'Books Sales Tax 2%', '0.02000', 0, 'default', '2019-06-02 14:48:23', '2019-06-02 14:48:23'),
(3, 3, 1, 'sales_tax_20', 'Sales Tax 20%', '0.20000', 0, 'default', '2019-06-02 14:48:23', '2019-06-02 14:48:23');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_user_oauth`
--

DROP TABLE IF EXISTS `sylius_user_oauth`;
CREATE TABLE IF NOT EXISTS `sylius_user_oauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_provider` (`user_id`,`provider`),
  KEY `IDX_C3471B78A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_zone`
--

DROP TABLE IF EXISTS `sylius_zone`;
CREATE TABLE IF NOT EXISTS `sylius_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BE2258E77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_zone`
--

INSERT INTO `sylius_zone` (`id`, `code`, `name`, `type`, `scope`) VALUES
(1, 'US', 'United States of America', 'country', 'all');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_zone_member`
--

DROP TABLE IF EXISTS `sylius_zone_member`;
CREATE TABLE IF NOT EXISTS `sylius_zone_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belongs_to` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E8B5ABF34B0E929B77153098` (`belongs_to`,`code`),
  KEY `IDX_E8B5ABF34B0E929B` (`belongs_to`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_zone_member`
--

INSERT INTO `sylius_zone_member` (`id`, `belongs_to`, `code`) VALUES
(1, 1, 'US');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `quotationrequest`
--
ALTER TABLE `quotationrequest`
  ADD CONSTRAINT `FK_E056E06768D3EA09` FOREIGN KEY (`User_id`) REFERENCES `sylius_shop_user` (`id`);

--
-- Contraintes pour la table `sylius_address`
--
ALTER TABLE `sylius_address`
  ADD CONSTRAINT `FK_B97FF0589395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_adjustment`
--
ALTER TABLE `sylius_adjustment`
  ADD CONSTRAINT `FK_ACA6E0F28D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ACA6E0F2E415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ACA6E0F2F720C233` FOREIGN KEY (`order_item_unit_id`) REFERENCES `sylius_order_item_unit` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_admin_api_access_token`
--
ALTER TABLE `sylius_admin_api_access_token`
  ADD CONSTRAINT `FK_2AA4915D19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  ADD CONSTRAINT `FK_2AA4915DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`);

--
-- Contraintes pour la table `sylius_admin_api_auth_code`
--
ALTER TABLE `sylius_admin_api_auth_code`
  ADD CONSTRAINT `FK_E366D84819EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  ADD CONSTRAINT `FK_E366D848A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`);

--
-- Contraintes pour la table `sylius_admin_api_refresh_token`
--
ALTER TABLE `sylius_admin_api_refresh_token`
  ADD CONSTRAINT `FK_9160E3FA19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  ADD CONSTRAINT `FK_9160E3FAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`);

--
-- Contraintes pour la table `sylius_channel`
--
ALTER TABLE `sylius_channel`
  ADD CONSTRAINT `FK_16C8119E3101778E` FOREIGN KEY (`base_currency_id`) REFERENCES `sylius_currency` (`id`),
  ADD CONSTRAINT `FK_16C8119E743BF776` FOREIGN KEY (`default_locale_id`) REFERENCES `sylius_locale` (`id`),
  ADD CONSTRAINT `FK_16C8119EA978C17` FOREIGN KEY (`default_tax_zone_id`) REFERENCES `sylius_zone` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_16C8119EB5282EDF` FOREIGN KEY (`shop_billing_data_id`) REFERENCES `sylius_shop_billing_data` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_channel_currencies`
--
ALTER TABLE `sylius_channel_currencies`
  ADD CONSTRAINT `FK_AE491F9338248176` FOREIGN KEY (`currency_id`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AE491F9372F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_channel_locales`
--
ALTER TABLE `sylius_channel_locales`
  ADD CONSTRAINT `FK_786B7A8472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_786B7A84E559DFD1` FOREIGN KEY (`locale_id`) REFERENCES `sylius_locale` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_channel_pricing`
--
ALTER TABLE `sylius_channel_pricing`
  ADD CONSTRAINT `FK_7801820CA80EF684` FOREIGN KEY (`product_variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_customer`
--
ALTER TABLE `sylius_customer`
  ADD CONSTRAINT `FK_7E82D5E6BD94FB16` FOREIGN KEY (`default_address_id`) REFERENCES `sylius_address` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_7E82D5E6D2919A68` FOREIGN KEY (`customer_group_id`) REFERENCES `sylius_customer_group` (`id`);

--
-- Contraintes pour la table `sylius_exchange_rate`
--
ALTER TABLE `sylius_exchange_rate`
  ADD CONSTRAINT `FK_5F52B852A76BEED` FOREIGN KEY (`source_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5F52B85B3FD5856` FOREIGN KEY (`target_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_order`
--
ALTER TABLE `sylius_order`
  ADD CONSTRAINT `FK_6196A1F917B24436` FOREIGN KEY (`promotion_coupon_id`) REFERENCES `sylius_promotion_coupon` (`id`),
  ADD CONSTRAINT `FK_6196A1F94D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `sylius_address` (`id`),
  ADD CONSTRAINT `FK_6196A1F972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`),
  ADD CONSTRAINT `FK_6196A1F979D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `sylius_address` (`id`),
  ADD CONSTRAINT `FK_6196A1F99395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`);

--
-- Contraintes pour la table `sylius_order_item`
--
ALTER TABLE `sylius_order_item`
  ADD CONSTRAINT `FK_77B587ED3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`),
  ADD CONSTRAINT `FK_77B587ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_order_item_unit`
--
ALTER TABLE `sylius_order_item_unit`
  ADD CONSTRAINT `FK_82BF226E7BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_82BF226EE415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_payment`
--
ALTER TABLE `sylius_payment`
  ADD CONSTRAINT `FK_D9191BD419883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_payment_method` (`id`),
  ADD CONSTRAINT `FK_D9191BD48D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_payment_method`
--
ALTER TABLE `sylius_payment_method`
  ADD CONSTRAINT `FK_A75B0B0DF23D6140` FOREIGN KEY (`gateway_config_id`) REFERENCES `sylius_gateway_config` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `sylius_payment_method_channels`
--
ALTER TABLE `sylius_payment_method_channels`
  ADD CONSTRAINT `FK_543AC0CC5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_543AC0CC72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_payment_method_translation`
--
ALTER TABLE `sylius_payment_method_translation`
  ADD CONSTRAINT `FK_966BE3A12C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product`
--
ALTER TABLE `sylius_product`
  ADD CONSTRAINT `FK_677B9B74731E505` FOREIGN KEY (`main_taxon_id`) REFERENCES `sylius_taxon` (`id`);

--
-- Contraintes pour la table `sylius_product_association`
--
ALTER TABLE `sylius_product_association`
  ADD CONSTRAINT `FK_48E9CDAB4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_48E9CDABB1E1C39` FOREIGN KEY (`association_type_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_association_product`
--
ALTER TABLE `sylius_product_association_product`
  ADD CONSTRAINT `FK_A427B9834584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A427B983EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `sylius_product_association` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_association_type_translation`
--
ALTER TABLE `sylius_product_association_type_translation`
  ADD CONSTRAINT `FK_4F618E52C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_attribute_translation`
--
ALTER TABLE `sylius_product_attribute_translation`
  ADD CONSTRAINT `FK_93850EBA2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_attribute_value`
--
ALTER TABLE `sylius_product_attribute_value`
  ADD CONSTRAINT `FK_8A053E544584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8A053E54B6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_channels`
--
ALTER TABLE `sylius_product_channels`
  ADD CONSTRAINT `FK_F9EF269B4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F9EF269B72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_image`
--
ALTER TABLE `sylius_product_image`
  ADD CONSTRAINT `FK_88C64B2D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_image_product_variants`
--
ALTER TABLE `sylius_product_image_product_variants`
  ADD CONSTRAINT `FK_8FFDAE8D3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8FFDAE8D3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `sylius_product_image` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_options`
--
ALTER TABLE `sylius_product_options`
  ADD CONSTRAINT `FK_2B5FF0094584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2B5FF009A7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_option_translation`
--
ALTER TABLE `sylius_product_option_translation`
  ADD CONSTRAINT `FK_CBA491AD2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_option_value`
--
ALTER TABLE `sylius_product_option_value`
  ADD CONSTRAINT `FK_F7FF7D4BA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_option_value_translation`
--
ALTER TABLE `sylius_product_option_value_translation`
  ADD CONSTRAINT `FK_8D4382DC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_review`
--
ALTER TABLE `sylius_product_review`
  ADD CONSTRAINT `FK_C7056A994584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C7056A99F675F31B` FOREIGN KEY (`author_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_taxon`
--
ALTER TABLE `sylius_product_taxon`
  ADD CONSTRAINT `FK_169C6CD94584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_169C6CD9DE13F470` FOREIGN KEY (`taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_translation`
--
ALTER TABLE `sylius_product_translation`
  ADD CONSTRAINT `FK_105A9082C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_variant`
--
ALTER TABLE `sylius_product_variant`
  ADD CONSTRAINT `FK_A29B5234584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A29B5239DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_A29B5239E2D1A41` FOREIGN KEY (`shipping_category_id`) REFERENCES `sylius_shipping_category` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `sylius_product_variant_option_value`
--
ALTER TABLE `sylius_product_variant_option_value`
  ADD CONSTRAINT `FK_76CDAFA13B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_76CDAFA1D957CA06` FOREIGN KEY (`option_value_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_variant_translation`
--
ALTER TABLE `sylius_product_variant_translation`
  ADD CONSTRAINT `FK_8DC18EDC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_promotion_action`
--
ALTER TABLE `sylius_promotion_action`
  ADD CONSTRAINT `FK_933D0915139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`);

--
-- Contraintes pour la table `sylius_promotion_channels`
--
ALTER TABLE `sylius_promotion_channels`
  ADD CONSTRAINT `FK_1A044F64139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1A044F6472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_promotion_coupon`
--
ALTER TABLE `sylius_promotion_coupon`
  ADD CONSTRAINT `FK_B04EBA85139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`);

--
-- Contraintes pour la table `sylius_promotion_order`
--
ALTER TABLE `sylius_promotion_order`
  ADD CONSTRAINT `FK_BF9CF6FB139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`),
  ADD CONSTRAINT `FK_BF9CF6FB8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_promotion_rule`
--
ALTER TABLE `sylius_promotion_rule`
  ADD CONSTRAINT `FK_2C188EA8139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`);

--
-- Contraintes pour la table `sylius_province`
--
ALTER TABLE `sylius_province`
  ADD CONSTRAINT `FK_B5618FE4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`);

--
-- Contraintes pour la table `sylius_shipment`
--
ALTER TABLE `sylius_shipment`
  ADD CONSTRAINT `FK_FD707B3319883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_shipping_method` (`id`),
  ADD CONSTRAINT `FK_FD707B338D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_shipping_method`
--
ALTER TABLE `sylius_shipping_method`
  ADD CONSTRAINT `FK_5FB0EE1112469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_shipping_category` (`id`),
  ADD CONSTRAINT `FK_5FB0EE119DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_5FB0EE119F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`);

--
-- Contraintes pour la table `sylius_shipping_method_channels`
--
ALTER TABLE `sylius_shipping_method_channels`
  ADD CONSTRAINT `FK_2D9833355F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2D98333572F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_shipping_method_translation`
--
ALTER TABLE `sylius_shipping_method_translation`
  ADD CONSTRAINT `FK_2B37DB3D2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_shop_user`
--
ALTER TABLE `sylius_shop_user`
  ADD CONSTRAINT `FK_7C2B74809395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`);

--
-- Contraintes pour la table `sylius_taxon`
--
ALTER TABLE `sylius_taxon`
  ADD CONSTRAINT `FK_CFD811CA727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CFD811CAA977936C` FOREIGN KEY (`tree_root`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_taxon_image`
--
ALTER TABLE `sylius_taxon_image`
  ADD CONSTRAINT `FK_DBE52B287E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_taxon_translation`
--
ALTER TABLE `sylius_taxon_translation`
  ADD CONSTRAINT `FK_1487DFCF2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_tax_rate`
--
ALTER TABLE `sylius_tax_rate`
  ADD CONSTRAINT `FK_3CD86B2E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_tax_category` (`id`),
  ADD CONSTRAINT `FK_3CD86B2E9F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`);

--
-- Contraintes pour la table `sylius_user_oauth`
--
ALTER TABLE `sylius_user_oauth`
  ADD CONSTRAINT `FK_C3471B78A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_shop_user` (`id`);

--
-- Contraintes pour la table `sylius_zone_member`
--
ALTER TABLE `sylius_zone_member`
  ADD CONSTRAINT `FK_E8B5ABF34B0E929B` FOREIGN KEY (`belongs_to`) REFERENCES `sylius_zone` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
