USE LeagueChecker;

INSERT INTO ChampionRoles (ChampionID, RoleID) VALUES 
(1, 1),    -- Aatrox, typically played top
(2, 3),    -- Ahri, typically played mid
(3, 1),    -- Akali, typically played top
(3, 3),    -- Akali, can also be played mid
(4, 1),    -- Akshan, can be played top
(4, 3),    -- Akshan, also played mid
(5, 5),    -- Alistar, typically played support
(6, 2),    -- Amumu, typically played jungle
(7, 3),    -- Anivia, typically played mid
(8, 3),    -- Annie, typically played mid
(9, 4),    -- Aphelios, typically played bot
(10, 4),   -- Ashe, typically played bot
(11, 1),   -- Aurelion Sol, typically played mid, but can flex top
(12, 3),   -- Azir, typically played mid
(13, 2),   -- Bard, typically played as support
(14, 3),   -- Bel’Veth, typically played jungle
(15, 5),   -- Blitzcrank, typically played as support
(16, 5),   -- Brand, can be played mid or support
(17, 5),   -- Braum, typically played as support
(18, 2),   -- Briar, Jungle
(19, 4),   -- Caitlyn, typically played bot
(20, 1),   -- Camille, typically played top
(21, 3),   -- Cassiopeia, typically played mid, but can flex bot
(22, 1),   -- Cho’Gath, can be played top or jungle
(23, 4),   -- Corki, typically played mid, but originally an ADC
(24, 1),   -- Darius, typically played top
(25, 3),   -- Diana, typically played jungle or mid
(25, 2),   -- Diana, typically played jungle or mid
(26, 2),   -- Dr. Mundo, typically played top or jungle
(26, 1),   -- Dr. Mundo, typically played top or jungle
(27, 4),   -- Draven, typically played bot
(28, 3),   -- Ekko, can be played mid or jungle
(28, 2),   -- Ekko, can be played mid or jungle
(29, 2),   -- Elise, typically played jungle
(30, 2),   -- Evelynn, typically played jungle
(31, 4),   -- Ezreal, typically played bot as ADC
(32, 2),   -- Fiddlesticks, typically played jungle
(33, 1),   -- Fiora, typically played top
(34, 3),   -- Fizz, typically played mid
(35, 5),   -- Galio, typically played mid or as support
(35, 3),   -- Galio, typically played mid or as support
(36, 1),   -- Gangplank, typically played top
(37, 1),   -- Garen, typically played top
(38, 2),   -- Gnar, typically played top
(39, 2),   -- Gragas, can be played top, jungle, support or mid
(39, 1),   -- Gragas, can be played top, jungle, support or mid
(39, 3),   -- Gragas, can be played top, jungle, support or mid
(39, 5),   -- Gragas, can be played top, jungle, support or mid
(40, 4),   -- Graves, typically played jungle or top
(40, 1),   -- Graves, typically played jungle or top
(41, 1),   -- Gwen, typically played top or mid
(42, 2),   -- Hecarim, typically played jungle
(43, 5),   -- Heimerdinger, can be played bot, mid, or top
(43, 4),   -- Heimerdinger, can be played bot, mid, or top
(43, 1),   -- Heimerdinger, can be played bot, mid, or top
(44, 1),   -- Illaoi, typically played top
(45, 1),   -- Irelia, typically played top or mid
(45, 3),   -- Irelia, typically played top or mid
(46, 2),   -- Ivern, typically played jungle or support
(47, 5),   -- Janna, typically played support
(48, 1),   -- Jarvan IV, typically played jungle
(49, 1),   -- Jax, typically played top or jungle
(49, 2),   -- Jax, typically played top or jungle
(50, 4),   -- Jayce, typically played top or mid
(50, 3),   -- Jayce, typically played top or mid
(51, 2),   -- Jhin, typically played bot as ADC
(52, 4),   -- Jinx, typically played bot as ADC
(53, 4),   -- Kai'Sa, typically played bot as ADC
(54, 4),   -- Kalista, typically played bot as ADC
(55, 5),   -- Karma, can be played support or mid
(55, 3),   -- Karma, can be played support or mid
(56, 2),   -- Karthus, typically played jungle or mid
(56, 3),   -- Karthus, sometimes played bot as APC
(56, 4),   -- Karthus, sometimes played bot as APC
(57, 3),   -- Kassadin, typically played mid
(58, 3),   -- Katarina, typically played mid
(59, 1),   -- Kayle, typically played top
(60, 2),   -- Kayn, typically played jungle
(61, 1),   -- Kennen, typically played top
(62, 2),   -- Kha'Zix, typically played jungle
(63, 4),   -- Kindred, typically played jungle
(64, 1),   -- Kled, typically played top
(65, 4),   -- Kog'Maw, typically played bot as ADC
(66, 1),   -- K'Sante, typically played top
(67, 3),   -- LeBlanc, typically played mid
(68, 2),   -- Lee Sin, typically played jungle
(69, 5),   -- Leona, typically played support
(70, 2),   -- Lillia, typically played jungle
(71, 3),   -- Lissandra, typically played mid
(72, 4),   -- Lucian, typically played bot as ADC or sometimes mid
(72, 3),   -- Lucian, if played mid
(73, 5),   -- Lulu, typically played support
(74, 5),   -- Lux, typically played support or sometimes mid
(74, 3),   -- Lux, if played mid
(75, 1),   -- Malphite, typically played top or sometimes support
(75, 5),   -- Malphite, if played support
(76, 2),   -- Malzahar, typically played mid
(77, 1),   -- Maokai, typically played top or sometimes support
(77, 5),   -- Maokai, if played support
(78, 2),   -- Master Yi, typically played jungle
(79, 4),   -- Miss Fortune, typically played bot as ADC
(80, 5),   -- Milio, typically played support
(81, 1),   -- Mordekaiser, typically played top
(82, 5),   -- Morgana, typically played support or sometimes mid or jungle
(82, 3),   -- Morgana, if played mid
(82, 2),   -- Morgana, if played jungle
(83, 3), -- Nami, typically played support
(84, 1), -- Nasus, typically played top
(85, 2), -- Nautilus, typically played support, sometimes jungle
(85, 5), -- Nautilus, if played support
(86, 5), -- Neeko, typically played mid, sometimes support
(86, 3), -- Neeko, if played mid
(87, 2), -- Nidalee, typically played jungle
(88, 4), -- Nilah, typically played bot
(89, 2), -- Nocturne, typically played jungle, sometimes top or mid
(89, 1), -- Nocturne, if played top
(89, 3), -- Nocturne, if played mid
(90, 2), -- Nunu & Willump, typically played jungle
(91, 1), -- Olaf, typically played top, sometimes jungle
(91, 2), -- Olaf, if played jungle
(92, 3), -- Orianna, typically played mid
(93, 1), -- Ornn, typically played top
(94, 1), -- Pantheon, typically played top or support
(94, 5), -- Pantheon, if played support
(95, 1), -- Poppy, typically played top, sometimes jungle or support
(95, 2), -- Poppy, if played jungle
(95, 5), -- Poppy, if played support
(96, 2), -- Pyke, typically played support, sometimes mid
(96, 5), -- Pyke, if played support
(96, 3), -- Pyke, if played mid
(97, 3), -- Qiyana, typically played mid, sometimes jungle
(97, 2), -- Qiyana, if played jungle
(98, 4), -- Quinn, typically played top
(99, 3), -- Rakan, typically played support
(100, 2), -- Rammus, typically played jungle
(101, 2), -- Rek'Sai, typically played jungle
(102, 5), -- Rell, typically played support
(103, 5), -- Renata Glasc, typically played support
(104, 1), -- Renekton, typically played top
(105, 2), -- Rengar, typically played jungle, sometimes top
(105, 1), -- Rengar, if played top
(106, 1), -- Riven, typically played top
(107, 2), -- Rumble, typically played top, sometimes mid
(107, 1), -- Rumble, if played top
(107, 3), -- Rumble, if played mid
(108, 3), -- Ryze, typically played mid
(109, 4), -- Samira, typically played bot
(110, 2), -- Sejuani, typically played jungle
(111, 5), -- Senna, typically played support, sometimes bot
(111, 4), -- Senna, if played bot
(112, 5), -- Seraphine, typically played support, sometimes mid
(112, 3), -- Seraphine, if played mid
(113, 1), -- Sett, typically played top, sometimes support or mid
(113, 5), -- Sett, if played support
(113, 3), -- Sett, if played mid
(114, 2), -- Shaco, typically played jungle
(115, 1), -- Shen, typically played top, sometimes support
(115, 5), -- Shen, if played support
(116, 1), -- Shyvana, typically played jungle, sometimes top
(116, 2), -- Shyvana, if played jungle
(117, 1), -- Singed, typically played top
(118, 1), -- Sion, typically played top
(119, 4), -- Sivir, typically played bot
(120, 2), -- Skarner, typically played jungle
(121, 5), -- Sona, typically played support
(122, 5), -- Soraka, typically played support
(123, 3), -- Swain, typically played support, sometimes mid or bot
(123, 5), -- Swain, if played support
(123, 4), -- Swain, if played bot
(124, 1), -- Sylas, typically played mid, sometimes top
(124, 3), -- Sylas, if played mid
(125, 3), -- Syndra, typically played mid
(126, 1), -- Tahm Kench, typically played top, sometimes support
(126, 5), -- Tahm Kench, if played support
(127, 1), -- Taliyah, typically played jungle or mid
(127, 2), -- Taliyah, if played jungle
(127, 3), -- Taliyah, if played mid
(128, 1), -- Talon, typically played mid, sometimes jungle
(128, 3), -- Talon, if played mid
(128, 2), -- Talon, if played jungle
(129, 5), -- Taric, typically played support
(130, 1), -- Teemo, typically played top
(131, 5), -- Thresh, typically played support
(132, 4), -- Tristana, typically played bot, sometimes mid
(132, 3), -- Tristana, if played mid
(133, 1), -- Trundle, typically played jungle, sometimes top or support
(133, 2), -- Trundle, if played jungle
(133, 5), -- Trundle, if played support
(134, 1), -- Tryndamere, typically played top
(135, 3), -- Twisted Fate, typically played mid
(136, 4), -- Twitch, typically played bot, sometimes jungle
(136, 2), -- Twitch, if played jungle
(137, 1), -- Udyr, typically played jungle
(138, 1), -- Urgot, typically played top
(139, 4), -- Varus, typically played bot
(140, 4), -- Vayne, typically played bot, sometimes top
(140, 1), -- Vayne, if played top
(141, 3), -- Veigar, typically played mid, sometimes support
(141, 5), -- Veigar, if played support
(142, 3), -- Vel'Koz, typically played mid, sometimes support
(142, 5), -- Vel'Koz, if played support
(143, 4), -- Vex, typically played mid
(144, 2), -- Vi, typically played jungle
(145, 1), -- Viego, typically played jungle, sometimes top or mid
(145, 3), -- Viego, if played mid
(146, 3), -- Viktor, typically played mid
(147, 3), -- Vladimir, typically played mid, sometimes top
(147, 1), -- Vladimir, if played top
(148, 1), -- Volibear, typically played top or jungle
(148, 2), -- Volibear, if played jungle
(149, 2), -- Warwick, typically played jungle, sometimes top
(149, 1), -- Warwick, if played top
(150, 1), -- Wukong, typically played top or jungle, sometimes mid
(150, 2), -- Wukong, if played jungle
(150, 3), -- Wukong, if played mid
(151, 4), -- Xayah, typically played bot
(152, 3), -- Xerath, typically played mid, sometimes support
(152, 5), -- Xerath, if played support
(153, 2), -- Xin Zhao, typically played jungle
(154, 3), -- Yasuo, typically played mid, sometimes top or bot
(154, 1), -- Yasuo, if played top
(154, 4), -- Yasuo, if played bot
(155, 3), -- Yone, typically played mid
(156, 1), -- Yorick, typically played top
(157, 5), -- Yuumi, typically played support
(158, 2), -- Zac, typically played jungle, sometimes top or support
(158, 1), -- Zac, if played top
(158, 5), -- Zac, if played support
(159, 3), -- Zed, typically played mid
(160, 4), -- Zeri, typically played bot
(161, 5), -- Ziggs, typically played bot or mid
(161, 3), -- Ziggs, if played mid
(162, 5), -- Zilean, typically played support, sometimes mid
(162, 3), -- Zilean, if played mid
(163, 3), -- Zoe, typically played mid
(164, 5); -- Zyra, typically played support