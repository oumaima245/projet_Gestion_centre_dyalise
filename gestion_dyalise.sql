-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 06 jan. 2023 à 13:59
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_dyalise`
--

-- --------------------------------------------------------

--
-- Structure de la table `docteur`
--

CREATE TABLE `docteur` (
  `Num_doc` int(11) NOT NULL,
  `Nom_doc` varchar(20) DEFAULT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `genre` varchar(10) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `mot_de_passe` varchar(30) DEFAULT NULL,
  `talephone` int(11) DEFAULT NULL,
  `adress` varchar(20) DEFAULT NULL,
  `deplomes` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `docteur`
--

INSERT INTO `docteur` (`Num_doc`, `Nom_doc`, `prenom`, `date_naissance`, `genre`, `email`, `mot_de_passe`, `talephone`, `adress`, `deplomes`) VALUES
(1, 'said', 'sodo', '2012-12-07', 'homme', 'said@gmail.com', 'said123', 65290125, NULL, NULL),
(2, 'mahv', 'ahmed', '2012-12-07', 'homme', 'ahmed10@gmail.com', 'ahmed123', 6849510, 'hasid,rue2', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE `paiement` (
  `Num_paienment` int(11) NOT NULL,
  `Num_doc` int(11) DEFAULT NULL,
  `num_pat` int(11) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  `date_de_paiement` date DEFAULT NULL,
  `STATU` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `num_pat` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `adress` varchar(20) DEFAULT NULL,
  `num_tele` int(11) DEFAULT NULL,
  `Genre` varchar(20) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `Personne_urgence_nom` varchar(20) NOT NULL,
  `Personne_urgence_prenom` varchar(20) NOT NULL,
  `Personne_urgence_num` int(11) NOT NULL,
  `Numero_assurance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rendezvous`
--

CREATE TABLE `rendezvous` (
  `num_rv` int(11) NOT NULL,
  `num_pat` int(11) DEFAULT NULL,
  `description` varchar(40) DEFAULT NULL,
  `date_rv` date DEFAULT NULL,
  `num_seance` int(11) DEFAULT NULL,
  `num_doc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `seance`
--

CREATE TABLE `seance` (
  `num_seance` int(11) NOT NULL,
  `date_seance` date DEFAULT NULL,
  `Duree` int(11) DEFAULT NULL,
  `num_pat` int(11) DEFAULT NULL,
  `traitement` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `docteur`
--
ALTER TABLE `docteur`
  ADD PRIMARY KEY (`Num_doc`);

--
-- Index pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`Num_paienment`),
  ADD KEY `fg_pai` (`Num_doc`),
  ADD KEY `num_pat` (`num_pat`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`num_pat`);

--
-- Index pour la table `rendezvous`
--
ALTER TABLE `rendezvous`
  ADD PRIMARY KEY (`num_rv`),
  ADD KEY `num_pat` (`num_pat`),
  ADD KEY `num_seance` (`num_seance`),
  ADD KEY `fg_doc` (`num_doc`);

--
-- Index pour la table `seance`
--
ALTER TABLE `seance`
  ADD PRIMARY KEY (`num_seance`),
  ADD KEY `num_pat` (`num_pat`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `docteur`
--
ALTER TABLE `docteur`
  MODIFY `Num_doc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `Num_paienment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `patient`
--
ALTER TABLE `patient`
  MODIFY `num_pat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rendezvous`
--
ALTER TABLE `rendezvous`
  MODIFY `num_rv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `seance`
--
ALTER TABLE `seance`
  MODIFY `num_seance` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `fg_pai` FOREIGN KEY (`Num_doc`) REFERENCES `docteur` (`Num_doc`),
  ADD CONSTRAINT `paiement_ibfk_1` FOREIGN KEY (`num_pat`) REFERENCES `patient` (`num_pat`);

--
-- Contraintes pour la table `rendezvous`
--
ALTER TABLE `rendezvous`
  ADD CONSTRAINT `fg_doc` FOREIGN KEY (`num_doc`) REFERENCES `docteur` (`Num_doc`),
  ADD CONSTRAINT `rendezvous_ibfk_1` FOREIGN KEY (`num_pat`) REFERENCES `patient` (`num_pat`),
  ADD CONSTRAINT `rendezvous_ibfk_2` FOREIGN KEY (`num_seance`) REFERENCES `seance` (`num_seance`);

--
-- Contraintes pour la table `seance`
--
ALTER TABLE `seance`
  ADD CONSTRAINT `seance_ibfk_1` FOREIGN KEY (`num_pat`) REFERENCES `patient` (`num_pat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
