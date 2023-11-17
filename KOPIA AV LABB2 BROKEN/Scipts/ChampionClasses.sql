USE LeagueChecker;

INSERT INTO ChampionClasses (ChampionId, ClassId) VALUES
-- Assuming Aatrox is ChampionId 1 and Fighter (Juggernaut) is ClassId 1
(1, 1), 

-- Assuming Ahri is ChampionId 2, Mage (Burst) is ClassId 2, Assassin is ClassId 3
(2, 2), 
(2, 3),

-- Akali, ChampionId 3, Assassin ClassId 3
(3, 3),

-- Akshan, ChampionId 4, Marksman ClassId 4, Slayer (Skirmisher) ClassId 5
(4, 4), 
(4, 5),

-- Alistar, ChampionId 5, Tank (Vanguard) ClassId 6, Controller (Catcher) ClassId 7
(5, 6), 
(5, 7),

-- Amumu, ChampionId 6, Tank (Vanguard) ClassId 6, Mage ClassId 8
(6, 6), 
(6, 8),

-- Anivia, ChampionId 7, Mage (Artillery) ClassId 9
(7, 9),

-- Annie, ChampionId 8, Mage (Burst) ClassId 2
(8, 2),

-- Aphelios, ChampionId 9, Marksman ClassId 4
(9, 4),

-- Ashe, ChampionId 10, Marksman ClassId 4, Controller (Enchanter) ClassId 10
(10, 4), 
(10, 10),

-- Aurelion Sol, ChampionId 11, Mage (Battlemage) ClassId 11
(11, 11), 

-- Azir, ChampionId 12, Mage (Battlemage) ClassId 11
(12, 11),

-- Bard, ChampionId 13, Controller (Catcher) ClassId 7
(13, 7),

-- Bel’Veth, ChampionId 14, Fighter (Skirmisher) ClassId 5
(14, 5),

-- Blitzcrank, ChampionId 15, Tank (Vanguard) ClassId 6, Controller (Catcher) ClassId 7
(15, 6), 
(15, 7),

-- Brand, ChampionId 16, Mage (Burst) ClassId 2
(16, 2),

-- Braum, ChampionId 17, Tank (Warden) ClassId 6, Controller (Catcher) ClassId 7
(17, 6), 
(17, 7),

-- Briar, Briar is ChampionId 18
(18, 5), 
(18, 1),

-- Caitlyn, ChampionId 19, Marksman ClassId 4
(19, 4),

-- Camille, ChampionId 20, Fighter (Diver) ClassId 1
(20, 1),

-- Cassiopeia, ChampionId 21, Mage (Battlemage) ClassId 11
(21, 11),

-- Cho’Gath, ChampionId 22, Tank (Vanguard) ClassId 6, Fighter (Juggernaut) ClassId 1
(22, 6),
(22, 1),

-- Corki, ChampionId 23, Marksman ClassId 4
(23, 4),

-- Darius, ChampionId 24, Fighter (Juggernaut) ClassId 1
(24, 1),

-- Diana, ChampionId 25, Fighter (Diver) ClassId 1, Assassin ClassId 3
(25, 1),
(25, 3),

-- Dr. Mundo, ChampionId 26, Fighter (Juggernaut) ClassId 1
(26, 1),

-- Draven, ChampionId 27, Marksman ClassId 4
(27, 4),

-- Ekko, ChampionId 28, Assassin ClassId 3, Mage (Burst) ClassId 2
(28, 3),
(28, 2),

-- Elise, ChampionId 29, Mage (Burst) ClassId 2
(29, 2),

-- Evelynn, ChampionId 30, Assassin ClassId 3
(30, 3),

-- Ezreal, ChampionId 31, Marksman ClassId 4
(31, 4),

-- Fiddlesticks, ChampionId 32, Mage (Battlemage) ClassId 11
(32, 11),

-- Fiora, ChampionId 33, Fighter (Duelist) ClassId 12
(33, 12),

-- Fizz, ChampionId 34, Assassin ClassId 3
(34, 3),

-- Galio, ChampionId 35, Tank (Warden) ClassId 13, Mage (Burst) ClassId 2
(35, 13),
(35, 2),

-- Gangplank, ChampionId 36, Fighter (Duelist) ClassId 12
(36, 14),

-- Garen, ChampionId 37, Fighter (Juggernaut) ClassId 1
(37, 1),

-- Gnar, ChampionId 38, Fighter (Duelist) ClassId 12, Tank (Vanguard) ClassId 6
(38, 14),
(38, 6),

-- Gragas, ChampionId 39, Fighter (Juggernaut) ClassId 1, Mage (Battlemage) ClassId 11
(39, 1),
(39, 11),

-- Graves, ChampionId 40, Marksman ClassId 4
(40, 4),

-- Gwen, ChampionId 41, Fighter (Skirmisher) ClassId 5
(41, 5),

-- Hecarim, ChampionId 42, Fighter (Diver) ClassId 13
(42, 13),

-- Heimerdinger, ChampionId 43, Mage (Artillery) ClassId 9
(43, 9),

-- Illaoi, ChampionId 44, Fighter (Juggernaut) ClassId 1
(44, 1),

-- Irelia, ChampionId 45, Fighter (Skirmisher) ClassId 5
(45, 5),

-- Ivern, ChampionId 46, Controller (Enchanter) ClassId 10
(46, 10),

-- Janna, ChampionId 47, Controller (Enchanter) ClassId 10
(47, 10),

-- Jarvan IV, ChampionId 48, Tank (Vanguard) ClassId 6
(48, 6),

-- Jax, ChampionId 49, Fighter (Diver) ClassId 13
(49, 13),

-- Jayce, ChampionId 50, Marksman ClassId 4
(50, 4),

-- Jhin, ChampionId 51, Marksman ClassId 4
(51, 4),

-- Jinx, ChampionId 52, Marksman ClassId 4
(52, 4),

-- Kai’Sa, ChampionId 53, Marksman ClassId 4, Assassin ClassId 3
(53, 4),
(53, 3),

-- Kalista, ChampionId 54, Marksman ClassId 4
(54, 4),

-- Karma, ChampionId 55, Mage (Burst) ClassId 2, Controller (Enchanter) ClassId 10
(55, 2),
(55, 10),

-- Karthus, ChampionId 56, Mage (Burst) ClassId 2
(56, 2),

-- Kassadin, ChampionId 57, Assassin ClassId 3
(57, 3),

-- Katarina, ChampionId 58, Assassin ClassId 3
(58, 3),

-- Kayle, ChampionId 59, Fighter (Skirmisher) ClassId 5, Mage ClassId 8
(59, 5),
(59, 8),

-- Kayn, ChampionId 60, Fighter (Diver) ClassId 13
(60, 13),

-- Kennen, ChampionId 61, Mage (Burst) ClassId 2, Marksman ClassId 4
(61, 2),
(61, 4),

-- Kha'Zix, ChampionId 62, Assassin ClassId 3
(62, 3),

-- Kindred, ChampionId 63, Marksman ClassId 4
(63, 4),

-- Kled, ChampionId 64, Fighter (Skirmisher) ClassId 5
(64, 5),

-- Kog'Maw, ChampionId 65, Marksman ClassId 4, Mage (Artillery) ClassId 9
(65, 4),
(65, 9),

-- K’Sante, ChampionId 66, Tank (Warden) ClassId 12, Fighter (Juggernaut) ClassId 1
(66, 12),
(66, 1),

-- LeBlanc, ChampionId 67, Assassin ClassId 3, Mage (Burst) ClassId 2
(67, 3),
(67, 2),

-- Lee Sin, ChampionId 68, Fighter (Diver) ClassId 14
(68, 14),

-- Leona, ChampionId 69, Tank (Vanguard) ClassId 6, Controller (Catcher) ClassId 7
(69, 6),
(69, 7),

-- Lillia, ChampionId 70, Fighter (Skirmisher) ClassId 5, Mage ClassId 8
(70, 5),
(70, 8),

-- Lissandra, ChampionId 71, Battlemage
(71, 12),

-- Lucian, ChampionId 72, Marksman ClassId 4
(72, 4),

-- Lulu, ChampionId 73, Controller (Enchanter) ClassId 10
(73, 10),

-- Lux, ChampionId 74, Mage (Artillery) ClassId 9, Controller (Catcher) ClassId 7
(74, 9),
(74, 7),

-- Malphite, ChampionId 75, Tank (Vanguard) ClassId 6
(75, 6),

-- Malzahar, ChampionId 76, Mage (Burst) ClassId 2
(76, 2),

-- Maokai, ChampionId 77, Tank (Vanguard) ClassId 6, Controller (Catcher) ClassId 7
(77, 6),
(77, 7),

-- Master Yi, ChampionId 78, Fighter (Skirmisher) ClassId 5, Assassin ClassId 3
(78, 5),
(78, 3),

-- Miss Fortune, ChampionId 79, Marksman ClassId 4
(79, 4),

-- Milio, ChampionId 80, Controller (Enchanter) ClassId 10
(80, 10),

-- Mordekaiser, ChampionId 81, Fighter (Juggernaut) ClassId 1
(81, 1),

-- Morgana, ChampionId 82, Controller (Catcher) ClassId 7
(82, 7),

-- Nami, ChampionId 83, Controller (Enchanter) ClassId 10
(83, 10),

-- Nasus, ChampionId 84, Fighter (Juggernaut) ClassId 1
(84, 1),

-- Nautilus, ChampionId 85, Tank (Vanguard) ClassId 6, Controller (Catcher) ClassId 7
(85, 6),
(85, 7),

-- Naafiri, ChampionId 86, Assassin ClassId 3
(86, 3),

-- Neeko, ChampionId 87, Mage (Burst) ClassId 2
(87, 2),

-- Nidalee, ChampionId 88, Assassin ClassId 3
(88, 3),

-- Nilah, ChampionId 89, Fighter (Skirmisher) ClassId 5
(89, 5),

-- Nocturne, ChampionId 90, Assassin ClassId 3, Fighter (Diver) ClassId 14
(90, 3),
(90, 14),

-- Nunu & Willump, ChampionId 91, Tank (Vanguard) ClassId 6
(91, 6),

-- Olaf, ChampionId 92, Fighter (Juggernaut) ClassId 1
(92, 1),

-- Orianna, ChampionId 93, Mage (Burst) ClassId 2
(93, 2),

-- Ornn, ChampionId 94, Tank (Vanguard) ClassId 6
(94, 6),

-- Pantheon, ChampionId 95, Fighter (Diver) ClassId 14
(95, 14),

-- Poppy, ChampionId 96, Tank (Warden) ClassId 12, Fighter (Diver) ClassId 14
(96, 12),
(96, 14),

-- Pyke, ChampionId 97, Assassin ClassId 3, Support (Catcher) ClassId 7
(97, 3),
(97, 7),

-- Qiyana, ChampionId 98, Assassin ClassId 3
(98, 3),

-- Quinn, ChampionId 99, Marksman ClassId 4
(99, 4),

-- Rakan, ChampionId 100, Support (Catcher) ClassId 7
(100, 7),

-- Rammus, ChampionId 101, Tank (Vanguard) ClassId 6
(101, 6),

-- Rek'Sai, ChampionId 102, Fighter (Diver) ClassId 14
(102, 14),

-- Rell, ChampionId 103, Tank (Vanguard) ClassId 6, Support (Catcher) ClassId 7
(103, 6),
(103, 7),

-- Renata Glasc, ChampionId 104, Support (Enchanter) ClassId 10
(104, 10),

-- Renekton, ChampionId 105, Fighter (Juggernaut) ClassId 1
(105, 1),

-- Rengar, ChampionId 106, Assassin ClassId 3
(106, 3),

-- Riven, ChampionId 107, Fighter (Skirmisher) ClassId 5
(107, 5),

-- Rumble, ChampionId 108, Mage (Battlemage) ClassId 11
(108, 11),

-- Ryze, ChampionId 109, Mage (Battlemage) ClassId 11
(109, 11),

-- Samira, ChampionId 110, Marksman ClassId 4, Slayer (Skirmisher) ClassId 5
(110, 4),
(110, 5),

-- Sejuani, ChampionId 111, Tank (Vanguard) ClassId 6
(111, 6),

-- Senna, ChampionId 112, Marksman ClassId 4, Support (Enchanter) ClassId 10
(112, 4),
(112, 10),

-- Seraphine, ChampionId 113, Mage (Battlemage) ClassId 11, Support (Enchanter) ClassId 10
(113, 11),
(113, 10),

-- Sett, ChampionId 114, Fighter (Juggernaut) ClassId 1
(114, 1),

-- Shaco, ChampionId 115, Assassin ClassId 3
(115, 3),

-- Shen, ChampionId 116, Tank (Warden) ClassId 12
(116, 12),

-- Shyvana, ChampionId 117, Fighter (Juggernaut) ClassId 1
(117, 1),

-- Singed, ChampionId 118, Tank (Vanguard) ClassId 6
(118, 6),

-- Sion, ChampionId 119, Tank (Vanguard) ClassId 6
(119, 6),

-- Sivir, ChampionId 120, Marksman ClassId 4
(120, 4),

-- Skarner, ChampionId 121, Fighter (Juggernaut) ClassId 1
(121, 1),

-- Sona, ChampionId 122, Support (Enchanter) ClassId 10
(122, 10),

-- Soraka, ChampionId 123, Support (Enchanter) ClassId 10
(123, 10),

-- Swain, ChampionId 124, Mage (Battlemage) ClassId 11
(124, 11),

-- Sylas, ChampionId 125, Mage (Battlemage) ClassId 11
(125, 11),

-- Syndra, ChampionId 126, Mage (Burst) ClassId 2
(126, 2),

-- Tahm Kench, ChampionId 127, Tank (Warden) ClassId 12
(127, 12),

-- Taliyah, ChampionId 128, Mage (Battlemage) ClassId 11
(128, 11),

-- Talon, ChampionId 129, Assassin ClassId 3
(129, 3),

-- Taric, ChampionId 130, Support (Warden) ClassId 12
(130, 12),

-- Teemo, ChampionId 131, Marksman ClassId 4, Assassin ClassId 3
(131, 4), 
(131, 3),

-- Thresh, ChampionId 132, Support (Catcher) ClassId 7
(132, 7),

-- Tristana, ChampionId 133, Marksman ClassId 4
(133, 4),

-- Trundle, ChampionId 134, Fighter (Juggernaut) ClassId 1
(134, 1),

-- Tryndamere, ChampionId 135, Fighter (Skirmisher) ClassId 5
(135, 5),

-- Twisted Fate, ChampionId 136, Mage (Burst) ClassId 2
(136, 2),

-- Twitch, ChampionId 137, Marksman ClassId 4
(137, 4),

-- Udyr, ChampionId 138, Fighter (Juggernaut) ClassId 1
(138, 1),

-- Urgot, ChampionId 139, Fighter (Juggernaut) ClassId 1
(139, 1),

-- Varus, ChampionId 140, Marksman ClassId 4
(140, 4),

-- Vayne, ChampionId 141, Marksman ClassId 4, Assassin ClassId 3
(141, 4),
(141, 3),

-- Veigar, ChampionId 142, Mage (Burst) ClassId 2
(142, 2),

-- Vel’Koz, ChampionId 143, Mage (Artillery) ClassId 9
(143, 9),

-- Vex, ChampionId 144, Mage (Burst) ClassId 2
(144, 2),

-- Vi, ChampionId 145, Fighter (Diver) ClassId 13
(145, 13),

-- Viego, ChampionId 146, Fighter (Skirmisher) ClassId 5
(146, 5),

-- Viktor, ChampionId 147, Mage (Battlemage) ClassId 11
(147, 11),

-- Vladimir, ChampionId 148, Mage (Battlemage) ClassId 11
(148, 11),

-- Volibear, ChampionId 149, Fighter (Juggernaut) ClassId 1, Tank (Vanguard) ClassId 6
(149, 1),
(149, 6),

-- Warwick, ChampionId 150, Fighter (Diver) ClassId 13
(150, 13),

-- Wukong, ChampionId 151, Fighter (Diver) ClassId 13
(151, 13),

-- Xayah, ChampionId 152, Marksman ClassId 4
(152, 4),

-- Xerath, ChampionId 153, Mage (Artillery) ClassId 9
(153, 9),

-- Xin Zhao, ChampionId 154, Fighter (Diver) ClassId 13
(154, 13),

-- Yasuo, ChampionId 155, Fighter (Skirmisher) ClassId 5
(155, 5),

-- Yone, ChampionId 156, Fighter (Skirmisher) ClassId 5
(156, 5),

-- Yorick, ChampionId 157, Fighter (Juggernaut) ClassId 1
(157, 1),

-- Yuumi, ChampionId 158, Controller (Enchanter) ClassId 10
(158, 10),

-- Zac, ChampionId 159, Tank (Vanguard) ClassId 6
(159, 6),

-- Zed, ChampionId 160, Assassin ClassId 3
(160, 3),

-- Zeri, ChampionId 161, Marksman ClassId 4
(161, 4),

-- Ziggs, ChampionId 162, Mage (Artillery) ClassId 9
(162, 9),

-- Zilean, ChampionId 163, Controller (Enchanter) ClassId 10
(163, 10),

-- Zoe, ChampionId 164, Mage (Burst) ClassId 2
(164, 2),

-- Zyra, ChampionId 165, Mage (Disruptor) ClassId 12, Controller (Catcher) ClassId 7
(165, 12),
(165, 7);


