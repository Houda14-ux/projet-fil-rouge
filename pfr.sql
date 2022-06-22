-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 22 juin 2022 à 05:29
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pfr`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pw` varchar(50) NOT NULL,
  `actif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `Nom`, `Prenom`, `email`, `pw`, `actif`) VALUES
(1, 'houda', 'sidiammi', 'houda@gmail.com', '123456', 1),
(2, 'zakaria', 'atari', 'auditel@gmail.com', '123', 1);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `position` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `devis`
--

CREATE TABLE `devis` (
  `id` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `adresse` varchar(250) NOT NULL,
  `detaille` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `realisation`
--

CREATE TABLE `realisation` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `media` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `realisation`
--

INSERT INTO `realisation` (`id`, `titre`, `description`, `media`) VALUES
(1, 'Projet PANORAMA', 'Maître d\'ouvrage : STE TANGSUD Groupe El Guartit (8 immeubles R+6, 150 appartements) Projet PANORAMA 5: Travaux d\'électricité, domotique et courant Faible', 'realisation.png'),
(2, 'hopital', 'Maître d\'ouvrage : STE TANGSUD Groupe El Guartit (8 immeubles R+6, 150 appartements) Projet PANORAMA 5: Travaux d\'électricité, domotique et courant Faible', 'hopital.png'),
(3, 'acima', 'Maître d\'ouvrage : STE TANGSUD Groupe El Guartit (8 immeubles R+6, 150 appartements) Projet PANORAMA 5: Travaux d\'électricité, domotique et courant Faible', 'acima.png'),
(4, 'hopitale', 'hopital a errachidia', '62b28627e97b8.png');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `media` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`id`, `Nom`, `description`, `media`) VALUES
(1, 'Sécurité électrique et courant faible', '<ul style=\"list-style-type: circle;\">\r\n<li><span style=\"color: #ff0000;\"><strong>D&eacute;finition du courant faible</strong></span><br />Le r&eacute;seau de courant faible est le syst&egrave;me nerveux d&rsquo;une entreprise. De la t&eacute;l&eacute;phonie en passant par la vid&eacute;o et le contr&ocirc;le d&rsquo;acc&egrave;s, AUDITEL s&rsquo;implique pour mettre en &oelig;uvre des r&eacute;seaux de courant faible les plus performants possibles.</li>\r\n</ul>\r\n<p>Le courant faible sert &agrave; transporter de l&rsquo;information, &eacute;galement appel&eacute;e signal &eacute;lectrique. Il permet d&rsquo;alimenter les interphones, les alarmes, la t&eacute;l&eacute;phonie, le r&eacute;seau informatique, les objets connect&eacute;s ; en somme, tout ce qui transmet des donn&eacute;es et non de la puissance.</p>\r\n<ul style=\"list-style-type: circle;\">\r\n<li><strong><span style=\"color: #ff0000;\">Un syst&egrave;me de courant faible pour mieux communiquer</span></strong><br />Le r&ocirc;le premier d&rsquo;un syst&egrave;me de courant faible est de transmettre les informations voix-donn&eacute;es-images (VDI) : les impulsions &eacute;lectriques tr&egrave;s faibles qui parcourent c&acirc;bles de cuivre et fibre optique. Des solutions alternatives, wifi, courant porteur en ligne, laser ou radio, s&rsquo;imposent quand l&rsquo;installation d&rsquo;un r&eacute;seau physique est impossible.<br />Une installation en courant faible pour &ecirc;tre toujours en s&eacute;curit&eacute;<br />AUDITEL met en place des r&eacute;seaux de courant faible pour s&eacute;curiser les entreprises, les personnes et les biens, avec des Syst&egrave;mes de protection de plus en plus sophistiqu&eacute;s :<br />Mesures anti-intrusion : d&eacute;tection volum&eacute;trique, p&eacute;rim&eacute;trique, radio ou encore ext&eacute;rieure ;<br />Contr&ocirc;le d&rsquo;acc&egrave;s : biom&eacute;trie, gestion du temps de pr&eacute;sence et de parking ;<br />Syst&egrave;mes de vid&eacute;osurveillance avec cam&eacute;ras, vid&eacute;o IP et enregistrement num&eacute;rique ;<br />D&eacute;tection et mise en s&eacute;curit&eacute; incendie ;<br />D&eacute;tection gaz.</li>\r\n</ul>\r\n<p><br />AUDITEL : un savoir-faire reconnu au service de vos installations de courant faible<br />Choisir AUDITEL, c&rsquo;est b&eacute;n&eacute;ficier de l&rsquo;expertise et du savoir-faire d&rsquo;un sp&eacute;cialiste du g&eacute;nie &eacute;lectrique disposant de plus de 20 ann&eacute;es d&rsquo;exp&eacute;rience. Experts en fibre optique,. Nous proposons &agrave; nos clients :<br />Conception de r&eacute;seaux d&rsquo;entreprise ;<br />R&eacute;alisation du c&acirc;blage et de la mise en service des r&eacute;seaux ;<br />Interventions sur les r&eacute;seaux V. D. I. , wifi, et courants porteurs en ligne.<br />AUDITEL met &eacute;galement en place des architectures de s&ucirc;ret&eacute; &eacute;prouv&eacute;es, qui r&eacute;pondent &agrave; vos besoins en mati&egrave;re de contr&ocirc;le d&rsquo;acc&egrave;s, de vid&eacute;osurveillance, de syst&egrave;mes anti-intrusion, de sonorisation et de d&eacute;tection anti-incendie.<br />De l&rsquo;&eacute;tude de site &agrave; la maintenance en passant par la conception et le d&eacute;ploiement, AUDITEL est votre partenaire unique pour tous vos projets de r&eacute;seau en courant faible.</p>', 'S1.jpg'),
(2, 'Maintenance et réalisation électrique', '<ul>\r\n<li style=\"list-style-type: none;\">\r\n<ul style=\"list-style-type: circle;\">\r\n<li>\r\n<h3><strong><span style=\"color: #ff0000;\">D&eacute;pannage et maintenance en &eacute;lectricit&eacute; en Auvergne Rh&ocirc;ne Alpes</span></strong></h3>\r\n<p><span style=\"font-weight: 400;\">&nbsp;</span></p>\r\n<p><span style=\"font-weight: 400;\">&nbsp; &nbsp; Les &eacute;lectriciens d\'AUDITEL Electricit&eacute; peuvent r&eacute;aliser l<span style=\"color: #3366ff;\">&rsquo;</span></span><span style=\"color: #3366ff;\"><strong>entretien</strong><span style=\"font-weight: 400;\"> des </span><strong>installations &eacute;lectriques</strong><span style=\"font-weight: 400;\">, </span><strong>r&eacute;seaux d&rsquo;&eacute;lectricit&eacute;</strong></span><span style=\"font-weight: 400;\">, et peuvent intervenir aupr&egrave;s des professionnels et particuliers sur toutes les probl&eacute;matiques des </span><strong>installations &eacute;lectriques</strong><span style=\"font-weight: 400;\">.</span></p>\r\n<p><span style=\"font-weight: 400;\">&nbsp;</span><span style=\"font-weight: 400;\">&nbsp;</span></p>\r\n<p><span style=\"font-weight: 400;\">&nbsp; &nbsp;Que vous soyez un professionnel ou un particulier, nous vous apporterons une </span><span style=\"color: #3366ff;\"><strong>maintenance </strong></span><span style=\"font-weight: 400;\">rapide de vos </span><span style=\"color: #3366ff;\"><strong>&eacute;quipements &eacute;lectriques</strong></span><span style=\"font-weight: 400;\"> gr&acirc;ce &agrave; notre mat&eacute;riel d&eacute;di&eacute; aux </span><span style=\"color: #3366ff;\"><strong>recherches de pannes</strong></span><span style=\"font-weight: 400;\">, remplacement de mat&eacute;riel et &agrave; nos v&eacute;hicules &eacute;quip&eacute;s sp&eacute;cialement pour le </span><span style=\"color: #3366ff;\"><strong>d&eacute;pannage et la maintenance &eacute;lectrique</strong></span><span style=\"font-weight: 400;\"> .</span></p>\r\n<p><span style=\"font-weight: 400;\">&nbsp;</span></p>\r\n<p><span style=\"font-weight: 400;\">&nbsp; &nbsp;Un <strong><span style=\"color: #3366ff;\">entretien r&eacute;gulier</span></strong> de vos installations &eacute;lectriques permet une efficacit&eacute; accrue et une long&eacute;vit&eacute; de votre r&eacute;seau &eacute;lectrique, mais aussi une s&eacute;curit&eacute; pour les usagers et occupants.</span></p>\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>', 'S2.jpg'),
(3, 'Système de vidéo surveillance IP et analogique', '<table style=\"width: 490px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 480px;\">\r\n<p><span style=\"color: #339966;\"><strong>La technologie sans fil est de plus en plus pr&eacute;dominante dans notre quotidien. M&ecirc;me les dispositifs de s&eacute;curit&eacute; deviennent contr&ocirc;lables &agrave; distance avec un simple acc&egrave;s &agrave; leurs adresses IP. Cependant, les appareils analogiques ont encore leurs utilit&eacute;s.</strong></span></p>\r\n<h2><span style=\"color: #ff0000;\"><strong>Le syst&egrave;me analogique</strong></span></h2>\r\n<ul>\r\n<li><span style=\"font-weight: 400;\">La vid&eacute;osurveillance analogique se sert de cam&eacute;ra analogique pour effectuer l&rsquo;enregistrement vid&eacute;o. Ce syst&egrave;me implique souvent l&rsquo;utilisation de plusieurs cam&eacute;ras &eacute;parpill&eacute;es dans plusieurs pi&egrave;ces. Les informations sont transmises de la </span><a href=\"https://lajoliemaison.fr/comparatif/la-meilleure-camera-de-surveillance/\"><span style=\"font-weight: 400;\"><span style=\"text-decoration: underline;\">cam&eacute;ra de surveillance</span> </span></a><span style=\"font-weight: 400;\">vers un enregistreur &agrave; l&rsquo;aide de c&acirc;bles coaxiaux. Le transfert des donn&eacute;es est donc rapide. Ce qui permet d&rsquo;obtenir une image tr&egrave;s fluide.</span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li><span style=\"font-weight: 400;\">Si le c&acirc;ble venait &agrave; &ecirc;tre sectionn&eacute;, le signal provenant de la cam&eacute;ra sera imm&eacute;diatement interrompu. Il est donc difficile pour les cambrioleurs de contourner ce syst&egrave;me. En revanche, les cam&eacute;ras analogiques ont souvent une mauvaise qualit&eacute; d&rsquo;image. Ce qui emp&ecirc;che de visualiser les d&eacute;tails sur les enregistrements. Elles peuvent cependant &ecirc;tre dot&eacute;es de LED infrarouges leur permettant de filmer des images m&ecirc;me dans l&rsquo;obscurit&eacute;. De plus, ce type de cam&eacute;ra est disponible sous plusieurs formats, con&ccedil;us pour des utilisations vari&eacute;es.</span></li>\r\n</ul>\r\n<p><span style=\"font-weight: 400;\">La mise en place de ce type de dispositif ne demande pas beaucoup de configuration. Une fois toutes les cam&eacute;ras li&eacute;es correctement au syst&egrave;me de surveillance centrale, il est possible de visualiser les images provenant de chacune d&rsquo;entre elles. Le contr&ocirc;le du syst&egrave;me de s&eacute;curit&eacute; s&rsquo;effectue donc &agrave; partir d&rsquo;un appareil central qui peut &ecirc;tre compos&eacute; d&rsquo;une t&eacute;l&eacute; ou un moniteur pour visualiser les images et d&rsquo;un enregistreur. De cet enregistreur, il sera possible de stocker les images sur un support analogique qui est le plus souvent une cassette. Ces anciens dispositifs peuvent donc utiliser des appareils comme des magn&eacute;toscopes.</span></p>\r\n<p><span style=\"font-weight: 400;\">Actuellement, il est possible de se servir d&rsquo;un ordinateur muni d&rsquo;un logiciel facile d&rsquo;utilisation pour contr&ocirc;ler ce r&eacute;seau de cam&eacute;ras analogiques. Le stockage peut aussi &ecirc;tre num&eacute;rique et le couplage du syst&egrave;me de surveillance avec une alarme est devenu plus simple. Par ailleurs, la fixation des cam&eacute;ras sur les zones &agrave; surveiller n&rsquo;est pas particuli&egrave;rement compliqu&eacute;e. C&rsquo;est lorsqu&rsquo;il faut adapter le c&acirc;blage de ces cam&eacute;ras qu&rsquo;il est souvent n&eacute;cessaire de faire une intervention complexe.</span></p>\r\n<p><span style=\"font-weight: 400;\">&nbsp;</span></p>\r\n<h2><span style=\"color: #ff0000;\"><strong>Le syst&egrave;me IP</strong></span></h2>\r\n<ul>\r\n<li><span style=\"font-weight: 400;\">Les cam&eacute;ras IP utilisent le protocole internet pour communiquer les images qu&rsquo;elles enregistrent. La pr&eacute;sence d&rsquo;un serveur est donc requise pour collecter les informations pouvant provenir de ces cam&eacute;ras. De ce fait, il est souvent plus compliqu&eacute; de param&eacute;trer une surveillance IP. En effet, il est imp&eacute;ratif de r&eacute;gler correctement le serveur et ses p&eacute;riph&eacute;riques pour que la communication via le r&eacute;seau puisse &ecirc;tre &eacute;tablie. De plus, le transfert des donn&eacute;es vers le serveur doit &ecirc;tre crypt&eacute; de mani&egrave;re &agrave; ce qu&rsquo;aucun individu ne soit capable d&rsquo;interpr&eacute;ter ces donn&eacute;es et de trafiquer le signal.</span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li><span style=\"font-weight: 400;\">&Agrave; part ce risque, la diff&eacute;rence de qualit&eacute; avec le syst&egrave;me analogique est souvent flagrante lorsque le mat&eacute;riel utilis&eacute; n&rsquo;est pas performant. Les vid&eacute;os peuvent &ecirc;tre saccad&eacute;es surtout si le d&eacute;bit internet est m&eacute;diocre. En revanche, les images peuvent avoir une tr&egrave;s bonne r&eacute;solution. Il est aussi possible d&rsquo;effectuer des enregistrements sous diff&eacute;rents formats, permettant de contr&ocirc;ler la taille et la qualit&eacute; du fichier enregistr&eacute;. De plus, le fait de communiquer &agrave; travers internet permet de contr&ocirc;ler des cam&eacute;ras sous une tr&egrave;s longue distance. Vous pouvez &ecirc;tre en vacance au bout du monde, il vous sera toujours possible de manipuler les cam&eacute;ras chez vous ou &agrave; votre bureau. La surveillance peut m&ecirc;me &ecirc;tre simplifi&eacute;e avec l&rsquo;emploi d&rsquo;un Smartphone comme syst&egrave;me de vid&eacute;osurveillance. En effet, cet outil est tellement polyvalent qu&rsquo;il permet aujourd&rsquo;hui par l&rsquo;interm&eacute;diaire d&rsquo;internet et de nombreuses applications, de tout g&eacute;rer dans votre maison.</span></li>\r\n</ul>\r\n<p><span style=\"font-weight: 400;\">Avec quelques cam&eacute;ras IP et une application d&eacute;di&eacute;e, vous pourrez donc vous constituer votre propre r&eacute;seau de surveillance. Ce type d&rsquo;utilisation domestique est simple et ne fait appel qu&rsquo;&agrave; quelques cam&eacute;ras. Pour un r&eacute;seau d&rsquo;entreprise, la pr&eacute;sence d&rsquo;un informaticien est requise pour mettre en place les diff&eacute;rents dispositifs avec leurs param&egrave;tres. De plus, certaines applications ne sont pas aussi faciles &agrave; comprendre que d&rsquo;autres. La mise en place d&rsquo;une surveillance IP peut donc &ecirc;tre simple ou complexe selon le degr&eacute; de performance requis. Toutefois, la pose des dites cam&eacute;ras est plus simple, car elles ne n&eacute;cessitent aucun c&acirc;blage. De plus, pour ajouter un nouvel appareil, il suffit d&rsquo;identifier son adresse IP sur le r&eacute;seau.</span></p>\r\n<p><span style=\"font-weight: 400;\">Les nouvelles technologies se vulgarisent de plus en plus. Ce qui tend &agrave; diminuer le prix n&eacute;cessaire pour acqu&eacute;rir une surveillance IP. Les cam&eacute;ras num&eacute;riques sont de moins en moins ch&egrave;res, les supports de stockages sont vari&eacute;s et l&rsquo;utilisation via PC ou Smartphone est simple. Il peut cependant repr&eacute;senter un lourd investissement selon le degr&eacute; de performance recherch&eacute;.</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'S3.jpg'),
(4, 'Système de détection d’incendie', '<p>&nbsp;</p>\r\n<div class=\"column mcb-column mcb-item-0c126c68b one column_column\">\r\n<h1 class=\"column_attr clearfix\"><span style=\"color: #ff0000;\">Alarme et d&eacute;tection incendie</span></h1>\r\n<h5 class=\"themecolor\"><span style=\"color: #0000ff;\">La s&eacute;curit&eacute; au maximum</span></h5>\r\n</div>\r\n<div class=\"column mcb-column mcb-item-109649b61 one column_column\">\r\n<div class=\"column_attr clearfix\">\r\n<h5>&nbsp; Pour votre s&eacute;curit&eacute; nous installons un syst&egrave;me d\'intrusion et de d&eacute;tection incendie coupl&eacute; &agrave; un transmetteur t&eacute;l&eacute;phonique pour vous signaler un probl&egrave;me ou &agrave; un service de t&eacute;l&eacute;surveillance.</h5>\r\n</div>\r\n</div>\r\n<div class=\"column mcb-column mcb-item-eb04a891b one column_divider\"><hr class=\"no_line\" /></div>\r\n<div class=\"column mcb-column mcb-item-1hfg5se72 one column_column\">\r\n<div class=\"column_attr clearfix\">\r\n<h5>&nbsp; Ce syst&egrave;me permet aussi la d&eacute;tection de gaz et de couper l\'&eacute;lectro-vanne associ&eacute;e.</h5>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li><span style=\"font-weight: 400;\">Le syst&egrave;me de d&eacute;tection incendie est une installation constitu&eacute;e d&rsquo;un ensemble de capteurs (ou d&eacute;tecteurs) reli&eacute;s &agrave; un &laquo; tableau &raquo; de d&eacute;tection incendie. Ce tableau re&ccedil;oit les alarmes &laquo; feu &raquo; ou &laquo; d&eacute;rangement &raquo; et les &laquo; traite &raquo; en les localisant par un signal sonore et un signal lumineux.</span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li><span style=\"font-weight: 400;\">Cet ensemble est constitu&eacute; d&rsquo;&eacute;l&eacute;ments techniques qui font l&rsquo;objet de normes NF. La conception de l&rsquo;installation fait l&rsquo;objet de la r&egrave;gle R7 de l&rsquo;APSAD, texte technique souvent utilis&eacute; comme r&eacute;f&eacute;rence.</span></li>\r\n<li><span style=\"font-weight: 400;\">D&eacute;tecteurs de fum&eacute;e, de flamme, thermov&eacute;locim&eacute;trique, barri&egrave;re lin&eacute;aire, ATEX &hellip; AUDITEL &eacute;tudie le meilleur choix de d&eacute;tection incendie en fonction de l&rsquo;analyse des risques.</span></li>\r\n</ul>\r\n<p><span style=\"font-weight: 400;\"><span style=\"color: #ff0000;\">AUDITEL</span> vous assiste depuis l&rsquo;avant-projet jusqu&rsquo;&agrave; la r&eacute;ception de l&rsquo;installation, en passant par la v&eacute;rification de performance des installations (essais de d&eacute;tection appel&eacute;s Foyers Types de Site).</span></p>\r\n<p>&nbsp;</p>', 'S4.jpg'),
(5, 'Système de contrôle d’accès', '<h2><span style=\"color: #ff0000;\"><strong>Le syst&egrave;me de contr&ocirc;le d\'acc&egrave;s :&nbsp;un indispensable dans la s&eacute;curisation de votre site</strong></span></h2>\r\n<hr />\r\n<p>De nombreux professionnels choisissent d\'installer <span style=\"color: #0000ff;\">un&nbsp;<strong>syst&egrave;me de contr&ocirc;le d\'acc&egrave;s</strong></span>&nbsp;dans leurs entreprises car cela leur permet :</p>\r\n<ul class=\"listSquareYellow\">\r\n<li>de g&eacute;rer, filtrer et optimiser les flux de personnes / v&eacute;hicules sur leur site</li>\r\n<li>de limiter les droits d\'entr&eacute;e aux personnes autoris&eacute;es et de tracer et enregistrer leurs entr&eacute;es et sorties</li>\r\n<li>de prot&eacute;ger leurs employ&eacute;s de comportements &agrave; risques</li>\r\n<li>de s&eacute;curiser leurs employ&eacute;s et visiteurs en verrouillant l\'acc&egrave;s &agrave; des zones dangereuses ou sensibles</li>\r\n<li>d\'emp&ecirc;cher les vols de mat&eacute;riels et l\'acc&egrave;s aux donn&eacute;es confidentielles</li>\r\n<li>de prot&eacute;ger vos b&acirc;timents en dissuadant des actes de malveillance<br />&nbsp;</li>\r\n</ul>\r\n<p>Offrir ainsi un environnement de s&eacute;curit&eacute; aux employ&eacute;s, visiteurs et sous-traitants, tout en r&eacute;duisant le montant des primes d\'assurance ou les co&ucirc;ts li&eacute;s aux d&eacute;gradations potentielles.<br /><br />Ce&nbsp;<strong>contr&ocirc;le d\'acc&egrave;s</strong>&nbsp;peut s\'inscrire dans une d&eacute;marche globale de s&eacute;curit&eacute; et &ecirc;tre associ&eacute; &agrave; d\'autres syst&egrave;mes de s&eacute;curit&eacute; &eacute;lectronique tels que la&nbsp;<a href=\"https://www.stanleysecurity.fr/technologies-de-securite/videosurveillance\">vid&eacute;osurveillance&nbsp;</a>et la&nbsp;<a href=\"https://www.stanleysecurity.fr/telesurveillance\">t&eacute;l&eacute;surveillance</a></p>\r\n<p>&nbsp;</p>\r\n<h2><span style=\"color: #ff0000;\"><strong>Le contr&ocirc;le d\'acc&egrave;s s\'adapte &agrave; tous les profils d\'entreprise</strong></span></h2>\r\n<hr />\r\n<p>Que vous ayez besoin de s&eacute;curiser l\'acc&egrave;s &agrave; votre usine et &agrave; ses zones dangereuses ou que vous souhaitiez&nbsp;<span style=\"color: #0000ff;\"><strong>contr&ocirc;ler l\'acc&egrave;s</strong></span>&nbsp;&agrave; votre immeuble tertiaire et &agrave; ses &eacute;quipements de valeurs, vous b&eacute;n&eacute;ficierez de notre expertise.&nbsp;STANLEY Security vous proposera une offre personnalis&eacute;e selon la typologie de votre site et vos besoins<strong>.</strong><br /><br />Nos&nbsp;<span style=\"color: #0000ff;\"><strong>syst&egrave;mes de contr&ocirc;les d\'acc&egrave;s</strong></span>&nbsp;peuvent &ecirc;tre associ&eacute;s &agrave; des serrures intelligentes et &agrave; des portes &eacute;quip&eacute;es de ventouses magn&eacute;tiques qui sont utilis&eacute;es pour les&nbsp;<span style=\"color: #0000ff;\"><strong>contr&ocirc;les d\'acc&egrave;s</strong></span>&nbsp;principaux tels que les entr&eacute;es de locaux. Il est &eacute;galement possible de contr&ocirc;ler des tripodes, portillons pour personnes &agrave; mobilit&eacute;s r&eacute;duites ou encore des portes tambours et des ascenseurs. Pour filtrer des v&eacute;hicules, le&nbsp;<span style=\"color: #0000ff;\"><strong>syst&egrave;me de contr&ocirc;le d\'acc&egrave;s</strong></span>&nbsp;peut &ecirc;tre reli&eacute; &agrave; des barri&egrave;res, portails ou bornes escamotables.<br /><br /><strong>Nous nous adaptons &agrave; vos locaux, vos crit&egrave;res de restriction et vos imp&eacute;ratifs de s&eacute;curit&eacute;, quelles que soient l\'activit&eacute; ou la taille de votre entreprise.</strong></p>\r\n<p>&nbsp;</p>\r\n<h2>&nbsp;<span style=\"color: #ff0000;\"><strong>Avantages</strong><strong>&nbsp;du syst&egrave;me de contr&ocirc;le d&rsquo;acc&egrave;s</strong></span></h2>\r\n<hr />\r\n<p>Gr&acirc;ce &agrave; la large gamme de solutions de&nbsp;<span style=\"color: #0000ff;\"><strong>contr&ocirc;le d\'acc&egrave;s</strong></span>&nbsp;disponibles pr&eacute;sent&eacute;es ci-dessus, vous b&eacute;n&eacute;ficierez de nombreux avantages :</p>\r\n<ul class=\"listSquareYellow\">\r\n<li>Gagnez du temps : Vous pouvez instantan&eacute;ment activer/d&eacute;sactiver des badges &agrave; distance ou &eacute;largir/restreindre des acc&egrave;s selon votre activit&eacute; ou modifier le code d\'acc&egrave;s, le QR code, etc.</li>\r\n<li>Les syst&egrave;mes d\'ouverture peuvent &ecirc;tre param&eacute;tr&eacute;s selon les plages horaires souhait&eacute;es</li>\r\n<li>D&eacute;finissez les zones autoris&eacute;es selon les typologies de personnes (personnels, visiteurs, fournisseurs)</li>\r\n<li>Analysez &agrave; posteriori les d&eacute;placements et l\'utilisation faite des badges, jetons, connexions &agrave; l\'ouverture &agrave; distance, etc.</li>\r\n<li>Ma&icirc;trisez votre budget en \"substituant\" un gardien par un syst&egrave;me de contr&ocirc;le d\'acc&egrave;s</li>\r\n<li>Les badges sont personnalisables avec la photo et le nom des personnes &agrave; qui ils sont attribu&eacute;s : cela permet &agrave; vos agents de s&eacute;curit&eacute; de contr&ocirc;ler l\'identit&eacute; des personnes les utilisant</li>\r\n<li>Tous les&nbsp;<span style=\"color: #0000ff;\"><strong>syst&egrave;mes</strong>&nbsp;<strong>d\'acc&egrave;s</strong></span>&nbsp;mis &agrave; disposition sont difficilement duplicables contrairement aux cl&eacute;s</li>\r\n</ul>\r\n<p><span style=\"color: #0000ff;\"><strong>Toutes nos solutions vous permettent une gestion et une r&eacute;activit&eacute; m&ecirc;me &agrave; distance via votre application mobile ou notre logiciel de contr&ocirc;le d\'acc&egrave;s.</strong></span></p>', 'S5.jpg'),
(6, 'Système d’alarme anti intrusion', '<p>&nbsp;</p>\r\n<h1><span style=\"color: #ff0000;\"><strong>Syst&egrave;me d\'alarme anti-intrusion : qu&rsquo;est ce que c&rsquo;est ?</strong></span></h1>\r\n<p><span style=\"font-weight: 400;\">Les syst&egrave;mes d\'alarme anti-intrusion ont pour objectif d&rsquo;</span><strong>alerter au cas o&ugrave; des intrus p&eacute;n&eacute;treraient dans le lieu s&eacute;curis&eacute;</strong><span style=\"font-weight: 400;\">. Des </span><strong>capteurs</strong><span style=\"font-weight: 400;\"> (d&eacute;tecteurs de mouvement ou d&eacute;tecteur d&rsquo;ouverture par exemple) rep&egrave;rent l&rsquo;intrusion et d&eacute;clenchent une alarme qui fait fuir les cambrioleurs et alertent les personnes aux alentours.</span></p>\r\n<h2><span style=\"color: #0000ff;\"><strong>Les diff&eacute;rents capteurs des syst&egrave;mes d\'alarme anti-intrusion</strong></span></h2>\r\n<p><span style=\"font-weight: 400;\">Les intrus peuvent p&eacute;n&eacute;trer dans votre entreprise ou votre maison de plusieurs fa&ccedil;ons. Pour chaque mode d&rsquo;intrusion, il existe des capteurs :</span></p>\r\n<ul>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Les</span><span style=\"color: #ff6600;\"><strong> d&eacute;tecteurs d&rsquo;ouverture</strong></span><span style=\"font-weight: 400;\"> se positionnent sur les portes, notamment la porte d&rsquo;entr&eacute;e de l&rsquo;&eacute;tablissement &agrave; prot&eacute;ger, et se d&eacute;clenchent d&egrave;s que la porte en question est ouverte ou forc&eacute;e par les cambrioleurs. Les d&eacute;tecteurs d&rsquo;ouverture se placent aussi sur les fen&ecirc;tres pour emp&ecirc;cher toute intrusion.</span></li>\r\n</ul>\r\n<ul>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Les </span><strong><span style=\"color: #ff6600;\">d&eacute;tecteurs de mouvement</span></strong><span style=\"font-weight: 400;\"> se d&eacute;clenchent d&egrave;s qu&rsquo;un mouvement suspect survient dans les lieux prot&eacute;g&eacute;s. Il en existe de diff&eacute;rentes sortes :</span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-weight: 400;\">Pour les professionnels ou les particuliers, </span><span style=\"color: #0000ff;\"><strong>AUDITEL &Eacute;lectricit&eacute; installe</strong></span><span style=\"font-weight: 400;\"> des </span><span style=\"color: #0000ff;\"><strong>syst&egrave;mes d\'alarmes</strong></span><span style=\"font-weight: 400;\"> et de </span><span style=\"color: #0000ff;\"><strong>vid&eacute;osurveillance</strong></span><span style=\"font-weight: 400;\"> garantissant plus de s&eacute;curit&eacute; aux habitants ou utilisateurs du b&acirc;timent. Le mat&eacute;riel choisi par les professionnels est de qualit&eacute; et reconnu dans le domaine de la s&eacute;curit&eacute;.</span></p>\r\n<p><span style=\"font-weight: 400;\">&nbsp;</span></p>\r\n<p><span style=\"font-weight: 400;\">La </span><span style=\"color: #ff6600;\"><strong>pose </strong></span><span style=\"font-weight: 400;\">d\'</span><span style=\"color: #ff6600;\"><strong>alarmes anti-intrusion</strong></span><span style=\"font-weight: 400;\"> fait appel &agrave; des connaissances sp&eacute;cifiques aussi bien du b&acirc;timent que des besoins du client. Il existe diff&eacute;rents types d\'alarmes :</span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-weight: 400;\">- <span style=\"color: #0000ff;\">Les d&eacute;tecteurs de mouvem</span></span><span style=\"color: #0000ff;\"><em><span style=\"font-weight: 400;\">ent en ext&eacute;rieur</span></em></span><span style=\"font-weight: 400;\"> : ils r&eacute;sistent aux intemp&eacute;ries et fonctionnent la nuit gr&acirc;ce &agrave; leur vision infrarouge. Certains capteurs sont sp&eacute;cialement d&eacute;di&eacute;s &agrave; la surveillance de lieu &agrave; l&rsquo;environnement difficile comme les caves par exemple (taux d&rsquo;humidit&eacute; &eacute;lev&eacute;).</span></p>\r\n<p><span style=\"font-weight: 400;\"><span style=\"color: #0000ff;\">- Les</span></span><span style=\"color: #0000ff;\"><em><span style=\"font-weight: 400;\"> d&eacute;tecteurs de mouvement pour pi&egrave;ces &eacute;troites </span></em></span><span style=\"font-weight: 400;\">: sp&eacute;cialement con&ccedil;us pour les petites surfaces, ces capteurs fonctionnent par rayonnement infrarouge pour d&eacute;tecter la pr&eacute;sence d&rsquo;intrus.</span></p>\r\n<p><span style=\"color: #0000ff;\"><span style=\"font-weight: 400;\">- Les </span><em><span style=\"font-weight: 400;\">d&eacute;tecteurs de mouvement verticaux </span></em></span><span style=\"font-weight: 400;\">: ils s&rsquo;adaptent sp&eacute;cialement &agrave; la surveillance des fen&ecirc;tres et des portes.</span></p>\r\n<h2><span style=\"color: #ff0000;\"><strong>Param&eacute;trages sp&eacute;cifiques d\'un syst&egrave;me d\'alarme</strong></span></h2>\r\n<p><span style=\"font-weight: 400;\">Param&eacute;trer votre alarme contribue &agrave; son efficacit&eacute; : un bon param&eacute;trage la fera se d&eacute;clencher lorsqu&rsquo;un intrus p&eacute;n&eacute;trera dans votre habitation ou votre entreprise et uniquement dans ce cas. Il existe des param&eacute;trages sp&eacute;cifiques tels que :</span></p>\r\n<ul>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">La</span><strong><span style=\"color: #0000ff;\"> classification de certaines pi&egrave;ces en &laquo; zones sensibles</span> &raquo;</strong><span style=\"font-weight: 400;\"> : l&rsquo;alarme plac&eacute;e dans une zone d&eacute;sign&eacute;e &laquo; sensible &raquo; sera plus prompte &agrave; se d&eacute;clencher que celle plac&eacute;e dans une zone comportant moins de risques de vols comme une cuisine dans le cas d&rsquo;un particulier ou une caf&eacute;t&eacute;ria pour une entreprise. Evitez &eacute;galement les pi&egrave;ces dans lesquelles vous pouvez avoir besoin de p&eacute;n&eacute;trer pendant la nuit.</span></li>\r\n</ul>\r\n<p><span style=\"font-weight: 400;\">Le<span style=\"color: #0000ff;\"><strong> minutage du temps de passage</strong></span> : l&rsquo;alarme ne se mettra en route qu&rsquo;au bout d&rsquo;un certain temps d&rsquo;occupation de la pi&egrave;ce. Elle vous laissera le temps de la d&eacute;sactiver par exemple quand vous rentrez dans votre local.</span></p>\r\n<ul>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">des</span><strong> alarmes anti-intrusion</strong></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">des</span><strong> d&eacute;tecteurs de mouvements</strong></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">des </span><strong>d&eacute;tecteurs de bris de vitres</strong></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">des </span><strong>alarmes sans fil</strong></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">des alarmes <strong>&agrave; fil</strong></span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">des </span><strong>syst&egrave;mes</strong><span style=\"font-weight: 400;\"> de</span><strong> t&eacute;l&eacute;surveillance</strong></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">des </span><strong>alarmes incendie</strong></li>\r\n</ul>\r\n<p><span style=\"font-weight: 400;\">&nbsp;</span></p>\r\n<p><span style=\"font-weight: 400;\">L\'&eacute;quipe de AUDITEL &Eacute;lectricit&eacute; est form&eacute;e &agrave; la pose et aussi au </span><strong>d&eacute;pannage </strong><span style=\"font-weight: 400;\">des</span><strong> syst&egrave;mes d\'alarme</strong><span style=\"font-weight: 400;\"> dans la r&eacute;gion </span><strong>Auvergne Rh&ocirc;ne Alpes</strong><span style=\"font-weight: 400;\">.</span></p>\r\n<h2>&nbsp;</h2>', 'S6.jpg'),
(7, 'Précâblage de réseau informatique', '<h1><strong><span style=\"color: #ff0000;\">Base du c&acirc;blage informatique : Pr&eacute;-c&acirc;blage, C&acirc;blage et Post-c&acirc;blage</span></strong></h1>\r\n<p><span style=\"font-weight: 400;\">&nbsp;</span></p>\r\n<p><span style=\"font-weight: 400;\">La base du c&acirc;blage informatique consiste &agrave; &eacute;quiper un local destin&eacute; &agrave; une activit&eacute; en particulier d&rsquo;un ensemble de c&acirc;bles informatiques de courants faibles et de c&acirc;bles &eacute;lectriques de courants forts.</span></p>\r\n<p><span style=\"font-weight: 400;\">Le premier permet de transporter des donn&eacute;es de type VDI ou Voix Donn&eacute;es Images. Il permet ainsi d&rsquo;utiliser un service t&eacute;l&eacute;phonique et la mise en place d&rsquo;un r&eacute;seau local. Ce sont d&rsquo;ailleurs les principales utilit&eacute;s du r&eacute;seau VDI en entreprise.</span></p>\r\n<p><span style=\"font-weight: 400;\">Enfin, il permet aussi d&rsquo;avoir acc&egrave;s &agrave; des solutions vid&eacute;os de haute d&eacute;finition, notamment pour les vid&eacute;os de surveillance ou pour avoir des salles de conf&eacute;rence avec des vid&eacute;os de haute qualit&eacute;.</span></p>\r\n<p><span style=\"font-weight: 400;\">La mise en place d&rsquo;un </span><a href=\"https://cablage-informatique.com/reseau-et-systemes-de-cablage/\"><span style=\"font-weight: 400;\">r&eacute;seau et syst&egrave;me de c&acirc;blage</span></a><span style=\"font-weight: 400;\"> se fait de trois mani&egrave;res : le pr&eacute;c&acirc;blage, le c&acirc;blage et le post-c&acirc;blage. Voyons ce qu&rsquo;il en est de ces trois principes.</span></p>\r\n<h2><span style=\"color: #0000ff;\"><strong>Le pr&eacute;c&acirc;blage pour un r&eacute;seau reconfigurable et flexible</strong></span></h2>\r\n<p><span style=\"font-weight: 400;\">Il ne suffit pas de c&acirc;bler un b&acirc;timent pour qu&rsquo;il soit qualifi&eacute; d&rsquo;intelligent. Le syst&egrave;me de c&acirc;blage mis en place doit &ecirc;tre correctement dimensionn&eacute; et suffisamment performant ind&eacute;pendamment des mat&eacute;riels qui y seront utilis&eacute;s.</span></p>\r\n<p><span style=\"font-weight: 400;\">Les entreprises recherchent souvent des b&acirc;timents qui peuvent r&eacute;pondre &agrave; leurs besoins, quels qu&rsquo;il soient. Un b&acirc;timent doit pouvoir accueillir tout type de mat&eacute;riels informatiques. La topologie physique permet d&rsquo;exploiter efficacement l&rsquo;espace et</span></p>\r\n<p><span style=\"font-weight: 400;\">Que ce soit une question de performance ou plut&ocirc;t une question de topologie physique, un b&acirc;timent doit pouvoir accueillir tout type de r&eacute;seau informatique. D&rsquo;autant qu&rsquo;une entreprise peut tout &agrave; fait d&eacute;velopper son activit&eacute; et &eacute;tendre son r&eacute;seau au sein d&rsquo;un m&ecirc;me local en cours d&rsquo;activit&eacute;.</span></p>\r\n<ul>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Un b&acirc;timent doit ainsi respecter des normes d&rsquo;&eacute;volution.</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">En plus, le r&eacute;seau doit &ecirc;tre facilement reconfigurable et flexible.</span></li>\r\n</ul>\r\n<p><span style=\"font-weight: 400;\">Cela ne peut pas se faire si le c&acirc;blage mis en place ne respecte pas ces besoins. Le pr&eacute;-c&acirc;blage informatique consiste justement &agrave; r&eacute;pondre &agrave; ces besoins.</span></p>\r\n<ul>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Chaque point d&rsquo;acc&egrave;s doit donner un acc&egrave;s &agrave; l&rsquo;ensemble du r&eacute;seau local ou du moins &agrave; une section du r&eacute;seau. Le but est de faire en sorte qu&rsquo;il n&rsquo;y ait plus besoin de tirer des c&acirc;bles suppl&eacute;mentaires.</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Le b&acirc;timent doit &ecirc;tre capable d&rsquo;accueillir n&rsquo;importe quelle topologie physique de r&eacute;seau informatique.</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">L&rsquo;ajout de nouvelles stations ne doit pas paralyser le r&eacute;seau d&eacute;j&agrave; en place.</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Le c&acirc;blage mis en place doit donner acc&egrave;s &agrave; un r&eacute;seau de type VDI.</span></li>\r\n</ul>\r\n<p><span style=\"font-weight: 400;\">La diff&eacute;rence du pr&eacute;c&acirc;blage au post-c&acirc;blage est que celui-ci ne s&rsquo;improvise pas. Le pr&eacute;c&acirc;blage doit avoir une dur&eacute;e de vie d&rsquo;au moins une demi-douzaine d&rsquo;ann&eacute;es. Son installation doit supporter les &eacute;volutions du march&eacute; informatique. Les c&acirc;bles utilis&eacute;s doivent fournir un d&eacute;bit suffisant. Ils doivent aussi supporter les &eacute;quipements informatiques actuels, en plus de ceux qui vont sortir dans les ann&eacute;es &agrave; venir. Il vaut toujours mieux faire appel &agrave; un professionnel qualifi&eacute;. Ce dernier conna&icirc;t les normes en vigueur et peut en outre optimiser votre syst&egrave;me de c&acirc;blage informatique.</span></p>\r\n<h2><span style=\"color: #0000ff;\"><strong>Le c&acirc;blage r&eacute;seau informatique</strong></span></h2>\r\n<p><span style=\"font-weight: 400;\">Il existe des b&acirc;timents qui n&rsquo;ont pas encore mis &agrave; jour leur syst&egrave;me de c&acirc;blage informatique. Lorsqu&rsquo;une entreprise demande &agrave; s&rsquo;installer dans un vieux b&acirc;timent, elle doit encore faire en sorte de faire installer un syst&egrave;me de c&acirc;blage qui suit les normes actuelles. L&rsquo;int&eacute;r&ecirc;t du c&acirc;blage informatique est en premier lieu le respect des normes VDI. En plus, le b&acirc;timent doit r&eacute;pondre aux besoins que l&rsquo;entreprise s&rsquo;est fix&eacute;s en termes de performance et des travaux de maintenances futures pour ledit r&eacute;seau.</span></p>\r\n<p><span style=\"font-weight: 400;\">Le c&acirc;blage en lui-m&ecirc;me est donc les travaux effectu&eacute;s par l&rsquo;&eacute;lectricien c&acirc;bleur. Pour ce faire, ce dernier doit conna&icirc;tre o&ugrave; il doit installer les diff&eacute;rents points d&rsquo;acc&egrave;s et rallier le r&eacute;seau local &agrave; l&rsquo;ext&eacute;rieur. La longueur des c&acirc;bles d&eacute;pendra de la surface &agrave; installer ainsi que du nombre de points d&rsquo;acc&egrave;s.</span></p>\r\n<ul>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Vous devez vous munir d&rsquo;un cahier de charge pour c&acirc;blage informatique et indiquer le type de c&acirc;blage que vous voulez mettre en place. Pour cela, vous avez le choix entre les 4 grades de r&eacute;seau VDI dont les 3 premiers utilisent un c&acirc;blage Ethernet, c&rsquo;est-&agrave;-dire des c&acirc;bles RJ45 et le dernier utilise plut&ocirc;t un c&acirc;blage en fibres optiques.</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Vous devez ensuite d&eacute;finir la topologie &agrave; installer : topologie en bus, en anneau, en &eacute;toile, maill&eacute;e ou en arbre, etc. En outre, il est tout &agrave; fait possible d&rsquo;utiliser une topologie hybride en fonction du local &agrave; c&acirc;bler.</span></li>\r\n<li style=\"font-weight: 400;\" aria-level=\"1\"><span style=\"font-weight: 400;\">Le c&acirc;blage proprement dit doit &ecirc;tre effectu&eacute; par un professionnel. C&rsquo;est souvent un &eacute;lectricien c&acirc;bleur. Ces derniers ont des tarifs en fonction de la dur&eacute;e du travail ou bien en fonction de l&rsquo;ampleur des travaux. Le mieux est de demander un devis avant d&rsquo;engager un tel professionnel. Vous pouvez tout &agrave; fait utiliser notre plateforme pour cela.</span></li>\r\n</ul>\r\n<h2><span style=\"color: #0000ff;\"><strong>Le post-c&acirc;blage</strong></span></h2>\r\n<p><span style=\"font-weight: 400;\">La mise en place d&rsquo;un r&eacute;seau informatique engendre des co&ucirc;ts qui peuvent &ecirc;tre assez &eacute;lev&eacute;s. Il convient donc de penser &agrave; plus long terme plut&ocirc;t que de devoir r&eacute;aliser des travaux &agrave; chaque changement au niveau du r&eacute;seau. En plus, les travaux de c&acirc;blages demandent parfois du temps et peuvent emp&ecirc;cher une entreprise de poursuivre son activit&eacute; pendant les travaux d&rsquo;installation r&eacute;seau.</span></p>\r\n<p><span style=\"font-weight: 400;\">Si le pr&eacute;c&acirc;blage doit plut&ocirc;t respecter des normes mondiales, le post-c&acirc;blage est l&agrave; pour r&eacute;pondre aux besoins sp&eacute;cifiques des entreprises. Pas de panique, le post-c&acirc;blage peut tout &agrave; fait &ecirc;tre effectu&eacute; sans trop d&rsquo;inconv&eacute;nients et avec des frais raisonnables. Le mieux est toujours de passer par des professionnels dans ce domaine en indiquant les nouveaux besoins. Il faudra parfois tirer de nouveaux c&acirc;bles et/ou installer de nouveaux points d&rsquo;acc&egrave;s.</span></p>', 'S7.jpg'),
(8, 'Télécom', 'TélécomTélécomTélécom', 'S7.jpg'),
(9, 'fibre optique', 'cable', '');

-- --------------------------------------------------------

--
-- Structure de la table `service_devis`
--

CREATE TABLE `service_devis` (
  `id_service` int(11) NOT NULL,
  `id_devis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `service_realisation`
--

CREATE TABLE `service_realisation` (
  `id_service` int(11) NOT NULL,
  `id_realisation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `devis`
--
ALTER TABLE `devis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `realisation`
--
ALTER TABLE `realisation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `service_devis`
--
ALTER TABLE `service_devis`
  ADD PRIMARY KEY (`id_service`,`id_devis`),
  ADD KEY `id_devis` (`id_devis`);

--
-- Index pour la table `service_realisation`
--
ALTER TABLE `service_realisation`
  ADD PRIMARY KEY (`id_service`,`id_realisation`),
  ADD KEY `id_realisation` (`id_realisation`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `devis`
--
ALTER TABLE `devis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `realisation`
--
ALTER TABLE `realisation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `service_devis`
--
ALTER TABLE `service_devis`
  ADD CONSTRAINT `service_devis_ibfk_1` FOREIGN KEY (`id_service`) REFERENCES `service` (`id`),
  ADD CONSTRAINT `service_devis_ibfk_2` FOREIGN KEY (`id_devis`) REFERENCES `devis` (`id`);

--
-- Contraintes pour la table `service_realisation`
--
ALTER TABLE `service_realisation`
  ADD CONSTRAINT `service_realisation_ibfk_1` FOREIGN KEY (`id_service`) REFERENCES `service` (`id`),
  ADD CONSTRAINT `service_realisation_ibfk_2` FOREIGN KEY (`id_realisation`) REFERENCES `realisation` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
