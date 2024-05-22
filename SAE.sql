-- phpMyAdmin SQL Dump
-- version 6.0.0-dev
-- https://www.phpmyadmin.net/
--
-- Host: 192.168.30.23
-- Generation Time: May 22, 2024 at 08:14 AM
-- Server version: 8.0.18
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SAE`
--

-- --------------------------------------------------------

--
-- Table structure for table `Adherent`
--

CREATE TABLE `Adherent` (
  `NUMERO_ADHERENT` int(11) NOT NULL,
  `Nom` varchar(255) DEFAULT NULL,
  `Prenom` varchar(255) DEFAULT NULL,
  `DATE_DE_NAISSANCE` date DEFAULT NULL,
  `Rue` varchar(255) DEFAULT NULL,
  `Ville` varchar(255) DEFAULT NULL,
  `Latitude_Ville` float DEFAULT NULL,
  `Longitude_Ville` float DEFAULT NULL,
  `Etat` varchar(255) DEFAULT NULL,
  `TELEPHONE` varchar(20) DEFAULT NULL,
  `BÉNÉVOLE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Adhesion`
--

CREATE TABLE `Adhesion` (
  `ID_ADHESION` int(11) NOT NULL,
  `NUMERO_ADHERENT` int(11) DEFAULT NULL,
  `ANNEE` int(11) DEFAULT NULL,
  `DATE_ADHESION` date DEFAULT NULL,
  `MONTANT` float DEFAULT NULL,
  `DON` float DEFAULT NULL,
  `MOYEN_DE_PAIEMENT` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Adherent`
--
ALTER TABLE `Adherent`
  ADD PRIMARY KEY (`NUMERO_ADHERENT`);

--
-- Indexes for table `Adhesion`
--
ALTER TABLE `Adhesion`
  ADD PRIMARY KEY (`ID_ADHESION`),
  ADD KEY `NUMERO_ADHERENT` (`NUMERO_ADHERENT`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Adhesion`
--
ALTER TABLE `Adhesion`
  MODIFY `ID_ADHESION` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Adhesion`
--
ALTER TABLE `Adhesion`
  ADD CONSTRAINT `Adhesion_ibfk_1` FOREIGN KEY (`NUMERO_ADHERENT`) REFERENCES `Adherent` (`NUMERO_ADHERENT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
