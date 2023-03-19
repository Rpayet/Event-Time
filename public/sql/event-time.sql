-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 19 mars 2023 à 22:28
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `event-time`
--

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
('DoctrineMigrations\\Version20230318155154', '2023-03-18 15:52:10', 29),
('DoctrineMigrations\\Version20230318180942', '2023-03-18 18:10:15', 23);

-- --------------------------------------------------------

--
-- Structure de la table `event`
--

CREATE TABLE `event` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `published_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `event`
--

INSERT INTO `event` (`id`, `name`, `description`, `price`, `published_at`, `date_start`, `date_end`, `picture`) VALUES
(42, 'Wild electronic soul', 'Ea est ipsa cupiditate.', 11, '2023-03-18 21:51:28', '2023-03-19 21:51:28', '2023-03-21 21:51:28', 'picture1.jpg'),
(43, 'Epic pop groove', 'Odit ut illo id magnam.', 39, '2023-03-18 21:51:28', '2023-03-19 21:51:28', '2023-03-21 21:51:28', 'picture2.jpg'),
(44, 'Funky pop star', 'Sit et dolor quidem non.', 36, '2023-03-18 21:51:28', '2023-03-19 21:51:28', '2023-03-21 21:51:28', 'picture3.jpg'),
(45, 'Wild hip hop star', 'Vero culpa velit qui.', 42, '2023-03-18 21:51:28', '2023-03-19 21:51:28', '2023-03-21 21:51:28', 'picture4.jpg'),
(46, 'Epic country soul', 'Enim sed eos ut non.', 20, '2023-03-18 21:51:28', '2023-03-19 21:51:28', '2023-03-21 21:51:28', 'picture5.jpg'),
(47, 'Electric electronic soul', 'Non voluptates animi et.', 31, '2023-03-18 21:51:28', '2023-03-19 21:51:28', '2023-03-21 21:51:28', 'picture6.jpg'),
(48, 'Wild electronic groove', 'Eaque itaque ut saepe.', 48, '2023-03-18 21:51:28', '2023-03-19 21:51:28', '2023-03-21 21:51:28', 'picture7.jpg'),
(49, 'Electric pop star', 'Aut et itaque nesciunt.', 15, '2023-03-18 21:51:28', '2023-03-19 21:51:28', '2023-03-21 21:51:28', 'picture8.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `event`
--
ALTER TABLE `event`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
