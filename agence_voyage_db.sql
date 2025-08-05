-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 05 août 2025 à 16:52
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `agence_voyage_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint(20) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `nom` varchar(255) NOT NULL,
  `prix` decimal(10,2) DEFAULT NULL,
  `continent` varchar(255) DEFAULT NULL,
  `type_voyage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `destinations`
--

INSERT INTO `destinations` (`id`, `description`, `image_url`, `nom`, `prix`, `continent`, `type_voyage`) VALUES
(1, 'Romance, culture et gastronomie au cœur de la capitale française.', '/images/paris.png\r\n\r\n', 'Paris', 850.00, 'Europe', 'Aventure'),
(2, 'Temples, rizières et plages paradisiaques.', '/images/bali.png', 'Bali', 1400.00, 'Asie', 'Nature'),
(3, 'Bungalows sur l’eau et eau turquoise infinie.', '/images/maldives.png', 'Maldives', 1800.00, 'Asie', 'Plage'),
(4, 'Maisons blanches et dômes bleus face à la mer Égée.', '/images/santorin.png', 'Santorin', 1100.00, 'Europe	', 'Plage'),
(5, 'Souks animés, palais, et ambiance orientale magique.', '/images/marrakech.png', 'Marrakech', 650.00, 'Afrique', 'Aventure\r\n'),
(6, 'Aventures en mer, plages exotiques et temples cachés.', '/images/phuket.png', 'Phuket', 1350.00, 'Asie', 'Plage'),
(7, 'Ruines antiques, pizzas et fontaines mythiques.', '/images/rome.png', 'Rome', 750.00, 'Europe	', 'Culturel\r\n'),
(8, 'Plages urbaines, Gaudí et tapas savoureuses.', '/images/barcelone.png', 'Barcelone', 700.00, 'Europe	', 'Plage'),
(9, 'Traditions et technologie au cœur du Japon.', '/images/tokyo.png', 'Tokyo', 1900.00, 'Asie', 'Culturel\r\n'),
(10, 'Mosquées majestueuses et bazars aux mille couleurs.', '/images/istanbul.png', 'Istanbul', 550.00, 'Europe	', 'Culturel\r\n'),
(11, 'Musées, monuments historiques et shopping chic.', '/images/londres.png', 'Londres', 800.00, 'Europe	', 'Culturel'),
(12, 'Luxe, gratte-ciel modernes et désert doré.', '/images/dubai.png', 'Dubaï', 1600.00, 'Asie	', 'Aventure\r\n'),
(13, 'Pyramides légendaires, Nil et histoire millénaire.', '/images/caire.png', 'Le Caire', 600.00, 'Afrique	', 'Culturel'),
(14, 'Temples brillants, marchés flottants et street food.', '/images/bangok.png', 'Bangkok', 1200.00, 'Asie	', 'Aventure\r\n'),
(15, 'Plages mythiques, carnaval et Pain de Sucre.', '/images/rio.png', 'Rio de Janeiro', 1500.00, 'Amérique', 'Aventure'),
(16, 'Hollywood, plages californiennes et studios de cinéma.', '/images/los.png', 'Los Angeles', 1700.00, 'Amérique	', 'Culturel\r\n'),
(17, 'Opéra iconique, surf et lifestyle australien.', '/images/sydney.png', 'Sydney', 2100.00, 'Océanie', 'Aventure\r\n'),
(18, 'Canaux romantiques, gondoles et palais vénitiens.', '/images/venice.png', 'Venise', 950.00, 'Europe	', 'Culturel'),
(19, 'Canaux paisibles, vélos et musées réputés.', '/images/ams.png', 'Amsterdam', 780.00, 'Europe	', 'Culturel'),
(20, 'Château gothique, pont Charles et charme médiéval.', '/images/prague.png', 'Prague', 680.00, 'Europe	', 'Culturel');

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` bigint(20) NOT NULL,
  `contenu` varchar(255) DEFAULT NULL,
  `date_envoi` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `sujet` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `contenu`, `date_envoi`, `email`, `nom`, `sujet`) VALUES
(1, 'prix svp', '2025-07-25 12:05:01.000000', 'bouzidmed38@gmail.com', 'mohamed', 'je veux un voyage a bali'),
(2, 'prix svp', '2025-08-04 13:59:24.000000', 'bouzidmed33@gmail.com', 'mohamed', 'je veux un voyage a bali'),
(3, 'r', '2025-08-04 13:59:46.000000', 'bouzidmed38@gmail.com', '4342', 'je veux un voyage a bali');

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) NOT NULL,
  `date_reservation` date DEFAULT NULL,
  `email_client` varchar(255) DEFAULT NULL,
  `nom_client` varchar(255) DEFAULT NULL,
  `destination_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`id`, `date_reservation`, `email_client`, `nom_client`, `destination_id`) VALUES
(1, '2025-07-25', 'bouzidmed38@gmail.com', 'Mohamed Bouzid', 1);

-- --------------------------------------------------------

--
-- Structure de la table `temoignages`
--

CREATE TABLE `temoignages` (
  `id` bigint(20) NOT NULL,
  `approuve` bit(1) NOT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `nom_client` varchar(255) DEFAULT NULL,
  `destination_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `temoignages`
--

INSERT INTO `temoignages` (`id`, `approuve`, `message`, `nom_client`, `destination_id`) VALUES
(1, b'1', 'merci pour votre service', 'Mohamed Bouzid', NULL),
(2, b'1', 'je recommande cette agence', 'rami', NULL),
(3, b'1', 'Bali est superr', 'Ons', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8wohtkm7spmw2acp6tinhxk5a` (`destination_id`);

--
-- Index pour la table `temoignages`
--
ALTER TABLE `temoignages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4q26jl6xb0y1jwqnn4j0wrhk5` (`destination_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `temoignages`
--
ALTER TABLE `temoignages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `FK8wohtkm7spmw2acp6tinhxk5a` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`);

--
-- Contraintes pour la table `temoignages`
--
ALTER TABLE `temoignages`
  ADD CONSTRAINT `FK4q26jl6xb0y1jwqnn4j0wrhk5` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
