-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 23 avr. 2021 à 17:10
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `firstdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE `historique` (
  `ID` int(11) NOT NULL,
  `personne` varchar(255) NOT NULL,
  `admin` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `opération` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `historique`
--

INSERT INTO `historique` (`ID`, `personne`, `admin`, `date`, `opération`) VALUES
(48, 'New ID', 'Farid Adwani', '04/23/2021 03:14:59 am', 'INSERT INTO personne (`Nom`, `Prénom`, `Age`, `Sexe`, `Email`, `Numéro GSM`, `Poste`,`Photo`) VALUES ( Sellaouti ,  Aymen ,  34 ,  Homme ,  aymen@insat.com ,  24514233 ,  webMaster ,  678134-sign-check-512.png )'),
(49, 'New ID', 'Farid Adwani', '04/23/2021 03:15:13 am', 'INSERT INTO personne (`Nom`, `Prénom`, `Age`, `Sexe`, `Email`, `Numéro GSM`, `Poste`,`Photo`) VALUES ( Foulen ,  Fouleni ,  18 ,  Homme ,  aaaa@aaa.aaa ,  22222222 ,  .... ,   )'),
(50, '30', 'Farid Adwani', '04/23/2021 03:15:43 am', 'UPDATE personne SET `Nom`= Foulen ,`Prénom`= Fouleni ,`Age`= 18 ,`Sexe`= Homme ,`Email`= aaaa@aaa.aaa ,`Numéro GSM`= 22222222 ,`Poste`= .... ,`Photo`= 20201001_171938.jpg  WHERE `ID`=  30 '),
(51, '30', 'Salem Hamdani', '04/23/2021 03:16:34 am', 'delete  from personne where id=30'),
(52, 'New ID', 'Farid Adwani', '04/23/2021 01:12:45 pm', 'INSERT INTO personne (`Nom`, `Prénom`, `Age`, `Sexe`, `Email`, `Numéro GSM`, `Poste`,`Photo`) VALUES ( Paul ,  Roma ,  35 ,  Homme ,  paulr@yahoo.fr ,  98454785 ,  Docteur ,  doctor-clinic-illustration_1270-69.jpg )'),
(53, '29', 'Farid Adwani', '04/23/2021 01:16:20 pm', 'UPDATE personne SET `Nom`= Sellaouti ,`Prénom`= Aymen ,`Age`= 34 ,`Sexe`= Homme ,`Email`= aymen@insat.com ,`Numéro GSM`= 24514233 ,`Poste`= webMaster ,`Photo`=   WHERE `ID`=  29 '),
(54, '31', 'Farid Adwani', '04/23/2021 01:34:17 pm', 'UPDATE personne SET `Nom`= Paul ,`Prénom`= Roma ,`Age`= 35 ,`Sexe`= Homme ,`Email`= paulr@yahoo.fr ,`Numéro GSM`= 98454785 ,`Poste`= Docteur  WHERE `ID`=  31 '),
(55, '29', 'Farid Adwani', '04/23/2021 01:34:58 pm', 'UPDATE personne SET `Nom`= Sellaouti ,`Prénom`= Aymen ,`Age`= 34 ,`Sexe`= Homme ,`Email`= aymen@insat.com ,`Numéro GSM`= 24514233 ,`Poste`= webMaster ,`Photo`= 678134-sign-check-512.png  WHERE `ID`=  29 '),
(56, '29', 'Farid Adwani', '04/23/2021 01:35:05 pm', 'UPDATE personne SET `Nom`= Sellaouti ,`Prénom`= Aymen ,`Age`= 34 ,`Sexe`= Homme ,`Email`= aymen@insat.com ,`Numéro GSM`= 24514233 ,`Poste`= webMaster  WHERE `ID`=  29 '),
(57, '29', 'Farid Adwani', '04/23/2021 01:35:22 pm', 'UPDATE personne SET `Nom`= Sellaouti ,`Prénom`= Aymen ,`Age`= 34 ,`Sexe`= Homme ,`Email`= aymen@insat.com ,`Numéro GSM`= 24514233 ,`Poste`= webMaster ,`Photo`= 566.jpg  WHERE `ID`=  29 ');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Prénom` varchar(255) NOT NULL,
  `Age` int(200) NOT NULL,
  `Sexe` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Numéro GSM` int(11) NOT NULL,
  `Poste` varchar(255) NOT NULL,
  `Photo` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`ID`, `Nom`, `Prénom`, `Age`, `Sexe`, `Email`, `Numéro GSM`, `Poste`, `Photo`) VALUES
(29, 'Sellaouti', 'Aymen', 34, 'Homme', 'aymen@insat.com', 24514233, 'webMaster', '566.jpg'),
(31, 'Paul', 'Roma', 35, 'Homme', 'paulr@yahoo.fr', 98454785, 'Docteur', 'doctor-clinic-illustration_1270-69.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passwd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `email`, `passwd`) VALUES
(1, 'Adwani', 'Farid', 'farid8569@gmail.com', 'azerty'),
(2, 'Hamdani', 'Salem', 'salem2000@gmail.com', 'ytreza');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `historique`
--
ALTER TABLE `historique`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `historique`
--
ALTER TABLE `historique`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
