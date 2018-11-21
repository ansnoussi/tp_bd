-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 20 nov. 2018 à 20:20
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
-- Base de données :  `tp2`
--

-- --------------------------------------------------------

--
-- Structure de la table `adress`
--

DROP TABLE IF EXISTS `adress`;
CREATE TABLE IF NOT EXISTS `adress` (
  `Numero` int(11) NOT NULL AUTO_INCREMENT,
  `Rue` varchar(40) NOT NULL,
  `NUMRUE` int(4) DEFAULT NULL,
  `Ville` varchar(20) NOT NULL,
  `CodePostal` varchar(6) NOT NULL,
  `Caractere` varchar(1) NOT NULL,
  PRIMARY KEY (`Numero`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `adress`
--

INSERT INTO `adress` (`Numero`, `Rue`, `NUMRUE`, `Ville`, `CodePostal`, `Caractere`) VALUES
(1, 'Jean médecin', 3, 'Nice', 'O6000', 'b'),
(2, 'Barla', 10, 'Nice', 'O6000', ' '),
(3, 'Jean Jaures', 10, 'Cagnes', 'O6200', ' ');

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

DROP TABLE IF EXISTS `enseignant`;
CREATE TABLE IF NOT EXISTS `enseignant` (
  `Numero` int(8) NOT NULL,
  `Nom` varchar(15) NOT NULL,
  `Prenom` varchar(15) NOT NULL,
  `Age` int(3) NOT NULL,
  `Ville` varchar(40) NOT NULL,
  `NbHrEns` int(11) NOT NULL,
  PRIMARY KEY (`Numero`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`Numero`, `Nom`, `Prenom`, `Age`, `Ville`, `NbHrEns`) VALUES
(1, 'Menez', 'Gilles', 25, 'Antibes', 35),
(2, 'Lahire', 'Philippe', 26, 'Nice', 30),
(3, 'Kounalis', 'Emanuel', 27, 'Nice', 28),
(4, 'Renevier', 'Philippe', 21, 'Nice', 28);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `Numero` int(8) NOT NULL,
  `Nom` varchar(15) NOT NULL,
  `Prenom` varchar(15) NOT NULL,
  `Adresse` varchar(40) NOT NULL,
  PRIMARY KEY (`Numero`),
  KEY `liaison1` (`Adresse`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`Numero`, `Nom`, `Prenom`, `Adresse`) VALUES
(1002, 'Nom2', 'prenom2', '2'),
(1003, 'Nom3', 'prenom3', '3');

-- --------------------------------------------------------

--
-- Structure de la table `etudiantue`
--

DROP TABLE IF EXISTS `etudiantue`;
CREATE TABLE IF NOT EXISTS `etudiantue` (
  `NoteCC` int(2) DEFAULT NULL,
  `NoteExam` int(2) DEFAULT NULL,
  `etudiant` int(8) NOT NULL,
  `ue` varchar(10) NOT NULL,
  PRIMARY KEY (`etudiant`,`ue`),
  KEY `liaison4` (`ue`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiantue`
--

INSERT INTO `etudiantue` (`NoteCC`, `NoteExam`, `etudiant`, `ue`) VALUES
(10, 11, 1001, 'SL2IBD'),
(8, 10, 1001, 'SL2IPI'),
(10, 11, 1002, 'SL2IBD'),
(8, 10, 1002, 'SL2IPI'),
(10, 11, 1003, 'SL2IBD'),
(8, 10, 1003, 'SL2IPI');

-- --------------------------------------------------------

--
-- Structure de la table `ue`
--

DROP TABLE IF EXISTS `ue`;
CREATE TABLE IF NOT EXISTS `ue` (
  `Code` varchar(10) NOT NULL,
  `Libelle` varchar(30) NOT NULL,
  `NbHrAssociees` int(3) NOT NULL,
  `enseignant` int(8) DEFAULT NULL,
  PRIMARY KEY (`Code`),
  KEY `liaison2` (`enseignant`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ue`
--

INSERT INTO `ue` (`Code`, `Libelle`, `NbHrAssociees`, `enseignant`) VALUES
('SL2IBD', 'Base de Données', 24, 2),
('SL2IPI', 'Programmation impérative', 36, 1),
('SL2IAL', 'Algorithmique', 32, 3),
('SL2IPW', 'Programmation WEB', 26, 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
