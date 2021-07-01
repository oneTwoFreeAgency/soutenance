-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 26 mai 2021 à 15:46
-- Version du serveur :  5.7.18
-- Version de PHP : 7.4.19

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
CREATE DATABASE IF NOT EXISTS `onetwofree` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `onetwofree`;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `username`, `roles`, `password`) VALUES
(1, 'admin', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$UC9UOUE5OFhlV0VMUFlOQw$FZ0W+OkI5/BC1wH4f1PqETs7GHOinuKwu/QBw6PFSGk');

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
  `message` varchar(1048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `brief`
--

INSERT INTO `brief` (`id`, `nom`, `prenom`, `entreprise`, `telephone`, `email`, `message`, `document`) VALUES
(1, 'bob', 'the bob', 'ma petite', '06754815', 'bob@bob.com', 'mon brief', ''),
(2, 'The Bob', 'Bob', 'dsgdsgsg', '025465456', 'bob@bob.com', 'salut', '');

-- --------------------------------------------------------

--
-- Structure de la table `candidats`
--

CREATE TABLE `candidats` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(1048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `concours`
--

CREATE TABLE `concours` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(1048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `concours`
--

INSERT INTO `concours` (`id`, `nom`, `prenom`, `email`, `message`, `document`) VALUES
(1, 'qsdf', 'regis', 'regis.leloup@colombbus.org', 'wesh, t\'as', ''),
(2, 'le', 'loup', 'regis.leloup@10mentionweb.org', 'wesh wehs', ''),
(3, 'le', 'loup', 'regis.leloup@10mentionweb.org', 'wesh wehs', ''),
(4, 'p', 'php', 'philippe.mariou@colombbus.org', 'hi !', ''),
(5, 'leloup', 'régis', 'regis.leloup@10mentionweb.org', 'bonjour je voudrais m\'inscrire', 'unnamed-60acae9595ad2933010270.jpg'),
(6, 'dfgfghdfg', 'fdhfdhfdh', 'regis.leloup@colombbus.org', 'fhdfhdfhdfh', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entreprise` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(1048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `nom`, `prenom`, `entreprise`, `email`, `message`, `document`) VALUES
(2, 'toto', 'toto', 'ma petite', 'toto@email.com', 'bonjour', ''),
(3, 'toto', 'toto', 'ma petite', 'toto@email.com', 'bonjour', ''),
(4, 'toto', 'toto', 'ma petite', 'toto@email.com', 'bonjour', ''),
(5, 'toto', 'toto', 'ma petite', 'toto@email.com', 'bonjour', ''),
(6, 'toto', 'toto', 'ma petite', 'toto@email.com', 'bonjour', ''),
(7, 'toto', 'toto', 'ma petite', 'toto@email.com', 'bonjour', ''),
(8, 'toto', 'toto', 'ma petite', 'toto@email.com', 'hello', ''),
(9, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut', ''),
(10, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut', ''),
(11, 'toto', 'toto', 'ma petite', 'bob@email.com', 'salut', ''),
(12, 'toto', 'totototo', 'ma petite', 'toto@email.com', 'salut', ''),
(13, 'toto', 'toto', 'ma petite', 'toto@email.com', 'sggdgg', ''),
(14, 'toto', 'toto', 'ma petite', 'toto@email.com', 'sggdgg', ''),
(15, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut', ''),
(16, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut', ''),
(17, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut', ''),
(18, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut', ''),
(19, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut', ''),
(20, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut', ''),
(21, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut', ''),
(22, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut', ''),
(23, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut', ''),
(24, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut', ''),
(25, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut', ''),
(26, 'toto', 'toto', 'ma petite', 'toto@email.com', 'salut', ''),
(27, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello', ''),
(28, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello', ''),
(29, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello', ''),
(30, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello', ''),
(31, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello', ''),
(32, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello', ''),
(33, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello', ''),
(34, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello', ''),
(35, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello', ''),
(36, 'bob', 'the bob', 'ma petite', 'bob@email.com', 'hello', ''),
(54, 'phil', 'phil', 'sfqsfsq', 'phil@phil.com', 'sfqsfqsfqs', ''),
(55, 'phil', 'phil', 'phil inc', 'phil@phil.com', 'Salut', ''),
(56, 'Doe', 'john', 'Doe inc', 'john.doe@doe.com', 'Hello!', ''),
(57, 'Doe', 'john', 'Doe inc', 'john.doe@doe.com', 'Hello!', ''),
(58, 'Doe', 'john', 'Doe inc', 'john.doe@doe.com', 'Hello!', ''),
(59, 'Doe', 'john', 'Doe inc', 'john.doe@doe.com', 'Hello!', ''),
(60, 'Doe', 'john', 'Doe inc', 'john.doe@doe.com', 'Hello!', ''),
(61, 'ça marche !', 'dsgdsgsd', 'dsgsgs', 'dsgsdgsd@sdfds.com', 'dsgg', ''),
(62, 'hfdhhdfh', 'dfhdfhdhdf', 'fdhfdhdfhdf', 'regis.leloup@10mention.web', 'sdgdsgsdgdsg', 'screenshot-2020-12-15-morpion-3-60acb4ead6e6d588846032.png'),
(63, 'dsvdssdv', 'sdbsdbsdb', 'sbsdbsdb', 'regis.leloup@10mention.web', 'dfbdbdfbfdbfdbfdbbf', 'la-team-terrage-60acbacdac406585102797.pdf'),
(64, 'dsvdssdv', 'sdbsdbsdb', 'sbsdbsdb', 'regis.leloup@10mention.web', 'dfbdbdfbfdbfdbfdbbf', 'la-team-terrage-60acbd255e57b928614048.pdf'),
(65, 'dsvdssdv', 'sdbsdbsdb', 'sbsdbsdb', 'regis.leloup@10mention.web', 'dfbdbdfbfdbfdbfdbbf', 'unnamed-60acbd3c3826a209039213.jpg'),
(66, 'dsgsdg', 'dfhgnjgsfn', 'ngfngfnsgngfn', 'regis.leloup@10mention.web', 'fdbdbhfdbfb', 'img-20200810-130647-092-60acc21a52709827552571.jpg'),
(67, 'Doe', 'john', 'Doe inc', 'john.doe@doe.com', 'Hello!', 'img-20200810-130647-092-60acccf09869e070743067.jpg'),
(68, 'Doe', 'john', 'Doe inc', 'john.doe@doe.com', 'Hello!', 'img-20200810-130647-092-60acd0a42eebd986711977.jpg'),
(69, 'Doe', 'john', 'Doe inc', 'john.doe@doe.com', 'Hello!', 'img-20200810-130647-092-60acd36c33f4f849748604.jpg'),
(70, 'Doe', 'john', 'Doe inc', 'john.doe@doe.com', 'Hello!', 'img-20200810-130647-092-60acd4a367f91917981710.jpg'),
(71, 'Doe', 'john', 'Doe inc', 'john.doe@doe.com', 'Hello!', 'img-20200810-130647-092-60acd4e0c77e7346280076.jpg'),
(72, 'Doe', 'john', 'Doe inc', 'john.doe@doe.com', 'Hello!', 'img-20200810-130647-092-60acd6cd6502b132700652.jpg'),
(73, 'qsdklfj', 'qsdmlk', 'qsdmlkj', 'regis.leloup@10mentionweb.org', 'qsdf', 'regis-60acf3b12ea0b438097872.jpg'),
(74, 'qsdf', 'qsdf', 'qsdf', 'regis.leloup@10mentionweb.org', 'qsdf', 'regis-60acf4971f37b711599449.jpg'),
(75, 'qsdf', 'qsdf', 'qsdf', 'regis.leloup@10mentionweb.org', 'qsdf', 'regis-60acf4a77e560421599013.jpg'),
(76, 'qsdf', 'qsdf', 'qsdf', 'regis.leloup@10mentionweb.org', 'qsdf', 'regis-60acf4e2801c5337982413.jpg'),
(77, 'qsdf', 'qsdf', 'qsdf', 'regis.leloup@10mentionweb.org', 'qsdf', 'regis-60acf50621732939026293.jpg'),
(78, 'qsdf', 'qsdf', 'qsdf', 'regis.leloup@10mentionweb.org', 'qsdf', 'regis-60acf5a41184f071380442.jpg'),
(79, 'dhdfh', 'shsshg', 'shgfh', 'regis.leloup@10mentionweb.org', 'sfghsfgh', 'unnamed-60acf8459310c231821763.jpg'),
(80, 'qsdf', 'qsdf', 'qsdf', 'regis.leloup@10mentionweb.org', 'qsdf', 'unnamed-60ad14659f5f8347701122.jpg'),
(81, 'qsdf', 'qsdf', 'qsdf', 'regis.leloup@10mentionweb.org', 'aaazezez', 'regis-60ae4d6f08bae566815205.jpg'),
(82, 'qsdf', 'qsdf', 'qsdf', 'regis.leloup@10mentionweb.org', 'aaazezez', NULL),
(83, 'Doe', 'john', 'Doe inc', 'dsgsdgsd@sdfds.com', 'dfbdbdfbfdbfdbfdbbf', 'img-20200810-130647-092-60ae4e7acc7ed757316284.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `devis`
--

CREATE TABLE `devis` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entreprise` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(1048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `devis`
--

INSERT INTO `devis` (`id`, `nom`, `prenom`, `entreprise`, `telephone`, `email`, `adresse`, `service`, `message`, `document`) VALUES
(14, 'qsds', 'qsdqsd', 'sqdsdqsdq', '050966464', 'regis.leloup@10mentionweb.org', 'sdfdfsdf', 'dsfdsfdf', 'sdfsdfdsfsd', 'img-20200810-130647-092-60ad103e61bd9308654637.jpg'),
(15, 'sgsdgsdgs', 'dsggdsgd', 'dsggsdgd', '050966464', 'regis.leloup@10mentionweb.org', 'fdsfsdfdsf', 'sdfdsf', 'sdfdsf', 'maquette-newsletter-60ad131746163023422030.svg'),
(16, 'dsqzadz', 'dsqfqfgfq', 'sqdsdqsdq', '050966464', 'regis.leloup@10mentionweb.org', 'dsfsf', 'dfdsf', 'sfdfd', NULL),
(17, 'dsqzadz', 'dsqfqfgfq', 'sqdsdqsdq', '050966464', 'regis.leloup@10mentionweb.org', 'dsfsf', 'dfdsf', 'sfdfd', NULL),
(18, 'dsqzadz', 'dsqfqfgfq', 'sqdsdqsdq', '050966464', 'regis.leloup@10mentionweb.org', 'dsfsf', 'dfdsf', 'sfdfd', NULL),
(19, 'dsqzadz', 'dsqfqfgfq', 'sqdsdqsdq', '050966464', 'regis.leloup@10mentionweb.org', 'dsfsf', 'dfdsf', 'sfdfd', NULL),
(20, 'dsqzadz', 'dsqfqfgfq', 'sqdsdqsdq', '050966464', 'regis.leloup@10mentionweb.org', 'dsfsf', 'dfdsf', 'sfdfd', NULL),
(21, 'dsqzadz', 'dsqfqfgfq', 'sqdsdqsdq', '050966464', 'regis.leloup@10mentionweb.org', 'dsfsf', 'dfdsf', 'sfdfd', NULL),
(22, 'dsqzadz', 'dsqfqfgfq', 'sqdsdqsdq', '050966464', 'regis.leloup@10mentionweb.org', 'dsfsf', 'dfdsf', 'sfdfd', NULL),
(23, 'dsqzadz', 'dsqfqfgfq', 'dsggsdgd', 'dsdqsd', 'regis.leloup@10mentionweb.org', 'seffsfeszef', 'szefezsfeszf', 'efzzfzefzef', NULL),
(24, 'dsqzadz', 'dsqfqfgfq', 'dsggsdgd', 'ddd', 'regis.leloup@10mentionweb.org', 'ffsdffd', 'dsfdsfdf', 'sdfdsfsddsf', NULL),
(25, 'dsqzadz', 'dsqfqfgfq', 'dsggsdgd', 'ddd', 'regis.leloup@10mentionweb.org', 'ffsdffd', 'dsfdsfdf', 'sdfdsfsddsf', 'unnamed-60ae485f56663311751010.jpg'),
(26, 'dsqzadz', 'dsqfqfgfq', 'dsggsdgd', 'ddd', 'regis.leloup@10mentionweb.org', 'ffsdffd', 'dsfdsfdf', 'sdfdsfsddsf', 'unnamed-60ae48ce5efb0439490210.jpg'),
(27, 'dsqzadz', 'dsqfqfgfq', 'dsggsdgd', 'ddd', 'regis.leloup@10mentionweb.org', 'ffsdffd', 'dsfdsfdf', 'sdfdsfsddsf', 'unnamed-60ae48e01032b850687799.jpg');

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
('DoctrineMigrations\\Version20210517134043', '2021-05-17 13:41:03', 39),
('DoctrineMigrations\\Version20210518135626', '2021-05-18 14:10:02', 115),
('DoctrineMigrations\\Version20210518141547', '2021-05-18 14:17:36', 118),
('DoctrineMigrations\\Version20210518141729', '2021-05-18 14:17:37', 15),
('DoctrineMigrations\\Version20210520130133', '2021-05-20 13:01:51', 69),
('DoctrineMigrations\\Version20210521101613', '2021-05-21 10:17:57', 73),
('DoctrineMigrations\\Version20210523110127', '2021-05-25 07:59:36', 823),
('DoctrineMigrations\\Version20210523135953', '2021-05-25 07:59:37', 78);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_880E0D76F85E0677` (`username`);

--
-- Index pour la table `brief`
--
ALTER TABLE `brief`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `candidats`
--
ALTER TABLE `candidats`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `concours`
--
ALTER TABLE `concours`
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
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `brief`
--
ALTER TABLE `brief`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `candidats`
--
ALTER TABLE `candidats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `concours`
--
ALTER TABLE `concours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT pour la table `devis`
--
ALTER TABLE `devis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
