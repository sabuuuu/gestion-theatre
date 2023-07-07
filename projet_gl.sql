-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 09 déc. 2022 à 10:23
-- Version du serveur :  5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet_gl`
--

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `ref` int(11) NOT NULL,
  `dure` time NOT NULL,
  PRIMARY KEY (`ref`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

DROP TABLE IF EXISTS `livre`;
CREATE TABLE IF NOT EXISTS `livre` (
  `refe` int(11) NOT NULL,
  `nbr_page` int(11) NOT NULL,
  PRIMARY KEY (`refe`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre`
--

DROP TABLE IF EXISTS `oeuvre`;
CREATE TABLE IF NOT EXISTS `oeuvre` (
  `reference` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(10) NOT NULL,
  `auteur` varchar(10) NOT NULL,
  `date_apparition` date NOT NULL,
  `date_presentation` date NOT NULL,
  PRIMARY KEY (`reference`),
  UNIQUE KEY `reference` (`reference`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre_contenu`
--

DROP TABLE IF EXISTS `oeuvre_contenu`;
CREATE TABLE IF NOT EXISTS `oeuvre_contenu` (
  `ref` int(11) NOT NULL,
  `nom_theatre` varchar(10) NOT NULL,
  PRIMARY KEY (`ref`,`nom_theatre`),
  KEY `cléetrangére2` (`nom_theatre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `theatre`
--

DROP TABLE IF EXISTS `theatre`;
CREATE TABLE IF NOT EXISTS `theatre` (
  `nom_th` varchar(10) NOT NULL,
  `adresse` tinytext NOT NULL,
  `num_tl` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`nom_th`),
  UNIQUE KEY `nom_th` (`nom_th`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
