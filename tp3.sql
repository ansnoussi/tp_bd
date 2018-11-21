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
-- Base de données :  `tp3`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `NumCl` varchar(10) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Adresse` varchar(15) NOT NULL,
  `Nationalité` varchar(15) NOT NULL,
  PRIMARY KEY (`NumCl`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`NumCl`, `Nom`, `Adresse`, `Nationalité`) VALUES
('K029534', 'Asma Tlili', 'Tunis', 'Tunisienne'),
('K054679', 'Rim Fakhfakh', 'Tunis', 'Tunisienne'),
('K145309', 'Ines Lakhoua', 'Tunis', 'Tunisienne'),
('K549027', 'Ahmed Ben Marzouk', 'Sfax', 'Tunisienne'),
('M123497', 'Zied Soltani', 'Tunis', 'Tunisienne'),
('M125302', 'Mohamed Ben Salem', 'Tunis', 'Tunisienne'),
('M132089', 'Zahra Sellami', 'Sfax', 'Tunisienne'),
('M134236', 'Amna Riahi', 'Sousse', 'Tunisienne'),
('M202745', 'Samir Elouni', 'Bizerte', 'Tunisienne'),
('M243678', 'Sami Meddeb', 'Tunis', 'Tunisienne');

-- --------------------------------------------------------

--
-- Structure de la table `detailoperation`
--

DROP TABLE IF EXISTS `detailoperation`;
CREATE TABLE IF NOT EXISTS `detailoperation` (
  `CodeOp` int(11) NOT NULL,
  `CodeDevise` varchar(10) NOT NULL,
  `Montant` int(11) NOT NULL,
  `Contreval` float NOT NULL,
  PRIMARY KEY (`CodeOp`,`CodeDevise`),
  KEY `liaison3` (`CodeDevise`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `detailoperation`
--

INSERT INTO `detailoperation` (`CodeOp`, `CodeDevise`, `Montant`, `Contreval`) VALUES
(1, 'BEF056', 7000, 3.221),
(1, 'FRF250', 2500, 1.981),
(2, 'CAD124', 600, 0.914),
(2, 'USD840', 500, 1.462),
(3, 'ESP724', 1250, 7.603),
(4, 'DEM280', 600, 6.644),
(4, 'GBP826', 200, 2.121),
(5, 'SAR682', 200, 3.802),
(5, 'USD840', 100, 1.423),
(6, 'EUR978', 100, 1.423),
(7, 'DEM280', 400, 6.644),
(7, 'EUR978', 150, 1.3),
(7, 'FRF250', 150, 1.981);

-- --------------------------------------------------------

--
-- Structure de la table `devise`
--

DROP TABLE IF EXISTS `devise`;
CREATE TABLE IF NOT EXISTS `devise` (
  `CodeD` varchar(10) NOT NULL,
  `Libelle` varchar(20) NOT NULL,
  `Unite` int(11) NOT NULL,
  `CoursAchat` float NOT NULL,
  `CoursVente` float NOT NULL,
  PRIMARY KEY (`CodeD`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `devise`
--

INSERT INTO `devise` (`CodeD`, `Libelle`, `Unite`, `CoursAchat`, `CoursVente`) VALUES
('BEF056', 'FRANC BELG', 100, 3.137, 3.221),
('CAD124', 'DOLLAR CANADIEN', 1, 0.9405, 0.014),
('CHF756', 'FRANC SUISSE', 10, 9.5018, 8.865),
('DEM280', 'DEUTSCHE M', 10, 6.474, 6.644),
('ESP724', 'PESTA ESPAGNOL', 1000, 7.603, 7.818),
('EUR978', 'EURO', 1, 1.264, 1.3),
('FRF250', 'FRANC FRANCAIS', 10, 1.932, 1.981),
('GBP826', 'LIVRE STERLING', 1, 2.067, 2.121),
('ITL380', 'LIRE ITALIEN', 1000, 11.436, 12.156),
('SAR682', 'RIYAL SAOUDIEN', 10, 3.802, 3.926),
('USD840', 'DOLLAR US', 1, 1.423, 1.462);

-- --------------------------------------------------------

--
-- Structure de la table `operation`
--

DROP TABLE IF EXISTS `operation`;
CREATE TABLE IF NOT EXISTS `operation` (
  `CodeOp` int(11) NOT NULL,
  `TypeOp` varchar(5) NOT NULL,
  `DateOp` date NOT NULL,
  `Client` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CodeOp`),
  KEY `liaison1` (`Client`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `operation`
--

INSERT INTO `operation` (`CodeOp`, `TypeOp`, `DateOp`, `Client`) VALUES
(1, 'Vente', '2001-01-01', 'M123497'),
(2, 'Vente', '2001-01-01', 'K145309'),
(3, 'Achat', '2001-01-01', 'K054679'),
(4, 'Vente', '2001-02-05', 'M125302'),
(5, 'Achat', '2001-02-05', 'M132089'),
(6, 'Achat', '2001-02-05', 'M123497'),
(7, 'Vente', '2001-03-22', 'M134236');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
