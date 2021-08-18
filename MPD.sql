-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 18 août 2021 à 22:01
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gerants`
--

-- --------------------------------------------------------

--
-- Structure de la table `banque`
--

CREATE TABLE `banque` (
  `id_banq` varchar(42) NOT NULL,
  `libelle` varchar(42) DEFAULT NULL,
  `solde` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_clt` varchar(42) NOT NULL,
  `nom_prenom` varchar(42) DEFAULT NULL,
  `email` varchar(42) DEFAULT NULL,
  `contact` varchar(42) DEFAULT NULL,
  `adresse` varchar(42) DEFAULT NULL,
  `type` varchar(42) DEFAULT NULL,
  `id_crdt` varchar(42) DEFAULT NULL,
  `id_remb` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_cmd` varchar(42) NOT NULL,
  `libelle` varchar(42) DEFAULT NULL,
  `date` varchar(42) DEFAULT NULL,
  `montant` varchar(42) DEFAULT NULL,
  `id_grt` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `concerner`
--

CREATE TABLE `concerner` (
  `id_prdt` varchar(42) NOT NULL,
  `id_vte` varchar(42) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `credit`
--

CREATE TABLE `credit` (
  `id_crdt` varchar(42) NOT NULL,
  `libelle` varchar(42) DEFAULT NULL,
  `type` varchar(42) DEFAULT NULL,
  `montant` varchar(42) DEFAULT NULL,
  `date` varchar(42) DEFAULT NULL,
  `id_grp` varchar(42) DEFAULT NULL,
  `id_grt` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cuve`
--

CREATE TABLE `cuve` (
  `id_cuve` varchar(42) NOT NULL,
  `capacite` varchar(42) DEFAULT NULL,
  `status` varchar(42) DEFAULT NULL,
  `id_pmp` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `gerant`
--

CREATE TABLE `gerant` (
  `id_grt` varchar(42) NOT NULL,
  `prenom` varchar(42) DEFAULT NULL,
  `nom` varchar(42) DEFAULT NULL,
  `adresse` varchar(42) DEFAULT NULL,
  `telephone` varchar(42) DEFAULT NULL,
  `mail` varchar(42) DEFAULT NULL,
  `login` varchar(42) DEFAULT NULL,
  `id_stat` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `group`
--

CREATE TABLE `group` (
  `id_grp` varchar(42) NOT NULL,
  `name` varchar(42) DEFAULT NULL,
  `adresse` varchar(42) DEFAULT NULL,
  `id_stat` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

CREATE TABLE `livraison` (
  `id_livr` varchar(42) NOT NULL,
  `date` varchar(42) DEFAULT NULL,
  `quantité` varchar(42) DEFAULT NULL,
  `numero_bl` varchar(42) DEFAULT NULL,
  `nom_prenom_livreur` varchar(42) DEFAULT NULL,
  `id_cmd` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `pompe`
--

CREATE TABLE `pompe` (
  `id_pmp` varchar(42) NOT NULL,
  `libelle` varchar(42) DEFAULT NULL,
  `status` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `pompiste`
--

CREATE TABLE `pompiste` (
  `id_pmpte` varchar(42) NOT NULL,
  `prenom` varchar(42) DEFAULT NULL,
  `nom` varchar(42) DEFAULT NULL,
  `adresse` varchar(42) DEFAULT NULL,
  `telephone` varchar(42) DEFAULT NULL,
  `login` varchar(42) DEFAULT NULL,
  `status` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_prdt` varchar(42) NOT NULL,
  `nom` varchar(42) DEFAULT NULL,
  `reference` varchar(42) DEFAULT NULL,
  `prix` varchar(42) DEFAULT NULL,
  `id_cuve` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `remboursement`
--

CREATE TABLE `remboursement` (
  `id_remb` varchar(42) NOT NULL,
  `libelle` varchar(42) DEFAULT NULL,
  `montant` varchar(42) DEFAULT NULL,
  `date` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `station`
--

CREATE TABLE `station` (
  `id_stat` varchar(42) NOT NULL,
  `nom` varchar(42) DEFAULT NULL,
  `adresse` varchar(42) DEFAULT NULL,
  `telephone` varchar(42) DEFAULT NULL,
  `type_payement` varchar(42) DEFAULT NULL,
  `objectif` varchar(42) DEFAULT NULL,
  `besoin` varchar(42) DEFAULT NULL,
  `status` varchar(42) DEFAULT NULL,
  `id_pmpte` varchar(42) DEFAULT NULL,
  `id_cuve` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

CREATE TABLE `vente` (
  `id_vte` varchar(42) NOT NULL,
  `quantité` varchar(42) DEFAULT NULL,
  `date` varchar(42) DEFAULT NULL,
  `montant` varchar(42) DEFAULT NULL,
  `id_pmpte` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `versement`
--

CREATE TABLE `versement` (
  `id_vers` varchar(42) NOT NULL,
  `libelle` varchar(42) DEFAULT NULL,
  `montant` varchar(42) DEFAULT NULL,
  `date` varchar(42) DEFAULT NULL,
  `id_grt` varchar(42) DEFAULT NULL,
  `id_banq` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `banque`
--
ALTER TABLE `banque`
  ADD PRIMARY KEY (`id_banq`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_clt`),
  ADD KEY `id_remb` (`id_remb`),
  ADD KEY `id_crdt` (`id_crdt`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_cmd`),
  ADD KEY `id_grt` (`id_grt`);

--
-- Index pour la table `concerner`
--
ALTER TABLE `concerner`
  ADD PRIMARY KEY (`id_prdt`,`id_vte`),
  ADD KEY `id_vte` (`id_vte`);

--
-- Index pour la table `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`id_crdt`),
  ADD KEY `id_grt` (`id_grt`),
  ADD KEY `id_grp` (`id_grp`);

--
-- Index pour la table `cuve`
--
ALTER TABLE `cuve`
  ADD PRIMARY KEY (`id_cuve`),
  ADD KEY `id_pmp` (`id_pmp`);

--
-- Index pour la table `gerant`
--
ALTER TABLE `gerant`
  ADD PRIMARY KEY (`id_grt`),
  ADD KEY `id_stat` (`id_stat`);

--
-- Index pour la table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id_grp`),
  ADD KEY `id_stat` (`id_stat`);

--
-- Index pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD PRIMARY KEY (`id_livr`),
  ADD KEY `id_cmd` (`id_cmd`);

--
-- Index pour la table `pompe`
--
ALTER TABLE `pompe`
  ADD PRIMARY KEY (`id_pmp`);

--
-- Index pour la table `pompiste`
--
ALTER TABLE `pompiste`
  ADD PRIMARY KEY (`id_pmpte`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_prdt`),
  ADD KEY `id_cuve` (`id_cuve`);

--
-- Index pour la table `remboursement`
--
ALTER TABLE `remboursement`
  ADD PRIMARY KEY (`id_remb`);

--
-- Index pour la table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id_stat`),
  ADD KEY `id_cuve` (`id_cuve`),
  ADD KEY `id_pmpte` (`id_pmpte`);

--
-- Index pour la table `vente`
--
ALTER TABLE `vente`
  ADD PRIMARY KEY (`id_vte`),
  ADD KEY `id_pmpte` (`id_pmpte`);

--
-- Index pour la table `versement`
--
ALTER TABLE `versement`
  ADD PRIMARY KEY (`id_vers`),
  ADD KEY `id_banq` (`id_banq`),
  ADD KEY `id_grt` (`id_grt`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`id_remb`) REFERENCES `remboursement` (`id_remb`),
  ADD CONSTRAINT `client_ibfk_2` FOREIGN KEY (`id_crdt`) REFERENCES `credit` (`id_crdt`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`id_grt`) REFERENCES `gerant` (`id_grt`);

--
-- Contraintes pour la table `concerner`
--
ALTER TABLE `concerner`
  ADD CONSTRAINT `concerner_ibfk_1` FOREIGN KEY (`id_vte`) REFERENCES `vente` (`id_vte`),
  ADD CONSTRAINT `concerner_ibfk_2` FOREIGN KEY (`id_prdt`) REFERENCES `produit` (`id_prdt`);

--
-- Contraintes pour la table `credit`
--
ALTER TABLE `credit`
  ADD CONSTRAINT `credit_ibfk_1` FOREIGN KEY (`id_grt`) REFERENCES `gerant` (`id_grt`),
  ADD CONSTRAINT `credit_ibfk_2` FOREIGN KEY (`id_grp`) REFERENCES `group` (`id_grp`);

--
-- Contraintes pour la table `cuve`
--
ALTER TABLE `cuve`
  ADD CONSTRAINT `cuve_ibfk_1` FOREIGN KEY (`id_pmp`) REFERENCES `pompe` (`id_pmp`);

--
-- Contraintes pour la table `gerant`
--
ALTER TABLE `gerant`
  ADD CONSTRAINT `gerant_ibfk_1` FOREIGN KEY (`id_stat`) REFERENCES `station` (`id_stat`);

--
-- Contraintes pour la table `group`
--
ALTER TABLE `group`
  ADD CONSTRAINT `group_ibfk_1` FOREIGN KEY (`id_stat`) REFERENCES `station` (`id_stat`);

--
-- Contraintes pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD CONSTRAINT `livraison_ibfk_1` FOREIGN KEY (`id_cmd`) REFERENCES `commande` (`id_cmd`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`id_cuve`) REFERENCES `cuve` (`id_cuve`);

--
-- Contraintes pour la table `station`
--
ALTER TABLE `station`
  ADD CONSTRAINT `station_ibfk_1` FOREIGN KEY (`id_cuve`) REFERENCES `cuve` (`id_cuve`),
  ADD CONSTRAINT `station_ibfk_2` FOREIGN KEY (`id_pmpte`) REFERENCES `pompiste` (`id_pmpte`);

--
-- Contraintes pour la table `vente`
--
ALTER TABLE `vente`
  ADD CONSTRAINT `vente_ibfk_1` FOREIGN KEY (`id_pmpte`) REFERENCES `pompiste` (`id_pmpte`);

--
-- Contraintes pour la table `versement`
--
ALTER TABLE `versement`
  ADD CONSTRAINT `versement_ibfk_1` FOREIGN KEY (`id_banq`) REFERENCES `banque` (`id_banq`),
  ADD CONSTRAINT `versement_ibfk_2` FOREIGN KEY (`id_grt`) REFERENCES `gerant` (`id_grt`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
