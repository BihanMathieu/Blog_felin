-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db.3wa.io
-- Généré le : mer. 01 fév. 2023 à 14:47
-- Version du serveur :  5.7.33-0ubuntu0.18.04.1-log
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mathieubihan_Blog_felin`
--

CREATE DATABASE IF NOT EXISTS Blog_felin;
USE Blog_felin;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL,
  `media_id` int(11) NOT NULL,
  `alt_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `category`, `content`, `username`, `date`, `media_id`, `alt_image`) VALUES
(191, 'Actualit&eacute', '<h2>Les &eacutemouvantes retrouvailles d\'un chat</h2><p>&nbsp;</p><p>&nbsp;</p><p>Roxy Heinhorst et son mari Drake habitent East Peoria dans lâ€™Etat de lâ€™Illinois. Le couple a un chat American Shorthair, r&eacutepondant au nom dâ€™Oliver et &agrave;¢g&eacute de 5 ans.</p><p>Le f&eacutelin nâ€™est pas du genre &agrave;  sâ€™aventurer dehors. Il pr&eacutef&egrave;re largement le confort et la s&eacutecurit&eacute de la maison, aupr&egrave;s de ses humains. Alors, lorsquâ€™il s\'est &eacuteloign&eacute du domicile et est rest&eacute introuvable pendant de longues heures, ces derniers ont eu extr&egravemement peur pour lui, rapportait MSN.</p><p>Lâ€™incident a eu lieu le mardi 27 septembre. Ce matin-l&agrave; , Roxy et Drake avaient quitt&eacute la maison dans la pr&eacutecipitation pour aller travailler. Oliver avait profit&eacute de cette agitation pour sortir.</p><p>Ses propri&eacutetaires ne sâ€™en &eacutetaient rendu compte quâ€™&agrave;  leur retour du travail en fin de journ&eacutee. Ils en ont eu la confirmation en visionnant les enregistrements de leur visiophone. D&egrave;s lors, ils se sont lanc&eacutes &agrave;  sa recherche, ratissant le quartier et demandant aux voisins si lâ€™un dâ€™eux lâ€™avait aper&agrave;§u.</p><p>Malgr&eacute leurs efforts, ils &eacutetaient toujours sans nouvelles du chat. Puis, peu apr&egrave;s 19h locales, Roxy est sortie d&eacuteposer la couverture dâ€™Oliver sous le porche quand elle a vu une silhouette famili&egrave;re sâ€™approcher de la porte. Câ€™&eacutetait lui !</p><h2>Â« Nous &eacutetions si heureux de savoir qu\'il &eacutetait en s&eacutecurit&eacute Â»</h2><p>&nbsp;</p><p>Drake est revenu sur ce moment que lui et sa femme nâ€™oublieront pas de sit&agrave;´t. Â« Nous venions de rentrer chez nous apr&egrave;s avoir fouill&eacute le quartier pendant quelques heures, raconte-t-il. Nous &eacutetions si heureux de savoir qu\'il &eacutetait en s&eacutecurit&eacute, car nous vivons pr&egrave;s d\'une autoroute tr&egrave;s fr&eacutequent&eacutee et notre quartier a &eacutegalement eu des visites de coyotes auparavant. Â»</p>', 'mathieu', '2022-10-17 17:37:31', 209, 'image de la maitresse tenant sont chat'),
(192, 'Actualit&eacute', '<h2>Elle sauve son chat de justesse</h2><p>&nbsp;</p><p>Victime dâ€™agissements scandaleux et qui auraient bien pu lui &egravetre fatals, un chat a &eacutechapp&eacute in extremis &agrave;  la noyade gr&agrave;¢ce &agrave;  lâ€™intervention de sa propri&eacutetaire, alert&eacutee par ses cris, rapportait Sud Info.</p><p>Les faits ont eu lieu &agrave;  Oudewater, ville de lâ€™ouest des Pays-Bas. Ellis de Korte, qui habite au bord dâ€™un canal, se trouvait chez elle le soir du dimanche 2 octobre. Elle a entendu son animal de compagnie pousser des miaulement de d&eacutetresse et est aussit&agrave;´t sortie le rejoindre.</p><p>Son chat Rody &eacutetait tomb&eacute &agrave;  lâ€™eau et tentait d&eacutesesp&eacuter&eacutement de regagner la berge. La jeune femme a r&eacuteussi &agrave;  le sauver, avant de le ramener &agrave;  la maison pour le s&eacutecher, r&eacutechauffer et r&eacuteconforter.</p><p>Le quadrup&egrave;de a surv&eacutecu gr&agrave;¢ce &agrave;  elle, mais Ellis de Korte &eacutetait convaincue quâ€™il nâ€™&eacutetait pas tomb&eacute dans le canal tout seul. On lâ€™y avait forc&eacutement plong&eacute. Elle en a eu la confirmation en visionnant les images enregistr&eacutees par le syst&egrave;me de vid&eacuteosurveillance install&eacute devant chez elle.</p><p>&nbsp;</p><h3>Un appel &agrave;  t&eacutemoin lanc&eacute</h3><p>Des s&eacutequences que la propri&eacutetaire de Rody a partag&eacutees sur les r&eacuteseaux sociaux dans lâ€™espoir quâ€™on lâ€™aide &agrave;  identifier ces 2 jeunes gens &agrave;  la cruaut&eacute sans nom, afin quâ€™ils r&eacutepondent de leurs actes devant la justice.</p>', 'mathieu', '2022-10-17 17:42:28', 210, 't&egravete de chat'),
(193, 'Actualit&eacute', '<h2>Un homme, pour qui il &eacutetait hors de question dâ€™avoir un f&eacutelin</h2><p>&nbsp;</p><p>Tony Kaina en &eacutetait convaincu : il ne vivrait jamais avec un chat. Les f&eacutelins, ce nâ€™&eacutetait vraiment pas pour lui. Pourtant, cela fait maintenant 3 ans quâ€™il est le plus grand fan de son chat Stanley. Et câ€™est une dr&agrave;´le dâ€™histoire, relat&eacutee par Leaders publication, qui a conduit Tony &agrave;  changer dâ€™avis sur ces animaux.</p><p>Tony vit dans le Missouri, aux &agrave;‰tats-Unis. Un jour de 2019, une chatte errante et gestante a choisi que ce serait dans son jardin que ses petits verraient le jour. Câ€™&eacutetait LE lieu dans lequel elle se sentirait suffisamment bien et en s&eacutecurit&eacute pour mettre bas.</p><p>Câ€™est ainsi que Tony est tomb&eacute nez &agrave;  nez avec de nombreux adorables chatons, et quâ€™il a craqu&eacute. Parmi les petits, il a choisi dâ€™en garder un, quâ€™il a appel&eacute Stanley. Ce pr&eacutenom faisait r&eacutef&eacuterence &agrave;  la â€œCoupe Stanleyâ€, un championnat de hockey sur glace qui venait dâ€™&egravetre gagn&eacute par lâ€™&eacutequipe support&eacutee par Tony</p><p>&nbsp;</p><h3>Stanley a transform&eacute Tony en v&eacuteritable personne &agrave;  chats</h3><p>Cela fait maintenant 3 ans que Stanley et Tony sont deux copains ins&eacuteparables. Ils sâ€™amusent beaucoup tous les deux, et Tony est clairement devenu une personne &agrave;  chats. â€œIl est tellement intelligent. Il joue &agrave;  chercher. Il a des petits jouets en forme de souris. Je les jette et il les ram&egrave;ne. Il vient quand on l\'appelleâ€, a-t-il racont&eacute.</p><p>Tony a succomb&eacute au charme de cet &egravetre â€œloyal, aimant et attentionn&eacuteâ€, et ne regrette pas dâ€™avoir su mettre ses pr&eacutejug&eacutes de c&agrave;´t&eacute pour lui donner une chance.</p>', 'mathieu', '2022-10-17 18:01:52', 211, 'photo du chat de tony'),
(197, 'Actualit&eacute', '<h2>Quelles sont les diff&eacuterences entre un fauve et un f&eacutelin ?</h2><p>&nbsp;</p><p>Afin de distinguer les fauves des f&eacutelins, il convient dâ€™abord de pr&eacuteciser que si le terme â€œf&eacutelinâ€ est utilis&eacute par les scientifiques, le terme â€œfauveâ€ est â€œun terme tr&egrave;s g&eacuten&eacuterique, qui nâ€™a pas de valeur taxonomique aujourdâ€™huiâ€, avance dâ€™embl&eacutee G&eacuteraldine Veron, professeure au Mus&eacuteum National dâ€™Histoire Naturelle, membre de lâ€™Institut Syst&eacutematique Evolution et Biodiversit&eacute. â€œIl nâ€™entre pas dans la classification des esp&egrave;ces telle quâ€™on lâ€™utilise en tant que scientifiquesâ€, dit-elle. Lâ€™on parle souvent de â€œlâ€™odeur de fauveâ€ pour se r&eacutef&eacuterer &agrave;  lâ€™odeur d&eacutegag&eacutee par de grandes b&egravetes sauvages, dâ€™o&agrave;¹ peut-&egravetre une certaine confusion.</p><p>&nbsp;</p><h3>Fauves et grands f&eacutelins</h3><p>Au sein de cette famille des F&eacutelid&eacutes, lâ€™on trouve notamment les grands f&eacutelins, qui sont souvent ceux quâ€™on assimile aux â€œfauvesâ€. Il sâ€™agit des F&eacutelid&eacutes qui appartiennent au genre Panthera, &agrave;  savoir le jaguar, le l&eacuteopard (appel&eacute ainsi en Afrique, et panth&egrave;re en Asie), le lion, le tigre et la panth&egrave;re des neiges.</p><p>Certains assimilent &eacutegalement au sein des grands f&eacutelins lâ€™ensemble de la sous-famille des Panth&eacuterin&eacutes, qui regroupe 2 genres et 7 esp&egrave;ces. Aux animaux cit&eacutes pr&eacutec&eacutedemment, il faut ainsi ajouter deux esp&egrave;ces de panth&egrave;re n&eacutebuleuse, du genre Neofelis.</p><p>&nbsp;</p><h3>Les caract&eacuteristiques communes aux f&eacutelid&eacutes</h3><p>Les f&eacutelins - ou F&eacutelid&eacutes, donc - partagent de nombreuses caract&eacuteristiques avec les mammif&egrave;res carnivores, mais poss&egrave;dent aussi des sp&eacutecificit&eacutes. Parmi leurs traits distinctifs, notons par exemple un cr&agrave;¢ne court dot&eacute de muscles tr&egrave;s importants, une colonne vert&eacutebrale tr&egrave;s souple et des membres ant&eacuterieurs tr&egrave;s mobiles. Cette grande mobilit&eacute vient notamment de la quasi-inexistance de la clavicule chez ces esp&egrave;ces, souligne G&eacuteraldine Veron. Au niveau de la dentition, les f&eacutelid&eacutes ont de tr&egrave;s longues canines, qui servent &agrave;  maintenir leurs proies et &agrave;  leur mise &agrave;  mort. Ils ont en outre des dents carnassi&egrave;res tr&egrave;s d&eacutevelopp&eacutees, en arri&egrave;re desquelles lâ€™on ne trouve plus de dents, ou presque. â€œLes F&eacutelid&eacutes sont dot&eacutes dâ€™une force de morsure tr&egrave;s importanteâ€, avance aussi G&eacuteraldine Veron. â€œLa plupart ont des griffes r&eacutetractiles, car &agrave;  lâ€™origine il sâ€™agit dâ€™animaux plut&agrave;´t arboricoles, qui grimpent aux arbresâ€, ajoute-t-elle.</p><p>Enfin, leurs sens sont extr&egravemement d&eacutevelopp&eacutes, avec notamment une excellente vision nocturne, et une excellente vision binoculaire li&eacutee &agrave;  la pr&eacutesence de leurs yeux sur lâ€™avant de la face. â€œAu niveau du palais, ils ont ce quâ€™on appelle lâ€™organe de Jakobson, qui permet de d&eacutetecter les ph&eacuteromones. Lâ€™un des traits caract&eacuteristiques des F&eacutelid&eacutes est dâ€™ailleurs le â€œflehmenâ€, une attitude que lâ€™on remarque lorsquâ€™ils rel&egrave;vent leurs babines et effectuent une sorte de grimace, grimace, leur permettant dâ€™exposer cet organe pour d&eacutetecter les ph&eacuteromones.</p>', 'mathieu', '2022-10-17 18:33:43', 215, 'photo jaguar'),
(198, 'Actualit&eacute', '<h2>Roubaix. Un grand f&eacutelin retrouv&eacute mort sur un rond-point.</h2><p>&nbsp;</p><p>Un lynx ou un serval, a &eacutet&eacute retrouv&eacute mort, mardi 13&nbsp;septembre, sur un rond-point de Roubaix (Nord). Une enqu&egravete est en cours afin de mieux comprendre les circonstances de sa pr&eacutesence et de son d&eacutec&egrave;s, alors m&egraveme que plusieurs grands f&eacutelins ont d&eacutej&agrave;  &eacutet&eacute aper&agrave;§us dans la r&eacutegion depuis 2019.</p><p>Un grand f&eacutelin a &eacutet&eacute retrouv&eacute mort sur un rond-point de Roubaix (Nord), mardi 13 septembre 2022. Ce sont des agents du service des espaces verts de la Ville qui lâ€™ont d&eacutecouvert, rapporte Lille actu. Dâ€™apr&egrave;s les premi&egrave;res constatations de la police municipale, il pourrait sâ€™agir dâ€™un lynx ou dâ€™un serval, mort depuis plusieurs jours.</p><p>&nbsp;</p><p>&nbsp;</p><h3>La d&eacutepouille &eacutetait envelopp&eacutee dans une couverture</h3><p>La d&eacutepouille de lâ€™animal &eacutetait envelopp&eacutee dans une couverture. Elle a &eacutet&eacute remise &agrave;  la Ligue protectrice des animaux (LPA) du Nord. Â« Une enqu&egravete permettra de d&eacuteterminer la race exacte du f&eacutelin et il conviendra de d&eacuteterminer dans quelles conditions il a &eacutet&eacute d&eacutetenu Â», a indiqu&eacute la police municipale de Roubaix. Les autorit&eacutes ont par ailleurs rappel&eacute que Â« la d&eacutetention dâ€™animaux sauvages est strictement interdite Â».</p><p>Le nord de la France a connu ces derni&egrave;res ann&eacutees plusieurs affaires marquantes concernant des grands f&eacutelins. On se souvient notamment de la panth&egrave;re noir d\'amerique en 2019 ou encore du potentiel puma du Pas-de-Calais en octobre 2021.</p>', 'mathieu', '2022-10-17 18:42:31', 216, 'photo de lynx'),
(199, 'Esp&egrave;ce', '<h2>Chartreux</h2><p>Les chartreux ont un caract&egrave;re tr&egrave;s &eacutequilibr&eacute. Ils sont amicaux, calmes et tranquilles, mais toujours pr&eacutesents</p><p>Les chartreux s\'entendent bien avec les autres chats, les chiens et les enfants. Ces chats n\'ont pas besoin d\'une attention permanente, mais ils sont tr&egrave;s contents d\'&egravetre &agrave;  proximit&eacute de leur ma&agrave;®tre. Ils le suivent o&agrave;¹ qu\'il aille dans la maison, tout en gardant leurs distances.</p><p>Ce sont des chats tr&egrave;s discrets. Les chartreux aiment l\'escalade et ont la r&eacuteputation d\'&egravetre de bons chasseurs.</p><p>Source&nbsp;: faits et caract&eacuteristiques cl&eacutes issus du World Cat Congress (WCC)</p><p>&nbsp;</p><p>&nbsp;</p><h2>Particularit&eacutes de la race</h2><p>Pays &nbsp; &nbsp; France</p><p>Pelage &nbsp; Poils mi-longs</p><p>Cat&eacutegorie de taille &nbsp; De taille moyenne</p><p>Esp&eacuterance de vie moyenne &nbsp; 12â€“15 ans</p><p>Tranquille / Affectueux / Fid&egrave;le / Calme</p><p>&nbsp;</p><h2>Faits marquants</h2><p>A besoin de peu de toilettageFaible entretienBien adapt&eacute &agrave;  la vie en int&eacuterieur</p>', 'mathieu', '2022-10-17 18:47:32', 217, 'photo de chartreux'),
(201, 'Esp&egrave;ce', '<h2>American shorthair</h2><p>&nbsp;</p><p>L\'american shorthair, chat d&eacutetendu et d&eacutecontract&eacute, continue d\'&egravetre dynamique et joueur, m&egraveme &agrave;  un &agrave;¢ge avanc&eacute.</p><p>Joueur, d\'expression douce et ouverte, et dot&eacute d\'un pelage court et brillant, l\'american shorthair a conserv&eacute l\'allure f&eacuteline de ses anc&egravetres chasseurs. C\'est un chat facile &agrave;  vivre et sympathique. Il est tr&egrave;s populaire aupr&egrave;s des familles en raison de sa nature joueuse et de ses bons rapports avec les enfants.</p><p>De mani&egrave;re g&eacuten&eacuterale, l\'american shorthair est intelligent et s\'int&eacuteresse &agrave;  tout ce qui l\'entoure. Il appr&eacutecie la compagnie des humains tout en conservant son ind&eacutependance. Cette race de chats est connue pour sa long&eacutevit&eacute, sa robustesse, sa personnalit&eacute amicale et sa patience avec les chiens et les autres animaux domestiques.</p><p>Source&nbsp;: faits et caract&eacuteristiques cl&eacutes issus du World Cat Congress (WCC)</p><p>&nbsp;</p><h3>Particularit&eacutes de la race</h3><p>&nbsp;</p><p>Pays &nbsp; &agrave;‰tats-Unis</p><p>Pelage &nbsp; Poils courts</p><p>Cat&eacutegorie de taille &nbsp; De taille moyenne</p><p>Esp&eacuterance de vie moyenne &nbsp; 15â€“20 ans</p><p>&nbsp;</p><p>Calme / Sociable / Tranquille / Intelligent / Ind&eacutependant / Joueur</p><p>&nbsp;</p><h3>Faits marquants</h3><p>&nbsp;</p>A besoin de beaucoup d\'espaceConvient &agrave;  la vie d\'int&eacuterieur et d\'ext&eacuterieurA besoin de peu de toilettage', 'mathieu', '2022-10-17 20:28:25', 219, 'photo americain shorthair'),
(202, 'Esp&egrave;ce', '<h2>Persan</h2><p>&nbsp;</p><p>Malgr&eacute leur voix charmante et musicale, les persans pr&eacutef&egrave;rent communiquer avec leurs ma&agrave;®tres en utilisant leurs expressions intelligentes.</p><p>Les persans sont naturellement doux, gentils, tranquilles et faciles &agrave;  vivre. Ils aiment &egravetre peign&eacutes et caress&eacutes par des enfants, mais ils ne participeront probablement pas &agrave;  des jeux turbulents avec eux.</p><p>Les persans ont leurs petites habitudes et pr&eacutef&egrave;rent les ambiances calmes et &egravetre manipul&eacutes avec douceur. Ils aiment la s&eacutecurit&eacute dâ€™&egravetre au sol et ne grimpent pas souvent. Ils jouent avec enthousiasme avec des jouets, mais appr&eacutecient tout autant de se pr&eacutelasser dans leur endroit favori.</p><p>Source&nbsp;: faits et caract&eacuteristiques cl&eacutes issus du World Cat Congress (WCC)</p><p>&nbsp;</p><h3>Particularit&eacutes de la race</h3><p>&nbsp;</p><p>Pelage &nbsp; Poils longs</p><p>Cat&eacutegorie de taille &nbsp; De taille moyenne</p><p>Esp&eacuterance de vie moyenne &nbsp; 12â€“17 ans</p><p>&nbsp;</p><p>Tranquille / Calme / Sociable / Affectueux</p><p>&nbsp;</p><h3>Faits marquants</h3><p>&nbsp;</p>-Le mieux adapt&eacute aux maisons tranquilles-Demande beaucoup de toilettage-Bien adapt&eacute &agrave;  la vie en int&eacuterieur', 'mathieu', '2022-10-18 13:01:53', 220, 'photo persan');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`id`, `original_name`, `file_name`, `file_type`, `url`) VALUES
(209, 'drakechat.png', '5e1dbbdb1bd4fd6f9025', 'png', './asset/uploads/5e1dbbdb1bd4fd6f9025.png'),
(210, 'chatsauv&eacuteecanal.png', '045bf6ed0cad56ec9e09', 'png', './asset/uploads/045bf6ed0cad56ec9e09.png'),
(211, 'chatdetony.jpg', 'cb1cd34dda4c523ee297', 'jpg', './asset/uploads/cb1cd34dda4c523ee297.jpg'),
(215, 'jaguar1.jpg', '83613382432b5ebc5d50', 'jpg', './asset/uploads/83613382432b5ebc5d50.jpg'),
(216, 'lynx.jpg', 'a40752ed2429a1a6e760', 'jpg', './asset/uploads/a40752ed2429a1a6e760.jpg'),
(217, 'chartreux.jpg', '1d2cc64dc4706d454378', 'jpg', './asset/uploads/1d2cc64dc4706d454378.jpg'),
(219, 'a&agrave;¹ericainshorthair.jpg', 'a3299d929bd58833d4cb', 'jpg', './asset/uploads/a3299d929bd58833d4cb.jpg'),
(220, 'persan.jpg', 'cd4a0bab0f01c4756833', 'jpg', './asset/uploads/cd4a0bab0f01c4756833.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `route`, `title`) VALUES
(1, 'homescreen', 'homescreen'),
(4, 'contactUs', 'contactUs'),
(5, 'signIn', 'signIn'),
(6, 'registration', 'registration'),
(7, 'disconnect', 'disconnect'),
(8, 'newArticle', 'newArticle'),
(9, 'species', 'species'),
(10, 'news', 'news'),
(11, 'article', 'article'),
(12, 'message', 'message'),
(14, 'delete', 'delete'),
(15, 'update', 'update'),
(17, 'my-cats', 'my-cats');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `admin`) VALUES
(80, 'adminadmin', '$2y$10$ltgDJmtGY4/9ODNSPLMA/On45yWgM9HM8S2vgZHM.Y4ITuNXDRRly', 'yes');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_id` (`media_id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`);

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
