-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  jeu. 06 juin 2019 à 11:19
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `guillaume-bolduc`
--

-- --------------------------------------------------------

--
-- Structure de la table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `cover` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `about`
--

INSERT INTO `about` (`id`, `title`, `description`, `cover`) VALUES
(1, 'About me', 'In 2002 I graduated from Hogeschool voor de Kunsten Utrecht (HKU, bachelor of arts) in the field of Digital Media Design. Since then I have worked mainly as an Online and Web Designer, Video editor/producer and Marketing & Communications specialist for Dutch and international clients, organizations and companies, such as Statistics Netherlands (CBS), HCO, BCC, municipal Wassenaar, Heemstede, Bloemendaal and KPN. I have gained experience with web design, social media, graphic design, storytelling, video editing, shooting footage, motion graphics, online assets, e-mailings, photography, writing, coaching, teaching and project management.', 'about.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `id_category`, `description`, `title`, `slug`, `cover`) VALUES
(1, 1, 'Some UX/UI Design', 'UX/UI Design', 'ux-ui_design', 'walking_people.png'),
(2, 2, 'Some Illustration here', 'Illustration', 'illustration', 'illustration_theme.png');

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `project`
--

INSERT INTO `project` (`id`, `id_category`, `title`, `slug`, `description`, `cover`, `category`) VALUES
(1, 1, 'Live streaming application', 'live_streaming_application', 'Hello Guys!\r\nToday I want to share with you the Live streaming application. \r\nIn this application, you can get high-quality streaming to build your community. Hopefully you enjoy, be happy, like it, and feel free to leave your feedback.', 'ux-ui_design.png', 'ux-ui_design'),
(2, 2, 'My first illustration', 'my_first_illustration', 'Hello Guys!\r\nToday I want to share with you this illustration.', 'illustration.png', 'illustration'),
(3, 1, 'My second design', 'my_second_design', 'Hello Guys!\r\nToday I want to share with you this Turbo S Cabriolet Design.', 'ux-ui_design2.png', 'ux-ui_design'),
(4, 2, 'My second illustration', 'my_second_illustration', 'Hello Guys!\r\nToday I want to share with you this illustration.', 'illustration2.png', 'illustration'),
(5, 2, 'My third illustration', 'my_third_illustration', 'Hello Guys!\r\nToday I want to share with you this illustration.', 'illustration3.png', 'illustration'),
(6, 1, 'My third UX/UI Design', 'my_third_ux-ui_design', 'Hello Guys!\r\nToday I want to share with you this Fiddle leaf fig topiary Design.', 'ux-ui_design3.png', 'ux-ui_design');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
