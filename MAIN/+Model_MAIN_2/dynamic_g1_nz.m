function [nzij_pred, nzij_current, nzij_fwrd] = dynamic_g1_nz()
% Returns the coordinates of non-zero elements in the Jacobian, in column-major order, for each lead/lag (only for endogenous)
  nzij_pred = zeros(15, 2, 'int32');
  nzij_pred(1,1)=88; nzij_pred(1,2)=13;
  nzij_pred(2,1)=89; nzij_pred(2,2)=14;
  nzij_pred(3,1)=70; nzij_pred(3,2)=41;
  nzij_pred(4,1)=26; nzij_pred(4,2)=57;
  nzij_pred(5,1)=27; nzij_pred(5,2)=57;
  nzij_pred(6,1)=28; nzij_pred(6,2)=57;
  nzij_pred(7,1)=33; nzij_pred(7,2)=57;
  nzij_pred(8,1)=35; nzij_pred(8,2)=57;
  nzij_pred(9,1)=27; nzij_pred(9,2)=58;
  nzij_pred(10,1)=26; nzij_pred(10,2)=59;
  nzij_pred(11,1)=28; nzij_pred(11,2)=59;
  nzij_pred(12,1)=33; nzij_pred(12,2)=59;
  nzij_pred(13,1)=34; nzij_pred(13,2)=59;
  nzij_pred(14,1)=35; nzij_pred(14,2)=59;
  nzij_pred(15,1)=34; nzij_pred(15,2)=60;
  nzij_current = zeros(317, 2, 'int32');
  nzij_current(1,1)=1; nzij_current(1,2)=1;
  nzij_current(2,1)=74; nzij_current(2,2)=1;
  nzij_current(3,1)=75; nzij_current(3,2)=1;
  nzij_current(4,1)=76; nzij_current(4,2)=1;
  nzij_current(5,1)=79; nzij_current(5,2)=1;
  nzij_current(6,1)=85; nzij_current(6,2)=1;
  nzij_current(7,1)=2; nzij_current(7,2)=2;
  nzij_current(8,1)=74; nzij_current(8,2)=2;
  nzij_current(9,1)=77; nzij_current(9,2)=2;
  nzij_current(10,1)=79; nzij_current(10,2)=2;
  nzij_current(11,1)=86; nzij_current(11,2)=2;
  nzij_current(12,1)=3; nzij_current(12,2)=3;
  nzij_current(13,1)=12; nzij_current(13,2)=3;
  nzij_current(14,1)=78; nzij_current(14,2)=3;
  nzij_current(15,1)=87; nzij_current(15,2)=3;
  nzij_current(16,1)=79; nzij_current(16,2)=4;
  nzij_current(17,1)=5; nzij_current(17,2)=5;
  nzij_current(18,1)=74; nzij_current(18,2)=5;
  nzij_current(19,1)=75; nzij_current(19,2)=5;
  nzij_current(20,1)=80; nzij_current(20,2)=5;
  nzij_current(21,1)=83; nzij_current(21,2)=5;
  nzij_current(22,1)=85; nzij_current(22,2)=5;
  nzij_current(23,1)=6; nzij_current(23,2)=6;
  nzij_current(24,1)=75; nzij_current(24,2)=6;
  nzij_current(25,1)=81; nzij_current(25,2)=6;
  nzij_current(26,1)=83; nzij_current(26,2)=6;
  nzij_current(27,1)=86; nzij_current(27,2)=6;
  nzij_current(28,1)=7; nzij_current(28,2)=7;
  nzij_current(29,1)=12; nzij_current(29,2)=7;
  nzij_current(30,1)=82; nzij_current(30,2)=7;
  nzij_current(31,1)=87; nzij_current(31,2)=7;
  nzij_current(32,1)=83; nzij_current(32,2)=8;
  nzij_current(33,1)=84; nzij_current(33,2)=9;
  nzij_current(34,1)=85; nzij_current(34,2)=10;
  nzij_current(35,1)=86; nzij_current(35,2)=11;
  nzij_current(36,1)=3; nzij_current(36,2)=12;
  nzij_current(37,1)=7; nzij_current(37,2)=12;
  nzij_current(38,1)=12; nzij_current(38,2)=12;
  nzij_current(39,1)=87; nzij_current(39,2)=12;
  nzij_current(40,1)=46; nzij_current(40,2)=13;
  nzij_current(41,1)=58; nzij_current(41,2)=13;
  nzij_current(42,1)=62; nzij_current(42,2)=13;
  nzij_current(43,1)=88; nzij_current(43,2)=13;
  nzij_current(44,1)=47; nzij_current(44,2)=14;
  nzij_current(45,1)=60; nzij_current(45,2)=14;
  nzij_current(46,1)=63; nzij_current(46,2)=14;
  nzij_current(47,1)=89; nzij_current(47,2)=14;
  nzij_current(48,1)=46; nzij_current(48,2)=15;
  nzij_current(49,1)=48; nzij_current(49,2)=15;
  nzij_current(50,1)=50; nzij_current(50,2)=15;
  nzij_current(51,1)=76; nzij_current(51,2)=15;
  nzij_current(52,1)=48; nzij_current(52,2)=16;
  nzij_current(53,1)=50; nzij_current(53,2)=16;
  nzij_current(54,1)=51; nzij_current(54,2)=16;
  nzij_current(55,1)=77; nzij_current(55,2)=16;
  nzij_current(56,1)=46; nzij_current(56,2)=17;
  nzij_current(57,1)=48; nzij_current(57,2)=17;
  nzij_current(58,1)=51; nzij_current(58,2)=17;
  nzij_current(59,1)=53; nzij_current(59,2)=17;
  nzij_current(60,1)=54; nzij_current(60,2)=17;
  nzij_current(61,1)=78; nzij_current(61,2)=17;
  nzij_current(62,1)=53; nzij_current(62,2)=18;
  nzij_current(63,1)=54; nzij_current(63,2)=19;
  nzij_current(64,1)=47; nzij_current(64,2)=20;
  nzij_current(65,1)=49; nzij_current(65,2)=20;
  nzij_current(66,1)=50; nzij_current(66,2)=20;
  nzij_current(67,1)=80; nzij_current(67,2)=20;
  nzij_current(68,1)=49; nzij_current(68,2)=21;
  nzij_current(69,1)=50; nzij_current(69,2)=21;
  nzij_current(70,1)=52; nzij_current(70,2)=21;
  nzij_current(71,1)=81; nzij_current(71,2)=21;
  nzij_current(72,1)=47; nzij_current(72,2)=22;
  nzij_current(73,1)=49; nzij_current(73,2)=22;
  nzij_current(74,1)=52; nzij_current(74,2)=22;
  nzij_current(75,1)=55; nzij_current(75,2)=22;
  nzij_current(76,1)=56; nzij_current(76,2)=22;
  nzij_current(77,1)=82; nzij_current(77,2)=22;
  nzij_current(78,1)=55; nzij_current(78,2)=23;
  nzij_current(79,1)=56; nzij_current(79,2)=24;
  nzij_current(80,1)=46; nzij_current(80,2)=25;
  nzij_current(81,1)=47; nzij_current(81,2)=25;
  nzij_current(82,1)=48; nzij_current(82,2)=25;
  nzij_current(83,1)=49; nzij_current(83,2)=25;
  nzij_current(84,1)=50; nzij_current(84,2)=25;
  nzij_current(85,1)=51; nzij_current(85,2)=25;
  nzij_current(86,1)=52; nzij_current(86,2)=25;
  nzij_current(87,1)=53; nzij_current(87,2)=25;
  nzij_current(88,1)=54; nzij_current(88,2)=25;
  nzij_current(89,1)=55; nzij_current(89,2)=25;
  nzij_current(90,1)=56; nzij_current(90,2)=25;
  nzij_current(91,1)=84; nzij_current(91,2)=25;
  nzij_current(92,1)=57; nzij_current(92,2)=26;
  nzij_current(93,1)=58; nzij_current(93,2)=26;
  nzij_current(94,1)=59; nzij_current(94,2)=26;
  nzij_current(95,1)=60; nzij_current(95,2)=26;
  nzij_current(96,1)=61; nzij_current(96,2)=26;
  nzij_current(97,1)=62; nzij_current(97,2)=26;
  nzij_current(98,1)=64; nzij_current(98,2)=26;
  nzij_current(99,1)=71; nzij_current(99,2)=26;
  nzij_current(100,1)=76; nzij_current(100,2)=26;
  nzij_current(101,1)=27; nzij_current(101,2)=27;
  nzij_current(102,1)=58; nzij_current(102,2)=27;
  nzij_current(103,1)=70; nzij_current(103,2)=27;
  nzij_current(104,1)=74; nzij_current(104,2)=27;
  nzij_current(105,1)=75; nzij_current(105,2)=27;
  nzij_current(106,1)=57; nzij_current(106,2)=28;
  nzij_current(107,1)=58; nzij_current(107,2)=28;
  nzij_current(108,1)=59; nzij_current(108,2)=28;
  nzij_current(109,1)=60; nzij_current(109,2)=28;
  nzij_current(110,1)=61; nzij_current(110,2)=28;
  nzij_current(111,1)=64; nzij_current(111,2)=28;
  nzij_current(112,1)=72; nzij_current(112,2)=28;
  nzij_current(113,1)=77; nzij_current(113,2)=28;
  nzij_current(114,1)=62; nzij_current(114,2)=29;
  nzij_current(115,1)=64; nzij_current(115,2)=30;
  nzij_current(116,1)=65; nzij_current(116,2)=30;
  nzij_current(117,1)=66; nzij_current(117,2)=30;
  nzij_current(118,1)=73; nzij_current(118,2)=30;
  nzij_current(119,1)=78; nzij_current(119,2)=30;
  nzij_current(120,1)=65; nzij_current(120,2)=31;
  nzij_current(121,1)=66; nzij_current(121,2)=32;
  nzij_current(122,1)=57; nzij_current(122,2)=33;
  nzij_current(123,1)=58; nzij_current(123,2)=33;
  nzij_current(124,1)=59; nzij_current(124,2)=33;
  nzij_current(125,1)=60; nzij_current(125,2)=33;
  nzij_current(126,1)=61; nzij_current(126,2)=33;
  nzij_current(127,1)=63; nzij_current(127,2)=33;
  nzij_current(128,1)=67; nzij_current(128,2)=33;
  nzij_current(129,1)=71; nzij_current(129,2)=33;
  nzij_current(130,1)=80; nzij_current(130,2)=33;
  nzij_current(131,1)=34; nzij_current(131,2)=34;
  nzij_current(132,1)=60; nzij_current(132,2)=34;
  nzij_current(133,1)=74; nzij_current(133,2)=34;
  nzij_current(134,1)=75; nzij_current(134,2)=34;
  nzij_current(135,1)=57; nzij_current(135,2)=35;
  nzij_current(136,1)=58; nzij_current(136,2)=35;
  nzij_current(137,1)=59; nzij_current(137,2)=35;
  nzij_current(138,1)=60; nzij_current(138,2)=35;
  nzij_current(139,1)=61; nzij_current(139,2)=35;
  nzij_current(140,1)=67; nzij_current(140,2)=35;
  nzij_current(141,1)=72; nzij_current(141,2)=35;
  nzij_current(142,1)=81; nzij_current(142,2)=35;
  nzij_current(143,1)=63; nzij_current(143,2)=36;
  nzij_current(144,1)=67; nzij_current(144,2)=37;
  nzij_current(145,1)=68; nzij_current(145,2)=37;
  nzij_current(146,1)=69; nzij_current(146,2)=37;
  nzij_current(147,1)=73; nzij_current(147,2)=37;
  nzij_current(148,1)=82; nzij_current(148,2)=37;
  nzij_current(149,1)=68; nzij_current(149,2)=38;
  nzij_current(150,1)=69; nzij_current(150,2)=39;
  nzij_current(151,1)=57; nzij_current(151,2)=40;
  nzij_current(152,1)=59; nzij_current(152,2)=40;
  nzij_current(153,1)=61; nzij_current(153,2)=41;
  nzij_current(154,1)=64; nzij_current(154,2)=41;
  nzij_current(155,1)=65; nzij_current(155,2)=41;
  nzij_current(156,1)=66; nzij_current(156,2)=41;
  nzij_current(157,1)=67; nzij_current(157,2)=41;
  nzij_current(158,1)=68; nzij_current(158,2)=41;
  nzij_current(159,1)=69; nzij_current(159,2)=41;
  nzij_current(160,1)=70; nzij_current(160,2)=41;
  nzij_current(161,1)=84; nzij_current(161,2)=41;
  nzij_current(162,1)=70; nzij_current(162,2)=42;
  nzij_current(163,1)=71; nzij_current(163,2)=43;
  nzij_current(164,1)=72; nzij_current(164,2)=44;
  nzij_current(165,1)=73; nzij_current(165,2)=45;
  nzij_current(166,1)=13; nzij_current(166,2)=46;
  nzij_current(167,1)=15; nzij_current(167,2)=46;
  nzij_current(168,1)=17; nzij_current(168,2)=46;
  nzij_current(169,1)=25; nzij_current(169,2)=46;
  nzij_current(170,1)=14; nzij_current(170,2)=47;
  nzij_current(171,1)=20; nzij_current(171,2)=47;
  nzij_current(172,1)=22; nzij_current(172,2)=47;
  nzij_current(173,1)=25; nzij_current(173,2)=47;
  nzij_current(174,1)=15; nzij_current(174,2)=48;
  nzij_current(175,1)=16; nzij_current(175,2)=48;
  nzij_current(176,1)=17; nzij_current(176,2)=48;
  nzij_current(177,1)=25; nzij_current(177,2)=48;
  nzij_current(178,1)=20; nzij_current(178,2)=49;
  nzij_current(179,1)=21; nzij_current(179,2)=49;
  nzij_current(180,1)=22; nzij_current(180,2)=49;
  nzij_current(181,1)=25; nzij_current(181,2)=49;
  nzij_current(182,1)=15; nzij_current(182,2)=50;
  nzij_current(183,1)=16; nzij_current(183,2)=50;
  nzij_current(184,1)=20; nzij_current(184,2)=50;
  nzij_current(185,1)=21; nzij_current(185,2)=50;
  nzij_current(186,1)=25; nzij_current(186,2)=50;
  nzij_current(187,1)=16; nzij_current(187,2)=51;
  nzij_current(188,1)=17; nzij_current(188,2)=51;
  nzij_current(189,1)=25; nzij_current(189,2)=51;
  nzij_current(190,1)=21; nzij_current(190,2)=52;
  nzij_current(191,1)=22; nzij_current(191,2)=52;
  nzij_current(192,1)=25; nzij_current(192,2)=52;
  nzij_current(193,1)=17; nzij_current(193,2)=53;
  nzij_current(194,1)=18; nzij_current(194,2)=53;
  nzij_current(195,1)=25; nzij_current(195,2)=53;
  nzij_current(196,1)=17; nzij_current(196,2)=54;
  nzij_current(197,1)=19; nzij_current(197,2)=54;
  nzij_current(198,1)=25; nzij_current(198,2)=54;
  nzij_current(199,1)=22; nzij_current(199,2)=55;
  nzij_current(200,1)=23; nzij_current(200,2)=55;
  nzij_current(201,1)=25; nzij_current(201,2)=55;
  nzij_current(202,1)=22; nzij_current(202,2)=56;
  nzij_current(203,1)=24; nzij_current(203,2)=56;
  nzij_current(204,1)=25; nzij_current(204,2)=56;
  nzij_current(205,1)=26; nzij_current(205,2)=57;
  nzij_current(206,1)=28; nzij_current(206,2)=57;
  nzij_current(207,1)=33; nzij_current(207,2)=57;
  nzij_current(208,1)=35; nzij_current(208,2)=57;
  nzij_current(209,1)=40; nzij_current(209,2)=57;
  nzij_current(210,1)=13; nzij_current(210,2)=58;
  nzij_current(211,1)=26; nzij_current(211,2)=58;
  nzij_current(212,1)=27; nzij_current(212,2)=58;
  nzij_current(213,1)=28; nzij_current(213,2)=58;
  nzij_current(214,1)=33; nzij_current(214,2)=58;
  nzij_current(215,1)=35; nzij_current(215,2)=58;
  nzij_current(216,1)=26; nzij_current(216,2)=59;
  nzij_current(217,1)=28; nzij_current(217,2)=59;
  nzij_current(218,1)=33; nzij_current(218,2)=59;
  nzij_current(219,1)=35; nzij_current(219,2)=59;
  nzij_current(220,1)=40; nzij_current(220,2)=59;
  nzij_current(221,1)=14; nzij_current(221,2)=60;
  nzij_current(222,1)=26; nzij_current(222,2)=60;
  nzij_current(223,1)=28; nzij_current(223,2)=60;
  nzij_current(224,1)=33; nzij_current(224,2)=60;
  nzij_current(225,1)=34; nzij_current(225,2)=60;
  nzij_current(226,1)=35; nzij_current(226,2)=60;
  nzij_current(227,1)=26; nzij_current(227,2)=61;
  nzij_current(228,1)=28; nzij_current(228,2)=61;
  nzij_current(229,1)=33; nzij_current(229,2)=61;
  nzij_current(230,1)=35; nzij_current(230,2)=61;
  nzij_current(231,1)=41; nzij_current(231,2)=61;
  nzij_current(232,1)=13; nzij_current(232,2)=62;
  nzij_current(233,1)=26; nzij_current(233,2)=62;
  nzij_current(234,1)=29; nzij_current(234,2)=62;
  nzij_current(235,1)=14; nzij_current(235,2)=63;
  nzij_current(236,1)=33; nzij_current(236,2)=63;
  nzij_current(237,1)=36; nzij_current(237,2)=63;
  nzij_current(238,1)=26; nzij_current(238,2)=64;
  nzij_current(239,1)=28; nzij_current(239,2)=64;
  nzij_current(240,1)=30; nzij_current(240,2)=64;
  nzij_current(241,1)=41; nzij_current(241,2)=64;
  nzij_current(242,1)=30; nzij_current(242,2)=65;
  nzij_current(243,1)=31; nzij_current(243,2)=65;
  nzij_current(244,1)=41; nzij_current(244,2)=65;
  nzij_current(245,1)=30; nzij_current(245,2)=66;
  nzij_current(246,1)=32; nzij_current(246,2)=66;
  nzij_current(247,1)=41; nzij_current(247,2)=66;
  nzij_current(248,1)=33; nzij_current(248,2)=67;
  nzij_current(249,1)=35; nzij_current(249,2)=67;
  nzij_current(250,1)=37; nzij_current(250,2)=67;
  nzij_current(251,1)=41; nzij_current(251,2)=67;
  nzij_current(252,1)=37; nzij_current(252,2)=68;
  nzij_current(253,1)=38; nzij_current(253,2)=68;
  nzij_current(254,1)=41; nzij_current(254,2)=68;
  nzij_current(255,1)=37; nzij_current(255,2)=69;
  nzij_current(256,1)=39; nzij_current(256,2)=69;
  nzij_current(257,1)=41; nzij_current(257,2)=69;
  nzij_current(258,1)=27; nzij_current(258,2)=70;
  nzij_current(259,1)=41; nzij_current(259,2)=70;
  nzij_current(260,1)=42; nzij_current(260,2)=70;
  nzij_current(261,1)=26; nzij_current(261,2)=71;
  nzij_current(262,1)=33; nzij_current(262,2)=71;
  nzij_current(263,1)=43; nzij_current(263,2)=71;
  nzij_current(264,1)=28; nzij_current(264,2)=72;
  nzij_current(265,1)=35; nzij_current(265,2)=72;
  nzij_current(266,1)=44; nzij_current(266,2)=72;
  nzij_current(267,1)=30; nzij_current(267,2)=73;
  nzij_current(268,1)=37; nzij_current(268,2)=73;
  nzij_current(269,1)=45; nzij_current(269,2)=73;
  nzij_current(270,1)=1; nzij_current(270,2)=74;
  nzij_current(271,1)=2; nzij_current(271,2)=74;
  nzij_current(272,1)=5; nzij_current(272,2)=74;
  nzij_current(273,1)=27; nzij_current(273,2)=74;
  nzij_current(274,1)=34; nzij_current(274,2)=74;
  nzij_current(275,1)=1; nzij_current(275,2)=75;
  nzij_current(276,1)=5; nzij_current(276,2)=75;
  nzij_current(277,1)=6; nzij_current(277,2)=75;
  nzij_current(278,1)=27; nzij_current(278,2)=75;
  nzij_current(279,1)=34; nzij_current(279,2)=75;
  nzij_current(280,1)=1; nzij_current(280,2)=76;
  nzij_current(281,1)=15; nzij_current(281,2)=76;
  nzij_current(282,1)=26; nzij_current(282,2)=76;
  nzij_current(283,1)=2; nzij_current(283,2)=77;
  nzij_current(284,1)=16; nzij_current(284,2)=77;
  nzij_current(285,1)=28; nzij_current(285,2)=77;
  nzij_current(286,1)=3; nzij_current(286,2)=78;
  nzij_current(287,1)=17; nzij_current(287,2)=78;
  nzij_current(288,1)=30; nzij_current(288,2)=78;
  nzij_current(289,1)=1; nzij_current(289,2)=79;
  nzij_current(290,1)=2; nzij_current(290,2)=79;
  nzij_current(291,1)=4; nzij_current(291,2)=79;
  nzij_current(292,1)=5; nzij_current(292,2)=80;
  nzij_current(293,1)=20; nzij_current(293,2)=80;
  nzij_current(294,1)=33; nzij_current(294,2)=80;
  nzij_current(295,1)=6; nzij_current(295,2)=81;
  nzij_current(296,1)=21; nzij_current(296,2)=81;
  nzij_current(297,1)=35; nzij_current(297,2)=81;
  nzij_current(298,1)=7; nzij_current(298,2)=82;
  nzij_current(299,1)=22; nzij_current(299,2)=82;
  nzij_current(300,1)=37; nzij_current(300,2)=82;
  nzij_current(301,1)=5; nzij_current(301,2)=83;
  nzij_current(302,1)=6; nzij_current(302,2)=83;
  nzij_current(303,1)=8; nzij_current(303,2)=83;
  nzij_current(304,1)=9; nzij_current(304,2)=84;
  nzij_current(305,1)=25; nzij_current(305,2)=84;
  nzij_current(306,1)=41; nzij_current(306,2)=84;
  nzij_current(307,1)=1; nzij_current(307,2)=85;
  nzij_current(308,1)=5; nzij_current(308,2)=85;
  nzij_current(309,1)=10; nzij_current(309,2)=85;
  nzij_current(310,1)=2; nzij_current(310,2)=86;
  nzij_current(311,1)=6; nzij_current(311,2)=86;
  nzij_current(312,1)=11; nzij_current(312,2)=86;
  nzij_current(313,1)=3; nzij_current(313,2)=87;
  nzij_current(314,1)=7; nzij_current(314,2)=87;
  nzij_current(315,1)=12; nzij_current(315,2)=87;
  nzij_current(316,1)=13; nzij_current(316,2)=88;
  nzij_current(317,1)=14; nzij_current(317,2)=89;
  nzij_fwrd = zeros(15, 2, 'int32');
  nzij_fwrd(1,1)=57; nzij_fwrd(1,2)=26;
  nzij_fwrd(2,1)=59; nzij_fwrd(2,2)=26;
  nzij_fwrd(3,1)=57; nzij_fwrd(3,2)=27;
  nzij_fwrd(4,1)=58; nzij_fwrd(4,2)=27;
  nzij_fwrd(5,1)=57; nzij_fwrd(5,2)=28;
  nzij_fwrd(6,1)=59; nzij_fwrd(6,2)=28;
  nzij_fwrd(7,1)=57; nzij_fwrd(7,2)=33;
  nzij_fwrd(8,1)=59; nzij_fwrd(8,2)=33;
  nzij_fwrd(9,1)=59; nzij_fwrd(9,2)=34;
  nzij_fwrd(10,1)=60; nzij_fwrd(10,2)=34;
  nzij_fwrd(11,1)=57; nzij_fwrd(11,2)=35;
  nzij_fwrd(12,1)=59; nzij_fwrd(12,2)=35;
  nzij_fwrd(13,1)=41; nzij_fwrd(13,2)=70;
  nzij_fwrd(14,1)=13; nzij_fwrd(14,2)=88;
  nzij_fwrd(15,1)=14; nzij_fwrd(15,2)=89;
end
