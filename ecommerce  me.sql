-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2021 at 11:57 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `ec_article`
--

CREATE TABLE `ec_article` (
  `article_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `article_libelle` varchar(255) DEFAULT NULL,
  `article_desription` longtext DEFAULT NULL,
  `article_prix` decimal(12,2) DEFAULT NULL,
  `article_code` varchar(30) DEFAULT NULL,
  `marque_id` int(11) DEFAULT NULL,
  `option` varchar(10) DEFAULT NULL,
  `article_qte` int(11) DEFAULT NULL,
  `article_qtestock` int(11) DEFAULT NULL,
  `article_created_at` datetime DEFAULT current_timestamp(),
  `article_etat` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ec_article_couleur`
--

CREATE TABLE `ec_article_couleur` (
  `article_couleur_id` int(11) NOT NULL,
  `article_couleur_couleur` varchar(20) NOT NULL,
  `article_couleur_etat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ec_categorie`
--

CREATE TABLE `ec_categorie` (
  `categorie_id` int(11) NOT NULL,
  `sous_famille_id` int(11) DEFAULT NULL,
  `categorie_libelle` varchar(255) DEFAULT NULL,
  `categorie_description` text DEFAULT NULL,
  `categorie_image` varchar(255) DEFAULT NULL,
  `categorie_created_at` datetime DEFAULT current_timestamp(),
  `categorie_etat` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ec_famille`
--

CREATE TABLE `ec_famille` (
  `famille_id` int(11) NOT NULL,
  `famille_libelle` varchar(255) DEFAULT NULL,
  `famille_description` text DEFAULT NULL,
  `famille_image` varchar(255) DEFAULT NULL,
  `famille_created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `famille_etat` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ec_image`
--

CREATE TABLE `ec_image` (
  `image_id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ec_option_paremetre`
--

CREATE TABLE `ec_option_paremetre` (
  `option_parametre_id` int(11) NOT NULL,
  `option_parametre_parametre` varchar(30) NOT NULL,
  `option_parametre_libelle` varchar(30) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ec_parametre_article`
--

CREATE TABLE `ec_parametre_article` (
  `parametre_article_id` int(11) NOT NULL,
  `parametre_article_couleur` varchar(20) NOT NULL,
  `parametre_article_taille_pointure` varchar(10) NOT NULL,
  `parametre_article_quantite` int(10) UNSIGNED NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ec_parametre_base`
--

CREATE TABLE `ec_parametre_base` (
  `parametre_base_id` int(11) NOT NULL,
  `parametre_base_libelle` varchar(40) NOT NULL,
  `parametre_base_nature` varchar(1) DEFAULT NULL,
  `parametre_base_pb_isON` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ec_parametre_liste`
--

CREATE TABLE `ec_parametre_liste` (
  `parametre_liste_id` int(11) NOT NULL,
  `parametre_liste_liste` varchar(40) DEFAULT NULL,
  `parametre_liste_etat` tinyint(1) NOT NULL,
  `parametre_base_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ec_sous_famille`
--

CREATE TABLE `ec_sous_famille` (
  `sous_famille_id` int(11) NOT NULL,
  `famille_id` int(11) DEFAULT NULL,
  `sous_famille_libelle` varchar(255) DEFAULT NULL,
  `sous_famille_description` text DEFAULT NULL,
  `sous_famille_image` varchar(255) DEFAULT NULL,
  `sous_famille_created_at` datetime DEFAULT current_timestamp(),
  `sous_famille_etat` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ec_categorie`
--
ALTER TABLE `ec_categorie`
  ADD PRIMARY KEY (`categorie_id`);

--
-- Indexes for table `ec_famille`
--
ALTER TABLE `ec_famille`
  ADD PRIMARY KEY (`famille_id`);

--
-- Indexes for table `ec_image`
--
ALTER TABLE `ec_image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `ec_sous_famille`
--
ALTER TABLE `ec_sous_famille`
  ADD PRIMARY KEY (`sous_famille_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ec_categorie`
--
ALTER TABLE `ec_categorie`
  MODIFY `categorie_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_famille`
--
ALTER TABLE `ec_famille`
  MODIFY `famille_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_image`
--
ALTER TABLE `ec_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_sous_famille`
--
ALTER TABLE `ec_sous_famille`
  MODIFY `sous_famille_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
