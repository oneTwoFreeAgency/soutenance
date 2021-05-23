-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 17 mai 2021 à 15:32
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `onetwofree`
--

-- --------------------------------------------------------

--
-- Structure de la table `brief`
--

CREATE TABLE `brief` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entreprise` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(1048) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `brief`
--

INSERT INTO `brief` (`id`, `nom`, `prenom`, `entreprise`, `telephone`, `email`, `message`) VALUES
(1, 'bob', 'the bob', 'ma petite', '06754815', 'bob@bob.com', 'mon brief');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entreprise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(1048) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `nom`, `prenom`, `entreprise`, `email`, `message`) VALUES
(1, 'toto', 'toto', '', 'toto@email.com', 'bonjour'),
(2, 'toto', 'toto', '', 'toto@email.com', 'bonjour'),
(3, 'toto', 'toto', '', 'toto@email.com', 'bonjour'),
(4, 'toto', 'toto', '', 'toto@email.com', 'bonjour'),
(5, 'toto', 'toto', '', 'toto@email.com', 'bonjour'),
(6, 'toto', 'toto', '', 'toto@email.com', 'bonjour'),
(7, 'toto', 'toto', '', 'toto@email.com', 'bonjour'),
(8, 'toto', 'toto', 'ma petite', 'toto@email.com', 'hello'),
(9, 'toto', 'toto', NULL, 'toto@email.com', 'salut'),
(10, NULL, NULL, NULL, 'toto@email.com', 'salut'),
(11, NULL, NULL, NULL, 'bob@email.com', 'salut'),
(12, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut'),
(13, NULL, NULL, NULL, 'toto@email.com', 'sggdgg'),
(14, NULL, NULL, NULL, 'toto@email.com', 'sggdgg'),
(15, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut'),
(16, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut'),
(17, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut'),
(18, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut'),
(19, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut'),
(20, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut'),
(21, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut'),
(22, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut'),
(23, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut'),
(24, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut'),
(25, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut'),
(26, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut'),
(27, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello'),
(28, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello'),
(29, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello'),
(30, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello'),
(31, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello'),
(32, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello'),
(33, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello'),
(34, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello'),
(35, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello'),
(36, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello');

-- --------------------------------------------------------

--
-- Structure de la table `devis`
--

CREATE TABLE `devis` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entreprise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(1048) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `devis`
--

INSERT INTO `devis` (`id`, `nom`, `prenom`, `entreprise`, `telephone`, `email`, `adresse`, `service`, `message`) VALUES
(1, 'bob', 'the bob', 'ma petite', '06255656', 'bob@bob.com', '25 rue ketanou 75018 Paris', 'un bô site', 'pas chère');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210513162030', '2021-05-13 16:20:51', 44),
('DoctrineMigrations\\Version20210517125905', '2021-05-17 12:59:26', 47),
('DoctrineMigrations\\Version20210517134043', '2021-05-17 13:41:03', 39);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `brief`
--
ALTER TABLE `brief`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `devis`
--
ALTER TABLE `devis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `brief`
--
ALTER TABLE `brief`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `devis`
--
ALTER TABLE `devis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
