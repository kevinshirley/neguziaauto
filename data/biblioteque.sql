-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2017 at 03:06 PM
-- Server version: 5.6.15-log
-- PHP Version: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `biblioteque`
--

-- --------------------------------------------------------

--
-- Table structure for table `auteurs`
--

CREATE TABLE IF NOT EXISTS `auteurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `auteurs`
--

INSERT INTO `auteurs` (`id`, `nom`) VALUES
(1, 'Kevin Shirley'),
(2, 'Carlos LesBoeuf'),
(5, 'Marc Lamontagne');

-- --------------------------------------------------------

--
-- Table structure for table `commentaires`
--

CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `auteur` varchar(50) NOT NULL,
  `contenu` varchar(500) NOT NULL,
  `livre_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `commentaires`
--

INSERT INTO `commentaires` (`id`, `date`, `auteur`, `contenu`, `livre_id`) VALUES
(1, '2017-03-01', 'moi', 'C''est fait : je l''ai lu ! Et presque d''une traite.', 6),
(2, '2017-03-08', 'Encore moi', 'Fin surprenante', 6),
(3, '2017-03-19', 'PetitGateau', 'Il me paraît bien difficile de traiter de ce roman sous toutes ses facettes tant il me paraît complexe bien que la lecture en soit aisée.', 6),
(4, '2017-03-01', 'Nastasia', 'INCLASSABLE ! je crois que c''est une sorte d''OVNI ou plutôt d''OLVNI (le L c''est pour littéraire). Cela aurait pu s''appeler "Histoire (sur)Naturelle de la Colombie" mais cela s''est appelé "Cent ans de solitude". Je ne vous en dirai que quelques mots car l''ayant lu il y a déjà trop longtemps, j''ai l''avantage du recul mais l''inconvénient de l''oubli.', 5),
(5, '2017-03-04', 'Luniver', 'On cite souvent 1984 et Big Brother à chaque fois que des nouvelles caméras de surveillance sont installées. J''ai l''impression que c''est la seule chose qu''on ait retenu de ce roman : la surveillance constante.\r\nPourtant, 1984, c''est beaucoup plus que ça : c''est un condensé de toutes les méthodes qui existent aux quatre coins du globe pour cadenasser la pensée, mise en place à la perfection : la peur constante de la délation, y compris venant de sa propre famille ; la capacité des foules à absorb', 1),
(6, '2017-03-03', 'Gwen', 'a fascination que ce roman a exercée sur moi peut s''illustrer par la seule citation que j''en ai extraite et qui, en une phrase absolument interminable et sublime, fait jaillir de la bouche d''une des protagonistes toute la verve, toute la saveur, tout le burlesque et tout le charme de la plume de Gabriel Garcia Marquez. ', 5),
(7, '2017-03-08', 'Woland', 'Nombreux sont ceux qui ont entendu au moins une fois dans leur vie le nom de Big Brother. Trop nombreux restent ceux qui le confondent avec une espèce d''ordinateur gigantesque qui traque l''intimité de tout un chacun dans un futur à vrai dire si peu lointain que, pour nous, il est déjà du passé : 1984.', 1),
(8, '2017-03-04', 'Sylvaine', 'Ce n''est pas sans crainte que j''ai entrepris de relire Les Trois Mousquetaires, LE Livre de mes 10 ans lu relu re-relu à l''époque!.Les années ont passé ajoutez-y 50 ans et ô surprise ô merveille le même ^plaisir , j''ai retrouvé mes Mousquetaires ouf ! c''est génial !', 4),
(9, '2017-03-01', 'Cosaque', 'QUEL CHOC !!!\r\nJe m''apprêtais à tranquillement lire un roman d''aventure, un peu sur le modèle de l''Île au trésor de Stevenson. Erreur grave ! de l''aventure, certes on en a, mais la narration est tellement entrelardée de morceaux hétérogènes, que le fil du récit se perd totalement.', 3),
(10, '2017-03-05', 'Fx1', 'Une grande histoire qui a connu de moments de gloire. Des moments qui n''ont jamais cessé. Surtout que le roman a été porté sur l''écran par Victor Flemingen 1939. le rôle de Scarlett O''Hara a été joué par Vivien Leigh, Rhett Butler par Clark Gable, celui de Ashley Wilkes par Leslie Howard et celui de Melanie Hamilton par la douce Olivia de Havilland. Ce film a permis d''immortaliser le livre. ', 2),
(14, '2017-03-24', 'Kevin', 'asfasf', 1),
(15, '2017-03-24', 'Adam', 'yessur', 1),
(16, '2017-03-24', 'Arnold', 'salut mec', 1),
(17, '2017-03-24', 'Arnold', 'salut mec', 1);

-- --------------------------------------------------------

--
-- Table structure for table `livres`
--

CREATE TABLE IF NOT EXISTS `livres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(500) NOT NULL,
  `auteur` varchar(500) NOT NULL,
  `annee` int(11) NOT NULL,
  `nbpagestotales` int(11) NOT NULL,
  `resume` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `livres`
--

INSERT INTO `livres` (`id`, `titre`, `auteur`, `annee`, `nbpagestotales`, `resume`) VALUES
(1, '1984', 'Orwell', 1948, 256, 'De tous les carrefours importants, le visage à la moustache noire vous fixait du regard. BIG BROTHER VOUS REGARDE, répétait la légende, tandis que le regard des yeux noirs pénétrait les yeux de Winston... Au loin, un hélicoptère glissa entre les toits, plana un moment, telle une mouche bleue, puis repartit comme une flèche, dans un vol courbe. C''était une patrouille qui venait mettre le nez aux fenêtres des gens. Mais les patrouilles n''avaient pas d''importance. Seule comptait la Police de la Pen'),
(2, 'Autant en emporte le vent', 'Margaret Mitchell', 1936, 458, 'Best-seller absolu depuis sa parution en 1936 ! En pleine guerre de Sï¿½cession, la ravissante et trï¿½s dï¿½terminï¿½e Scarlett O''Hara voit le bel avenir qui lui ï¿½tait rï¿½servï¿½ ï¿½ jamais ravagï¿½. Douï¿½e d''une ï¿½nergie peu commune, elle va se battre sur tous les fronts, dans la Gï¿½orgie en feu, pour sauver la terre et le domaine paternels : Tara. Ses amours ? Le fragile et distinguï¿½ Ashley Wilkes et Rhett Butler, forceur de blocus et sï¿½duisante canaille, attirï¿½ par Scarlett parce'),
(3, 'Moby Dick', 'Herman Melville', 1851, 758, 'Avec Moby Dick, Melville a donné naissance à un livre-culte et inscrit dans la mémoire des hommes un nouveau mythe : celui de la baleine blanche. Fort de son expérience de marin, qui a nourri ses romans précédents et lui a assuré le succès, l''écrivain américain, alors en pleine maturité, raconte la folle quête du capitaine Achab et sa dernière rencontre avec le grand cachalot. Véritable encyclopédie de la mer, nouvelle Bible aux accents prophétiques, parabole chargée de thèmes universels, Moby D'),
(4, 'Les 3 mousquetaires', 'Alexandre Dumas', 1844, 456, 'Aux trois gentilshommes mousquetaires Athos, Porthos et Aramis, toujours prêts à en découdre avec les gardes du Cardinal de Richelieu, s''associe le jeune gascon d''Artagnan fraîchement débarqué de sa province avec pour ambition de servir le roi Louis XIII.\nEngagé dans le corps des mousquetaires, d''Artagnan s''éprend de l''angélique Constance Bonacieux.\nEn lutte contre la duplicité et l''intrigue politique, les quatre compagnons trouveront en face d''eux une jeune anglaise démoniaque et très belle, Mi'),
(5, '100 ans de solitude', 'G.G. Marquez', 1967, 895, 'Cent Ans de solitude. Epopï¿½e de la fondation, de la grandeur et de la dï¿½cadence du village de Macondo, et de sa plus illustre famille de pionniers, aux prises avec l''histoire cruelle et dï¿½risoire d''une de ces rï¿½publiques latino-amï¿½ricaines tellement invraisemblables qu''elles nous paraissent encore en marge de l''Histoire. Cent Ans de solitude est ce thï¿½ï¿½tre gï¿½ant oï¿½ les mythes engendrent les hommes qui ï¿½ leur tour engendrent les mythes, comme chez Homï¿½re, Cervantes ou Rabela'),
(6, 'Kafka sur le rivage', 'Murakami', 2002, 0, 'Magique, hypnotique, Kafka sur le rivage est un roman d''initiation où se déploient, avec une grâce infinie et une imagination stupéfiante, toute la profondeur et la richesse de Haruki Murakami. Une œuvre majeure, qui s''inscrit parmi les plus grands romans d''apprentissage de la littérature universelle. Kafka Tamura, quinze ans, fuit sa maison de Tokyo pour échapper à la terrible prophétie que son père a prononcée contre lui. Nakata, vieil homme simple d''esprit, décide lui aussi de prendre la rout'),
(7, 'La revelation', 'Kevin Shirley', 2019, 220, 'L''auteur nous illumine sur comment acquerir le succes anticipé en nourrissant nos connaissanses d''information valide et prouvée.'),
(8, 'La resurection', 'Kevin Shirley', 2022, 199, 'Un oeuvre qui nous livre la renaissance d''un nouveau monde.'),
(11, 'A bas bord', 'Watson', 2019, 899, 'Ceci est un resume du livre de Mr. Watson, un grand homme.'),
(12, 'Demain et toujours', 'Rose St-Rose', 2002, 402, 'Une histoire d''amour entre personne d''une personalite tres ressemblante.'),
(16, 'Ricochet', 'Jean Claude', 2019, 269, 'Un mensonge ce retourne sur la personne qui l''a commence ailleurs.'),
(14, 'Le retour', 'Kevin Shirley', 2024, 500, 'La retour du grand Don Shirley'),
(15, 'Un futur près de chez vous', 'Kevin Shirley', 2023, 444, 'L''auteur met en oeuvre les secrets d''une abondance financiere dans un futur pres de moi.'),
(19, 'Alibaba de l''ouest', 'Richard Allan', 2019, 298, 'Les aventures de alibaba de l''ouest.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '12321'),
(2, 'guest', 'guest'),
(3, 'prof', 'abc1234');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
