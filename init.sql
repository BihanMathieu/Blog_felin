-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db.3wa.io
-- Généré le : mer. 01 fév. 2023 à 09:59
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
(191, 'ActualitÃ©', '<h2>Les Ã©mouvantes retrouvailles d\'un chat</h2><p>&nbsp;</p><p>&nbsp;</p><p>Roxy Heinhorst et son mari Drake habitent East Peoria dans lâ€™Etat de lâ€™Illinois. Le couple a un chat American Shorthair, rÃ©pondant au nom dâ€™Oliver et Ã¢gÃ© de 5 ans.</p><p>Le fÃ©lin nâ€™est pas du genre Ã  sâ€™aventurer dehors. Il prÃ©fÃ¨re largement le confort et la sÃ©curitÃ© de la maison, auprÃ¨s de ses humains. Alors, lorsquâ€™il s\'est Ã©loignÃ© du domicile et est restÃ© introuvable pendant de longues heures, ces derniers ont eu extrÃªmement peur pour lui, rapportait MSN.</p><p>Lâ€™incident a eu lieu le mardi 27 septembre. Ce matin-lÃ , Roxy et Drake avaient quittÃ© la maison dans la prÃ©cipitation pour aller travailler. Oliver avait profitÃ© de cette agitation pour sortir.</p><p>Ses propriÃ©taires ne sâ€™en Ã©taient rendu compte quâ€™Ã  leur retour du travail en fin de journÃ©e. Ils en ont eu la confirmation en visionnant les enregistrements de leur visiophone. DÃ¨s lors, ils se sont lancÃ©s Ã  sa recherche, ratissant le quartier et demandant aux voisins si lâ€™un dâ€™eux lâ€™avait aperÃ§u.</p><p>MalgrÃ© leurs efforts, ils Ã©taient toujours sans nouvelles du chat. Puis, peu aprÃ¨s 19h locales, Roxy est sortie dÃ©poser la couverture dâ€™Oliver sous le porche quand elle a vu une silhouette familiÃ¨re sâ€™approcher de la porte. Câ€™Ã©tait lui !</p><h2>Â« Nous Ã©tions si heureux de savoir qu\'il Ã©tait en sÃ©curitÃ© Â»</h2><p>&nbsp;</p><p>Drake est revenu sur ce moment que lui et sa femme nâ€™oublieront pas de sitÃ´t. Â« Nous venions de rentrer chez nous aprÃ¨s avoir fouillÃ© le quartier pendant quelques heures, raconte-t-il. Nous Ã©tions si heureux de savoir qu\'il Ã©tait en sÃ©curitÃ©, car nous vivons prÃ¨s d\'une autoroute trÃ¨s frÃ©quentÃ©e et notre quartier a Ã©galement eu des visites de coyotes auparavant. Â»</p>', 'mathieu', '2022-10-17 17:37:31', 209, 'image de la maitresse tenant sont chat'),
(192, 'ActualitÃ©', '<h2>Elle sauve son chat de justesse</h2><p>&nbsp;</p><p>Victime dâ€™agissements scandaleux et qui auraient bien pu lui Ãªtre fatals, un chat a Ã©chappÃ© in extremis Ã  la noyade grÃ¢ce Ã  lâ€™intervention de sa propriÃ©taire, alertÃ©e par ses cris, rapportait Sud Info.</p><p>Les faits ont eu lieu Ã  Oudewater, ville de lâ€™ouest des Pays-Bas. Ellis de Korte, qui habite au bord dâ€™un canal, se trouvait chez elle le soir du dimanche 2 octobre. Elle a entendu son animal de compagnie pousser des miaulement de dÃ©tresse et est aussitÃ´t sortie le rejoindre.</p><p>Son chat Rody Ã©tait tombÃ© Ã  lâ€™eau et tentait dÃ©sespÃ©rÃ©ment de regagner la berge. La jeune femme a rÃ©ussi Ã  le sauver, avant de le ramener Ã  la maison pour le sÃ©cher, rÃ©chauffer et rÃ©conforter.</p><p>Le quadrupÃ¨de a survÃ©cu grÃ¢ce Ã  elle, mais Ellis de Korte Ã©tait convaincue quâ€™il nâ€™Ã©tait pas tombÃ© dans le canal tout seul. On lâ€™y avait forcÃ©ment plongÃ©. Elle en a eu la confirmation en visionnant les images enregistrÃ©es par le systÃ¨me de vidÃ©osurveillance installÃ© devant chez elle.</p><p>&nbsp;</p><h3>Un appel Ã  tÃ©moin lancÃ©</h3><p>Des sÃ©quences que la propriÃ©taire de Rody a partagÃ©es sur les rÃ©seaux sociaux dans lâ€™espoir quâ€™on lâ€™aide Ã  identifier ces 2 jeunes gens Ã  la cruautÃ© sans nom, afin quâ€™ils rÃ©pondent de leurs actes devant la justice.</p>', 'mathieu', '2022-10-17 17:42:28', 210, 'tÃªte de chat'),
(193, 'ActualitÃ©', '<h2>Un homme, pour qui il Ã©tait hors de question dâ€™avoir un fÃ©lin</h2><p>&nbsp;</p><p>Tony Kaina en Ã©tait convaincu : il ne vivrait jamais avec un chat. Les fÃ©lins, ce nâ€™Ã©tait vraiment pas pour lui. Pourtant, cela fait maintenant 3 ans quâ€™il est le plus grand fan de son chat Stanley. Et câ€™est une drÃ´le dâ€™histoire, relatÃ©e par Leaders publication, qui a conduit Tony Ã  changer dâ€™avis sur ces animaux.</p><p>Tony vit dans le Missouri, aux Ã‰tats-Unis. Un jour de 2019, une chatte errante et gestante a choisi que ce serait dans son jardin que ses petits verraient le jour. Câ€™Ã©tait LE lieu dans lequel elle se sentirait suffisamment bien et en sÃ©curitÃ© pour mettre bas.</p><p>Câ€™est ainsi que Tony est tombÃ© nez Ã  nez avec de nombreux adorables chatons, et quâ€™il a craquÃ©. Parmi les petits, il a choisi dâ€™en garder un, quâ€™il a appelÃ© Stanley. Ce prÃ©nom faisait rÃ©fÃ©rence Ã  la â€œCoupe Stanleyâ€, un championnat de hockey sur glace qui venait dâ€™Ãªtre gagnÃ© par lâ€™Ã©quipe supportÃ©e par Tony</p><p>&nbsp;</p><h3>Stanley a transformÃ© Tony en vÃ©ritable personne Ã  chats</h3><p>Cela fait maintenant 3 ans que Stanley et Tony sont deux copains insÃ©parables. Ils sâ€™amusent beaucoup tous les deux, et Tony est clairement devenu une personne Ã  chats. â€œIl est tellement intelligent. Il joue Ã  chercher. Il a des petits jouets en forme de souris. Je les jette et il les ramÃ¨ne. Il vient quand on l\'appelleâ€, a-t-il racontÃ©.</p><p>Tony a succombÃ© au charme de cet Ãªtre â€œloyal, aimant et attentionnÃ©â€, et ne regrette pas dâ€™avoir su mettre ses prÃ©jugÃ©s de cÃ´tÃ© pour lui donner une chance.</p>', 'mathieu', '2022-10-17 18:01:52', 211, 'photo du chat de tony'),
(197, 'ActualitÃ©', '<h2>Quelles sont les diffÃ©rences entre un fauve et un fÃ©lin ?</h2><p>&nbsp;</p><p>Afin de distinguer les fauves des fÃ©lins, il convient dâ€™abord de prÃ©ciser que si le terme â€œfÃ©linâ€ est utilisÃ© par les scientifiques, le terme â€œfauveâ€ est â€œun terme trÃ¨s gÃ©nÃ©rique, qui nâ€™a pas de valeur taxonomique aujourdâ€™huiâ€, avance dâ€™emblÃ©e GÃ©raldine Veron, professeure au MusÃ©um National dâ€™Histoire Naturelle, membre de lâ€™Institut SystÃ©matique Evolution et BiodiversitÃ©. â€œIl nâ€™entre pas dans la classification des espÃ¨ces telle quâ€™on lâ€™utilise en tant que scientifiquesâ€, dit-elle. Lâ€™on parle souvent de â€œlâ€™odeur de fauveâ€ pour se rÃ©fÃ©rer Ã  lâ€™odeur dÃ©gagÃ©e par de grandes bÃªtes sauvages, dâ€™oÃ¹ peut-Ãªtre une certaine confusion.</p><p>&nbsp;</p><h3>Fauves et grands fÃ©lins</h3><p>Au sein de cette famille des FÃ©lidÃ©s, lâ€™on trouve notamment les grands fÃ©lins, qui sont souvent ceux quâ€™on assimile aux â€œfauvesâ€. Il sâ€™agit des FÃ©lidÃ©s qui appartiennent au genre Panthera, Ã  savoir le jaguar, le lÃ©opard (appelÃ© ainsi en Afrique, et panthÃ¨re en Asie), le lion, le tigre et la panthÃ¨re des neiges.</p><p>Certains assimilent Ã©galement au sein des grands fÃ©lins lâ€™ensemble de la sous-famille des PanthÃ©rinÃ©s, qui regroupe 2 genres et 7 espÃ¨ces. Aux animaux citÃ©s prÃ©cÃ©demment, il faut ainsi ajouter deux espÃ¨ces de panthÃ¨re nÃ©buleuse, du genre Neofelis.</p><p>&nbsp;</p><h3>Les caractÃ©ristiques communes aux fÃ©lidÃ©s</h3><p>Les fÃ©lins - ou FÃ©lidÃ©s, donc - partagent de nombreuses caractÃ©ristiques avec les mammifÃ¨res carnivores, mais possÃ¨dent aussi des spÃ©cificitÃ©s. Parmi leurs traits distinctifs, notons par exemple un crÃ¢ne court dotÃ© de muscles trÃ¨s importants, une colonne vertÃ©brale trÃ¨s souple et des membres antÃ©rieurs trÃ¨s mobiles. Cette grande mobilitÃ© vient notamment de la quasi-inexistance de la clavicule chez ces espÃ¨ces, souligne GÃ©raldine Veron. Au niveau de la dentition, les fÃ©lidÃ©s ont de trÃ¨s longues canines, qui servent Ã  maintenir leurs proies et Ã  leur mise Ã  mort. Ils ont en outre des dents carnassiÃ¨res trÃ¨s dÃ©veloppÃ©es, en arriÃ¨re desquelles lâ€™on ne trouve plus de dents, ou presque. â€œLes FÃ©lidÃ©s sont dotÃ©s dâ€™une force de morsure trÃ¨s importanteâ€, avance aussi GÃ©raldine Veron. â€œLa plupart ont des griffes rÃ©tractiles, car Ã  lâ€™origine il sâ€™agit dâ€™animaux plutÃ´t arboricoles, qui grimpent aux arbresâ€, ajoute-t-elle.</p><p>Enfin, leurs sens sont extrÃªmement dÃ©veloppÃ©s, avec notamment une excellente vision nocturne, et une excellente vision binoculaire liÃ©e Ã  la prÃ©sence de leurs yeux sur lâ€™avant de la face. â€œAu niveau du palais, ils ont ce quâ€™on appelle lâ€™organe de Jakobson, qui permet de dÃ©tecter les phÃ©romones. Lâ€™un des traits caractÃ©ristiques des FÃ©lidÃ©s est dâ€™ailleurs le â€œflehmenâ€, une attitude que lâ€™on remarque lorsquâ€™ils relÃ¨vent leurs babines et effectuent une sorte de grimace, grimace, leur permettant dâ€™exposer cet organe pour dÃ©tecter les phÃ©romones.</p>', 'mathieu', '2022-10-17 18:33:43', 215, 'photo jaguar'),
(198, 'ActualitÃ©', '<h2>Roubaix. Un grand fÃ©lin retrouvÃ© mort sur un rond-point.</h2><p>&nbsp;</p><p>Un lynx ou un serval, a Ã©tÃ© retrouvÃ© mort, mardi 13&nbsp;septembre, sur un rond-point de Roubaix (Nord). Une enquÃªte est en cours afin de mieux comprendre les circonstances de sa prÃ©sence et de son dÃ©cÃ¨s, alors mÃªme que plusieurs grands fÃ©lins ont dÃ©jÃ  Ã©tÃ© aperÃ§us dans la rÃ©gion depuis 2019.</p><p>Un grand fÃ©lin a Ã©tÃ© retrouvÃ© mort sur un rond-point de Roubaix (Nord), mardi 13 septembre 2022. Ce sont des agents du service des espaces verts de la Ville qui lâ€™ont dÃ©couvert, rapporte Lille actu. Dâ€™aprÃ¨s les premiÃ¨res constatations de la police municipale, il pourrait sâ€™agir dâ€™un lynx ou dâ€™un serval, mort depuis plusieurs jours.</p><p>&nbsp;</p><p>&nbsp;</p><h3>La dÃ©pouille Ã©tait enveloppÃ©e dans une couverture</h3><p>La dÃ©pouille de lâ€™animal Ã©tait enveloppÃ©e dans une couverture. Elle a Ã©tÃ© remise Ã  la Ligue protectrice des animaux (LPA) du Nord. Â« Une enquÃªte permettra de dÃ©terminer la race exacte du fÃ©lin et il conviendra de dÃ©terminer dans quelles conditions il a Ã©tÃ© dÃ©tenu Â», a indiquÃ© la police municipale de Roubaix. Les autoritÃ©s ont par ailleurs rappelÃ© que Â« la dÃ©tention dâ€™animaux sauvages est strictement interdite Â».</p><p>Le nord de la France a connu ces derniÃ¨res annÃ©es plusieurs affaires marquantes concernant des grands fÃ©lins. On se souvient notamment de la panthÃ¨re noir d\'amerique en 2019 ou encore du potentiel puma du Pas-de-Calais en octobre 2021.</p>', 'mathieu', '2022-10-17 18:42:31', 216, 'photo de lynx'),
(199, 'EspÃ¨ce', '<h2>Chartreux</h2><p>Les chartreux ont un caractÃ¨re trÃ¨s Ã©quilibrÃ©. Ils sont amicaux, calmes et tranquilles, mais toujours prÃ©sents</p><p>Les chartreux s\'entendent bien avec les autres chats, les chiens et les enfants. Ces chats n\'ont pas besoin d\'une attention permanente, mais ils sont trÃ¨s contents d\'Ãªtre Ã  proximitÃ© de leur maÃ®tre. Ils le suivent oÃ¹ qu\'il aille dans la maison, tout en gardant leurs distances.</p><p>Ce sont des chats trÃ¨s discrets. Les chartreux aiment l\'escalade et ont la rÃ©putation d\'Ãªtre de bons chasseurs.</p><p>Source&nbsp;: faits et caractÃ©ristiques clÃ©s issus du World Cat Congress (WCC)</p><p>&nbsp;</p><p>&nbsp;</p><h2>ParticularitÃ©s de la race</h2><p>Pays &nbsp; &nbsp; France</p><p>Pelage &nbsp; Poils mi-longs</p><p>CatÃ©gorie de taille &nbsp; De taille moyenne</p><p>EspÃ©rance de vie moyenne &nbsp; 12â€“15 ans</p><p>Tranquille / Affectueux / FidÃ¨le / Calme</p><p>&nbsp;</p><h2>Faits marquants</h2><p>A besoin de peu de toilettageFaible entretienBien adaptÃ© Ã  la vie en intÃ©rieur</p>', 'mathieu', '2022-10-17 18:47:32', 217, 'photo de chartreux'),
(201, 'EspÃ¨ce', '<h2>American shorthair</h2><p>&nbsp;</p><p>L\'american shorthair, chat dÃ©tendu et dÃ©contractÃ©, continue d\'Ãªtre dynamique et joueur, mÃªme Ã  un Ã¢ge avancÃ©.</p><p>Joueur, d\'expression douce et ouverte, et dotÃ© d\'un pelage court et brillant, l\'american shorthair a conservÃ© l\'allure fÃ©line de ses ancÃªtres chasseurs. C\'est un chat facile Ã  vivre et sympathique. Il est trÃ¨s populaire auprÃ¨s des familles en raison de sa nature joueuse et de ses bons rapports avec les enfants.</p><p>De maniÃ¨re gÃ©nÃ©rale, l\'american shorthair est intelligent et s\'intÃ©resse Ã  tout ce qui l\'entoure. Il apprÃ©cie la compagnie des humains tout en conservant son indÃ©pendance. Cette race de chats est connue pour sa longÃ©vitÃ©, sa robustesse, sa personnalitÃ© amicale et sa patience avec les chiens et les autres animaux domestiques.</p><p>Source&nbsp;: faits et caractÃ©ristiques clÃ©s issus du World Cat Congress (WCC)</p><p>&nbsp;</p><h3>ParticularitÃ©s de la race</h3><p>&nbsp;</p><p>Pays &nbsp; Ã‰tats-Unis</p><p>Pelage &nbsp; Poils courts</p><p>CatÃ©gorie de taille &nbsp; De taille moyenne</p><p>EspÃ©rance de vie moyenne &nbsp; 15â€“20 ans</p><p>&nbsp;</p><p>Calme / Sociable / Tranquille / Intelligent / IndÃ©pendant / Joueur</p><p>&nbsp;</p><h3>Faits marquants</h3><p>&nbsp;</p>A besoin de beaucoup d\'espaceConvient Ã  la vie d\'intÃ©rieur et d\'extÃ©rieurA besoin de peu de toilettage', 'mathieu', '2022-10-17 20:28:25', 219, 'photo americain shorthair'),
(202, 'EspÃ¨ce', '<h2>Persan</h2><p>&nbsp;</p><p>MalgrÃ© leur voix charmante et musicale, les persans prÃ©fÃ¨rent communiquer avec leurs maÃ®tres en utilisant leurs expressions intelligentes.</p><p>Les persans sont naturellement doux, gentils, tranquilles et faciles Ã  vivre. Ils aiment Ãªtre peignÃ©s et caressÃ©s par des enfants, mais ils ne participeront probablement pas Ã  des jeux turbulents avec eux.</p><p>Les persans ont leurs petites habitudes et prÃ©fÃ¨rent les ambiances calmes et Ãªtre manipulÃ©s avec douceur. Ils aiment la sÃ©curitÃ© dâ€™Ãªtre au sol et ne grimpent pas souvent. Ils jouent avec enthousiasme avec des jouets, mais apprÃ©cient tout autant de se prÃ©lasser dans leur endroit favori.</p><p>Source&nbsp;: faits et caractÃ©ristiques clÃ©s issus du World Cat Congress (WCC)</p><p>&nbsp;</p><h3>ParticularitÃ©s de la race</h3><p>&nbsp;</p><p>Pelage &nbsp; Poils longs</p><p>CatÃ©gorie de taille &nbsp; De taille moyenne</p><p>EspÃ©rance de vie moyenne &nbsp; 12â€“17 ans</p><p>&nbsp;</p><p>Tranquille / Calme / Sociable / Affectueux</p><p>&nbsp;</p><h3>Faits marquants</h3><p>&nbsp;</p>-Le mieux adaptÃ© aux maisons tranquilles-Demande beaucoup de toilettage-Bien adaptÃ© Ã  la vie en intÃ©rieur', 'mathieu', '2022-10-18 13:01:53', 220, 'photo persan');

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

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`) VALUES
(1, 'film', 'jhojho@djffr', 'qsqsqs'),
(2, 'film', 'jhojho@djffr', 'sxsxsxsx'),
(3, 'jhgkhgkh', 'Mathieu.Bihan@3wa.io', 'mesage'),
(4, 'mathieu', 'Mathieu.Bihan@3wa.io', 'voici mon message'),
(5, 'salon 1', 'Mathieu.Bihan@3wa.io', 'messaqge'),
(6, 'salon 1', 'Mathieu.Bihan@3wa.io', 'message'),
(7, 'salon 1', 'Mathieu.Bihan@3wa.io', 'message'),
(8, 'jhgkhgkh', 'subject', 'mmmmmmmmmmmmmmm'),
(9, 'salon 1', 'subject', 'message'),
(10, 'salon 1', 'subject', 'message'),
(11, 'salon 1', 'message', 'Mathieu.Bihan@3wa.io'),
(12, 'salon 1', 'Mathieu.Bihan@3wa.io', 'knclznozecnozeic'),
(13, 'salon 1', 'Mathieu.Bihan@3wa.io', 'kqjdclzdkcnlqncqlknc'),
(14, 'salon 1', 'gow321654987@hotmail.fr', 'kjdkjsbckjdsbcjsdc'),
(15, 'mathieu', 'Mathieu.Bihan@3wa.io', 'skcnlqdsknclqksnc'),
(16, 'blabla', 'blabla@blabla', 'blabla');

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
(210, 'chatsauvÃ©ecanal.png', '045bf6ed0cad56ec9e09', 'png', './asset/uploads/045bf6ed0cad56ec9e09.png'),
(211, 'chatdetony.jpg', 'cb1cd34dda4c523ee297', 'jpg', './asset/uploads/cb1cd34dda4c523ee297.jpg'),
(215, 'jaguar1.jpg', '83613382432b5ebc5d50', 'jpg', './asset/uploads/83613382432b5ebc5d50.jpg'),
(216, 'lynx.jpg', 'a40752ed2429a1a6e760', 'jpg', './asset/uploads/a40752ed2429a1a6e760.jpg'),
(217, 'chartreux.jpg', '1d2cc64dc4706d454378', 'jpg', './asset/uploads/1d2cc64dc4706d454378.jpg'),
(219, 'aÃ¹ericainshorthair.jpg', 'a3299d929bd58833d4cb', 'jpg', './asset/uploads/a3299d929bd58833d4cb.jpg'),
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

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `username`, `message`, `date`, `article_id`) VALUES
(71, 'jesuisquelqun', 'Trop bien l&#039;article', '2022-10-18 18:19:33', 202),
(72, 'jesuisquelqun', 'Trop bien l&#039;article', '2022-10-18 18:19:33', 202),
(73, 'mathieu', 'sdfsdfsdf', '2022-10-18 18:34:43', 202),
(74, 'mathieu', 'sdfsdfsdf', '2022-10-18 18:34:43', 202),
(75, 'mathieu', 'dfgdfg', '2022-10-18 18:35:18', 202),
(76, 'mathieu', 'dfgdfg', '2022-10-18 18:35:18', 202),
(77, 'mathieu', 'ghghg', '2022-10-18 18:35:33', 202),
(78, 'mathieu', 'ghghg', '2022-10-18 18:39:25', 202),
(79, 'mathieu', 'hhhhhhhh', '2022-10-18 18:39:40', 202),
(80, 'mathieu', 'fghfghfgh', '2022-10-18 18:43:13', 201),
(81, 'mathieu', 'sssssss', '2022-10-19 11:06:31', 202),
(82, 'mathieubihan', 'je suis en soutance', '2022-10-19 16:20:25', 202),
(83, 'mathieubihan1', 'je suis en soutenance', '2022-10-19 17:12:19', 198),
(84, 'mathieubihan2', 'je suis en soutenance', '2022-10-19 17:39:11', 198),
(85, 'mathieubihan4', 'je suis en soutenance', '2022-10-20 10:30:42', 202);

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
(67, 'mathieuB', '$2y$10$AiQcK2UiiX.e.xk.dJ0c8eIyei6jMBbxY.zleScOF6c1dbAS8goN6', 'yes'),
(68, 'jesuisunuser', '$2y$10$HOGvdtNrwtMXK2Mr/FV7tOx9GOLb/Y5HXg7lrxXrQw3GEj1IaKt7C', 'no'),
(69, 'mathieubihan', '$2y$10$btSsVR6xEFnycQ7Ng.O4CuaV8yVnzIrVvj0CraY/X3l2iDFVP52bi', 'no'),
(70, 'mathieubihan1', '$2y$10$F1EVmZ878IF8h53H7o2CbuHI7PmowWItC/6sWruYoOYkXlwHVb7Mi', 'no'),
(71, 'mathieubihan2', '$2y$10$Bo6KutYPLTml/HyaoSJN7um87QdHo8vaVHl5HBQ/oDnVRAQqM/Aq.', 'no'),
(72, 'mathieubihan4', '$2y$10$JAHzKQXgdGMrmsgcvXGmC.jHqwZv7lPvxdZuR7p783csnhPNNxKjy', 'no'),
(73, 'MathieuBihan', '$2y$10$aHsSXjrXcx5lt05E4GRe0OdP18wN15Lvs7Wx9ZasFFp0MnXO7XGxy', 'yes'),
(74, 'MathieuBihan1', '$2y$10$GnQ2Jrt.JFOdSN1tPPSFg.F0dO1iFmKsWZ.QDqv0fB0nC.dobPnAG', 'yes'),
(75, 'MathieuBihan35', '$2y$10$pIhnINShUVDH1GNuiR/ukul.zfhNDCvLc/YQo/JPRWrA0N0oWVZIi', 'yes'),
(76, 'adminadmin', '$2y$10$0lsZcP5a9RVnSBqL4qwfZ.6RXBZeO0w9G7.oigqhgrb2Huq7Zm/IK', 'no'),
(77, 'adminadmin2', '$2y$10$4Sywmya4MmmQOUfyF2UzvuNuyYGbyM2g7gE31t9n1jH0J8nBJh0rq', 'no');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

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
