-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 20 nov. 2018 à 20:19
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tp1`
--

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `IdF` int(11) NOT NULL,
  `Titre` varchar(20) NOT NULL,
  `Genre` varchar(10) NOT NULL,
  `AnneeR` year(4) NOT NULL,
  `idR` int(11) NOT NULL,
  PRIMARY KEY (`IdF`),
  KEY `li1` (`idR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `r??alisateur`
--

DROP TABLE IF EXISTS `r??alisateur`;
CREATE TABLE IF NOT EXISTS `r??alisateur` (
  `IdR` int(11) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `AnneeN` year(4) DEFAULT NULL,
  `Pays` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `r??alisateur`
--

INSERT INTO `r??alisateur` (`IdR`, `Nom`, `AnneeN`, `Pays`) VALUES
(1, 'Marjane Satrapi', 1969, 'IR,FR'),
(2, 'Deniz Erguven', 1978, 'TR,FR'),
(3, 'Maiwenn', 1976, 'FR'),
(3, 'Maiwenn', 1976, 'FR'),
(6, 'Lana Wachowski', 1965, 'US'),
(4, 'Louise Archambault', NULL, 'CA'),
(5, 'Terry Jones', 1942, 'GB'),
(7, 'Catherine Hardwicke', 1955, 'US');

-- --------------------------------------------------------

--
-- Structure de la table `sallecinema`
--

DROP TABLE IF EXISTS `sallecinema`;
CREATE TABLE IF NOT EXISTS `sallecinema` (
  `IdS` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(15) NOT NULL,
  `Taille` int(11) NOT NULL,
  `Adresse` varchar(64) NOT NULL,
  `Availability` tinyint(1) NOT NULL,
  PRIMARY KEY (`IdS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
