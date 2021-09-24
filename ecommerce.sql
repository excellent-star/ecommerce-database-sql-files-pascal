-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 22, 2021 at 11:24 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

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
-- Table structure for table `Accueil`
--

CREATE TABLE `Accueil` (
  `id` int(11) NOT NULL,
  `image_accueillle` varchar(100) DEFAULT NULL,
  `fa_isOn` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Accueil`
--

INSERT INTO `Accueil` (`id`, `image_accueillle`, `fa_isOn`) VALUES
(14, 'accueil_photo/1900x520_slide1.jpg', 1),
(15, 'accueil_photo/1900x520_slide2.jpg', 1),
(16, 'accueil_photo/1900x522_slide2.jpg', 1),
(17, 'accueil_photo/1900x522_slide1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Article`
--

CREATE TABLE `Article` (
  `id` int(11) NOT NULL,
  `libelle_art` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `prix` decimal(12,2) NOT NULL,
  `codeArt` varchar(30) DEFAULT NULL,
  `codeBar` varchar(255) DEFAULT NULL,
  `marque` varchar(50) DEFAULT NULL,
  `digital` tinyint(1) DEFAULT NULL,
  `option` varchar(10) DEFAULT NULL,
  `qtestock` int(11) DEFAULT NULL,
  `date_create` datetime(6) NOT NULL,
  `sous_categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Article`
--

INSERT INTO `Article` (`id`, `libelle_art`, `description`, `prix`, `codeArt`, `codeBar`, `marque`, `digital`, `option`, `qtestock`, `date_create`, `sous_categorie_id`) VALUES
(1, 'Grains & Riz', '<p>Du bon riz</p>', '18500.00', 'Riz01', NULL, 'RIZ', 0, 'autres', 25, '2020-12-16 07:28:45.919018', 12),
(2, 'T-shirt', '<p>Du bon t-shirt</p>', '5000.00', 'Ts01', NULL, 'T-shirt', 0, 'taille', 0, '2020-12-16 07:36:50.010094', 4),
(3, 'SMART TECHNOLOGY HD Ready LED TV 40 pouces', '<p><span style=\"color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px;\">Vos émissions de télévision et vos films préférés deviennent réels.&nbsp;La texture riche et vivante des images Full HD vous coupera le souffle.</span></p><p><span style=\"color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px; text-align: center;\">Une vue nette réduit le bruit et les interférences, tout en améliorant la couleur et le contraste pour une vue parfaitement nette.&nbsp;Profitez de tout avec une qualité d\'image raffinée.</span><span style=\"color: rgb(40, 40, 40); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 14px;\"><br></span><br></p>', '75000.00', 'TV01', NULL, 'SMART TECHNOLOGY', 0, 'autres', 10, '2020-12-16 07:48:30.153036', 8),
(4, 'Chemise', '<p>Chemise en cotton</p>', '6000.00', 'ch01', NULL, 'Habillement', 0, 'taille', 0, '2020-12-16 07:59:54.729985', 8),
(5, 'Basket pour sport', '<p>Basket pour sport</p>', '18000.00', 'ba01', NULL, 'Basket', 0, 'pointure', 0, '2020-12-16 09:02:12.935255', 5),
(6, 'Basket pour sport2', '<p>Basket pour sport</p>', '9800.00', 'ba02', NULL, 'Basket', 0, 'pointure', 0, '2020-12-16 09:03:30.690287', 5),
(8, 'Basket pour sport4', '<p>Basket pour sport</p>', '65000.00', 'ba04', NULL, 'Basket', 0, 'pointure', 0, '2020-12-16 09:06:16.762758', 5),
(9, 'Veste pour mariage', '<p>Veste pour mariage<br></p>', '98000.00', 'vest01', NULL, 'Veste', 0, 'taille', 0, '2020-12-16 09:12:13.900259', 5),
(10, 'Veste pour mariage2', '<p>Veste pour mariage<br></p>', '98300.00', 'vest02', NULL, 'Veste', 0, 'taille', 0, '2020-12-16 09:13:33.467956', 12),
(11, 'Veste pour mariage3', '<p>Veste pour mariage<br></p>', '100000.00', 'vest03', NULL, 'Veste', 0, 'taille', 0, '2020-12-16 09:21:36.314901', 12),
(12, 'Veste pour mariage 4', '<p>Veste pour mariage<br></p>', '76500.00', 'vest04', NULL, 'Veste', 0, 'taille', 0, '2020-12-16 09:25:08.788070', 12),
(13, 'Veste pour mariage femme', '<p>Veste pour mariage femme<br></p>', '85000.00', 'robe01', NULL, 'Robe', 0, 'taille', 0, '2020-12-16 09:32:11.206518', 4),
(14, 'Veste pour mariage femme 2', '<p>Veste pour mariage femme<br></p>', '67000.00', 'robe02', NULL, 'Robe', 0, 'taille', 0, '2020-12-16 09:33:12.700236', 8),
(15, 'Jupe longue', '<p>Jupe chrétienne</p>', '6500.00', 'jupe01', NULL, 'Jupe', 0, 'taille', 0, '2020-12-16 09:41:31.641215', 8),
(16, 'Jupe courte', '<p>Jupe courte</p>', '4500.00', 'jupe02', NULL, 'Jupe', 0, 'taille', 0, '2020-12-16 09:43:10.989723', 4),
(17, 'Sandale homme', '<p>Sandale bonne nike</p>', '3000.00', 'sa01', NULL, 'sandale', 0, 'pointure', 0, '2020-12-16 09:46:01.252136', 4),
(18, 'Chaussure john Fostun', '<p>Chaussure &nbsp;john Fostun<br></p>', '50000.00', 'chau01', NULL, 'Chaussure', 0, 'pointure', 0, '2020-12-16 09:50:19.731793', 8),
(19, 'Chaussure ', '<p>Chaussure</p>', '10000.00', 'chau02', NULL, 'Chaussure', 0, 'pointure', 0, '2020-12-16 09:53:58.704012', 8),
(20, 'Climatiseur Sharp', '<p>Climatiseur sharp</p>', '500000.00', 'clim01', NULL, 'climatiseur', 0, 'autres', 10, '2020-12-16 11:21:18.023164', 8),
(21, 'Climatiseur Samsung', '<p>Climatiseur Samsung<br></p>', '650000.00', 'clim02', NULL, 'climatiseur', 0, 'autres', 28, '2020-12-16 11:23:55.229596', 8),
(22, 'Climatiseur Haier', '<p>Climatiseur Haier<br></p>', '540000.00', 'clim03', NULL, 'climatiseur', 0, 'autres', 18, '2020-12-16 11:31:51.632028', 8),
(23, 'Climatiseur Solstar', '<p>Climatiseur Solstar<br></p>', '45000.00', 'clim04', NULL, 'climatiseur', 0, 'autres', 8, '2020-12-16 13:12:11.505164', 8),
(24, 'Adesso EasyTouch135 - Gaming Keyboard', '<p>Bon clavier</p>', '4500.00', 'OK01', NULL, 'CLAVIER', 0, 'autres', 19, '2021-02-11 10:14:01.827996', 8),
(25, 'Beats by Dre Powerbeats 2 In-ear Bluetooth Wireless', '<p>Du bon</p>', '15000.00', 'E12', NULL, 'Electronique', 0, 'autres', 43, '2021-02-11 10:22:56.113724', 8),
(26, 'Powerbeats 2 In-ear Bluetooth Wireless', '<p>Du bon</p>', '7500.00', 'E13', NULL, 'Electronique', 0, 'autres', 10, '2021-02-11 10:24:38.705451', 8),
(27, 'Powerbeats 2 In-ear fils', '<p>Du bon</p>', '6000.00', 'E14', NULL, 'Electronique', 0, 'autres', 65, '2021-02-11 10:26:19.195167', 8),
(28, 'Viewsonic LightStream 3D Ready DLP Projector', '<p>Du bon</p>', '300000.00', 'Pro1', NULL, 'Projecteur', 0, 'autres', 5, '2021-02-11 12:23:24.676491', 5),
(29, 'Viewsonic LightStream 3D Ready DLP Projector1', '<p>Du bon</p>', '270000.00', 'Pro2', NULL, 'Projecteur', 0, 'autres', 2, '2021-02-11 12:25:21.280514', 4),
(30, 'GoPro HERO4 Silver 32GB', '<p>Du bon</p>', '25300.00', 'E15', NULL, 'Electronique', 0, 'autres', 8, '2021-02-11 12:34:28.163933', 8),
(31, 'Sony Cyber-shot DSC-WX350 Digital Camera', '<p>Du bon</p>', '90000.00', 'E16', NULL, 'Electronique', 0, 'autres', 34, '2021-02-11 12:36:58.114351', 8),
(32, 'Sony Cyber-shot DSC-WX350 Digital Camera1', '<p>Du bon</p>', '45000.00', 'E17', NULL, 'Electronique', 0, 'autres', 8, '2021-02-11 12:38:04.738380', 8),
(33, 'Satechi Dual Sonic Conical v2.0 Computer Speak', '<p>Du bon</p>', '345000.00', 'E18', NULL, 'Electronique', 0, 'autres', 20, '2021-02-11 15:46:47.453332', 8),
(34, 'Satechi Dual Sonic Conical v2.0 Computer Speak1', '<p>Du bon</p>', '130000.00', 'E19', NULL, 'Electronique', 0, 'autres', 10, '2021-02-11 15:52:16.055521', 8),
(35, 'HP Digital Sender Flow 8500 fn1 Document Cap', '<p>Du bon</p>', '650000.00', 'E20', NULL, 'Electronique', 0, 'autres', 30, '2021-02-11 15:55:26.447197', 8),
(36, 'Dell OptiPlex 780 Core 2 Duo 3.0GHz 8GB 500GB ', '<p>Du bon</p>', '90000.00', 'E21', NULL, 'Electronique', 0, 'autres', 10, '2021-02-12 07:29:46.813894', 8),
(37, 'sus VS228H-P 21.5\" LED LCD Monitor - 16:9 - 5 ms', 'Du bon', '13200.00', 'E22', NULL, 'Electronique', 0, 'autres', 10, '2021-02-12 07:32:38.483118', 8),
(38, 'TCL 40FS3750 40-inch 1080p 120Hz Roku Smart', '<p>Du bon</p>', '34200.00', 'E23', NULL, 'Electronique', 0, 'autres', 8, '2021-02-12 07:34:43.392014', 8),
(39, 'Apple 13.3\" MacBook Pro Notebook Computer with Retina Display', '<p>Du bon</p>', '54000.00', 'E24', NULL, 'Electronique', 0, 'autres', 10, '2021-02-12 07:36:36.691201', 8),
(40, 'Apple 21.5-inch MK142LLA iMac Late', '<p>Du bon</p>', '89000.00', 'E25', NULL, 'Electronique', 0, 'autres', 10, '2021-02-12 07:38:57.707728', 8),
(41, 'samsung Galaxy S5 G900V 16GB Verizon CDMA and Unlocked GSM', 'Du bon', '65400.00', 'E26', NULL, 'Electronique', 0, 'autres', 8, '2021-02-12 07:50:24.310790', 8),
(42, 'Acer Aspire SW5-171-34ZR 11.6\" Touchscreen LED', '<p>Du bon</p>', '23400.00', 'E26', NULL, 'Electronique', 0, 'autres', 10, '2021-02-12 07:55:06.394014', 8),
(43, 'LG 20M37D-B 20\" LCD Monitor', '<p>Du bon</p>', '98700.00', 'E27', NULL, 'Electronique', 0, 'autres', 10, '2021-02-12 07:57:59.847064', 8),
(44, 'Vizio D43-C1 43-inch 1080p 120Hz LED HDTV', '<p>Du bon</p>', '23000.00', 'E27', NULL, 'Electronique', 0, 'autres', 10, '2021-02-12 07:59:46.970929', 8),
(45, 'SHARKK 5-Button 2.4G Wireless Vertical Optical', '<p>Du bon</p>', '12300.00', 'E28', NULL, 'Electronique', 0, 'autres', 9, '2021-02-12 08:10:12.473721', 8),
(46, 'Samsung Galaxy J1 Mini J105B 8GB 5MP Camera', '<p>Du bon</p>', '56000.00', 'E29', NULL, 'Electronique', 0, 'autres', 8, '2021-02-12 08:15:04.622526', 8),
(47, 'pple iPad Air Black/Space Grey 16GB Wi-Fi', '<p>Du bon</p>', '12300.00', 'E30', NULL, 'Electronique', 0, 'autres', 10, '2021-02-12 08:21:23.470489', 8),
(48, 'Samsung Galaxy S5 G900V 32GB Verizon CDMA and Unlocked GSM', '<p>Du bon</p>', '23450.00', 'E31', NULL, 'Electronique', 0, 'autres', 9, '2021-02-12 08:24:17.746334', 8),
(49, 'BLU Studio 7.0 LTE 16GB Unlocked GSM Dual-SIM', '<p>Du bon</p>', '23400.00', 'E32', NULL, 'Electronique', 0, 'autres', 10, '2021-02-12 08:27:49.329500', 8),
(50, 'LG G3 Beat D722J 8GB Unlocked GSM', '<p>Du bon</p>', '24500.00', 'E33', NULL, 'Electronique', 0, 'autres', 7, '2021-02-12 08:31:14.283834', 8),
(51, 'Benadryl Dye-Free Allergy Relief, Liqui-gels 24 capsules', '<p>Du bon</p>', '32100.00', 'lit1', NULL, 'Lit', 0, 'autres', 11, '2021-02-12 08:36:18.949163', 8),
(52, 'Simply Saline Sterile Saline Nasal Mist, Allergy & Sinus Relief 4.25 fl oz (126 ml)', '<p>Du bon</p>', '98000.00', 'lit2', NULL, 'Lit', 0, 'autres', 10, '2021-02-12 08:37:59.861642', 8),
(53, 'Nicorette Nicotine Gum, 2mg, White Ice Mint 160 ea', '<p>Du bon</p>', '43000.00', 'lit3', NULL, 'Lit', 0, 'autres', 3, '2021-02-12 08:40:13.524191', 8),
(54, 'Natural Factors PGX Daily Ultra Matrix', '<p>Du bon</p>', '6590.00', 'lit4', NULL, 'Lit', 0, 'autres', 9, '2021-02-12 08:41:48.618979', 8),
(55, 'Culturelle Kids! Probi-<br>otic Packets 30 ea', '<p>Du bon</p>', '3400.00', 'lit5', NULL, 'Lit', 0, 'autres', 10, '2021-02-12 08:43:40.653323', 8),
(56, 'L\'Oreal Paris Youth Code BB Cream Illuminator SPF 15, Medium 2.5 fl oz (75 ml)', '<p>Du bon</p>', '7800.00', 'lit6', NULL, 'Lit', 0, 'autres', 23, '2021-02-12 08:45:20.259694', 8),
(57, 'Lit haut', '<p>Du bon</p>', '23450.00', 'lit7', NULL, 'Lit', 0, 'autres', 14, '2021-02-12 08:48:29.711821', 8),
(58, 'Lit confortable', '<p>Du bon</p>', '7860.00', 'lit8', NULL, 'Lit', 0, 'autres', 4, '2021-02-12 08:50:29.965705', 8),
(59, 'canapé', '<p>Du bon</p>', '5400.00', 'lit9', NULL, 'Lit', 0, 'autres', 5, '2021-02-12 08:56:02.165749', 8),
(60, 'union park', '<p>DU bon</p>', '5000.00', 'p1', NULL, 'Pied', 0, 'pointure', 0, '2021-02-12 09:33:10.415158', 8),
(61, 'Skagen Holst Watch', '<p>Du bon</p>', '20000.00', 'Mo1', NULL, 'Montre', 0, 'autres', 9, '2021-02-12 09:36:42.602659', 8),
(62, 'Waist Leather Belt', '<p>Du bon</p>', '500.00', 'c1', NULL, 'Ceinture', 0, 'autres', 10, '2021-02-12 15:35:56.269978', 8),
(63, 'Vented Straw Fedora', '<p>Du bon</p>', '650.00', 'ca1', NULL, 'Casket', 0, 'autres', 9, '2021-02-12 15:41:16.023438', 8),
(64, 'congélateur 210L', '<p>Du bon</p>', '23400.00', 'con1', NULL, 'Congélateur', 0, 'autres', 10, '2021-02-12 15:43:46.961506', 8),
(65, 'congélateur 200L', '<p>Du bon</p>', '23400.00', 'con2', NULL, 'Congélateur', 0, 'autres', 10, '2021-02-12 15:45:45.732493', 8),
(66, 'Gazinière de lux', '<p>Du bon</p>', '12340.00', 'ga1', NULL, 'Gazinière', 0, 'autres', 10, '2021-02-12 15:47:16.299888', 8),
(67, 'Gazinière de lux propre', '<p>Du bon</p>', '32400.00', 'ga2', NULL, 'Gazinière', 0, 'autres', 12, '2021-02-12 15:48:32.590484', 8),
(68, 'Gazinière de net', '<p>Du bon</p>', '123400.00', 'ga3', NULL, 'Gazinière', 0, 'autres', 10, '2021-02-12 15:49:37.250604', 8),
(69, 'Réfrigérateur lux', '<p>Du bon</p>', '23400.00', 're1', NULL, 'Réfrigérateur', 0, 'autres', 10, '2021-02-12 15:51:54.484111', 8),
(70, 'Réfrigérateur lux lux', '<p>Du bon</p>', '123000.00', 're2', NULL, 'Réfrigérateur', 0, 'autres', 7, '2021-02-12 15:54:02.554491', 8),
(71, 'Sac à dos', '<p>Du bon</p>', '1200.00', 'sa02', NULL, 'Sac', 0, 'autres', 10, '2021-02-12 15:57:50.696546', 8),
(72, 'Vin bon', '<p>Du bon</p>', '3400.00', 'v2', NULL, 'Vin', 0, 'autres', 10, '2021-02-12 16:01:11.030384', 8),
(73, 'Vin 1', '<p>DU bon</p>', '5400.00', 'v3', NULL, 'Vin', 0, 'autres', 6, '2021-02-12 16:03:40.668455', 8),
(74, 'Vin 2', '<p>Du bon</p>', '1230.00', 'v4', NULL, 'Vin', 0, 'autres', 16, '2021-02-12 16:05:26.310533', 8),
(75, 'Vin 3', '<p>Du bon</p>', '6700.00', 'V5', NULL, 'Vin', 0, 'autres', 10, '2021-02-12 16:06:33.465872', 8),
(76, 'Metal Star Earnings', '<p>Du bon</p>', '7600.00', 'me1', NULL, 'Metal', 0, 'autres', 10, '2021-02-12 16:11:40.364656', 8),
(77, 'Sac à dos blanc', '<p>Du bon</p>', '4300.00', 'sa03', NULL, 'Sac', 0, 'autres', 10, '2021-02-12 16:15:41.689970', 8),
(78, 'Cintre à habit', 'Du bon', '1200.00', 'c2', NULL, 'Cintres', 0, 'autres', 10, '2021-02-12 16:18:06.096777', 8),
(79, 'Sac à dos violet', '<p>Du bon</p>', '3400.00', 'sa04', NULL, 'Sac', 0, 'autres', 10, '2021-02-12 16:23:31.503613', 8),
(80, 'Daily Fabric Cap', 'Du bon', '3200.00', 'ca2', NULL, 'Casket', 0, 'autres', 12, '2021-02-12 16:27:36.983260', 8),
(81, 'Chapeau', '<p>Du bon</p>', '2000.00', 'ca3', NULL, 'Casket', 0, 'autres', 10, '2021-02-12 16:32:24.992367', 8),
(82, 'Casket femme', '<p>Du bon</p>', '3200.00', 'ca4', NULL, 'Casket', 0, 'autres', 10, '2021-02-12 16:33:32.388294', 8),
(83, 'Casket bon', '<p>Du bon</p>', '3000.00', 'ca5', NULL, 'Casket', 0, 'autres', 8, '2021-02-12 16:34:31.112583', 8),
(84, 'Gents BNOO24 Classic', '<p>Du bon</p>', '13000.00', 'Mo2', NULL, 'Montre', 0, 'autres', 9, '2021-02-12 22:28:28.302998', 8),
(85, 'Gents BNO106 Digital', '<p>Du bon</p>', '23000.00', 'Mo3', NULL, 'Montre', 0, 'autres', 10, '2021-02-12 22:32:09.446550', 8),
(86, 'Gents BNOO95 Prestige', '<p>Du bon</p>', '12000.00', 'Mo4', NULL, 'Montre', 0, 'autres', 10, '2021-02-12 22:33:51.682055', 8),
(87, 'Gents BNOO211 Classic', '<p>Du bon</p>', '23000.00', 'Mo5', NULL, 'Montre', 0, 'autres', 10, '2021-02-12 22:36:04.897709', 8),
(88, 'Gents BNO076 Digital', '<p>Du bon</p>', '8000.00', 'Mo6', NULL, 'Montre', 0, 'autres', 10, '2021-02-12 22:39:59.397938', 8),
(89, 'Ladies BN011 Sport', '<p>Du bon</p>', '9000.00', 'Mo7', NULL, 'Montre', 0, 'autres', 10, '2021-02-12 22:42:36.250832', 8),
(90, 'Gents BNO221 Prestige', '<p>Du bon</p>', '3450.00', 'Mo8', NULL, 'Montre', 0, 'autres', 11, '2021-02-12 22:46:18.333943', 8),
(91, 'Gents BNO142 Classic', '<p>Du bon</p>', '5600.00', 'Mo9', NULL, 'Montre', 0, 'autres', 6, '2021-02-12 22:49:21.967339', 8),
(92, 'Gents BNO32 Classic', '<p>Du bon</p>', '6500.00', 'Mo10', NULL, 'Montre', 0, 'autres', 8, '2021-02-12 22:59:48.679506', 8),
(93, 'Ice wach', '<p>Du bon</p>', '2400.00', 'Mo11', NULL, 'Montre', 0, 'autres', 12, '2021-02-12 23:21:29.314366', 8),
(94, 'montre de lux', '<p>Du bon</p>', '90000.00', 'Mo12', NULL, 'Montre', 0, 'autres', 7, '2021-02-12 23:23:23.958404', 8);

-- --------------------------------------------------------

--
-- Table structure for table `Article_commande`
--

CREATE TABLE `Article_commande` (
  `id` int(11) NOT NULL,
  `qte_commande` int(10) UNSIGNED NOT NULL CHECK (`qte_commande` >= 0),
  `article_id` int(11) NOT NULL,
  `commande_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Article_commande`
--

INSERT INTO `Article_commande` (`id`, `qte_commande`, `article_id`, `commande_id`) VALUES
(1, 3, 5, 28),
(2, 2, 22, 28),
(3, 1, 25, 28),
(4, 1, 26, 28),
(5, 1, 2, 28),
(6, 4, 26, 31),
(7, 2, 35, 29),
(8, 1, 36, 29),
(9, 1, 43, 29),
(10, 3, 41, 29),
(11, 6, 78, 32),
(12, 2, 85, 32),
(13, 2, 87, 32),
(14, 2, 9, 32),
(15, 2, 9, 32),
(16, 4, 83, 32),
(17, 1, 22, 34),
(18, 1, 21, 34),
(19, 1, 4, 34),
(20, 1, 2, 34),
(21, 1, 27, 34),
(22, 3, 30, 35),
(23, 1, 32, 35),
(24, 3, 30, 36),
(25, 1, 31, 36),
(26, 2, 33, 37),
(27, 2, 37, 37),
(28, 1, 39, 37),
(29, 4, 44, 37),
(30, 1, 20, 38),
(31, 2, 22, 38),
(32, 1, 42, 38),
(33, 5, 62, 30),
(34, 4, 50, 30),
(35, 1, 49, 30),
(36, 1, 61, 30),
(37, 2, 47, 40),
(38, 1, 42, 40),
(39, 4, 81, 40),
(40, 1, 9, 41),
(50, 2, 83, 43),
(51, 1, 20, 44),
(52, 3, 21, 44),
(53, 1, 44, 45),
(54, 3, 77, 45),
(55, 1, 57, 46),
(56, 2, 51, 46),
(57, 2, 6, 46),
(58, 2, 54, 46),
(59, 1, 66, 47),
(60, 1, 65, 47),
(61, 2, 60, 48),
(62, 2, 17, 48),
(63, 2, 53, 48),
(64, 2, 34, 49),
(65, 1, 33, 49),
(66, 1, 36, 49),
(67, 2, 9, 50),
(68, 2, 4, 50),
(69, 3, 2, 50),
(70, 3, 8, 52),
(71, 1, 51, 52),
(72, 1, 26, 53),
(73, 1, 30, 53),
(74, 2, 52, 53),
(75, 1, 19, 54),
(76, 1, 18, 54),
(77, 1, 12, 54),
(78, 1, 49, 54),
(79, 2, 6, 55),
(80, 3, 5, 55),
(81, 1, 58, 55),
(82, 2, 88, 56),
(83, 2, 87, 56),
(84, 2, 2, 56),
(85, 1, 38, 56),
(86, 1, 64, 57),
(87, 1, 66, 57),
(88, 1, 69, 57),
(89, 1, 19, 58),
(90, 1, 18, 58),
(91, 3, 27, 58),
(92, 1, 31, 59),
(93, 1, 32, 59),
(94, 1, 42, 59),
(95, 1, 9, 60),
(96, 1, 10, 60),
(97, 1, 11, 60),
(98, 1, 55, 61),
(99, 1, 55, 61),
(100, 1, 55, 61),
(101, 1, 55, 61),
(102, 1, 57, 39),
(103, 1, 70, 39),
(104, 2, 65, 63),
(105, 2, 69, 63),
(106, 1, 25, 65),
(107, 1, 26, 65),
(108, 2, 27, 65),
(109, 2, 30, 66),
(110, 1, 34, 67),
(111, 1, 33, 67),
(112, 1, 38, 67),
(113, 1, 43, 68),
(114, 1, 44, 68),
(115, 1, 39, 68),
(116, 1, 44, 68),
(117, 1, 35, 69),
(118, 1, 40, 70),
(119, 1, 38, 70),
(120, 1, 58, 71),
(121, 1, 45, 72),
(122, 1, 45, 72),
(123, 1, 18, 74),
(124, 1, 3, 75),
(125, 1, 29, 76),
(126, 1, 5, 77),
(127, 1, 17, 78),
(128, 1, 8, 78),
(129, 1, 28, 79),
(130, 1, 21, 80),
(131, 1, 48, 80),
(132, 1, 52, 80),
(133, 1, 13, 81),
(134, 1, 6, 82),
(135, 2, 5, 82),
(136, 1, 8, 82),
(137, 1, 2, 82),
(138, 1, 63, 83),
(139, 1, 62, 83),
(140, 1, 60, 83),
(141, 1, 74, 84),
(142, 1, 74, 84),
(143, 1, 74, 84),
(144, 1, 74, 84),
(145, 1, 27, 86),
(146, 1, 25, 86),
(147, 1, 26, 86),
(148, 1, 67, 87),
(149, 1, 69, 87),
(150, 1, 65, 87),
(151, 1, 9, 88),
(152, 1, 89, 88),
(153, 1, 77, 88),
(154, 1, 58, 89),
(155, 1, 56, 89),
(156, 1, 59, 89),
(157, 1, 39, 90),
(158, 1, 42, 90),
(159, 1, 34, 1),
(160, 1, 35, 1),
(161, 1, 37, 1),
(162, 1, 18, 9),
(163, 1, 4, 2),
(164, 1, 11, 2),
(165, 1, 44, 3),
(166, 1, 60, 3),
(167, 1, 56, 3),
(168, 3, 3, 4),
(169, 1, 21, 4),
(170, 2, 22, 5),
(171, 1, 25, 5),
(172, 1, 37, 5),
(173, 1, 45, 5),
(174, 1, 73, 6),
(175, 1, 71, 9),
(176, 1, 74, 6),
(177, 1, 9, 8),
(178, 1, 9, 8),
(179, 1, 9, 8),
(180, 2, 83, 8),
(181, 1, 29, 9),
(182, 1, 3, 9),
(183, 2, 9, 9),
(184, 2, 18, 9),
(185, 3, 2, 9),
(186, 3, 4, 90),
(187, 1, 14, 1),
(188, 1, 15, 1),
(189, 1, 81, 9),
(190, 1, 16, 22),
(191, 1, 13, 22),
(192, 1, 17, 32),
(193, 1, 68, 33),
(194, 1, 70, 43),
(195, 1, 18, 55),
(196, 1, 29, 66),
(197, 1, 3, 46),
(198, 1, 4, 7),
(199, 1, 22, 8),
(200, 1, 30, 8),
(201, 1, 32, 8),
(202, 2, 4, 9),
(203, 2, 15, 9),
(204, 1, 16, 10),
(205, 1, 15, 10),
(206, 1, 18, 12),
(207, 1, 15, 12),
(208, 1, 4, 12),
(209, 1, 3, 12),
(210, 1, 14, 12),
(211, 1, 3, 13),
(212, 1, 21, 13),
(213, 1, 25, 13),
(214, 1, 30, 14),
(215, 1, 27, 14),
(216, 1, 32, 14),
(219, 1, 4, 15),
(220, 1, 18, 15),
(221, 1, 21, 16),
(222, 1, 31, 16),
(236, 5, 4, 85),
(237, 8, 15, 85),
(238, 13, 3, 85),
(239, 1, 29, 11),
(240, 1, 15, 33),
(241, 1, 16, 33),
(242, 1, 18, 91);

-- --------------------------------------------------------

--
-- Table structure for table `Article_couleur`
--

CREATE TABLE `Article_couleur` (
  `id` int(11) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `etat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Article_couleur`
--

INSERT INTO `Article_couleur` (`id`, `couleur`, `etat`) VALUES
(1, 'Noir', 1),
(2, 'Vert', 1),
(3, 'Rouge', 1),
(4, 'Bleu', 1),
(5, 'Jaune', 1),
(6, 'Blanche', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Article_fournisseur`
--

CREATE TABLE `Article_fournisseur` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `adresse2` varchar(255) DEFAULT NULL,
  `qte_stock` int(11) NOT NULL,
  `isStock` tinyint(1) NOT NULL,
  `isOn` tinyint(1) NOT NULL,
  `date_create` datetime(6) NOT NULL,
  `article_id` int(11) NOT NULL,
  `fournisseur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------


--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Categorie`
--

CREATE TABLE `Categorie` (
  `id` int(11) NOT NULL,
  `libelle_categorie` varchar(255) NOT NULL,
  `code_cat` varchar(20) DEFAULT NULL,
  `cat_isOn` tinyint(1) NOT NULL,
  `famille_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Categorie`
--

INSERT INTO `Categorie` (`id`, `libelle_categorie`, `code_cat`, `cat_isOn`, `famille_id`) VALUES
(1, 'Supermarché', 'S01', 1, NULL),
(2, 'Maison et Bureau', 'MB01', 1, NULL),
(3, 'Téléphones & Tablettes', 'TT01', 1, NULL),
(4, 'Electronique', 'E01', 1, NULL),
(5, 'Informatique', 'I01', 1, NULL),
(6, 'Mode Homme', 'MH01', 1, NULL),
(7, 'Mode Femme', 'MF01', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Compagne_promo`
--

CREATE TABLE `Compagne_promo` (
  `id` int(11) NOT NULL,
  `date_debut` datetime(6) NOT NULL,
  `date_fin` datetime(6) NOT NULL,
  `titre` varchar(150) NOT NULL,
  `isOn` tinyint(1) NOT NULL,
  `appreciation` double DEFAULT NULL,
  `message` longtext NOT NULL,
  `promo_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Table structure for table `Facture`
--

CREATE TABLE `Facture` (
  `id` int(11) NOT NULL,
  `pttc` int(11) NOT NULL,
  `date_facture` datetime(6) NOT NULL,
  `montant_total` decimal(12,2) NOT NULL,
  `statut` tinyint(1) NOT NULL,
  `commande_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Famille`
--

CREATE TABLE `Famille` (
  `id` int(11) NOT NULL,
  `codeFa` varchar(20) DEFAULT NULL,
  `libelle_fa` varchar(100) DEFAULT NULL,
  `fa_isOn` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Image`
--

CREATE TABLE `Image` (
  `id` int(11) NOT NULL,
  `url_image` varchar(100) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Image`
--

INSERT INTO `Image` (`id`, `url_image`, `article_id`) VALUES
(1, 'article_image/riz1.jpeg', 1),
(2, 'article_image/riz2.jpeg', 1),
(3, 'article_image/riz3.jpeg', 1),
(4, 'article_image/t-shirt2_njmHDdk.jpg', 2),
(5, 'article_image/t-shirt3_4XY2xTT.jpg', 2),
(6, 'article_image/shirt_pUmtzQ4.jpg', 2),
(7, 'article_image/tv2.jpeg', 3),
(8, 'article_image/tv3.jpeg', 3),
(9, 'article_image/tv1.jpeg', 3),
(10, 'article_image/chemise1.jpg', 4),
(11, 'article_image/chemise2.jpg', 4),
(12, 'article_image/basket2.jpeg', 5),
(13, 'article_image/basket4.jpeg', 6),
(14, 'article_image/basket6.jpeg', 8),
(15, 'article_image/jacket1.jpeg', 9),
(16, 'article_image/jacket5.jpeg', 10),
(17, 'article_image/jacket7.jpeg', 11),
(18, 'article_image/jacket6.jpeg', 11),
(19, 'article_image/jacket2.jpeg', 11),
(20, 'article_image/jacket4.jpeg', 12),
(21, 'article_image/jacket3.jpeg', 12),
(22, 'article_image/robe_mariage1.jpeg', 13),
(23, 'article_image/robe_mariage2.jpeg', 14),
(24, 'article_image/robe_mariage.jpeg', 14),
(25, 'article_image/jupe5.jpeg', 15),
(26, 'article_image/jupe2.jpeg', 15),
(27, 'article_image/jupe1.jpeg', 15),
(28, 'article_image/jupe3.jpeg', 16),
(29, 'article_image/sandale1.jpeg', 17),
(30, 'article_image/chaussure3.jpeg', 18),
(31, 'article_image/chaussure6.jpeg', 19),
(32, 'article_image/chaussure1.jpeg', 19),
(33, 'article_image/climatiseur4.jpeg', 20),
(34, 'article_image/clim.jpeg', 20),
(35, 'article_image/climatiseur6.jpeg', 21),
(36, 'article_image/clim_NdJYbg8.jpeg', 21),
(37, 'article_image/climatiseur3.jpeg', 22),
(38, 'article_image/clim_AKx5vWo.jpeg', 22),
(39, 'article_image/climatiseur5.jpeg', 23),
(40, 'article_image/clim_T7rwoXI.jpeg', 23),
(52, 'article_image/timberland1.jpeg', 14),
(65, 'article_image/projecteur2.jpeg', 28),
(71, 'article_image/product_img6.jpg', 30),
(92, 'article_image/product_img8.jpg', 42),
(93, 'article_image/product_img2.jpg', 43),
(94, 'article_image/222x222_img1.jpg', 44),
(95, 'article_image/83x83_prod1.jpg', 45),
(98, 'article_image/product_img4.jpg', 48),
(99, 'article_image/83x83_prod2.jpg', 49),
(100, 'article_image/83x83_prod11.jpg', 50),
(117, 'article_image/12_te.jpg', 63),
(118, 'article_image/congelateur2.jpeg', 64),
(121, 'article_image/gazinière2.jpeg', 67),
(131, 'article_image/07_sac.jpg', 77),
(135, 'article_image/12.jpg', 81),
(137, 'article_image/10.jpg', 83),
(140, 'article_image/24.jpg', 86),
(143, 'article_image/26.jpg', 89),
(144, 'article_image/27.jpg', 89),
(145, 'article_image/28.jpg', 90),
(146, 'article_image/21.jpg', 91),
(151, 'article_image/headphones_qgOK30L.jpg', 25),
(152, 'article_image/product_img3.jpg', 25),
(153, 'article_image/product_img3_EzIqTNv.jpg', 26),
(154, 'article_image/headphones_Af79PGu.jpg', 26),
(155, 'article_image/130x130_img4.jpg', 26),
(156, 'article_image/130x130_img4_XTZvjP3.jpg', 27),
(157, 'article_image/product_img3_sbGKqO0.jpg', 27),
(158, 'article_image/83x83_prod9.jpg', 27),
(160, 'article_image/projecteur.jpeg', 29),
(161, 'article_image/projecteur2_5ehfMCe.jpeg', 29),
(163, 'article_image/83x83_prod6.jpg', 31),
(164, 'article_image/product_img1.jpg', 32),
(165, 'article_image/130x130_img2.jpg', 32),
(166, 'article_image/satechi2.jpeg', 33),
(167, 'article_image/satechi.jpeg', 33),
(168, 'article_image/satechi_EQSMrUG.jpeg', 34),
(169, 'article_image/scan.jpeg', 35),
(170, 'article_image/scan2.jpeg', 35),
(171, 'article_image/ordi_bureau.jpeg', 36),
(172, 'article_image/83x83_prod8.jpg', 36),
(173, 'article_image/pc6.jpeg', 37),
(174, 'article_image/pc3.jpeg', 37),
(175, 'article_image/222x222_img1.jpg', 38),
(176, 'article_image/tv1_VfkDcG1.jpeg', 38),
(177, 'article_image/83x83_prod12.jpg', 39),
(178, 'article_image/tv2_eyRArAM.jpeg', 39),
(179, 'article_image/product_img9.jpg', 40),
(180, 'article_image/product_img5.jpg', 40),
(181, 'article_image/tv2_6Pu6Jje.jpeg', 41),
(182, 'article_image/tv3_QGhKCDE.jpeg', 41),
(184, 'article_image/pc7.jpeg', 42),
(186, 'article_image/83x83_prod1.jpg', 45),
(187, 'article_image/congelateur2.jpeg', 64),
(188, 'article_image/536x536_prod_img1.jpg', 46),
(189, 'article_image/83x83_prod2.jpg', 46),
(190, 'article_image/83x83_prod11.jpg', 50),
(191, 'article_image/product_thumb_4.jpg', 51),
(192, 'article_image/product_thumb_5.jpg', 52),
(193, 'article_image/product_thumb_6.jpg', 53),
(194, 'article_image/product_img_30.jpg', 54),
(195, 'article_image/product_img_24.jpg', 54),
(196, 'article_image/deals_img_2.jpg', 55),
(197, 'article_image/tabs_img_3.jpg', 56),
(198, 'article_image/news_img_3.jpg', 57),
(199, 'article_image/243x243_item1.jpg', 57),
(200, 'article_image/243x243_item1_hLsG619.jpg', 58),
(201, 'article_image/news_img_3_9fZIruF.jpg', 58),
(202, 'article_image/243x243_item6.jpg', 59),
(203, 'article_image/01.png', 60),
(204, 'article_image/home06.jpg', 61),
(205, 'article_image/04_belt.jpg', 62),
(206, 'article_image/12.jpg', 82),
(208, 'article_image/congelateur1.jpeg', 65),
(209, 'article_image/gazinière2.jpeg', 66),
(210, 'article_image/gazinière3.jpeg', 68),
(212, 'article_image/refrigerateur1.jpeg', 70),
(213, 'article_image/refrigerateur.jpeg', 69),
(214, 'article_image/09.jpg', 71),
(215, 'article_image/home04.jpg', 71),
(216, 'article_image/vin1_wCwSHLu.jpeg', 72),
(217, 'article_image/champagne4.jpeg', 73),
(218, 'article_image/champagne3.jpeg', 74),
(219, 'article_image/champagne2.jpeg', 75),
(220, 'article_image/champagne1.jpeg', 75),
(221, 'article_image/15_lune.jpg', 76),
(223, 'article_image/07.jpg', 78),
(224, 'article_image/02.png', 79),
(225, 'article_image/10.jpg', 80),
(226, 'article_image/23.jpg', 84),
(227, 'article_image/24.jpg', 84),
(228, 'article_image/03.png', 92),
(229, 'article_image/02.jpg', 92),
(230, 'article_image/26.jpg', 94),
(231, 'article_image/27.jpg', 94),
(232, 'article_image/28.jpg', 94),
(233, 'article_image/22.jpg', 85),
(234, 'article_image/21.jpg', 87),
(235, 'article_image/17.jpg', 88),
(236, 'article_image/18.jpg', 88),
(237, 'article_image/montre1.png', 93),
(238, 'article_image/mouse2.jpeg', 47);

-- --------------------------------------------------------

--
-- Table structure for table `LivraisonInfo`
--

CREATE TABLE `LivraisonInfo` (
  `id` int(11) NOT NULL,
  `adresse` varchar(200) DEFAULT NULL,
  `point_livraison` varchar(200) DEFAULT NULL,
  `periode` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `telephone2` varchar(200) DEFAULT NULL,
  `date_livraison` datetime(6) NOT NULL,
  `qte_livre` int(10) UNSIGNED DEFAULT NULL CHECK (`qte_livre` >= 0),
  `commune` varchar(255) DEFAULT NULL,
  `prix_livraison` decimal(6,2) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `commande_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `LivraisonInfo`
--

INSERT INTO `LivraisonInfo` (`id`, `adresse`, `point_livraison`, `periode`, `city`, `telephone2`, `date_livraison`, `qte_livre`, `commune`, `prix_livraison`, `client_id`, `commande_id`) VALUES
(1, '', NULL, '', NULL, NULL, '2021-03-29 22:35:19.224834', NULL, NULL, NULL, 2, 2),
(2, 'IAI', NULL, '', NULL, NULL, '2021-03-29 22:49:57.307654', NULL, NULL, NULL, 4, 3),
(3, 'Owendo', NULL, '074097843', NULL, NULL, '2021-03-29 22:54:25.972568', NULL, NULL, NULL, 4, 4),
(4, 'IAI', NULL, '077654312', NULL, NULL, '2021-03-29 23:49:15.125392', NULL, NULL, NULL, 4, 5),
(5, 'Averda', NULL, '+24174187901 ', NULL, NULL, '2021-03-30 08:08:34.244713', NULL, NULL, NULL, 2, 6),
(6, 'Averda', NULL, '074564323', NULL, NULL, '2021-03-30 08:56:45.583563', NULL, NULL, NULL, 2, 7),
(7, 'Averda', NULL, '', NULL, NULL, '2021-03-30 10:33:50.845477', NULL, NULL, NULL, 2, 8),
(8, 'averda ', NULL, '+24174187901 ', NULL, NULL, '2021-03-30 10:42:23.659847', NULL, NULL, NULL, 2, 9),
(9, 'averda ', NULL, '074187901 ', NULL, NULL, '2021-03-30 10:45:47.492440', NULL, NULL, NULL, 2, 10),
(10, '', NULL, '074187901 ', NULL, NULL, '2021-03-30 10:47:49.097960', NULL, NULL, NULL, 2, 11),
(11, 'Averda', NULL, '074187901 ', NULL, NULL, '2021-03-30 10:51:51.135975', NULL, NULL, NULL, 2, 12),
(12, 'averda', NULL, '0024174187901', NULL, NULL, '2021-03-30 12:14:24.016542', NULL, NULL, NULL, 2, 13),
(13, 'averda', NULL, '24174187901', NULL, NULL, '2021-03-30 12:20:08.047112', NULL, NULL, NULL, 2, 14),
(14, 'averda', NULL, '074187901 ', NULL, NULL, '2021-03-30 12:22:53.960255', NULL, NULL, NULL, 2, 15),
(15, '', NULL, '', NULL, NULL, '2021-03-30 12:27:38.748847', NULL, NULL, NULL, 2, 16),
(16, '', NULL, '', NULL, NULL, '2021-03-30 12:30:55.826607', NULL, NULL, NULL, 2, 17),
(17, 'Okala', NULL, '065096754 ', NULL, NULL, '2021-03-31 09:13:10.465157', NULL, NULL, NULL, 3, 18),
(18, '', NULL, '', NULL, NULL, '2021-03-31 10:52:18.323983', NULL, NULL, NULL, 3, 19),
(19, '', NULL, '', NULL, NULL, '2021-03-31 11:15:58.510303', NULL, NULL, NULL, 3, 20),
(20, 'campus', NULL, ' 065096754 ', NULL, NULL, '2021-03-31 15:01:59.044227', NULL, NULL, NULL, 3, 21),
(21, 'IAI', NULL, ' 065096754 ', NULL, NULL, '2021-03-31 15:17:31.018591', NULL, NULL, NULL, 3, 22),
(22, 'IAI', NULL, ' 065096754 ', NULL, NULL, '2021-03-31 15:19:25.702298', NULL, NULL, NULL, 3, 23),
(23, 'IAI', NULL, ' 065096754 ', NULL, NULL, '2021-03-31 15:49:45.341990', NULL, NULL, NULL, 3, 24),
(24, 'IAI', NULL, ' 065096754 ', NULL, NULL, '2021-03-31 15:51:58.566488', NULL, NULL, NULL, 3, 25),
(25, 'IAI', NULL, ' 065096754 ', NULL, NULL, '2021-03-31 15:54:40.581534', NULL, NULL, NULL, 3, 26),
(26, 'IAI', NULL, ' 065096754 ', NULL, NULL, '2021-03-31 15:56:21.227954', NULL, NULL, NULL, 3, 27),
(27, 'IAI', NULL, ' 065096754 ', NULL, NULL, '2021-03-31 15:58:26.812857', NULL, NULL, NULL, 4, 28),
(28, 'IAI', NULL, ' 074073319 ', NULL, NULL, '2021-03-31 16:00:13.814626', NULL, NULL, NULL, 4, 29),
(29, 'IAI', NULL, '077073306', NULL, NULL, '2021-03-31 16:25:39.235542', NULL, NULL, NULL, 5, 30),
(30, '', NULL, '', NULL, NULL, '2021-03-31 16:26:22.217171', NULL, NULL, NULL, 5, 31),
(31, 'IAI', NULL, '077073306', NULL, NULL, '2021-03-31 16:27:41.653572', NULL, NULL, NULL, 5, 32),
(32, '', NULL, '', NULL, NULL, '2021-03-31 16:29:08.268701', NULL, NULL, NULL, 6, 33),
(33, 'IAI', NULL, '077073306 ', NULL, NULL, '2021-03-31 20:15:39.686902', NULL, NULL, NULL, 12, 34),
(34, 'IAI', NULL, '077073306 ', NULL, NULL, '2021-03-31 20:16:56.740418', NULL, NULL, NULL, 12, 35),
(35, 'iai', NULL, '077073306 ', NULL, NULL, '2021-03-31 20:17:41.477728', NULL, NULL, NULL, 12, 36),
(36, 'iai', NULL, '077073306 ', NULL, NULL, '2021-03-31 20:18:32.237284', NULL, NULL, NULL, 12, 37),
(37, '', 'IAI Station', '2 - 4 jours', NULL, '', '2021-04-04 20:49:34.738175', NULL, 'Libreville', '2250.00', 3, 38),
(38, 'IAI', 'IAI Station', '2 - 4 jours', NULL, '074565434', '2021-04-04 20:53:46.161267', NULL, 'Libreville', '2250.00', 3, 39),
(39, ' campus IAI ', 'Amisi Marché amisi', '5 - 7 jours', NULL, '074397242 ', '2021-04-04 21:11:07.851868', NULL, 'Akanda', '2500.00', 3, 40),
(40, 'campus IAI', 'IAI Station', '2 - 4 jours', NULL, '074397242', '2021-04-05 10:19:27.821838', NULL, 'Libreville', '2250.00', 3, 41),
(41, 'campus IAI', 'Lycée Lycée', '2-5 jours', NULL, '074397242', '2021-04-05 10:22:50.022969', NULL, 'owendo', '1000.00', 3, 42),
(42, 'campus IAI', 'PK Marché banane', '5 - 7 jours', NULL, '074397242', '2021-04-05 12:00:03.099342', NULL, 'Libreville', '2500.00', 3, 42),
(43, 'campus IAI', 'Lycée Lycée', '2-5 jours', NULL, '074397242', '2021-04-05 12:01:27.583152', NULL, 'owendo', '1000.00', 3, 43),
(44, 'campus IAI', 'Aeroport KFC', '2 - 4 jours', NULL, '074397242', '2021-04-05 12:02:37.194374', NULL, 'Akanda', '2250.00', 3, 44),
(45, 'campus IAI', 'Awendje Station total', '2-5 jours', NULL, '074397242', '2021-04-05 12:03:37.861327', NULL, 'Libreville', '1000.00', 3, 45),
(46, 'iai', 'Awendje Station total', '2-5 jours', NULL, '+24174187923', '2021-04-05 12:15:58.909558', NULL, 'Libreville', '1000.00', 16, 46),
(47, 'iai', 'IAI Station', '2 - 4 jours', NULL, '+24174187923', '2021-04-05 12:17:19.331079', NULL, 'Libreville', '2250.00', 16, 47),
(48, 'iai', 'Okala Station total', '2-5 jours', NULL, '+24174187923', '2021-04-05 12:18:45.430107', NULL, 'Akanda', '1000.00', 16, 48),
(49, 'iai', 'Carefour SNI Prix import', '2 - 4 jours', NULL, '+24174187923', '2021-04-05 12:20:10.723192', NULL, 'owendo', '2250.00', 15, 49),
(50, 'iai', 'PK Marché banane', '5 - 7 jours', NULL, '+24174187923', '2021-04-05 12:21:32.606994', NULL, 'Libreville', '2500.00', 15, 50),
(51, 'iai', 'IAI Station', '2 - 4 jours', NULL, '+24174187923', '2021-04-05 12:22:17.954832', NULL, 'Libreville', '2250.00', 15, 51),
(52, 'iai', 'IAI Station', '2 - 4 jours', NULL, '+24174187923', '2021-04-05 12:24:28.584747', NULL, 'Libreville', '2250.00', 15, 52),
(53, 'iai', 'Aeroport KFC', '2 - 4 jours', NULL, '+24174187923', '2021-04-09 12:49:00.552475', NULL, 'Akanda', '2250.00', 15, 53),
(54, 'iai', 'Port Arrêt sogatra', '5 - 7 jours', NULL, '+24174187923', '2021-04-09 12:50:05.498569', NULL, 'owendo', '2500.00', 14, 54),
(55, 'iai', 'PK Marché banane', '5 - 7 jours', NULL, '+24174187923', '2021-04-09 12:51:29.750620', NULL, 'Libreville', '2500.00', 14, 55),
(56, 'iai', 'Aeroport KFC', '2 - 4 jours', NULL, '+24174187923', '2021-04-09 12:52:34.892429', NULL, 'Akanda', '2250.00', 14, 56),
(57, 'owendo', 'IAI Station', '2 - 4 jours', NULL, '077073313', '2021-04-09 12:56:56.274197', NULL, 'Libreville', '2250.00', 14, 57),
(58, 'owendo', 'Carefour SNI Prix import', '2 - 4 jours', NULL, '077073313', '2021-04-09 12:58:13.369021', NULL, 'owendo', '2250.00', 14, 58),
(59, 'owendo', 'IAI Station', '2 - 4 jours', NULL, '077073313', '2021-04-09 12:59:52.706870', NULL, 'Libreville', '2250.00', 14, 60),
(60, 'owendo', 'Awendje Station total', '2-5 jours', NULL, '077073313', '2021-04-09 13:01:09.576613', NULL, 'Libreville', '1000.00', 14, 61),
(61, 'owendo', 'Amisi Marché amisi', '5 - 7 jours', NULL, '077073313', '2021-04-09 13:02:34.968505', NULL, 'Akanda', '2500.00', 16, 62),
(62, 'owendo', 'IAI Station', '2 - 4 jours', NULL, '077073313', '2021-04-09 13:03:22.080579', NULL, 'Libreville', '2250.00', 15, 63),
(63, 'akanda', 'IAI Station', '2 - 4 jours', NULL, '+24174187924', '2021-04-17 09:15:55.809723', NULL, 'Libreville', '2250.00', 13, 65),
(64, 'akanda', 'Okala Station total', '2-5 jours', NULL, '+24174187924', '2021-04-17 12:15:52.843584', NULL, 'Akanda', '1000.00', 13, 66),
(65, 'akanda', 'Okala Station total', '2-5 jours', NULL, '+24174187924', '2021-04-17 13:07:26.139593', NULL, 'Akanda', '1000.00', 13, 67),
(66, 'akanda', 'IAI Station', '2 - 4 jours', NULL, '+24174187924', '2021-04-18 09:30:26.123645', NULL, 'Libreville', '2250.00', 10, 68),
(67, 'akanda', 'IAI Station', '2 - 4 jours', NULL, '+24174187924', '2021-04-18 10:11:04.449915', NULL, 'Libreville', '2250.00', 10, 69),
(68, 'akanda', 'Lycée Lycée', '2-5 jours', NULL, '+24174187924', '2021-04-18 10:13:00.169699', NULL, 'owendo', '1000.00', 10, 70),
(69, 'iai', 'IAI Station', '2 - 4 jours', NULL, '066432319', '2021-04-22 14:58:07.422479', NULL, 'Libreville', '2250.00', 15, 71),
(70, 'iai', 'Awendje Station total', '2-5 jours', NULL, '066432319', '2021-04-23 08:59:58.263039', NULL, 'Libreville', '1000.00', 15, 73),
(71, 'iai', 'Lycée Lycée', '2-5 jours', NULL, '066432319', '2021-04-23 11:13:18.260313', NULL, 'owendo', '1000.00', 15, 74),
(72, 'iai', 'IAI Station', '2 - 4 jours', NULL, '066432319', '2021-04-25 13:15:15.763322', NULL, 'Libreville', '2250.00', 15, 75),
(73, 'Owendo', 'PK Marché banane', '5 - 7 jours', NULL, '076454323', '2021-06-18 20:09:45.153165', NULL, 'Libreville', '2500.00', 1, 91),
(74, 'campus IAI', 'Awendje Station total', '2-5 jours', NULL, '074397242', '2021-06-18 22:39:19.585233', NULL, 'Libreville', '1000.00', 3, 58);

-- --------------------------------------------------------

--
-- Table structure for table `Livreur_livraison`
--

CREATE TABLE `Livreur_livraison` (
  `id` int(11) NOT NULL,
  `date_livraison` datetime(6) NOT NULL,
  `type_vehicule` varchar(30) DEFAULT NULL,
  `veh_immatriculation` varchar(20) DEFAULT NULL,
  `livraison_id` int(11) NOT NULL,
  `livreur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Notation`
--

CREATE TABLE `Notation` (
  `id` int(11) NOT NULL,
  `note_etoile` int(11) DEFAULT NULL,
  `date_notation` datetime(6) DEFAULT NULL,
  `appreciation` longtext DEFAULT NULL,
  `article_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Option_paremetre`
--

CREATE TABLE `Option_paremetre` (
  `id` int(11) NOT NULL,
  `parametre` varchar(30) NOT NULL,
  `libelle_op` varchar(30) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Option_paremetre`
--

INSERT INTO `Option_paremetre` (`id`, `parametre`, `libelle_op`, `article_id`) VALUES
(1, 'Poids', '25kg', 1),
(2, 'Qualité', 'Parfumé', 1),
(3, 'eAirtec ', '81cm', 3),
(4, 'inches', '32', 3),
(5, 'couleur', 'noir', 3),
(6, 'air', 'conditionnée', 20),
(7, 'poids', '90kg', 20),
(8, 'Poids', '70kg', 21),
(9, 'Poids', '34kg', 22),
(10, 'Poids', '54Kg', 23),
(11, 'TOUCHE', 'Complt', 24),
(12, 'Fil', 'bon', 25),
(13, '', '', 26),
(14, 'fils', 'long', 27),
(15, 'Lulière', 'bonne', 28),
(16, 'LUMIERE', 'bonne', 29),
(17, 'caméra', '2', 30),
(18, 'LUMIERE', 'bon', 31),
(19, 'LUMIERE', 'bonne', 32),
(20, 'Fils', '2', 33),
(21, 'Bafle', '2', 34),
(22, 'batterie', 'ok', 35),
(23, 'DD', '500', 36),
(24, 'DD', '500', 37),
(25, 'DD', '16', 38),
(26, 'DD', '16', 39),
(27, 'DD', '26', 40),
(28, 'ecran', '15', 41),
(29, 'ecran', 'bon', 42),
(30, 'ecran', '15', 43),
(31, 'ecran', '15', 44),
(32, 'souris', 'bon', 45),
(33, 'dd', '16', 46),
(34, 'dd', '32', 47),
(35, 'wifi', 'oui', 47),
(36, 'dd', '32', 48),
(37, 'dd', '16', 49),
(38, 'dd', '8GB', 50),
(39, 'drap complet', '', 51),
(40, 'table', 'bon', 52),
(41, 'chaisse', 'bon', 53),
(42, 'ok', 'bon', 54),
(43, 'ok', 'bon', 55),
(44, 'fauteil', 'ok', 56),
(45, 'lit', 'ok', 57),
(46, 'lit', 'ok', 58),
(47, 'ok', 'ok', 59),
(48, 'montre', 'ok', 61),
(49, 'Ok', 'ok', 62),
(50, 'ok', 'ok', 63),
(51, 'ok', 'ok', 64),
(52, 'ok', 'ok', 65),
(53, 'ok', 'ok', 66),
(54, 'ok', 'ok', 67),
(55, 'ok', 'ok', 68),
(56, 'ok', 'ok', 69),
(57, 'ok', 'ok', 70),
(58, 'ok', 'ok', 71),
(59, 'ok', 'ok', 72),
(60, 'ok', 'ok', 73),
(61, 'ok', 'pk', 74),
(62, 'ok', 'ok', 75),
(63, 'ok', 'ok', 76),
(64, 'OK', 'OK', 77),
(65, 'ok', 'ok', 78),
(66, 'ok', 'ok', 79),
(67, 'OK', 'OK', 80),
(68, 'ok', 'ok', 81),
(69, 'ok', 'ok', 82),
(70, 'ok', 'ok', 83),
(71, 'ok', 'ok', 84),
(72, 'ok', 'ok', 85),
(73, 'ok', 'ok', 86),
(74, 'ok', 'ok', 87),
(75, 'ok', 'ok', 88),
(76, 'ok', 'ok', 89),
(77, 'ok', 'ok', 90),
(78, 'ok', 'ok', 91),
(79, 'ok', 'ok', 92),
(80, 'ok', 'ok', 93),
(81, 'ok', 'ok', 94);

-- --------------------------------------------------------

--
-- Table structure for table `Order`
--

CREATE TABLE `Order` (
  `id` int(11) NOT NULL,
  `complete` int(11) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `date_commande` datetime(6) NOT NULL,
  `custumer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Order`
--

INSERT INTO `Order` (`id`, `complete`, `transaction_id`, `date_commande`, `custumer_id`) VALUES
(1, 2, '1616717108.377279', '2021-03-11 03:38:51.522469', 7),
(2, 1, '1617057319.054196', '2021-03-11 16:14:46.611323', 6),
(3, 1, '1617091714.131443', '2021-03-11 17:14:38.334960', 5),
(4, 2, '1616762919.839446', '2021-03-26 00:06:26.219358', 5),
(5, 1, '1617058197.192456', '2021-03-26 12:48:45.131910', 5),
(6, 0, NULL, '2021-03-29 22:35:26.005156', 5),
(7, 1, '1617058465.847183', '2021-03-29 22:50:02.467803', 4),
(8, 1, '1617061190.878313', '2021-03-29 22:54:28.459865', 4),
(9, 1, '1617061319.223645', '2021-03-29 23:40:12.396142', 4),
(10, 1, '1617061509.489302', '2021-03-29 23:42:44.831137', 4),
(11, 1, '1617061755.023994', '2021-03-29 23:45:22.037612', 4),
(12, 1, '1617206306.718007', '2021-03-29 23:49:29.106601', 4),
(13, 1, '1617094605.500073', '2021-03-30 08:08:41.431223', 2),
(14, 1, '1617100430.760935', '2021-03-30 08:56:47.291408', 4),
(15, 2, '1617100943.56961', '2021-03-30 10:33:53.711510', 2),
(16, 1, '1617101147.373473', '2021-03-30 10:42:25.635404', 2),
(17, 1, '1617101269.026977', '2021-03-30 10:45:50.914343', 2),
(18, 1, '1617101510.994904', '2021-03-30 10:47:51.934514', 2),
(19, 1, '1617106463.908302', '2021-03-30 10:51:54.266436', 2),
(20, 1, '1617106807.98795', '2021-03-30 12:14:25.698931', 2),
(21, 1, '1617106973.843294', '2021-03-30 12:20:10.122793', 2),
(22, 1, '1617107258.653504', '2021-03-30 12:22:57.139499', 2),
(23, 1, '1617107454.954061', '2021-03-30 12:27:40.901715', 2),
(24, 0, NULL, '2021-03-30 12:30:58.233673', 2),
(25, 1, '1617181990.34974', '2021-03-30 12:33:49.815723', 13),
(26, 1, '1617187938.20141', '2021-03-31 09:13:13.094264', 13),
(27, 1, '1617189358.427807', '2021-03-31 10:52:21.148061', 13),
(28, 1, '1617202918.939135', '2021-03-31 11:16:00.086894', 13),
(29, 1, '1617203850.925275', '2021-03-31 15:02:00.721373', 13),
(30, 1, '1617203965.613595', '2021-03-31 15:17:33.082643', 13),
(31, 1, '1617205785.236164', '2021-03-31 15:19:27.748009', 13),
(32, 1, '1617205918.485447', '2021-03-31 15:49:49.556377', 13),
(33, 1, '1617206080.469696', '2021-03-31 15:52:00.348679', 13),
(34, 1, '1617206181.124356', '2021-03-31 15:54:42.219930', 13),
(35, 0, NULL, '2021-03-31 15:56:23.433961', 13),
(36, 1, '1617206413.733925', '2021-03-31 15:58:28.084085', 14),
(37, 0, NULL, '2021-03-31 16:00:15.545877', 14),
(38, 1, '1617207939.160413', '2021-03-31 16:01:45.036666', 15),
(39, 1, '1617207982.136405', '2021-03-31 16:25:41.143580', 15),
(40, 1, '1617208061.570608', '2021-03-31 16:26:23.695748', 15),
(41, 1, '1617208148.140268', '2021-03-31 16:27:43.217094', 15),
(42, 1, '1617221739.626884', '2021-03-31 16:29:10.215077', 15),
(43, 1, '1617221816.667444', '2021-03-31 20:15:41.667038', 15),
(44, 1, '1617221861.406628', '2021-03-31 20:16:58.672597', 15),
(45, 1, '1617221912.178838', '2021-03-31 20:17:42.689557', 15),
(46, 0, NULL, '2021-03-31 20:18:33.811157', 15),
(47, 1, '1617569374.622901', '2021-04-04 18:37:51.446845', 3),
(48, 1, '1617569626.043054', '2021-04-04 20:49:34.868860', 3),
(49, 1, '1617570118.263905', '2021-04-04 20:53:46.276357', 3),
(50, 1, '1617570427.4313', '2021-04-04 21:05:50.223199', 3),
(51, 1, '1617570667.757207', '2021-04-04 21:10:02.418724', 3),
(52, 1, '1617617967.705924', '2021-04-04 21:11:07.925136', 3),
(53, 1, '1617618169.914223', '2021-04-05 10:19:27.934996', 3),
(54, 1, '1617624003.003578', '2021-04-05 10:22:50.120244', 3),
(55, 1, '1617624087.505409', '2021-04-05 12:00:03.179998', 3),
(56, 1, '1617624157.110061', '2021-04-05 12:01:27.769269', 3),
(57, 1, '1617624217.779974', '2021-04-05 12:02:37.248695', 3),
(58, 1, '1624055959.516397', '2021-04-05 12:03:37.922890', 3),
(59, 1, '1617624958.837566', '2021-04-05 12:07:19.230119', 16),
(60, 1, '1617625039.265496', '2021-04-05 12:15:58.961933', 16),
(61, 1, '1617625125.359633', '2021-04-05 12:17:19.383665', 16),
(62, 1, '1617625210.633983', '2021-04-05 12:18:45.485520', 16),
(63, 1, '1617625292.499716', '2021-04-05 12:20:10.782062', 16),
(64, 1, '1617625337.896002', '2021-04-05 12:21:32.658971', 16),
(65, 1, '1617625468.507175', '2021-04-05 12:22:18.019971', 16),
(66, 1, '1617972540.478092', '2021-04-05 12:24:28.647189', 16),
(67, 1, '1617972605.408929', '2021-04-09 12:49:00.605924', 16),
(68, 1, '1617972689.63402', '2021-04-09 12:50:05.562583', 16),
(69, 1, '1617972754.831327', '2021-04-09 12:51:29.814325', 16),
(70, 0, NULL, '2021-04-09 12:52:34.959354', 16),
(71, 1, '1617973016.120885', '2021-04-09 12:55:04.870971', 14),
(72, 1, '1617973093.059628', '2021-04-09 12:56:56.398099', 14),
(73, 1, '1617973192.635657', '2021-04-09 12:58:13.502071', 14),
(74, 1, '1617973269.501686', '2021-04-09 12:59:52.773436', 14),
(75, 1, '1617973354.917068', '2021-04-09 13:01:09.651078', 14),
(76, 1, '1617973401.985199', '2021-04-09 13:02:35.023115', 14),
(77, 0, NULL, '2021-04-09 13:03:22.134951', 14),
(78, 1, '1618650955.747495', '2021-04-17 09:13:02.323604', 12),
(79, 1, '1618661752.780875', '2021-04-17 09:15:55.958754', 12),
(80, 1, '1618664846.000748', '2021-04-17 12:15:52.995763', 12),
(81, 1, '1618738226.015398', '2021-04-17 13:07:26.355835', 12),
(82, 1, '1618740664.376804', '2021-04-18 09:30:26.200842', 12),
(83, 1, '1618740780.085522', '2021-04-18 10:11:04.490274', 12),
(84, 1, '1622933236.397242', '2021-04-18 10:13:00.216288', 12),
(85, 1, '1619103487.321063', '2021-04-22 11:11:37.063945', 12),
(86, 1, '1619168398.156653', '2021-04-22 14:58:07.663484', 12),
(87, 1, '1619176398.199618', '2021-04-23 08:59:58.341135', 12),
(88, 1, '1619356515.71285', '2021-04-23 11:13:25.443131', 12),
(89, 0, '1619356518.459668', '2021-04-25 13:15:18.467929', 12),
(90, 0, NULL, '2021-06-05 23:03:26.323997', 14),
(91, 1, '1624046985.028', '2021-06-17 10:57:57.115943', 1),
(92, 0, '1624047010.446105', '2021-06-18 20:09:47.089498', 1),
(93, 0, NULL, '2021-06-18 20:46:27.075321', 10),
(94, 0, NULL, '2021-06-18 22:39:29.671934', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Parametre_article`
--

CREATE TABLE `Parametre_article` (
  `id` int(11) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `taille_pointure` varchar(10) NOT NULL,
  `quantite` int(10) UNSIGNED NOT NULL CHECK (`quantite` >= 0),
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Parametre_article`
--

INSERT INTO `Parametre_article` (`id`, `couleur`, `taille_pointure`, `quantite`, `article_id`) VALUES
(1, 'Jaune', 'S', 6, 2),
(2, 'Noir', 'S', 4, 4),
(3, 'Vert', 'S', 4, 4),
(4, 'Rouge', 'S', 4, 4),
(5, 'Bleu', 'L', 3, 4),
(6, 'Jaune', 'L', 3, 4),
(7, 'Noir', 'M', 1, 4),
(8, 'Noir', '40', 2, 5),
(9, 'Bleu', '40', 2, 5),
(10, 'Noir', '42', 3, 5),
(11, 'Rouge', '41', 3, 6),
(13, 'Vert', '39', 4, 8),
(14, 'Bleu', '39', 4, 8),
(15, 'Noir', 'L', 2, 9),
(16, 'Bleu', 'L', 2, 9),
(17, 'Noir', 'M', 5, 10),
(18, 'Rouge', 'M', 5, 10),
(19, 'Bleu', 'M', 5, 10),
(20, 'Noir', 'XL', 2, 11),
(21, 'Rouge', 'XL', 2, 11),
(22, 'Noir', 'S', 3, 12),
(23, 'Vert', 'S', 3, 12),
(24, 'Bleu', 'M', 1, 12),
(25, 'Blanche', 'S', 2, 13),
(26, 'Blanche', 'L', 3, 14),
(27, 'Noir', 'S', 12, 15),
(28, 'Vert', 'S', 12, 15),
(29, 'Rouge', 'S', 12, 15),
(30, 'Bleu', 'S', 12, 15),
(31, 'Jaune', 'S', 12, 15),
(32, 'Blanche', 'S', 12, 15),
(33, 'Bleu', 'L', 3, 15),
(34, 'Rouge', 'M', 4, 15),
(35, 'Noir', 'S', 3, 16),
(36, 'Noir', '40', 2, 17),
(37, 'Noir', '42', 4, 18),
(38, 'Noir', '40', 2, 19),
(39, 'Noir', '40', 1, 60);

-- --------------------------------------------------------

--
-- Table structure for table `Parametre_base`
--

CREATE TABLE `Parametre_base` (
  `id` int(11) NOT NULL,
  `libelle_pb` varchar(40) NOT NULL,
  `nature` varchar(1) DEFAULT NULL,
  `pb_isON` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Parametre_base`
--

INSERT INTO `Parametre_base` (`id`, `libelle_pb`, `nature`, `pb_isON`) VALUES
(1, 'TAILLE', 'T', 1),
(2, 'Pointure', 'V', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Parametre_liste`
--

CREATE TABLE `Parametre_liste` (
  `id` int(11) NOT NULL,
  `pliste` varchar(40) DEFAULT NULL,
  `p_isOn` tinyint(1) NOT NULL,
  `pb_base_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Parametre_liste`
--

INSERT INTO `Parametre_liste` (`id`, `pliste`, `p_isOn`, `pb_base_id`) VALUES
(1, 'S', 1, 1),
(2, 'L', 1, 1),
(3, 'M', 1, 1),
(4, 'XL', 1, 1),
(5, '38', 1, 2),
(6, '39', 1, 2),
(7, '40', 1, 2),
(8, '41', 1, 2),
(9, '42', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Pays`
--

CREATE TABLE `Pays` (
  `id` int(11) NOT NULL,
  `nom_pays` varchar(40) NOT NULL,
  `isOn` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Pays`
--

INSERT INTO `Pays` (`id`, `nom_pays`, `isOn`) VALUES
(1, 'Gabon', 1),
(2, 'Cameroun', 1),
(3, 'Congo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Promotion_article`
--

CREATE TABLE `Promotion_article` (
  `id` int(11) NOT NULL,
  `old_prix` decimal(12,2) NOT NULL,
  `prix_promo` decimal(12,2) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Reglement_commande`
--

CREATE TABLE `Reglement_commande` (
  `id` int(11) NOT NULL,
  `montant` decimal(12,2) NOT NULL,
  `date_paye` datetime(6) NOT NULL,
  `commande_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Retour_commande`
--

CREATE TABLE `Retour_commande` (
  `id` int(11) NOT NULL,
  `libelle_retour_cmde` varchar(255) DEFAULT NULL,
  `qte_retour` int(11) DEFAULT NULL,
  `date_retour` datetime(6) DEFAULT NULL,
  `prix_retour` decimal(12,2) DEFAULT NULL,
  `commande_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Sous_categorie`
--

CREATE TABLE `Sous_categorie` (
  `id` int(11) NOT NULL,
  `libelle_sc` varchar(255) NOT NULL,
  `code_sc` varchar(20) DEFAULT NULL,
  `sc_isOn` tinyint(1) NOT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Sous_categorie`
--

INSERT INTO `Sous_categorie` (`id`, `libelle_sc`, `code_sc`, `sc_isOn`, `categorie_id`) VALUES
(1, 'ALIMENTAIRE', 'AL01', 1, 1),
(2, 'Télévisions', 'Tel01', 1, 4),
(3, 'Air et Climatisation', 'AC01', 1, 2),
(4, 'VETEMENTS', 'V01', 1, 6),
(5, 'Chaussures', 'ChH01', 1, 6),
(6, 'Vêtements ', 'VF01', 1, 7),
(7, 'Chaussures', 'CHF01', 1, 7),
(8, 'Ordinateurs', 'O01', 1, 5),
(9, 'IMPRIMANTES ET SCANNERS', 'IS01', 1, 5),
(10, 'TOP MARQUES TV', 'TMTV01', 1, 4),
(11, 'ACCESSOIRES TV', 'ATV01', 1, 4),
(12, 'GROS ÉLECTROMÉNAGERS', 'GE01', 1, 2),
(13, 'BOISSONS', 'B01', 1, 1),
(14, 'HYGIÈNES ET SOINS PERSONNELS', 'HSP01', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(128) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `telephone1` varchar(30) NOT NULL,
  `telephone2` varchar(30) DEFAULT NULL,
  `telephone3` varchar(30) DEFAULT NULL,
  `sexe` varchar(1) DEFAULT NULL,
  `date_joined` datetime(6) NOT NULL,
  `role` int(10) UNSIGNED DEFAULT NULL CHECK (`role` >= 0),
  `token` varchar(255) DEFAULT NULL,
  `pays_id` int(11) DEFAULT NULL,
  `ville_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`id`, `email`, `password`, `first_name`, `last_name`, `adresse`, `telephone1`, `telephone2`, `telephone3`, `sexe`, `date_joined`, `role`, `token`, `pays_id`, `ville_id`, `is_active`, `is_staff`, `is_superuser`, `last_login`) VALUES
(1, 'livreurdiff@gmail.com', 'livreur', 'NGANGA', 'livreur', 'Owendo', '076454323', '', '', 'M', '2021-06-16 12:44:54.655765', 5, '', 1, 1, 1, 0, 0, '2021-06-18 20:36:03.113673'),
(2, 'gauss@gmail.com', 'pbkdf2_sha256$216000$dAq2W9E5biwf$V1MfZ+kA8bvOuP0wA+wwDfv3shCnsMpLAPss3lkBO6M=', 'Gernacy', 'gauss', 'IAI', '+24174187923', NULL, NULL, 'M', '2020-12-18 17:53:23.930960', 5, NULL, 3, 2, 1, 0, 0, NULL),
(3, 'malik@gmail.com', 'pbkdf2_sha256$216000$dEOC1R8ZqegK$8NSKkKzVz0C/m59XZlSMFfr4J+bT53elrmiGT7JYdfA=', 'Malik', 'LAMINE', 'campus IAI', '074397242', NULL, NULL, 'M', '2021-01-02 17:03:34.542335', 5, NULL, 3, 2, 1, 0, 0, '2021-06-18 23:31:33.333466'),
(4, 'lamine@gmail.com', 'pbkdf2_sha256$216000$ZVzisxGdJsfS$oWOsfA4zReUzBmg9017jolzsjLI3AYoAQw5919r8UC4=', 'Lamine', 'Malik', 'iai', '+24174187923', NULL, NULL, 'M', '2021-02-04 17:16:03.132831', 5, NULL, 1, 1, 1, 0, 0, NULL),
(5, 'sagessenitoup@gmail.com', 'pbkdf2_sha256$216000$uqrRYjYLVsuT$bB1A8bSLAVTKn+Kcmm7zIIakZsFvFERvWyJ6xPT3b9Q=', 'Sagesse', 'NITOUP', 'owendo', '077073313', NULL, NULL, 'M', '2021-02-04 17:16:59.146820', 5, NULL, 1, 1, 1, 0, 0, NULL),
(6, 'alain@gmail.com', 'pbkdf2_sha256$216000$wrhkT0guXmad$hqkOkDFJdOWD0PTX+dDOk3ex75eZx0SkO+a/zG7Diio=', 'Alain', 'MOUANDA', 'akanda', '+24174187924', NULL, NULL, 'M', '2021-02-04 17:18:04.810197', 5, NULL, 1, 1, 1, 0, 0, NULL),
(7, 'sarah@gmail.com', 'pbkdf2_sha256$216000$D59T0pwPdO3S$z6M52imQr6ZJhMUW7UVWgW8Xu6ujltRc9Tii46+mXls=', 'sarah', 'SIMBA', 'mindoumbé', '+24174187935', NULL, NULL, 'F', '2021-02-04 17:19:05.841373', 5, NULL, 1, 1, 1, 0, 0, NULL),
(8, 'lelosara@gmail.com', 'pbkdf2_sha256$216000$6TsH5YS2OwjX$mV+0htIe4egqTQv0ZjjFGhx3g7245FYSYoCCLspTQ2Q=', 'Lelo sara', 'MBOUANDJI', 'averda', '+24174187901', NULL, NULL, 'F', '2021-02-04 17:20:03.999190', 5, NULL, 1, 1, 1, 0, 0, NULL),
(9, 'thiery@gmail.com', 'pbkdf2_sha256$216000$J5pLSXvaCyBt$NW+ZXsBHV1mdIFLDeKcM3idI1RjJMt11qmSSi2psjGM=', 'Thiery', 'MOUAMADJE', 'iai', '065096754', NULL, NULL, 'M', '2021-02-04 17:21:07.295062', 5, NULL, 1, 1, 1, 0, 0, NULL),
(10, 'pascal@gmail.com', 'pbkdf2_sha256$216000$qDqnmNGsdXXs$3w/JU0gANxVYkoxXWso+IYRo9xDb4to0ncqw/ClBET0=', 'Pascal', 'DISSIVOULOUD', 'iai', '074073319', NULL, NULL, 'M', '2021-02-04 17:21:54.277627', 5, NULL, 1, 1, 1, 0, 0, '2021-06-18 22:55:18.517474'),
(11, 'belingar@gmail.com', 'pbkdf2_sha256$216000$yKu7QgDRj1Io$rfFfNCci1UOOURE73IJ1DJsQ/mNzXlyrtwiInVlf900=', 'Hervé', 'BELINGAR', 'iai', '066432319', NULL, NULL, 'M', '2021-02-04 17:22:43.741195', 5, NULL, 1, 1, 1, 0, 0, NULL),
(12, 'moupou@gmail.com', 'pbkdf2_sha256$216000$VWXL5EMMjHw9$is/hQSJ9WxfCdvrv3jgfLO0LN/XVyXsBzXKYbMPDDbA=', 'Bahi', 'MOUPOU', 'iai', '065432318', NULL, NULL, 'M', '2021-02-04 17:23:35.809242', 5, NULL, 1, 1, 1, 0, 0, NULL),
(13, 'landry@gmail.com', 'pbkdf2_sha256$216000$QgKpUfHPmT7c$3PMONUjAH/H75KP1zLQgE+EZX8GRSNcHXlcxdXNlADQ=', 'Landry', 'BEUTCHA', 'iai', '074543218', NULL, NULL, 'M', '2021-02-04 17:24:38.318465', 5, NULL, 1, 1, 1, 0, 0, NULL),
(14, 'chancel@gmail.com', 'pbkdf2_sha256$216000$B2yUFagDuj9h$V1z6Iya4uIi2FOEWgREMwJ9xKmghJ7IIVd2ytyb7AP4=', 'Chancel', 'HAPPY', 'iai', 'O77432777', NULL, NULL, 'M', '2021-02-04 17:28:09.490099', 5, NULL, 1, 1, 1, 0, 0, NULL),
(15, 'arthuz@gmail.com', 'pbkdf2_sha256$216000$Bq9iRN9yVIqX$XdhtSWJJ9SMSory/ndV6MFPB3xma0VkL9c4nlpsty2I=', 'Arthuz', 'BONAZEBI', 'iai', '074678790', NULL, NULL, 'M', '2021-02-04 17:31:12.130599', 5, NULL, 1, 1, 1, 0, 0, NULL),
(16, 'davila@gmail.com', 'pbkdf2_sha256$216000$O3gODHDooaZ5$/FnWNQePReUQhfIA7x0ScCJCPNJGKlKJ75BjYcsH9QA=', 'davila', 'ENGANDZI', 'iai', '077073306', NULL, NULL, 'M', '2021-02-04 17:34:30.123848', 5, NULL, 1, 1, 1, 0, 0, NULL),
(18, 'destinmoutekdg@gmail.com', 'pbkdf2_sha256$216000$z9ZySznDuMnM$xMUDqG3z0M9ezDiGUvNo+lPKxm9KwoMUzYCK1YOH4HE=', 'Destiné Jovedy', 'MOUTEKE', 'IAI', '077073319', NULL, NULL, 'M', '2021-06-16 12:44:54.655755', 1, NULL, 1, 1, 1, 0, 0, NULL),
(19, 'farel@gmail.com', 'pbkdf2_sha256$216000$Yq9f94YNdhxk$6c+iQ6Tdg/LnkYH0gzmPAuY+pw23u713yCQQqjqYQQU=', 'Farel', 'MABIALA', 'Campus IAI', '076873456', NULL, NULL, 'M', '2021-06-18 14:15:06.672732', 3, NULL, 1, 1, 1, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Ville`
--

CREATE TABLE `Ville` (
  `id` int(11) NOT NULL,
  `nom_ville` varchar(40) NOT NULL,
  `isOn` tinyint(1) NOT NULL,
  `pays_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Ville`
--

INSERT INTO `Ville` (`id`, `nom_ville`, `isOn`, `pays_id`) VALUES
(1, 'Libreville', 1, 1),
(2, 'Brazzaville', 1, 3),
(3, 'Yaoundé', 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Accueil`
--
ALTER TABLE `Accueil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Article`
--
ALTER TABLE `Article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Article_sous_categorie_id_91bd6d21_fk_Sous_categorie_id` (`sous_categorie_id`);

--
-- Indexes for table `Article_commande`
--
ALTER TABLE `Article_commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Article_commande_article_id_278987e2_fk_Article_id` (`article_id`),
  ADD KEY `Article_commande_commande_id_3b60af54_fk_Order_id` (`commande_id`);

--
-- Indexes for table `Article_couleur`
--
ALTER TABLE `Article_couleur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Article_fournisseur`
--
ALTER TABLE `Article_fournisseur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Article_fournisseur_article_id_2f50c4fe_fk_Article_id` (`article_id`),
  ADD KEY `Article_fournisseur_fournisseur_id_295f73c7_fk_User_id` (`fournisseur_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `Categorie`
--
ALTER TABLE `Categorie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Categorie_famille_id_b1e87a19_fk_Famille_id` (`famille_id`);

--
-- Indexes for table `Compagne_promo`
--
ALTER TABLE `Compagne_promo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Compagne_promo_promo_id_31f9473d_fk_Promotion_article_id` (`promo_id`),
  ADD KEY `Compagne_promo_user_id_603ac0d6_fk_User_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `Facture`
--
ALTER TABLE `Facture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Facture_commande_id_532a8290_fk_Order_id` (`commande_id`);

--
-- Indexes for table `Famille`
--
ALTER TABLE `Famille`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Image`
--
ALTER TABLE `Image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Image_article_id_055d442c_fk_Article_id` (`article_id`);

--
-- Indexes for table `LivraisonInfo`
--
ALTER TABLE `LivraisonInfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `LivraisonInfo_client_id_dae28423_fk_User_id` (`client_id`),
  ADD KEY `LivraisonInfo_commande_id_eed1e6ca_fk_Order_id` (`commande_id`);

--
-- Indexes for table `Livreur_livraison`
--
ALTER TABLE `Livreur_livraison`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Livreur_livraison_livraison_id_901a3411_fk_LivraisonInfo_id` (`livraison_id`),
  ADD KEY `Livreur_livraison_livreur_id_29a5e3a2_fk_User_id` (`livreur_id`);

--
-- Indexes for table `Notation`
--
ALTER TABLE `Notation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Notation_article_id_5d6c7027_fk_Article_id` (`article_id`),
  ADD KEY `Notation_client_id_f2d8e909_fk_User_id` (`client_id`);

--
-- Indexes for table `Option_paremetre`
--
ALTER TABLE `Option_paremetre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Option_paremetre_article_id_8570046b_fk_Article_id` (`article_id`);

--
-- Indexes for table `Order`
--
ALTER TABLE `Order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Order_custumer_id_ba4faaad_fk_User_id` (`custumer_id`);

--
-- Indexes for table `Parametre_article`
--
ALTER TABLE `Parametre_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Parametre_article_article_id_51f51339_fk_Article_id` (`article_id`);

--
-- Indexes for table `Parametre_base`
--
ALTER TABLE `Parametre_base`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Parametre_liste`
--
ALTER TABLE `Parametre_liste`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Parametre_liste_pb_base_id_65fa62cf_fk_Parametre_base_id` (`pb_base_id`);

--
-- Indexes for table `Pays`
--
ALTER TABLE `Pays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Promotion_article`
--
ALTER TABLE `Promotion_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Promotion_article_article_id_db48d0f9_fk_Article_id` (`article_id`);

--
-- Indexes for table `Reglement_commande`
--
ALTER TABLE `Reglement_commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Reglement_commande_commande_id_1ccf4b93_fk_Order_id` (`commande_id`);

--
-- Indexes for table `Retour_commande`
--
ALTER TABLE `Retour_commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Retour_commande_commande_id_cd4a3a10_fk_Order_id` (`commande_id`);

--
-- Indexes for table `Sous_categorie`
--
ALTER TABLE `Sous_categorie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Sous_categorie_categorie_id_dea95c01_fk_Categorie_id` (`categorie_id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_email_667201b5_uniq` (`email`),
  ADD KEY `User_pays_id_e0ab4480_fk_Pays_id` (`pays_id`),
  ADD KEY `User_ville_id_3c2817b3_fk_Ville_id` (`ville_id`);

--
-- Indexes for table `Ville`
--
ALTER TABLE `Ville`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Ville_pays_id_618cd47e_fk_Pays_id` (`pays_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Accueil`
--
ALTER TABLE `Accueil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `Article`
--
ALTER TABLE `Article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `Article_commande`
--
ALTER TABLE `Article_commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `Article_couleur`
--
ALTER TABLE `Article_couleur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Article_fournisseur`
--
ALTER TABLE `Article_fournisseur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Categorie`
--
ALTER TABLE `Categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Compagne_promo`
--
ALTER TABLE `Compagne_promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Facture`
--
ALTER TABLE `Facture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Famille`
--
ALTER TABLE `Famille`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Image`
--
ALTER TABLE `Image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `LivraisonInfo`
--
ALTER TABLE `LivraisonInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `Livreur_livraison`
--
ALTER TABLE `Livreur_livraison`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Notation`
--
ALTER TABLE `Notation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Option_paremetre`
--
ALTER TABLE `Option_paremetre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `Order`
--
ALTER TABLE `Order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `Parametre_article`
--
ALTER TABLE `Parametre_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `Parametre_base`
--
ALTER TABLE `Parametre_base`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Parametre_liste`
--
ALTER TABLE `Parametre_liste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Pays`
--
ALTER TABLE `Pays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Promotion_article`
--
ALTER TABLE `Promotion_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Reglement_commande`
--
ALTER TABLE `Reglement_commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Retour_commande`
--
ALTER TABLE `Retour_commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Sous_categorie`
--
ALTER TABLE `Sous_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `Ville`
--
ALTER TABLE `Ville`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Article`
--
ALTER TABLE `Article`
  ADD CONSTRAINT `Article_sous_categorie_id_91bd6d21_fk_Sous_categorie_id` FOREIGN KEY (`sous_categorie_id`) REFERENCES `Sous_categorie` (`id`);

--
-- Constraints for table `Article_commande`
--
ALTER TABLE `Article_commande`
  ADD CONSTRAINT `Article_commande_article_id_278987e2_fk_Article_id` FOREIGN KEY (`article_id`) REFERENCES `Article` (`id`),
  ADD CONSTRAINT `Article_commande_commande_id_3b60af54_fk_Order_id` FOREIGN KEY (`commande_id`) REFERENCES `Order` (`id`);

--
-- Constraints for table `Article_fournisseur`
--
ALTER TABLE `Article_fournisseur`
  ADD CONSTRAINT `Article_fournisseur_article_id_2f50c4fe_fk_Article_id` FOREIGN KEY (`article_id`) REFERENCES `Article` (`id`),
  ADD CONSTRAINT `Article_fournisseur_fournisseur_id_295f73c7_fk_User_id` FOREIGN KEY (`fournisseur_id`) REFERENCES `User` (`id`);

-- Constraints for table `Categorie`
--
ALTER TABLE `Categorie`
  ADD CONSTRAINT `Categorie_famille_id_b1e87a19_fk_Famille_id` FOREIGN KEY (`famille_id`) REFERENCES `Famille` (`id`);

--
-- Constraints for table `Compagne_promo`
--
ALTER TABLE `Compagne_promo`
  ADD CONSTRAINT `Compagne_promo_promo_id_31f9473d_fk_Promotion_article_id` FOREIGN KEY (`promo_id`) REFERENCES `Promotion_article` (`id`),
  ADD CONSTRAINT `Compagne_promo_user_id_603ac0d6_fk_User_id` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`);

--
-- Constraints for table `Facture`
--
ALTER TABLE `Facture`
  ADD CONSTRAINT `Facture_commande_id_532a8290_fk_Order_id` FOREIGN KEY (`commande_id`) REFERENCES `Order` (`id`);

--
-- Constraints for table `Image`
--
ALTER TABLE `Image`
  ADD CONSTRAINT `Image_article_id_055d442c_fk_Article_id` FOREIGN KEY (`article_id`) REFERENCES `Article` (`id`);

--
-- Constraints for table `LivraisonInfo`
--
ALTER TABLE `LivraisonInfo`
  ADD CONSTRAINT `LivraisonInfo_client_id_dae28423_fk_User_id` FOREIGN KEY (`client_id`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `LivraisonInfo_commande_id_eed1e6ca_fk_Order_id` FOREIGN KEY (`commande_id`) REFERENCES `Order` (`id`);

--
-- Constraints for table `Livreur_livraison`
--
ALTER TABLE `Livreur_livraison`
  ADD CONSTRAINT `Livreur_livraison_livraison_id_901a3411_fk_LivraisonInfo_id` FOREIGN KEY (`livraison_id`) REFERENCES `LivraisonInfo` (`id`),
  ADD CONSTRAINT `Livreur_livraison_livreur_id_29a5e3a2_fk_User_id` FOREIGN KEY (`livreur_id`) REFERENCES `User` (`id`);

--
-- Constraints for table `Notation`
--
ALTER TABLE `Notation`
  ADD CONSTRAINT `Notation_article_id_5d6c7027_fk_Article_id` FOREIGN KEY (`article_id`) REFERENCES `Article` (`id`),
  ADD CONSTRAINT `Notation_client_id_f2d8e909_fk_User_id` FOREIGN KEY (`client_id`) REFERENCES `User` (`id`);

--
-- Constraints for table `Option_paremetre`
--
ALTER TABLE `Option_paremetre`
  ADD CONSTRAINT `Option_paremetre_article_id_8570046b_fk_Article_id` FOREIGN KEY (`article_id`) REFERENCES `Article` (`id`);

--
-- Constraints for table `Order`
--
ALTER TABLE `Order`
  ADD CONSTRAINT `Order_custumer_id_ba4faaad_fk_User_id` FOREIGN KEY (`custumer_id`) REFERENCES `User` (`id`);

--
-- Constraints for table `Parametre_article`
--
ALTER TABLE `Parametre_article`
  ADD CONSTRAINT `Parametre_article_article_id_51f51339_fk_Article_id` FOREIGN KEY (`article_id`) REFERENCES `Article` (`id`);

--
-- Constraints for table `Parametre_liste`
--
ALTER TABLE `Parametre_liste`
  ADD CONSTRAINT `Parametre_liste_pb_base_id_65fa62cf_fk_Parametre_base_id` FOREIGN KEY (`pb_base_id`) REFERENCES `Parametre_base` (`id`);

--
-- Constraints for table `Promotion_article`
--
ALTER TABLE `Promotion_article`
  ADD CONSTRAINT `Promotion_article_article_id_db48d0f9_fk_Article_id` FOREIGN KEY (`article_id`) REFERENCES `Article` (`id`);

--
-- Constraints for table `Reglement_commande`
--
ALTER TABLE `Reglement_commande`
  ADD CONSTRAINT `Reglement_commande_commande_id_1ccf4b93_fk_Order_id` FOREIGN KEY (`commande_id`) REFERENCES `Order` (`id`);

--
-- Constraints for table `Retour_commande`
--
ALTER TABLE `Retour_commande`
  ADD CONSTRAINT `Retour_commande_commande_id_cd4a3a10_fk_Order_id` FOREIGN KEY (`commande_id`) REFERENCES `Order` (`id`);

--
-- Constraints for table `Sous_categorie`
--
ALTER TABLE `Sous_categorie`
  ADD CONSTRAINT `Sous_categorie_categorie_id_dea95c01_fk_Categorie_id` FOREIGN KEY (`categorie_id`) REFERENCES `Categorie` (`id`);

--
-- Constraints for table `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `User_pays_id_e0ab4480_fk_Pays_id` FOREIGN KEY (`pays_id`) REFERENCES `Pays` (`id`),
  ADD CONSTRAINT `User_ville_id_3c2817b3_fk_Ville_id` FOREIGN KEY (`ville_id`) REFERENCES `Ville` (`id`);

-- Constraints for table `Ville`
--
ALTER TABLE `Ville`
  ADD CONSTRAINT `Ville_pays_id_618cd47e_fk_Pays_id` FOREIGN KEY (`pays_id`) REFERENCES `Pays` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
