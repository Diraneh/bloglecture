-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  Dim 29 nov. 2020 à 13:24
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
CREATE TABLE IF NOT EXISTS `auteur` (
  `Id_auteur` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `Telp` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id_auteur`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`Id_auteur`, `Nom`, `prenom`, `Telp`) VALUES
(1, 'Elmi', 'Diraneh', '0751413840'),
(2, 'Amerruci', 'Alain', '0642543850'),
(3, 'Pascal', 'Angel', '0612890235'),
(4, 'Patrick', 'Fabien', '0689752130');

-- --------------------------------------------------------

--
-- Structure de la table `description`
--

DROP TABLE IF EXISTS `description`;
CREATE TABLE IF NOT EXISTS `description` (
  `Id_description` int(20) NOT NULL AUTO_INCREMENT,
  `Id_auteur` int(25) NOT NULL,
  `description_text1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description_text2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description_text3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id_description`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `description`
--

INSERT INTO `description` (`Id_description`, `Id_auteur`, `description_text1`, `description_text2`, `description_text3`) VALUES
(1, 1, 'À toi, l’aîné, Guerrier, courageux et vaillant Fier protecteur de la cité Et de ses enfant. Que les Dieux Soient miséricordieux\r\nEt t’accordent la paix. Celle que tu ne trouveras sans doute jamais À toi, le cadet, À l’amour pur et sincère Seul à pouvoir e', 'Un Royaume unique,\r\nBrisé par la gémellité\r\nUne sécession tragique\r\nEt des morts par milliers\r\n\r\nIl n’existe à ce fléau\r\nQu’un seul remède\r\nL’antidote à tous nos maux\r\nEst le poison même\r\n\r\nPour que s’unissent à nouveau\r\nNos tribus et nos terres\r\nLes Dieu', 'À toi, l’aîné, Guerrier, courageux et vaillant Fier protecteur de la cité Et de ses enfant. Que les Dieux Soient miséricordieux\r\nEt t’accordent la paix. Celle que tu ne trouveras sans doute jamais À toi, le cadet, À l’amour pur et sincère Seul à pouvoir e'),
(2, 2, 'À toi, l’aîné, Guerrier, courageux et vaillant Fier protecteur de la cité Et de ses enfant. Que les Dieux Soient miséricordieux\r\nEt t’accordent la paix. Celle que tu ne trouveras sans doute jamais À toi, le cadet, À l’amour pur et sincère Seul à pouvoir e', 'À toi, l’aîné, Guerrier, courageux et vaillant Fier protecteur de la cité Et de ses enfant. Que les Dieux Soient miséricordieux\r\nEt t’accordent la paix. Celle que tu ne trouveras sans doute jamais À toi, le cadet, À l’amour pur et sincère Seul à pouvoir e', 'À toi, l’aîné, Guerrier, courageux et vaillant Fier protecteur de la cité Et de ses enfant. Que les Dieux Soient miséricordieux\r\nEt t’accordent la paix. Celle que tu ne trouveras sans doute jamais À toi, le cadet, À l’amour pur et sincère Seul à pouvoir e'),
(3, 3, 'À toi, l’aîné, Guerrier, courageux et vaillant Fier protecteur de la cité Et de ses enfant. Que les Dieux Soient miséricordieux\r\nEt t’accordent la paix. Celle que tu ne trouveras sans doute jamais À toi, le cadet, À l’amour pur et sincère Seul à pouvoir e', 'À toi, l’aîné, Guerrier, courageux et vaillant Fier protecteur de la cité Et de ses enfant. Que les Dieux Soient miséricordieux\r\nEt t’accordent la paix. Celle que tu ne trouveras sans doute jamais À toi, le cadet, À l’amour pur et sincère Seul à pouvoir e', 'À toi, l’aîné, Guerrier, courageux et vaillant Fier protecteur de la cité Et de ses enfant. Que les Dieux Soient miséricordieux\r\nEt t’accordent la paix. Celle que tu ne trouveras sans doute jamais À toi, le cadet, À l’amour pur et sincère Seul à pouvoir e'),
(4, 4, 'Le blog d’auteur est une vitrine de votre personnalité. Par cet intermédiaire, vous vous ferez connaître et vous vous rendrez accessible pour vos lecteurs. Outil indispensable pour un écrivain moderne, il vous permettra de vous rapprocher d’eux et, surtou', 'Au fil de vos publications et animations, ils seront à même de connaître vos opinions, vos projets, votre expérience « vers la publication », etc. S’ils doivent communiquer sur qui vous êtes, vos articles doivent toujours être en lien avec votre activité ', 'Le blog d’écrivain est la correspondance du XXIème siècle : il vous permet d’échanger directement avec vos lecteurs, que ce soit par l’intermédiaire d’un mail (spécifiquement créé pour eux),  ou par la voie des articles et des commentaires. Par ces échang');

-- --------------------------------------------------------

--
-- Structure de la table `textblog`
--

DROP TABLE IF EXISTS `textblog`;
CREATE TABLE IF NOT EXISTS `textblog` (
  `Id_textblog` int(25) NOT NULL AUTO_INCREMENT,
  `Id_auteur` int(25) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date_publication` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Edition_publication` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id_textblog`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `textblog`
--

INSERT INTO `textblog` (`Id_textblog`, `Id_auteur`, `img`, `date_publication`, `Edition_publication`) VALUES
(1, 1, 'public/img/Adulte-Fantôme-Halloween-Fête-Sociaux-Réseaux-Publication', 'January 1, 2014', 'Atlas'),
(2, 2, 'public/img/Dy4ICIkWoAA9Qsn.jpg', 'Mars 3,2020', 'Poche'),
(3, 3, 'public/img/post-sample-image.jpg', 'August 5, 2020', 'Hachette '),
(4, 4, 'public/img/Jai-besoin-de-vous.png', 'November 15,2020', 'Loisirs');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
