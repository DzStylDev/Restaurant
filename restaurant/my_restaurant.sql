-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : dim. 13 oct. 2024 à 02:03
-- Version du serveur : 8.0.39-0ubuntu0.22.04.1
-- Version de PHP : 8.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `my_restaurant`
--

-- --------------------------------------------------------

--
-- Structure de la table `restaurant_entity`
--

CREATE TABLE `restaurant_entity` (
  `id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `restaurant_entity`
--

INSERT INTO `restaurant_entity` (`id`, `address`, `color`, `contact`, `image`, `name`, `password`, `tel`, `url`) VALUES
(1, NULL, '#0024b3', NULL, 'https://images.pexels.com/photos/325044/pexels-photo-325044.jpeg', 'sali', '123', NULL, 'sali_restaurant'),
(2, '14 rue des sandriers', '#ff7070', '01.25.36.56.80', 'https://images.pexels.com/photos/325044/pexels-photo-325044.jpeg', 'hamoud', '123', '06.25.40.60.42', 'hamoud_restaurant'),
(3, '78 rue des Hald', '#d10000', '04.56.23.54.26', 'https://www.judgehype.com/screenshots/battlenetclient/avatars/16.jpg', 'flash', '1234', '01.24.56.32.54', 'flashy_restaurant'),
(4, NULL, '#fc2727', NULL, 'https://images.pexels.com/photos/325044/pexels-photo-325044.jpeg', 'pailie', '1234', NULL, 'pailie_restaurant'),
(5, NULL, '#3100a3', NULL, 'https://images.pexels.com/photos/325044/pexels-photo-325044.jpeg', 'Restoly', '123', NULL, 'Restoly_restaurant'),
(6, NULL, '#3d6eff', NULL, 'https://blz-contentstack-images.akamaized.net/v3/assets/blt3452e3b114fab0cd/bltae668670e264a011/616daa1b4d5a4b1063b3743f/races_card_art_pandaren_alliance.png', 'joel', '123', NULL, 'joel_restaurant');

-- --------------------------------------------------------

--
-- Structure de la table `restaurant_entity_cartes`
--

CREATE TABLE `restaurant_entity_cartes` (
  `id` int NOT NULL,
  `boisson_chaude` varchar(255) DEFAULT NULL,
  `plats` varchar(255) DEFAULT NULL,
  `salades/entrées` varchar(255) DEFAULT NULL,
  `soda_eau` varchar(255) DEFAULT NULL,
  `restaurant_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `restaurant_entity_cartes`
--

INSERT INTO `restaurant_entity_cartes` (`id`, `boisson_chaude`, `plats`, `salades/entrées`, `soda_eau`, `restaurant_id`) VALUES
(1, ',Limonade', ',Couscous', ',Laitue', ',coca cherry,Oasis,coca cherry', 1),
(2, ',Ice Tea,caroote rapper', ',Hamburger,Couscous', '', ',Eau,oeasi,coca cherry', 2),
(3, '', '', '', '', 3),
(4, ',Café chaud,Boisson fraiche', ',Hamburger,Couscous', ',Laitue,Iceberg', ',Ice-tea', 4),
(5, ',Ice-tea,Café chaud,tarte de nutella', ',Couscous,Khelbelouze,Jalben', ',Laitue,Iceberg', ',coca cherry', 5),
(6, ',Café chaud', ',Assiete de frite maison,Assiete de frite maison2', ',Salades Laitue,Salade bleu', ',Ice-tea', 6);

-- --------------------------------------------------------

--
-- Structure de la table `restaurant_entity_complements`
--

CREATE TABLE `restaurant_entity_complements` (
  `id` int NOT NULL,
  `button_ajout_menu` varchar(255) DEFAULT NULL,
  `button_ajout_plat` varchar(255) DEFAULT NULL,
  `link1` varchar(255) DEFAULT NULL,
  `link2` varchar(255) DEFAULT NULL,
  `restaurant_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `restaurant_entity_complements`
--

INSERT INTO `restaurant_entity_complements` (`id`, `button_ajout_menu`, `button_ajout_plat`, `link1`, `link2`, `restaurant_id`) VALUES
(1, '#151c79', '#32b2d2', 'https://res.cloudinary.com/tf-lab/image/upload/w_600,h_310,c_fill,g_auto:subject,q_auto,f_auto/restaurant/7e095035-7182-4ccb-97da-72d0247cf344/6c80c093-c990-400a-9326-76ef0f825c63.jpg', 'https://res.cloudinary.com/tf-lab/image/upload/w_640,c_fill,q_auto,f_auto/restaurant/9fb61340-b180-4175-b584-a12af8d0d387/d136c6df-2d8a-47c2-b3ac-7e450a186734.jpg', 1),
(2, '#0ed836', '#020080', 'https://res.cloudinary.com/tf-lab/image/upload/w_600,h_310,c_fill,g_auto:subject,q_auto,f_auto/restaurant/7e095035-7182-4ccb-97da-72d0247cf344/6c80c093-c990-400a-9326-76ef0f825c63.jpg', 'https://res.cloudinary.com/tf-lab/image/upload/w_640,c_fill,q_auto,f_auto/restaurant/9fb61340-b180-4175-b584-a12af8d0d387/d136c6df-2d8a-47c2-b3ac-7e450a186734.jpg', 2),
(3, '#164288', '#0320b0', 'https://res.cloudinary.com/tf-lab/image/upload/w_600,h_310,c_fill,g_auto:subject,q_auto,f_auto/restaurant/7e095035-7182-4ccb-97da-72d0247cf344/6c80c093-c990-400a-9326-76ef0f825c63.jpg', 'https://res.cloudinary.com/tf-lab/image/upload/w_640,c_fill,q_auto,f_auto/f_auto,q_auto,w_800,c_limit/customer/bdcb023b-b71f-44f0-85f5-f3eb02f45e16/bc1e1e17-6402-4f24-9578-0acb7914b4ca.jpg', 3),
(4, '#bbfe2a', '#007bff', 'https://res.cloudinary.com/tf-lab/image/upload/w_600,h_310,c_fill,g_auto:subject,q_auto,f_auto/restaurant/7e095035-7182-4ccb-97da-72d0247cf344/6c80c093-c990-400a-9326-76ef0f825c63.jpg', 'https://res.cloudinary.com/tf-lab/image/upload/w_640,c_fill,q_auto,f_auto/restaurant/9fb61340-b180-4175-b584-a12af8d0d387/d136c6df-2d8a-47c2-b3ac-7e450a186734.jpg', 4),
(5, '#003fa3', '#d7d93a', 'https://res.cloudinary.com/tf-lab/image/upload/w_640,c_fill,q_auto,f_auto/f_auto,q_auto,w_800,c_limit/customer/bdcb023b-b71f-44f0-85f5-f3eb02f45e16/d4ecf9a1-32a6-44af-a380-f17f0a39bfa2.jpg', 'https://res.cloudinary.com/tf-lab/image/upload/w_640,c_fill,q_auto,f_auto/restaurant/9fb61340-b180-4175-b584-a12af8d0d387/1011825f-ffbb-4090-a719-8416fe956ca3.jpg', 5),
(6, '#25ef86', '#994d05', 'https://res.cloudinary.com/tf-lab/image/upload/w_640,c_fill,q_auto,f_auto/f_auto,q_auto,w_800,c_limit/customer/bdcb023b-b71f-44f0-85f5-f3eb02f45e16/d4ecf9a1-32a6-44af-a380-f17f0a39bfa2.jpg', 'https://res.cloudinary.com/tf-lab/image/upload/w_640,c_fill,q_auto,f_auto/f_auto,q_auto,w_800,c_limit/customer/bdcb023b-b71f-44f0-85f5-f3eb02f45e16/bc1e1e17-6402-4f24-9578-0acb7914b4ca.jpg', 6);

-- --------------------------------------------------------

--
-- Structure de la table `restaurant_entity_menus`
--

CREATE TABLE `restaurant_entity_menus` (
  `id` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `carte_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `restaurant_entity_menus`
--

INSERT INTO `restaurant_entity_menus` (`id`, `description`, `name`, `carte_id`) VALUES
(13, 'Super ce meenu', 'Paila2', 2),
(19, 'Un menu de salade pour yema', 'Saladier2', 4),
(20, 'sdfs', 'test', 2),
(22, 'Un menu tirer de la livre de la jungle', 'Suculenté Res', 5),
(23, 'Un plat succulent ', 'Salamanté', 5),
(24, 'Le menu 1', 'Menu 1', 6),
(25, 'Le menu 2', 'Menu 2', 6);

-- --------------------------------------------------------

--
-- Structure de la table `restaurant_entity_menu_plat`
--

CREATE TABLE `restaurant_entity_menu_plat` (
  `id` int NOT NULL,
  `menu_id` int DEFAULT NULL,
  `plat_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `restaurant_entity_menu_plat`
--

INSERT INTO `restaurant_entity_menu_plat` (`id`, `menu_id`, `plat_id`) VALUES
(54, 20, 2),
(55, 13, 2),
(56, 19, 2),
(58, 22, 1),
(59, 23, 3),
(62, 24, 2);

-- --------------------------------------------------------

--
-- Structure de la table `restaurant_entity_plats`
--

CREATE TABLE `restaurant_entity_plats` (
  `id` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `ingrédients` varchar(255) DEFAULT NULL,
  `plat_name` varchar(255) NOT NULL,
  `prix` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `restaurant_entity_plats`
--

INSERT INTO `restaurant_entity_plats` (`id`, `description`, `image`, `ingrédients`, `plat_name`, `prix`) VALUES
(1, 'plat 1', 'https://res.cloudinary.com/tf-lab/image/upload/w_640,c_fill,q_auto,f_auto/restaurant/9fb61340-b180-4175-b584-a12af8d0d387/d136c6df-2d8a-47c2-b3ac-7e450a186734.jpg', 'crême fraiche,oignon vert,piment vert,piment rouge', 'SpecSpale', 15),
(2, 'Super plat savoureux', 'https://res.cloudinary.com/tf-lab/image/upload/w_640,c_fill,q_auto,f_auto/restaurant/9fb61340-b180-4175-b584-a12af8d0d387/d136c6df-2d8a-47c2-b3ac-7e450a186734.jpg', 'sucre,poudre,poivron,champignon,escalope', 'SavoureuxPlat', 22),
(3, 'Un super plat', 'https://images.pexels.com/photos/260922/pexels-photo-260922.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'Salade multi-feuilles, poulet, tomates, oignons rouges, croûtons, oeufs durs 16.- CHF en plat', 'Salato', 1.55);

-- --------------------------------------------------------

--
-- Structure de la table `restaurant_entity_rating`
--

CREATE TABLE `restaurant_entity_rating` (
  `id` int NOT NULL,
  `commentaire` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `restaurant_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `restaurant_entity_rating`
--

INSERT INTO `restaurant_entity_rating` (`id`, `commentaire`, `date`, `email`, `name`, `note`, `restaurant_id`) VALUES
(1, '1er commentaire', '2024-07-18', 'bonjour@hotmail.com', 'Trivia', '4', 2),
(2, '2eme commentaire', '2024-02-02', 'amsdkljfqs@hota.fr', 'verou', '2', 2),
(3, 'dernier commentaire', '2023-12-28', 'amsdkljfqs@hota.fr', 'efefsfd', '4', 2),
(4, 'Commentaire pour le restaurant sali', '2024-08-27', 'test@sefgjdqskkf.com', 'amine', '4', 1),
(5, '2eme commentaire', '2024-07-12', 'amsdkljfqs@hota.fr', 'verou', '4', 1),
(6, 'Restaurant super cool2', '2024-01-03', 'amsdkljfqs@hota.fr', 'amine', '3', 2),
(7, 'Meilleure restaurant', '2022-12-30', 'testArriver@hotmail.com', 'verou', '5', 2),
(8, 'Un tout nouveaux commentaire', '2025-01-02', 'tonCodf@hmai.com', 'Dz45', '4', 2),
(9, 'Super restaurant', '2024-07-18', 'bonjour@hotmail.com', 'verou4', '3', 3),
(10, 'Très bon restaurant', '2024-07-19', 'bonjour@hotmail.com', 'verou4', '5', 4),
(11, 'Très bon restaurant', '2024-07-11', 'test@sefgjdqskkf.com', 'Testeur', '3', 5),
(12, 'Restaurant chic', '2024-01-03', 'testArriver@hotmail.com', 'Johny', '4', 5),
(13, '1er commentaire', '2024-07-18', 'test@sefgjdqskkf.com', 'verou4', '4', 6);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `restaurant_entity`
--
ALTER TABLE `restaurant_entity`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `restaurant_entity_cartes`
--
ALTER TABLE `restaurant_entity_cartes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKho41nrn5mohthvotubsnhqxr8` (`restaurant_id`);

--
-- Index pour la table `restaurant_entity_complements`
--
ALTER TABLE `restaurant_entity_complements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK2atqfu30fjw3txeyujkak2ylh` (`restaurant_id`);

--
-- Index pour la table `restaurant_entity_menus`
--
ALTER TABLE `restaurant_entity_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6f1gj2elcpcb0t5sdnq2tuxwd` (`carte_id`);

--
-- Index pour la table `restaurant_entity_menu_plat`
--
ALTER TABLE `restaurant_entity_menu_plat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKr9lw3kat7l6mj5cafxhs6p2sj` (`menu_id`),
  ADD KEY `FK7p4k1cy5ot7fgba9bsm94cbwy` (`plat_id`);

--
-- Index pour la table `restaurant_entity_plats`
--
ALTER TABLE `restaurant_entity_plats`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `restaurant_entity_rating`
--
ALTER TABLE `restaurant_entity_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbqtrcumx99igln7r1l9d9gbc3` (`restaurant_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `restaurant_entity`
--
ALTER TABLE `restaurant_entity`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `restaurant_entity_cartes`
--
ALTER TABLE `restaurant_entity_cartes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `restaurant_entity_complements`
--
ALTER TABLE `restaurant_entity_complements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `restaurant_entity_menus`
--
ALTER TABLE `restaurant_entity_menus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `restaurant_entity_menu_plat`
--
ALTER TABLE `restaurant_entity_menu_plat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT pour la table `restaurant_entity_plats`
--
ALTER TABLE `restaurant_entity_plats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `restaurant_entity_rating`
--
ALTER TABLE `restaurant_entity_rating`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `restaurant_entity_cartes`
--
ALTER TABLE `restaurant_entity_cartes`
  ADD CONSTRAINT `FK_restaurant_entity_cartes_restaurant` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant_entity` (`id`);

--
-- Contraintes pour la table `restaurant_entity_complements`
--
ALTER TABLE `restaurant_entity_complements`
  ADD CONSTRAINT `FK_restaurant_entity_complements_restaurant` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant_entity` (`id`);

--
-- Contraintes pour la table `restaurant_entity_menus`
--
ALTER TABLE `restaurant_entity_menus`
  ADD CONSTRAINT `FK6f1gj2elcpcb0t5sdnq2tuxwd` FOREIGN KEY (`carte_id`) REFERENCES `restaurant_entity_cartes` (`id`);

--
-- Contraintes pour la table `restaurant_entity_menu_plat`
--
ALTER TABLE `restaurant_entity_menu_plat`
  ADD CONSTRAINT `FK7p4k1cy5ot7fgba9bsm94cbwy` FOREIGN KEY (`plat_id`) REFERENCES `restaurant_entity_plats` (`id`),
  ADD CONSTRAINT `FKr9lw3kat7l6mj5cafxhs6p2sj` FOREIGN KEY (`menu_id`) REFERENCES `restaurant_entity_menus` (`id`);

--
-- Contraintes pour la table `restaurant_entity_rating`
--
ALTER TABLE `restaurant_entity_rating`
  ADD CONSTRAINT `FKbqtrcumx99igln7r1l9d9gbc3` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant_entity` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
