-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2015 at 11:01 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `flux_colis`
--

-- --------------------------------------------------------

--
-- Table structure for table `colis`
--

CREATE TABLE IF NOT EXISTS `colis` (
  `id_perso` int(255) NOT NULL,
  `id_colis` int(255) NOT NULL AUTO_INCREMENT,
  `nom_colis` varchar(255) NOT NULL,
  PRIMARY KEY (`id_colis`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `colis`
--

INSERT INTO `colis` (`id_perso`, `id_colis`, `nom_colis`) VALUES
(1, 1, 'pc portable'),
(2, 2, 'Samsung S6 ');

-- --------------------------------------------------------

--
-- Table structure for table `personne`
--

CREATE TABLE IF NOT EXISTS `personne` (
  `id_perso` int(255) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  PRIMARY KEY (`id_perso`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `personne`
--

INSERT INTO `personne` (`id_perso`, `nom`, `prenom`, `adresse`) VALUES
(1, 'zeroual', 'abdelbassit', '12 rue des aulnes'),
(2, 'jackson', 'michael', 'jackson street');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
