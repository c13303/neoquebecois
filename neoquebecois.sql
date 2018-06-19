-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 19, 2018 at 08:47 AM
-- Server version: 5.5.55-0+deb8u1
-- PHP Version: 5.6.33-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `neoquebecois`
--

-- --------------------------------------------------------

--
-- Table structure for table `mots`
--

CREATE TABLE IF NOT EXISTS `mots` (
`id` int(10) unsigned NOT NULL,
  `mot` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mots`
--

INSERT INTO `mots` (`id`, `mot`) VALUES
(1, 'zhom'),
(2, 'rÃ©pugniant'),
(3, 'pitette'),
(4, 'Cete'),
(5, 'autours'),
(6, 'FlashBacke'),
(7, 'sayer'),
(8, 'jtes'),
(9, 'MEUF'),
(10, 'baizÃ©'),
(11, 'tchii'),
(12, 'detesste'),
(13, 'geule'),
(14, 'malgrÃ©s'),
(15, 'trajique'),
(16, 'posteuse'),
(17, 'cources'),
(18, 'violÃ¨mmen'),
(19, 'hanimozitÃ©'),
(20, 'mOvaize'),
(21, 'figurale'),
(22, 'pÃ¨ne'),
(23, 'enfoirer'),
(24, 'incroillable'),
(25, 'voirs'),
(26, 'mensongne'),
(27, 'pacart'),
(28, 'expret'),
(29, 'arguements'),
(30, 'fesant'),
(31, 'metterait'),
(32, 'enfain'),
(33, 'extrement'),
(34, 'juiste'),
(35, 'precsion'),
(36, 'revoleter'),
(37, 'caprisse');

-- --------------------------------------------------------

--
-- Table structure for table `pardon`
--

CREATE TABLE IF NOT EXISTS `pardon` (
`id` int(10) unsigned NOT NULL,
  `pardon` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pardon`
--

INSERT INTO `pardon` (`id`, `pardon`) VALUES
(1, 'deja'),
(2, '20ans'),
(3, '7-8x'),
(4, 'serieux'),
(5, 'enormement'),
(6, 'detruire'),
(7, 'malCertaines'),
(8, '2013'),
(9, 'aujourdhui'),
(10, 'etais'),
(11, '15h'),
(12, 'probleme'),
(13, 'Â«MadameÂ»'),
(14, 'MaÃ©'),
(15, 'Nutella'),
(16, 'Bou'),
(17, 'resto'),
(18, '100'),
(19, 'rale'),
(20, 'c&#39;'),
(21, 'gÃ©rez-vous'),
(22, 'Maitrisez'),
(23, 'fans'),
(24, '2016'),
(25, 'â€¦'),
(26, 'Scum'),
(27, 'Leave'),
(28, '[XXX]'),
(29, 'suÃ§ages'),
(30, 'obsoletes'),
(31, 'avons1'),
(32, '1/2'),
(33, '2009'),
(34, 'plutot'),
(35, 'apparement'),
(36, 'l\\&#39;aime'),
(37, '(douloureusement)'),
(38, '2010'),
(39, 'pourtant)'),
(40, 'mÃ©ga'),
(41, 'CDD'),
(42, 'bla-bla-bla'),
(43, 'meme'),
(44, 'dÃ©mollir'),
(45, 'conseils expÃ©riences'),
(46, 'idealiste'),
(47, 'rdv'),
(48, 'Allah'),
(49, 'wallah'),
(50, 'tres'),
(51, 'etre'),
(52, 'demonter'),
(53, 'completement'),
(54, 'derriere'),
(55, 'deplorable'),
(56, 'ecoeurant');

-- --------------------------------------------------------

--
-- Table structure for table `phrases`
--

CREATE TABLE IF NOT EXISTS `phrases` (
`id` int(10) unsigned NOT NULL,
  `phrase` text NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phrases`
--

INSERT INTO `phrases` (`id`, `phrase`, `url`) VALUES
(1, ' bonjour Ã  toutes et tous  j&#39;ai 28 ans et mon zhom 31 ans , nous avons1 BB de 2 ans 1/2', 'http://forum.magicmaman.com/votrevie/Viedecouple/veux-zhom-sujet-3666176-1.htm'),
(2, ' cotÃ© sexe , bilan 2009, mon zhom est au top il s&#39;est bien investi comme tjs mais bon voilÃ  , pour 2010 j&#39;en voudrais plus du genre fellat***, mais Mr trouve cela rÃ©pugniant, on ne s&#39;embrasse pas, c&#39;est pas son truc, il me fait pleins de petits bisous par milliers c&#39;est mignon  mais Ã§a reste des bisous sans la langue, pffffff  de mon cotÃ©, je fais pleins de choses (fellat*** et autres ,puis 2009 exploration de l&#39;ana*, plutot bien mÃªme si je n&#39;aimais pas avant) et apparement il est ravi et il adore Ã§a   dans la vie de tous les jours, il fait attention aux aliments ( si c&#39;est fait proprement, ', 'http://forum.magicmaman.com/votrevie/Viedecouple/veux-zhom-sujet-3666176-1.htm'),
(3, '  faudrait pitette que ce monsieur se lÃ¢che un peu, qu&#39;il se rende compte que le truc qui lui sert Ã  faire pipi, s&#39;il est propre, on peut le prendre en bouche', 'http://forum.magicmaman.com/votrevie/Viedecouple/veux-zhom-sujet-3666176-1.htm'),
(4, ' Cete fois ci , elle m&#39;as dit ce qu elle me rapprochais et ce quelle recherche', 'http://forum.doctissimo.fr/viepratique/divorce/femme-quitter-aidez-sujet_20898_1.htm'),
(5, ' Elle a construit sa vie autours de moi , et non pas sa vie a elle (nous avons tous les deux ce sentiments)', 'http://forum.doctissimo.fr/viepratique/divorce/femme-quitter-aidez-sujet_20898_1.htm'),
(6, 'Je t&#39;aime comme je te hais #FlashBacke Yanis: Ah sayer barre toi tu m&#39;a soÃ»ler tu sert Ã  rien ,vasii Nashave de la ,jtes jamais aimer sale pute tu sert vraiment Ã  rien CASSE TOI OU JTE NIQUE TA RACE VIELLE MEUF', 'https://www.wattpad.com/story/76582312-%E3%80%8Atrajique-et-le-mektoub-%E3%80%8B%F0%9F%92%8E'),
(7, ' jvoulais juste te baizÃ© MEUF barre toi mtn ', 'https://www.wattpad.com/story/76582312-%E3%80%8Atrajique-et-le-mektoub-%E3%80%8B%F0%9F%92%8E'),
(8, 'tu sert Ã  tchii ', 'https://www.wattpad.com/story/76582312-%E3%80%8Atrajique-et-le-mektoub-%E3%80%8B%F0%9F%92%8E'),
(9, ' Moi : Snniiif tes qu&#39;un connard JTE detesste ,tu me dÃ©goÃ»te', 'https://www.wattpad.com/story/76582312-%E3%80%8Atrajique-et-le-mektoub-%E3%80%8B%F0%9F%92%8E'),
(10, '  Elle tirai une geule d&#39;enterement alors que moi je lui ai dit  mais vous Ãªtes optimiste ', 'https://forum.fiv.fr/viewtopic.php?t=3405&start=240'),
(11, 'malgrÃ©s mon ++ j&#39;ai quand mÃªme pas mal d&#39;inquiÃ©tudes  Je pense que jusqu&#39;Ã  l&#39;accouchement on a des moments de stress et d&#39;inquiÃ©tude', 'https://forum.fiv.fr/viewtopic.php?t=3405&start=240'),
(12, ' Â  Mais tomber d&#39;un immeuble n&#39;est pas trajique ', 'http://www.seuls-labd.com/agora-post.php?post=2047'),
(13, ' Beaucoup disent que si elle est l&#39;enfant minuit elle a dut avoir une morte trajique', 'http://www.seuls-labd.com/agora-post.php?post=2047'),
(14, ' Â  Faisons un retours vers le passÃ© : On sait que les limbes sont l&#39;endroit oÃ¹ vont les enfants et animaux mort d&#39;une mort trajique', 'http://www.seuls-labd.com/agora-post.php?post=2047'),
(15, '   Ã‡a m a fais du bien ce post, merci la posteuse', 'https://www.yabiladi.com/forum/quel-plus-beau-compliment-97-5590177.html'),
(16, ' Lol wallah il m&#39;a dis que j Ã©tais belle, j avais accoucher sayer on me ramener a la chambre sur le lit roulant et dans les couloirs il m&#39;a dis t es trop belle', 'https://www.yabiladi.com/forum/quel-plus-beau-compliment-97-5590177.html'),
(17, ' alhamdoulilahh [ MP ]21 avril 2013 22:10 Salam   Alors moi mon ex mari oui il falut qu il soit mon ex mari pour avoir un comliment   alors il m a dit que tu etais comme de l or dans ma main et je n ai rien trouvait de meiux que de le donnÃ©   et un homme que j ai tant aimÃ© m a dit tu es une perle rare    resultat des cources Ã  ce jour je retrouve seule       RÃ©pondre Citer', 'https://www.yabiladi.com/forum/quel-plus-beau-compliment-97-5590177.html'),
(18, ' Entrecoupant mon pÃ©riple de pas chassÃ© et de rondade arriere , 2 jeunes gens Ã  1ere vu fort sympathique me br1che violÃ¨mmen frere , et me gratte dÃ© trucs ( 1 cig&#39; , l&#39;heure , un bout de ma meche rebelle de devant , et mon genou ', 'http://blykou.skyrock.com/5.html'),
(19, ') Pri d&#39;1 hanimozitÃ© certaine , je leur demande un pti peu de m&#39;indiquÃ© amoureusemeusemen l&#39;endroit que je trÃ©passÃ© de plizir d&#39;y allÃ©', 'http://blykou.skyrock.com/5.html'),
(20, '  , et leur trÃ© trÃ© trÃ© mOvaize emboucannade me pris la fOUNche d&#39;1 puissance 4', 'http://blykou.skyrock.com/5.html'),
(21, ' Penssive , fausse , mÃ© pa pour autant simpliste, cette position figurale Ã© d&#39;autant plus mOvaize quelle ne veut rien dire du tout ', 'http://blykou.skyrock.com/5.html'),
(22, ' Du coup, elle nous a conseillÃ© d&#39;aller consulter pour mon zhom, et il s&#39;est avÃ©rÃ© qu&#39;il Ã©tait Ã©galement contaminÃ©, alors qu&#39;on ne voyait rien oo: Il est du coup passÃ© au scalpel Ã©lectrique je crois', 'http://forum.magicmaman.com/votrevie/Bienetrebeautesante/condylomes-papillomavirus-zhom-sujet-1971112-1.htm'),
(23, 'mais c est pÃ¨ne perdu car avec la porte fermer ca va etre tres dure ', 'https://www.generationt5.fr/viewtopic.php?p=15742&sid=a8499e76248ab6a877fcdc6fa94463d0'),
(24, '   5    EnfoirÃ©s : Jamel Debbouze soutient les Restos du cÅ“ur corps et Ã¢me   Et j&#39;invite les enfoirer a rÃ©Ã©crire et Ã  rÃ©enregistrer cette chanson pour fÃ©dÃ©rer tout publique Ã  soutenir les Restos du coeurs', 'https://educalingo.com/fr/dic-fr/enfoirer'),
(25, ' Incroillable câ€™ete grand voilage:) je suis au sud aussi avec ma copine an de momant, Ã  Ushuaia', 'http://dingdongauxameriques.blogspot.com/2018/01/cathedrales-de-marbre.html'),
(26, ' incroillable je te l&#39;accorde la aussi,parce que evidemment aucunes preuves  :Non il a pas fait Ã§a tout seul, les presidents de regions etaient tous au courant car cette mutuelle a Ã©tÃ© votÃ© Ã  la majoritÃ©', 'http://www.boulangerie.net/forums/viewtopic.php?t=16056&start=190'),
(27, ' Je voudrais les voirs, tiens, avec un appareil de test de flexibilitÃ© de membrane d&#39;une vierge aux diffÃ©rents Ã¢ges de la vie d&#39;une femme, pour dire qu&#39;Ã  un moment ou Ã  un autre: ha, Â lÃ , Ã§a va faire mal', 'http://forum.doctissimo.fr/doctissimo/virginite-premiere-fois/aussi-douleureux-amour-sujet_145767_1.htm'),
(28, 'LÃ , je suis partante, Ã  perdre ma virginitÃ© avec l&#39;amour de ma vie que je n&#39;arrive pas Ã  toujours rencontrer du fait de la fourberie des hommes et de leur mensongne, et aussi du fait qu&#39;ils ne pensent qu&#39;a te sauter et te laisser tomber, sans Ãªtre trop sÃ©rieux sur la suite de la relation', 'http://forum.doctissimo.fr/doctissimo/virginite-premiere-fois/aussi-douleureux-amour-sujet_145767_1.htm'),
(29, 'ses une honte lidl Villejuif Ã©pi dâ€™or na aucune caisse handicaper quand on demande on nous envoie promenÃ© aucune pacart qui signale la caisse quand on demande on repond se magasin na pas cette caisse le stationnement devant le magasin son prix par des vÃ©hicules sans macarons', 'https://www.facebook.com/lidlfrance/posts/1099080463454400'),
(30, 'Sarkozy : Il le fait expret ou il est vraiment con', 'http://www.allocine.fr/communaute/forum/message_gen_nofil=532297&cfilm=&refpersonne=&carticle=&refserie=&refmedia=&page=3.html'),
(31, ' Mon dieu mais tes arguements sont minable', 'http://www.allocine.fr/communaute/forum/message_gen_nofil=532297&cfilm=&refpersonne=&carticle=&refserie=&refmedia=&page=3.html'),
(32, ' Se serait un immense pas dans le social que de l&#39;Ã©galiser le mariage gay, en fesant on metterait tout les hommes au mÃªme niveau', 'http://www.allocine.fr/communaute/forum/message_gen_nofil=532297&cfilm=&refpersonne=&carticle=&refserie=&refmedia=&page=3.html'),
(33, ' Ils aurraient enfain les mÃªmes droist', 'http://www.allocine.fr/communaute/forum/message_gen_nofil=532297&cfilm=&refpersonne=&carticle=&refserie=&refmedia=&page=3.html'),
(34, ' Ce que tu dis est extrement homophobes et tu ne peut pas dire l&#39;inverse', 'http://www.allocine.fr/communaute/forum/message_gen_nofil=532297&cfilm=&refpersonne=&carticle=&refserie=&refmedia=&page=3.html'),
(35, ' Ps : je ne suis pas gay (juiste precsion) je veut juste l&#39;Ã©galitÃ©, on ne peut pas progresser vers un monde meilleur si on refuse de donner l&#39;Ã©galitÃ© a chaque personnes selon leur orientation', 'http://www.allocine.fr/communaute/forum/message_gen_nofil=532297&cfilm=&refpersonne=&carticle=&refserie=&refmedia=&page=3.html'),
(36, ', moi j&#39;appellerai pas Ã§a ainis mais c qui ce type le diable ou quoi d&#39;ou il s&#39;est permis de faire, Ã§a je suis revoleter de lire Ã§a c fou quand au personne ayant vendu ce petit bÃ©bÃ© car a 6 mois jeen pense pas que Ã§a soit toujours un foetus, pffff ou va t&#39;on nous sommes dans un monde de debile profond c pas croyable', 'http://forum.doctissimo.fr/grossesse-bebe/futures-mamans/impensable-sujet_69863_1.htm'),
(37, 'Par exemple pas plus tard que samedi elle m&#39;a fait un caprisse pour avoir un jouet j&#39;ai refusÃ© elle a commencÃ© Ã  faire un caprisse et comme tout le monde nous regardait j&#39;ai craquÃ© et je lui ai achetÃ©', 'http://forum.doctissimo.fr/psychologie/parents/caprisses-sujet_150153_1.htm');

-- --------------------------------------------------------

--
-- Table structure for table `relation`
--

CREATE TABLE IF NOT EXISTS `relation` (
  `idm` int(10) unsigned NOT NULL,
  `idp` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relation`
--

INSERT INTO `relation` (`idm`, `idp`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 7),
(11, 8),
(12, 9),
(13, 10),
(14, 11),
(15, 12),
(15, 13),
(15, 14),
(16, 15),
(7, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(1, 22),
(22, 23),
(23, 24),
(24, 25),
(24, 26),
(25, 27),
(26, 28),
(27, 29),
(28, 30),
(29, 31),
(30, 32),
(31, 32),
(32, 33),
(33, 34),
(34, 35),
(35, 35),
(36, 36),
(37, 37);

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE IF NOT EXISTS `suggestions` (
`id` int(10) unsigned NOT NULL,
  `url` varchar(250) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `done` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`id`, `url`, `ip`, `done`) VALUES
(1, 'http://forum.doctissimo.fr/doctissimo/fidelite-infidelite/tromper-copine-veux-sujet_166950_1.htm', '82.240.205.105', 0),
(3, '#{#''[#{||[`\\|[`[|`||`[||[``#[{|[[|{#{|(-`[`|``[|', '82.240.205.105', 0),
(4, 'http://neoquebecois.5tfu.org/', '82.240.205.105', 0),
(5, 'https://www.facebook.com/bonjourcestlematin/posts/10155883184148439?comment_id=10155883513298439&notif_id=1529334552550213&notif_t=feed_comment', '82.240.205.105', 0),
(6, 'qfsfqsffsq', '82.240.205.105', 0),
(7, 'fqfqsfqfs', '82.240.205.105', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mots`
--
ALTER TABLE `mots`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pardon`
--
ALTER TABLE `pardon`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phrases`
--
ALTER TABLE `phrases`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mots`
--
ALTER TABLE `mots`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `pardon`
--
ALTER TABLE `pardon`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `phrases`
--
ALTER TABLE `phrases`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
