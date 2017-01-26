-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 13 Novembre 2016 à 21:09
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tinder`
--

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pathName` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`login`, `password`, `pathName`, `lastname`, `firstname`, `status`, `id`, `createdAt`, `updatedAt`) VALUES
('blob', 'kiki', '../img/chats/casque.jpg', 'popo', 'du 78', 1, 1, NULL, '2016-11-13 22:07:17'),
('lili la mouche', 'lili', '../img/chats/perruque.jpg', 'lou', 'lou', 1, 2, NULL, '2016-11-13 22:07:11'),
('titi', 'blabla', '../img/chats/bengal.jpg', 'bobo', 'la bize', 0, 3, NULL, '2016-11-13 22:07:18'),
('popopo', 'b', '../img/chats/cana.jpg', 'stan', 'bécane', 0, 4, NULL, '2016-11-13 22:06:20'),
('ploplo', 'bibi', '../img/chats/desert.jpg', 'chat', 'du futur', 1, 5, NULL, '2016-11-13 21:53:47'),
('dddooodddoo', 's', '../img/chats/dodo.jpg', 'derby', 'cool', 0, 6, NULL, '2016-11-13 22:02:19'),
('blibli', 'w', '../img/chats/meow.jpg', 'papa', 'bool', 1, 7, NULL, '2016-11-13 21:53:49'),
('gogo', 'wk', '../img/chats/rond.jpg', 'buena', 'choco', 1, 8, NULL, '2016-11-13 21:53:54');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
