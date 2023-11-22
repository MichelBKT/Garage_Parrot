-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 22 nov. 2023 à 13:52
-- Version du serveur : 8.0.30
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `parrot_garage`
--

-- --------------------------------------------------------

--
-- Structure de la table `advert`
--

CREATE TABLE `advert` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `ct_ok` tinyint(1) NOT NULL,
  `km` int NOT NULL,
  `manual_gear` tinyint(1) NOT NULL,
  `doors_5` tinyint(1) NOT NULL,
  `fiscal_power` int NOT NULL,
  `co2_emission` int NOT NULL,
  `user_id` int NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `advert`
--

INSERT INTO `advert` (`id`, `title`, `price`, `created_at`, `ct_ok`, `km`, `manual_gear`, `doors_5`, `fiscal_power`, `co2_emission`, `user_id`, `image_name`, `image_size`, `updated_at`) VALUES
(1, 'OPEL ASTRA 2019 ESSENCE 125CH', 15000, '2023-11-15 17:30:15', 1, 27500, 1, 1, 5, 102, 1, 'astra-655528632484c665627717.jpg', 34471, '2023-11-15 20:21:55'),
(2, 'ALFA ROMEO GIULIA 2020 ESSENCE 150CH', 17990, '2023-11-15 20:20:09', 1, 49800, 1, 1, 9, 107, 1, 'alfa-giulia-655527fa15955154111126.jpg', 35812, '2023-11-15 20:20:10'),
(3, 'SEAT IBIZA IV 1.4 TDI 80 CH DIESEL', 6490, '2023-11-17 00:00:00', 1, 82454, 1, 0, 4, 150, 1, 'ibiza-655747e0ba75c601258807.webp', 47177, '2023-11-17 11:00:48'),
(4, 'OPEL CORSA 1.3 CDCI 2012 95CH DIESEL', 4790, '2023-11-17 00:00:00', 1, 149874, 1, 0, 4, 168, 1, 'corsa-6557485ebaa24682878435.webp', 38213, '2023-11-17 11:02:54'),
(5, 'RENAULT CAPTUR 1.3 2019 TCE 140 CH ESSENCE', 27900, '2023-11-17 00:00:00', 1, 10, 0, 1, 5, 107, 1, 'captur-655748853624d856279430.webp', 28841, '2023-11-17 11:03:33'),
(6, 'FORD FOCUS ST LINE 1.0 2018 ECOBOOST 125 CH ESSENCE', 20990, '2023-11-17 00:00:00', 1, 72635, 1, 1, 5, 117, 1, 'focus-655748adb35eb937267106.webp', 267809, '2023-11-17 11:04:13'),
(7, 'VOLKSWAGEN POLO VI 2018 R-LINE 1.0 TSI 110 CH ESSENCE', 23990, '2023-11-17 00:00:00', 1, 22146, 0, 1, 6, 134, 1, 'polo-2-655748df4dd95710362901.webp', 89695, '2023-11-17 11:05:03'),
(8, 'OPEL GRANDLAND X 1.2 131 CH 2020 INNOVATION BUSINESS ESSENCE', 21950, '2023-11-17 00:00:00', 1, 23001, 1, 1, 7, 117, 1, 'grandland-655749247a5ae735307353.webp', 33877, '2023-11-17 11:06:12'),
(9, 'BMW SERIE 3 F80 M3 phase 2 2020 3.0 431 CH', 59990, '2023-11-17 00:00:00', 1, 44500, 0, 1, 32, 194, 1, 'bmw-m3-655749536b9e3114401245.webp', 23247, '2023-11-17 11:06:59'),
(10, 'NISSAN QASHQAI 1.6 DCI 2020 130 CH DIESEL', 17900, '2023-11-17 00:00:00', 1, 38944, 0, 1, 7, 87, 1, 'nissan-qashqai-6557497185a12338216530.webp', 80280, '2023-11-17 11:07:29'),
(11, 'AUDI A3 S-LINE SPORTBACK 2020 2.0 150 CH DIESEL', 39990, '2023-11-17 00:00:00', 1, 9915, 0, 1, 8, 127, 1, 'audi-a3-655749be620e4504751835.webp', 56405, '2023-11-17 11:08:46'),
(12, 'CITROEN C4 AIRCROSS 2021 1.6 HDI 114 CH DIESEL', 14990, '2023-11-17 00:00:00', 1, 53650, 1, 1, 6, 119, 1, 'c4-655749d7e5b77797285125.webp', 36135, '2023-11-17 11:09:11'),
(13, 'NISSAN JUKE PHASE 2 1.6 DIG-T 2021 218 CH ESSENCE', 14990, '2023-11-17 00:00:00', 1, 82758, 1, 1, 13, 168, 1, 'juke-655749ef7ed98541202098.webp', 46303, '2023-11-17 11:09:35'),
(14, 'MINI COOPER III 1.5 2018 116 CH ESSENCE', 12900, '2023-11-17 00:00:00', 1, 127549, 1, 1, 5, 95, 1, 'mini-cooper-65574a0cef3f6192315424.webp', 38582, '2023-11-17 11:10:04'),
(15, 'PEUGEOT 3008 II 1.2 PURETECH 2022 130 ESSENCE', 16490, '2023-11-17 00:00:00', 1, 21550, 1, 1, 7, 105, 1, 'peugeot3008-65574f8cf3636320626948.jpg', 33848, '2023-11-17 11:33:33'),
(16, 'DS4 PHASE 2 1.6 2017 BLUEHDI 120 CH DIESEL', 12990, '2023-11-17 00:00:00', 1, 145024, 0, 1, 6, 105, 1, 'ds4-65574a60f3a98644634750.webp', 38629, '2023-11-17 11:11:29'),
(17, 'FIAT 500 ABARTH II 1.4 2020 179 CH ESSENCE', 24990, '2023-11-17 00:00:00', 1, 54251, 0, 0, 8, 151, 1, 'fiat500-65574a7687bb3706527716.webp', 37328, '2023-11-17 11:11:50'),
(18, 'PORSCHE CAYENNE III 3.0 V6 2019 340 CH ESSENCE', 58490, '2023-11-17 00:00:00', 1, 98745, 1, 1, 23, 205, 1, 'cayenne-65574a8c0d366379526717.webp', 38405, '2023-11-17 11:12:12'),
(19, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(20, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(21, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(22, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(23, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(24, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(25, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(26, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(27, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(28, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(29, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(30, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(31, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(32, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(33, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(34, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(35, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(36, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(37, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(38, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(39, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(40, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(41, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL),
(42, 'LOREM IPSUM DOLOR SIT AMET CONSECTETUR ELITE', 7890, '2023-11-14 00:00:00', 0, 75423, 1, 1, 7, 150, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int NOT NULL,
  `designation` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` int NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_online` tinyint(1) NOT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `designation`, `rate`, `nickname`, `is_online`, `user_id`) VALUES
(1, '<div>Garage au top!</div>', 5, 'Michel B.', 1, 1),
(2, '<div>J\'ai trouvé le garage vieillo personnel horrible</div>', 2, 'Laura G.', 1, 1),
(4, '<div>qsdsvbdf</div>', 1, 'qcsn', 0, 1),
(5, '<div>ZERO ma voiture est à la casse à cause de vous</div>', 1, 'Holligan', 1, 1),
(6, '<div>Très bon garage, accueil sympathique et chaleureux. Je recommande vivement !</div>', 5, 'Peace & Love', 1, 1),
(8, '<div>Satisfaite du service de prêt de véhicule proposé, qui m\'a permis de regagner mon domicile après mon accident sur la route pour le travail. Personnel sympathique et compétent.</div>', 4, 'Françoise K', 1, 1),
(9, '<div>mouais bof</div>', 3, 'mickey', 1, 1),
(10, '<div>Garage bien bien</div>', 3, 'Happyman', 1, 1),
(11, '<div>tip top</div>', 5, 'Bob', 1, 1),
(12, 'Trop content', 4, 'Big bisous', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_reading` tinyint(1) NOT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `last_name`, `first_name`, `email`, `object`, `subject`, `is_reading`, `user_id`) VALUES
(5, 'test1', 'test2', 'test3@test.com', 'test4', 'test5', 1, 1),
(7, 'Machine', 'Micheline', 'micheline.machine@test.com', 'demande de rdv', 'test', 0, NULL),
(8, 'Bidule', 'Alain', 'alain.bidule@test.com', 'perso', 'Ma femme quitte le travail à quelle heure?', 0, NULL),
(18, 'Machin', 'Alain', 'alain.machin@test.com', 'dde de rdv', 'Bonjour,\r\nEst-il possible d\'avoir un rdv pour acheter une voiture.\r\nMerci', 0, NULL),
(19, 'test', 'test', 'alain.bidule@test.com', 'FORD FOCUS ST LINE 1.0 2018 ECOBOOST 125 CH ESSENCE', 'erezte', 0, NULL),
(20, 'Gio', 'Laura', 'laura.gioielli@hotmail.fr', 'demande de rendez-vous', 'Bonjour, je souhaiterais un rendez-vous pour effectuer la révision de mon véhicule.', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20231115001619', '2023-11-15 00:16:32', 455),
('DoctrineMigrations\\Version20231115013508', '2023-11-15 01:35:27', 28),
('DoctrineMigrations\\Version20231115014128', '2023-11-15 01:41:38', 152),
('DoctrineMigrations\\Version20231115105454', '2023-11-15 10:55:02', 164),
('DoctrineMigrations\\Version20231115110443', '2023-11-15 11:04:53', 103),
('DoctrineMigrations\\Version20231115115031', '2023-11-15 11:50:55', 45),
('DoctrineMigrations\\Version20231115115502', '2023-11-15 11:55:08', 117),
('DoctrineMigrations\\Version20231115115538', '2023-11-15 11:55:45', 29),
('DoctrineMigrations\\Version20231115122617', '2023-11-15 12:26:25', 206),
('DoctrineMigrations\\Version20231115122825', '2023-11-15 12:28:35', 105),
('DoctrineMigrations\\Version20231115123121', '2023-11-15 12:31:31', 33),
('DoctrineMigrations\\Version20231115123949', '2023-11-15 12:39:56', 93),
('DoctrineMigrations\\Version20231115183024', '2023-11-15 18:30:36', 88),
('DoctrineMigrations\\Version20231116145553', '2023-11-16 14:56:08', 110),
('DoctrineMigrations\\Version20231116160650', '2023-11-16 16:06:58', 109),
('DoctrineMigrations\\Version20231117150403', '2023-11-17 15:04:11', 123),
('DoctrineMigrations\\Version20231117223411', '2023-11-17 22:34:18', 96),
('DoctrineMigrations\\Version20231118115813', '2023-11-18 11:58:31', 101);

-- --------------------------------------------------------

--
-- Structure de la table `maintenance`
--

CREATE TABLE `maintenance` (
  `id` int NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `maintenance`
--

INSERT INTO `maintenance` (`id`, `designation`, `user_id`) VALUES
(2, 'Courroie de distribution', 1),
(3, 'Courroie d\'alternateur', 1),
(4, 'Embrayage', 1),
(5, 'Vanne EGR', 1),
(6, 'Régénération du FAP', 1),
(7, 'Remplacement des pneumatiques', 1),
(8, 'Contrôle et réglage géométrie', 1),
(9, 'Vidange', 1);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `id` int NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`id`, `designation`, `user_id`) VALUES
(2, 'Remplacement de l\'huile moteur', 1),
(3, 'Remplacement des filtres', 1),
(4, 'Contrôle de la batterie', 1),
(5, 'Inspections générales (pneus, pot d\'échappement, carrosserie...)', 1),
(6, 'Inspection technique freins, moteur, châssis', 1),
(7, 'Inspection technique éclairage et électronique', 1),
(8, 'Remplacement du liquide de freins', 1),
(9, 'Véhicule de courtoisie en cas de panne', 1);

-- --------------------------------------------------------

--
-- Structure de la table `timetable`
--

CREATE TABLE `timetable` (
  `id` int NOT NULL,
  `day_week` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `timetable`
--

INSERT INTO `timetable` (`id`, `day_week`, `time`, `user_id`) VALUES
(8, 'Lundi', '08:45-12:45 // 14:00-18:00', 1),
(9, 'Mardi', '08:45-12:45 // 14:00-18:00', 1),
(10, 'Mercredi', '08:45-12:45 // 14:00-18:00', 1),
(11, 'Jeudi', '08:45-12:45 // 14:00-18:00', 1),
(12, 'Vendredi', '08:45-12:45 // 14:00-18:00', 1),
(13, 'Samedi', '09:00-18:00 NON STOP', 1),
(14, 'Dimanche', 'Fermé', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `workplace_id` int NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `workplace_id`, `email`, `roles`, `password`, `first_name`, `last_name`) VALUES
(1, 1, 'vparrot@parrot.fr', '[\"ROLE_ADMIN\"]', '$2y$13$hlg3lvqrXSoNmdGpSqZ.luuyNVSzemspNOAKOVoUXyiNUYhJAkXs.', 'Vincent', 'PARROT'),
(3, 3, 'jtruc@parrot.fr', '[]', '$2y$13$IyfIYTG5x2khKHT0QSGKR.Z6wiIm5ha7/aZ1j9N3e.bZuyna7L/RS', 'José', 'TRUC'),
(4, 4, 'fbidule@parrot.fr', '[]', '$2y$13$W.GETiVlta2cy/qcQgF9QuMlRYOy86wCiq5halpPMmfFq/uB44i/S', 'Fanny', 'BIDULE'),
(5, 5, 'dtaule@parrot.fr', '[]', '$2y$13$T3w9wkxe6Ly9ZhvrS45xn.wk/Medo9i4qWU28N97CCuYW2ZiWJTM6', 'Denis', 'TAULE'),
(6, 6, 'lpiston@parrot.fr', '[]', '$2y$13$uIdWh17syxKuHl9vsF67TOPbwOUccucQFjDfXSHeFf3tZeRCq8pF2', 'Luc', 'PISTON');

-- --------------------------------------------------------

--
-- Structure de la table `workplace`
--

CREATE TABLE `workplace` (
  `id` int NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `workplace`
--

INSERT INTO `workplace` (`id`, `designation`) VALUES
(1, 'Gérant'),
(3, 'Vendeur expérimenté'),
(4, 'Secrétaire'),
(5, 'Carrossier'),
(6, 'Mécanicien');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `advert`
--
ALTER TABLE `advert`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_54F1F40BA76ED395` (`user_id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526CA76ED395` (`user_id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4C62E638A76ED395` (`user_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2F84F8E9A76ED395` (`user_id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E19D9AD2A76ED395` (`user_id`);

--
-- Index pour la table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6B1F670A76ED395` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  ADD KEY `IDX_8D93D649AC25FB46` (`workplace_id`);

--
-- Index pour la table `workplace`
--
ALTER TABLE `workplace`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `advert`
--
ALTER TABLE `advert`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `workplace`
--
ALTER TABLE `workplace`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `advert`
--
ALTER TABLE `advert`
  ADD CONSTRAINT `FK_54F1F40BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `FK_4C62E638A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `maintenance`
--
ALTER TABLE `maintenance`
  ADD CONSTRAINT `FK_2F84F8E9A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `FK_E19D9AD2A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `timetable`
--
ALTER TABLE `timetable`
  ADD CONSTRAINT `FK_6B1F670A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649AC25FB46` FOREIGN KEY (`workplace_id`) REFERENCES `workplace` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
