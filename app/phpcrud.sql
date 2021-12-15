-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 15 déc. 2021 à 15:42
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `phpcrud`
--

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `images`, `name`, `email`, `phone`, `title`, `created`) VALUES
(2, 'photo.png', 'David Deacon', 'daviddeacon@example.com', '2025550121', 'Employee', '2019-05-08 17:28:44'),
(3, 'photo.png', 'Sam White', 'samwhite@example.com', '2004550121', 'Employee', '2019-05-08 17:29:27'),
(4, 'photo.png', 'Colin Chaplin', 'colinchaplin@example.com', '2022550178', 'Supervisor', '2019-05-08 17:29:27'),
(5, 'photo.png', 'Ricky Waltz', 'rickywaltz@example.com', '7862342390', '', '2019-05-09 19:16:00'),
(6, 'photo.png', 'Arnold Hall', 'arnoldhall@example.com', '5089573579', 'Manager', '2019-05-09 19:17:00'),
(7, 'photo.png', 'Toni Adams', 'alvah1981@example.com', '2603668738', '', '2019-05-09 19:19:00'),
(8, 'photo.png', 'Donald Perry', 'donald1983@example.com', '7019007916', 'Employee', '2019-05-09 19:20:00'),
(9, 'photo.png', 'Joe McKinney', 'nadia.doole0@example.com', '6153353674', 'Employee', '2019-05-09 19:20:00'),
(10, 'photo.png', 'Angela Horst', 'angela1977@example.com', '3094234980', 'Assistant', '2019-05-09 19:21:00'),
(11, 'photo.png', 'James Jameson', 'james1965@example.com', '4002349823', 'Assistant', '2019-05-09 19:32:00'),
(12, 'photo.png', 'Daniel Deacon', 'danieldeacon@example.com', '5003423549', 'Manager', '2019-05-09 19:33:00'),
(17, 'photo.png', 'taha aeae simpson', 'tahar.azzaoui@externe.afpa.fr', '654567890897', 'former', '2021-12-10 19:06:00'),
(18, 'photo.png', 'kaendesign@gmail.com', 'tahar.azzaoui@externe.afpa.fr', '654567890897', 'former', '2021-12-10 19:06:00'),
(19, 'photo.png', 'taha aeae', '0671339177', '654567890897', 'former', '2021-12-10 19:11:00'),
(23, 'photo.png', 'taha aeae', 'tahara@free.fr', '654567890897', 'former', '2021-12-11 13:31:00'),
(24, 'photo.png', 'marceline', 'tahar.azzaoui@externe.afpa.fr', '654567890897', 'formateur', '2021-12-11 13:37:00'),
(25, 'photo.png', 'marceline', 'kaendesign@gmail.com', '654567890897', 'formateur', '2021-12-11 13:43:00'),
(26, 'photo.png', 'taha aeae', 'tahar.azzaoui@externe.afpa.fr', '654567890897', 'former', '2021-12-11 13:45:00'),
(27, 'photo.png', 'taha aeae simpson', 'tahar.azzaoui@externe.afpa.fr', '654567890897', 'formateur', '2021-12-12 10:34:00'),
(30, 'photo.png', 'tahar azzaoui', 'kaendesign@gmail.com', '', 'former', '2021-12-13 08:32:00'),
(31, 'photo.png', 'tahar azzaoui', 'kaendesign@gmail.com', '87689765', 'formerfbezfklrejhg', '2021-12-13 08:48:00'),
(32, 'photo.png', 'tahar azzaoui', 'kaendesign@gmail.com', '9878', 'formateur', '2021-12-13 08:54:00'),
(33, 'photo.png', 'tahar azzaoui', 'kaendesign@gmail.com', '9878', 'formateur', '2021-12-13 08:54:00'),
(34, 'photo.png', 'nom', 'jhdqsd@gmail.com', '89765789', 'employé', '2021-12-13 09:43:00');

-- --------------------------------------------------------

--
-- Structure de la table `contacts2`
--

CREATE TABLE `contacts2` (
  `prenom` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `contacts2`
--

INSERT INTO `contacts2` (`prenom`, `nom`) VALUES
('truc', 'Papin'),
('Truc', 'Troc'),
('Truc', 'Troc'),
('Truc', 'Troc'),
('Truc', 'Troc'),
('Truc', 'Troc'),
('Truc', 'Troc'),
('Truc', 'Troc'),
('Truc', 'Troc'),
('Truc', 'Troc'),
('Truc', 'Troc'),
('Trac', 'Truc'),
('', ''),
('Truc TRuhdcnbzd', 'déré\"ré\"r\"é'),
('Test 1', 'ttghnh'),
('Vincent', 'truc'),
('eéeée', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
