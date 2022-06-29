function [nzij_pred, nzij_current, nzij_fwrd] = dynamic_g1_nz()
% Returns the coordinates of non-zero elements in the Jacobian, in column-major order, for each lead/lag (only for endogenous)
  nzij_pred = zeros(18, 2, 'int32');
  nzij_pred(1,1)=161; nzij_pred(1,2)=1;
  nzij_pred(2,1)=162; nzij_pred(2,2)=2;
  nzij_pred(3,1)=1; nzij_pred(3,2)=100;
  nzij_pred(4,1)=4; nzij_pred(4,2)=100;
  nzij_pred(5,1)=2; nzij_pred(5,2)=101;
  nzij_pred(6,1)=13; nzij_pred(6,2)=101;
  nzij_pred(7,1)=30; nzij_pred(7,2)=109;
  nzij_pred(8,1)=40; nzij_pred(8,2)=110;
  nzij_pred(9,1)=29; nzij_pred(9,2)=111;
  nzij_pred(10,1)=30; nzij_pred(10,2)=111;
  nzij_pred(11,1)=31; nzij_pred(11,2)=111;
  nzij_pred(12,1)=39; nzij_pred(12,2)=111;
  nzij_pred(13,1)=41; nzij_pred(13,2)=111;
  nzij_pred(14,1)=29; nzij_pred(14,2)=112;
  nzij_pred(15,1)=31; nzij_pred(15,2)=112;
  nzij_pred(16,1)=39; nzij_pred(16,2)=112;
  nzij_pred(17,1)=40; nzij_pred(17,2)=112;
  nzij_pred(18,1)=41; nzij_pred(18,2)=112;
  nzij_current = zeros(516, 2, 'int32');
  nzij_current(1,1)=84; nzij_current(1,2)=1;
  nzij_current(2,1)=96; nzij_current(2,2)=1;
  nzij_current(3,1)=100; nzij_current(3,2)=1;
  nzij_current(4,1)=109; nzij_current(4,2)=1;
  nzij_current(5,1)=115; nzij_current(5,2)=1;
  nzij_current(6,1)=161; nzij_current(6,2)=1;
  nzij_current(7,1)=163; nzij_current(7,2)=1;
  nzij_current(8,1)=85; nzij_current(8,2)=2;
  nzij_current(9,1)=97; nzij_current(9,2)=2;
  nzij_current(10,1)=101; nzij_current(10,2)=2;
  nzij_current(11,1)=110; nzij_current(11,2)=2;
  nzij_current(12,1)=116; nzij_current(12,2)=2;
  nzij_current(13,1)=162; nzij_current(13,2)=2;
  nzij_current(14,1)=163; nzij_current(14,2)=2;
  nzij_current(15,1)=163; nzij_current(15,2)=3;
  nzij_current(16,1)=84; nzij_current(16,2)=4;
  nzij_current(17,1)=86; nzij_current(17,2)=4;
  nzij_current(18,1)=88; nzij_current(18,2)=4;
  nzij_current(19,1)=96; nzij_current(19,2)=4;
  nzij_current(20,1)=98; nzij_current(20,2)=4;
  nzij_current(21,1)=100; nzij_current(21,2)=4;
  nzij_current(22,1)=102; nzij_current(22,2)=4;
  nzij_current(23,1)=134; nzij_current(23,2)=4;
  nzij_current(24,1)=86; nzij_current(24,2)=5;
  nzij_current(25,1)=88; nzij_current(25,2)=5;
  nzij_current(26,1)=89; nzij_current(26,2)=5;
  nzij_current(27,1)=98; nzij_current(27,2)=5;
  nzij_current(28,1)=103; nzij_current(28,2)=5;
  nzij_current(29,1)=135; nzij_current(29,2)=5;
  nzij_current(30,1)=84; nzij_current(30,2)=6;
  nzij_current(31,1)=86; nzij_current(31,2)=6;
  nzij_current(32,1)=89; nzij_current(32,2)=6;
  nzij_current(33,1)=92; nzij_current(33,2)=6;
  nzij_current(34,1)=93; nzij_current(34,2)=6;
  nzij_current(35,1)=104; nzij_current(35,2)=6;
  nzij_current(36,1)=136; nzij_current(36,2)=6;
  nzij_current(37,1)=92; nzij_current(37,2)=7;
  nzij_current(38,1)=106; nzij_current(38,2)=7;
  nzij_current(39,1)=137; nzij_current(39,2)=7;
  nzij_current(40,1)=93; nzij_current(40,2)=8;
  nzij_current(41,1)=107; nzij_current(41,2)=8;
  nzij_current(42,1)=138; nzij_current(42,2)=8;
  nzij_current(43,1)=96; nzij_current(43,2)=9;
  nzij_current(44,1)=139; nzij_current(44,2)=9;
  nzij_current(45,1)=98; nzij_current(45,2)=10;
  nzij_current(46,1)=108; nzij_current(46,2)=10;
  nzij_current(47,1)=140; nzij_current(47,2)=10;
  nzij_current(48,1)=84; nzij_current(48,2)=11;
  nzij_current(49,1)=85; nzij_current(49,2)=11;
  nzij_current(50,1)=86; nzij_current(50,2)=11;
  nzij_current(51,1)=87; nzij_current(51,2)=11;
  nzij_current(52,1)=88; nzij_current(52,2)=11;
  nzij_current(53,1)=89; nzij_current(53,2)=11;
  nzij_current(54,1)=90; nzij_current(54,2)=11;
  nzij_current(55,1)=91; nzij_current(55,2)=11;
  nzij_current(56,1)=92; nzij_current(56,2)=11;
  nzij_current(57,1)=93; nzij_current(57,2)=11;
  nzij_current(58,1)=94; nzij_current(58,2)=11;
  nzij_current(59,1)=95; nzij_current(59,2)=11;
  nzij_current(60,1)=141; nzij_current(60,2)=11;
  nzij_current(61,1)=100; nzij_current(61,2)=12;
  nzij_current(62,1)=105; nzij_current(62,2)=12;
  nzij_current(63,1)=142; nzij_current(63,2)=12;
  nzij_current(64,1)=85; nzij_current(64,2)=13;
  nzij_current(65,1)=87; nzij_current(65,2)=13;
  nzij_current(66,1)=88; nzij_current(66,2)=13;
  nzij_current(67,1)=97; nzij_current(67,2)=13;
  nzij_current(68,1)=99; nzij_current(68,2)=13;
  nzij_current(69,1)=101; nzij_current(69,2)=13;
  nzij_current(70,1)=102; nzij_current(70,2)=13;
  nzij_current(71,1)=143; nzij_current(71,2)=13;
  nzij_current(72,1)=87; nzij_current(72,2)=14;
  nzij_current(73,1)=88; nzij_current(73,2)=14;
  nzij_current(74,1)=90; nzij_current(74,2)=14;
  nzij_current(75,1)=99; nzij_current(75,2)=14;
  nzij_current(76,1)=103; nzij_current(76,2)=14;
  nzij_current(77,1)=144; nzij_current(77,2)=14;
  nzij_current(78,1)=85; nzij_current(78,2)=15;
  nzij_current(79,1)=87; nzij_current(79,2)=15;
  nzij_current(80,1)=90; nzij_current(80,2)=15;
  nzij_current(81,1)=94; nzij_current(81,2)=15;
  nzij_current(82,1)=95; nzij_current(82,2)=15;
  nzij_current(83,1)=104; nzij_current(83,2)=15;
  nzij_current(84,1)=145; nzij_current(84,2)=15;
  nzij_current(85,1)=94; nzij_current(85,2)=16;
  nzij_current(86,1)=106; nzij_current(86,2)=16;
  nzij_current(87,1)=146; nzij_current(87,2)=16;
  nzij_current(88,1)=95; nzij_current(88,2)=17;
  nzij_current(89,1)=107; nzij_current(89,2)=17;
  nzij_current(90,1)=147; nzij_current(90,2)=17;
  nzij_current(91,1)=97; nzij_current(91,2)=18;
  nzij_current(92,1)=148; nzij_current(92,2)=18;
  nzij_current(93,1)=99; nzij_current(93,2)=19;
  nzij_current(94,1)=108; nzij_current(94,2)=19;
  nzij_current(95,1)=149; nzij_current(95,2)=19;
  nzij_current(96,1)=91; nzij_current(96,2)=20;
  nzij_current(97,1)=150; nzij_current(97,2)=20;
  nzij_current(98,1)=101; nzij_current(98,2)=21;
  nzij_current(99,1)=105; nzij_current(99,2)=21;
  nzij_current(100,1)=151; nzij_current(100,2)=21;
  nzij_current(101,1)=102; nzij_current(101,2)=22;
  nzij_current(102,1)=103; nzij_current(102,2)=23;
  nzij_current(103,1)=104; nzij_current(103,2)=24;
  nzij_current(104,1)=106; nzij_current(104,2)=25;
  nzij_current(105,1)=107; nzij_current(105,2)=26;
  nzij_current(106,1)=105; nzij_current(106,2)=27;
  nzij_current(107,1)=155; nzij_current(107,2)=27;
  nzij_current(108,1)=108; nzij_current(108,2)=28;
  nzij_current(109,1)=109; nzij_current(109,2)=29;
  nzij_current(110,1)=110; nzij_current(110,2)=29;
  nzij_current(111,1)=111; nzij_current(111,2)=29;
  nzij_current(112,1)=112; nzij_current(112,2)=29;
  nzij_current(113,1)=113; nzij_current(113,2)=29;
  nzij_current(114,1)=115; nzij_current(114,2)=29;
  nzij_current(115,1)=117; nzij_current(115,2)=29;
  nzij_current(116,1)=119; nzij_current(116,2)=29;
  nzij_current(117,1)=128; nzij_current(117,2)=29;
  nzij_current(118,1)=134; nzij_current(118,2)=29;
  nzij_current(119,1)=30; nzij_current(119,2)=30;
  nzij_current(120,1)=109; nzij_current(120,2)=30;
  nzij_current(121,1)=127; nzij_current(121,2)=30;
  nzij_current(122,1)=109; nzij_current(122,2)=31;
  nzij_current(123,1)=110; nzij_current(123,2)=31;
  nzij_current(124,1)=111; nzij_current(124,2)=31;
  nzij_current(125,1)=112; nzij_current(125,2)=31;
  nzij_current(126,1)=113; nzij_current(126,2)=31;
  nzij_current(127,1)=117; nzij_current(127,2)=31;
  nzij_current(128,1)=119; nzij_current(128,2)=31;
  nzij_current(129,1)=129; nzij_current(129,2)=31;
  nzij_current(130,1)=135; nzij_current(130,2)=31;
  nzij_current(131,1)=115; nzij_current(131,2)=32;
  nzij_current(132,1)=139; nzij_current(132,2)=32;
  nzij_current(133,1)=117; nzij_current(133,2)=33;
  nzij_current(134,1)=121; nzij_current(134,2)=33;
  nzij_current(135,1)=122; nzij_current(135,2)=33;
  nzij_current(136,1)=130; nzij_current(136,2)=33;
  nzij_current(137,1)=136; nzij_current(137,2)=33;
  nzij_current(138,1)=121; nzij_current(138,2)=34;
  nzij_current(139,1)=131; nzij_current(139,2)=34;
  nzij_current(140,1)=137; nzij_current(140,2)=34;
  nzij_current(141,1)=122; nzij_current(141,2)=35;
  nzij_current(142,1)=132; nzij_current(142,2)=35;
  nzij_current(143,1)=138; nzij_current(143,2)=35;
  nzij_current(144,1)=119; nzij_current(144,2)=36;
  nzij_current(145,1)=133; nzij_current(145,2)=36;
  nzij_current(146,1)=140; nzij_current(146,2)=36;
  nzij_current(147,1)=113; nzij_current(147,2)=37;
  nzij_current(148,1)=114; nzij_current(148,2)=37;
  nzij_current(149,1)=117; nzij_current(149,2)=37;
  nzij_current(150,1)=118; nzij_current(150,2)=37;
  nzij_current(151,1)=121; nzij_current(151,2)=37;
  nzij_current(152,1)=122; nzij_current(152,2)=37;
  nzij_current(153,1)=123; nzij_current(153,2)=37;
  nzij_current(154,1)=124; nzij_current(154,2)=37;
  nzij_current(155,1)=141; nzij_current(155,2)=37;
  nzij_current(156,1)=111; nzij_current(156,2)=38;
  nzij_current(157,1)=125; nzij_current(157,2)=38;
  nzij_current(158,1)=142; nzij_current(158,2)=38;
  nzij_current(159,1)=155; nzij_current(159,2)=38;
  nzij_current(160,1)=109; nzij_current(160,2)=39;
  nzij_current(161,1)=110; nzij_current(161,2)=39;
  nzij_current(162,1)=111; nzij_current(162,2)=39;
  nzij_current(163,1)=112; nzij_current(163,2)=39;
  nzij_current(164,1)=113; nzij_current(164,2)=39;
  nzij_current(165,1)=116; nzij_current(165,2)=39;
  nzij_current(166,1)=118; nzij_current(166,2)=39;
  nzij_current(167,1)=120; nzij_current(167,2)=39;
  nzij_current(168,1)=128; nzij_current(168,2)=39;
  nzij_current(169,1)=143; nzij_current(169,2)=39;
  nzij_current(170,1)=40; nzij_current(170,2)=40;
  nzij_current(171,1)=110; nzij_current(171,2)=40;
  nzij_current(172,1)=127; nzij_current(172,2)=40;
  nzij_current(173,1)=109; nzij_current(173,2)=41;
  nzij_current(174,1)=110; nzij_current(174,2)=41;
  nzij_current(175,1)=111; nzij_current(175,2)=41;
  nzij_current(176,1)=112; nzij_current(176,2)=41;
  nzij_current(177,1)=113; nzij_current(177,2)=41;
  nzij_current(178,1)=118; nzij_current(178,2)=41;
  nzij_current(179,1)=120; nzij_current(179,2)=41;
  nzij_current(180,1)=129; nzij_current(180,2)=41;
  nzij_current(181,1)=144; nzij_current(181,2)=41;
  nzij_current(182,1)=116; nzij_current(182,2)=42;
  nzij_current(183,1)=148; nzij_current(183,2)=42;
  nzij_current(184,1)=118; nzij_current(184,2)=43;
  nzij_current(185,1)=123; nzij_current(185,2)=43;
  nzij_current(186,1)=124; nzij_current(186,2)=43;
  nzij_current(187,1)=130; nzij_current(187,2)=43;
  nzij_current(188,1)=145; nzij_current(188,2)=43;
  nzij_current(189,1)=123; nzij_current(189,2)=44;
  nzij_current(190,1)=131; nzij_current(190,2)=44;
  nzij_current(191,1)=146; nzij_current(191,2)=44;
  nzij_current(192,1)=124; nzij_current(192,2)=45;
  nzij_current(193,1)=132; nzij_current(193,2)=45;
  nzij_current(194,1)=147; nzij_current(194,2)=45;
  nzij_current(195,1)=120; nzij_current(195,2)=46;
  nzij_current(196,1)=133; nzij_current(196,2)=46;
  nzij_current(197,1)=149; nzij_current(197,2)=46;
  nzij_current(198,1)=112; nzij_current(198,2)=47;
  nzij_current(199,1)=126; nzij_current(199,2)=47;
  nzij_current(200,1)=151; nzij_current(200,2)=47;
  nzij_current(201,1)=114; nzij_current(201,2)=48;
  nzij_current(202,1)=150; nzij_current(202,2)=48;
  nzij_current(203,1)=128; nzij_current(203,2)=49;
  nzij_current(204,1)=129; nzij_current(204,2)=50;
  nzij_current(205,1)=130; nzij_current(205,2)=51;
  nzij_current(206,1)=131; nzij_current(206,2)=52;
  nzij_current(207,1)=132; nzij_current(207,2)=53;
  nzij_current(208,1)=125; nzij_current(208,2)=54;
  nzij_current(209,1)=126; nzij_current(209,2)=54;
  nzij_current(210,1)=127; nzij_current(210,2)=55;
  nzij_current(211,1)=133; nzij_current(211,2)=56;
  nzij_current(212,1)=134; nzij_current(212,2)=57;
  nzij_current(213,1)=152; nzij_current(213,2)=57;
  nzij_current(214,1)=58; nzij_current(214,2)=58;
  nzij_current(215,1)=64; nzij_current(215,2)=58;
  nzij_current(216,1)=135; nzij_current(216,2)=58;
  nzij_current(217,1)=153; nzij_current(217,2)=58;
  nzij_current(218,1)=156; nzij_current(218,2)=58;
  nzij_current(219,1)=136; nzij_current(219,2)=59;
  nzij_current(220,1)=154; nzij_current(220,2)=59;
  nzij_current(221,1)=137; nzij_current(221,2)=60;
  nzij_current(222,1)=159; nzij_current(222,2)=60;
  nzij_current(223,1)=138; nzij_current(223,2)=61;
  nzij_current(224,1)=160; nzij_current(224,2)=61;
  nzij_current(225,1)=140; nzij_current(225,2)=62;
  nzij_current(226,1)=158; nzij_current(226,2)=62;
  nzij_current(227,1)=139; nzij_current(227,2)=63;
  nzij_current(228,1)=157; nzij_current(228,2)=63;
  nzij_current(229,1)=58; nzij_current(229,2)=64;
  nzij_current(230,1)=64; nzij_current(230,2)=64;
  nzij_current(231,1)=67; nzij_current(231,2)=64;
  nzij_current(232,1)=141; nzij_current(232,2)=64;
  nzij_current(233,1)=142; nzij_current(233,2)=65;
  nzij_current(234,1)=143; nzij_current(234,2)=66;
  nzij_current(235,1)=152; nzij_current(235,2)=66;
  nzij_current(236,1)=64; nzij_current(236,2)=67;
  nzij_current(237,1)=67; nzij_current(237,2)=67;
  nzij_current(238,1)=144; nzij_current(238,2)=67;
  nzij_current(239,1)=153; nzij_current(239,2)=67;
  nzij_current(240,1)=156; nzij_current(240,2)=67;
  nzij_current(241,1)=145; nzij_current(241,2)=68;
  nzij_current(242,1)=154; nzij_current(242,2)=68;
  nzij_current(243,1)=146; nzij_current(243,2)=69;
  nzij_current(244,1)=159; nzij_current(244,2)=69;
  nzij_current(245,1)=147; nzij_current(245,2)=70;
  nzij_current(246,1)=160; nzij_current(246,2)=70;
  nzij_current(247,1)=149; nzij_current(247,2)=71;
  nzij_current(248,1)=158; nzij_current(248,2)=71;
  nzij_current(249,1)=148; nzij_current(249,2)=72;
  nzij_current(250,1)=157; nzij_current(250,2)=72;
  nzij_current(251,1)=150; nzij_current(251,2)=73;
  nzij_current(252,1)=151; nzij_current(252,2)=74;
  nzij_current(253,1)=152; nzij_current(253,2)=75;
  nzij_current(254,1)=77; nzij_current(254,2)=76;
  nzij_current(255,1)=153; nzij_current(255,2)=76;
  nzij_current(256,1)=76; nzij_current(256,2)=77;
  nzij_current(257,1)=77; nzij_current(257,2)=77;
  nzij_current(258,1)=154; nzij_current(258,2)=77;
  nzij_current(259,1)=159; nzij_current(259,2)=78;
  nzij_current(260,1)=160; nzij_current(260,2)=79;
  nzij_current(261,1)=155; nzij_current(261,2)=80;
  nzij_current(262,1)=157; nzij_current(262,2)=81;
  nzij_current(263,1)=158; nzij_current(263,2)=82;
  nzij_current(264,1)=156; nzij_current(264,2)=83;
  nzij_current(265,1)=1; nzij_current(265,2)=84;
  nzij_current(266,1)=4; nzij_current(266,2)=84;
  nzij_current(267,1)=6; nzij_current(267,2)=84;
  nzij_current(268,1)=11; nzij_current(268,2)=84;
  nzij_current(269,1)=2; nzij_current(269,2)=85;
  nzij_current(270,1)=11; nzij_current(270,2)=85;
  nzij_current(271,1)=13; nzij_current(271,2)=85;
  nzij_current(272,1)=15; nzij_current(272,2)=85;
  nzij_current(273,1)=4; nzij_current(273,2)=86;
  nzij_current(274,1)=5; nzij_current(274,2)=86;
  nzij_current(275,1)=6; nzij_current(275,2)=86;
  nzij_current(276,1)=11; nzij_current(276,2)=86;
  nzij_current(277,1)=11; nzij_current(277,2)=87;
  nzij_current(278,1)=13; nzij_current(278,2)=87;
  nzij_current(279,1)=14; nzij_current(279,2)=87;
  nzij_current(280,1)=15; nzij_current(280,2)=87;
  nzij_current(281,1)=4; nzij_current(281,2)=88;
  nzij_current(282,1)=5; nzij_current(282,2)=88;
  nzij_current(283,1)=11; nzij_current(283,2)=88;
  nzij_current(284,1)=13; nzij_current(284,2)=88;
  nzij_current(285,1)=14; nzij_current(285,2)=88;
  nzij_current(286,1)=5; nzij_current(286,2)=89;
  nzij_current(287,1)=6; nzij_current(287,2)=89;
  nzij_current(288,1)=11; nzij_current(288,2)=89;
  nzij_current(289,1)=11; nzij_current(289,2)=90;
  nzij_current(290,1)=14; nzij_current(290,2)=90;
  nzij_current(291,1)=15; nzij_current(291,2)=90;
  nzij_current(292,1)=11; nzij_current(292,2)=91;
  nzij_current(293,1)=20; nzij_current(293,2)=91;
  nzij_current(294,1)=6; nzij_current(294,2)=92;
  nzij_current(295,1)=7; nzij_current(295,2)=92;
  nzij_current(296,1)=11; nzij_current(296,2)=92;
  nzij_current(297,1)=6; nzij_current(297,2)=93;
  nzij_current(298,1)=8; nzij_current(298,2)=93;
  nzij_current(299,1)=11; nzij_current(299,2)=93;
  nzij_current(300,1)=11; nzij_current(300,2)=94;
  nzij_current(301,1)=15; nzij_current(301,2)=94;
  nzij_current(302,1)=16; nzij_current(302,2)=94;
  nzij_current(303,1)=11; nzij_current(303,2)=95;
  nzij_current(304,1)=15; nzij_current(304,2)=95;
  nzij_current(305,1)=17; nzij_current(305,2)=95;
  nzij_current(306,1)=1; nzij_current(306,2)=96;
  nzij_current(307,1)=4; nzij_current(307,2)=96;
  nzij_current(308,1)=9; nzij_current(308,2)=96;
  nzij_current(309,1)=2; nzij_current(309,2)=97;
  nzij_current(310,1)=13; nzij_current(310,2)=97;
  nzij_current(311,1)=18; nzij_current(311,2)=97;
  nzij_current(312,1)=4; nzij_current(312,2)=98;
  nzij_current(313,1)=5; nzij_current(313,2)=98;
  nzij_current(314,1)=10; nzij_current(314,2)=98;
  nzij_current(315,1)=13; nzij_current(315,2)=99;
  nzij_current(316,1)=14; nzij_current(316,2)=99;
  nzij_current(317,1)=19; nzij_current(317,2)=99;
  nzij_current(318,1)=1; nzij_current(318,2)=100;
  nzij_current(319,1)=4; nzij_current(319,2)=100;
  nzij_current(320,1)=12; nzij_current(320,2)=100;
  nzij_current(321,1)=2; nzij_current(321,2)=101;
  nzij_current(322,1)=13; nzij_current(322,2)=101;
  nzij_current(323,1)=21; nzij_current(323,2)=101;
  nzij_current(324,1)=4; nzij_current(324,2)=102;
  nzij_current(325,1)=13; nzij_current(325,2)=102;
  nzij_current(326,1)=22; nzij_current(326,2)=102;
  nzij_current(327,1)=5; nzij_current(327,2)=103;
  nzij_current(328,1)=14; nzij_current(328,2)=103;
  nzij_current(329,1)=23; nzij_current(329,2)=103;
  nzij_current(330,1)=6; nzij_current(330,2)=104;
  nzij_current(331,1)=15; nzij_current(331,2)=104;
  nzij_current(332,1)=24; nzij_current(332,2)=104;
  nzij_current(333,1)=12; nzij_current(333,2)=105;
  nzij_current(334,1)=21; nzij_current(334,2)=105;
  nzij_current(335,1)=27; nzij_current(335,2)=105;
  nzij_current(336,1)=7; nzij_current(336,2)=106;
  nzij_current(337,1)=16; nzij_current(337,2)=106;
  nzij_current(338,1)=25; nzij_current(338,2)=106;
  nzij_current(339,1)=8; nzij_current(339,2)=107;
  nzij_current(340,1)=17; nzij_current(340,2)=107;
  nzij_current(341,1)=26; nzij_current(341,2)=107;
  nzij_current(342,1)=10; nzij_current(342,2)=108;
  nzij_current(343,1)=19; nzij_current(343,2)=108;
  nzij_current(344,1)=28; nzij_current(344,2)=108;
  nzij_current(345,1)=1; nzij_current(345,2)=109;
  nzij_current(346,1)=29; nzij_current(346,2)=109;
  nzij_current(347,1)=30; nzij_current(347,2)=109;
  nzij_current(348,1)=31; nzij_current(348,2)=109;
  nzij_current(349,1)=39; nzij_current(349,2)=109;
  nzij_current(350,1)=41; nzij_current(350,2)=109;
  nzij_current(351,1)=2; nzij_current(351,2)=110;
  nzij_current(352,1)=29; nzij_current(352,2)=110;
  nzij_current(353,1)=31; nzij_current(353,2)=110;
  nzij_current(354,1)=39; nzij_current(354,2)=110;
  nzij_current(355,1)=40; nzij_current(355,2)=110;
  nzij_current(356,1)=41; nzij_current(356,2)=110;
  nzij_current(357,1)=29; nzij_current(357,2)=111;
  nzij_current(358,1)=31; nzij_current(358,2)=111;
  nzij_current(359,1)=38; nzij_current(359,2)=111;
  nzij_current(360,1)=39; nzij_current(360,2)=111;
  nzij_current(361,1)=41; nzij_current(361,2)=111;
  nzij_current(362,1)=29; nzij_current(362,2)=112;
  nzij_current(363,1)=31; nzij_current(363,2)=112;
  nzij_current(364,1)=39; nzij_current(364,2)=112;
  nzij_current(365,1)=41; nzij_current(365,2)=112;
  nzij_current(366,1)=47; nzij_current(366,2)=112;
  nzij_current(367,1)=29; nzij_current(367,2)=113;
  nzij_current(368,1)=31; nzij_current(368,2)=113;
  nzij_current(369,1)=37; nzij_current(369,2)=113;
  nzij_current(370,1)=39; nzij_current(370,2)=113;
  nzij_current(371,1)=41; nzij_current(371,2)=113;
  nzij_current(372,1)=37; nzij_current(372,2)=114;
  nzij_current(373,1)=48; nzij_current(373,2)=114;
  nzij_current(374,1)=1; nzij_current(374,2)=115;
  nzij_current(375,1)=29; nzij_current(375,2)=115;
  nzij_current(376,1)=32; nzij_current(376,2)=115;
  nzij_current(377,1)=2; nzij_current(377,2)=116;
  nzij_current(378,1)=39; nzij_current(378,2)=116;
  nzij_current(379,1)=42; nzij_current(379,2)=116;
  nzij_current(380,1)=29; nzij_current(380,2)=117;
  nzij_current(381,1)=31; nzij_current(381,2)=117;
  nzij_current(382,1)=33; nzij_current(382,2)=117;
  nzij_current(383,1)=37; nzij_current(383,2)=117;
  nzij_current(384,1)=37; nzij_current(384,2)=118;
  nzij_current(385,1)=39; nzij_current(385,2)=118;
  nzij_current(386,1)=41; nzij_current(386,2)=118;
  nzij_current(387,1)=43; nzij_current(387,2)=118;
  nzij_current(388,1)=29; nzij_current(388,2)=119;
  nzij_current(389,1)=31; nzij_current(389,2)=119;
  nzij_current(390,1)=36; nzij_current(390,2)=119;
  nzij_current(391,1)=39; nzij_current(391,2)=120;
  nzij_current(392,1)=41; nzij_current(392,2)=120;
  nzij_current(393,1)=46; nzij_current(393,2)=120;
  nzij_current(394,1)=33; nzij_current(394,2)=121;
  nzij_current(395,1)=34; nzij_current(395,2)=121;
  nzij_current(396,1)=37; nzij_current(396,2)=121;
  nzij_current(397,1)=33; nzij_current(397,2)=122;
  nzij_current(398,1)=35; nzij_current(398,2)=122;
  nzij_current(399,1)=37; nzij_current(399,2)=122;
  nzij_current(400,1)=37; nzij_current(400,2)=123;
  nzij_current(401,1)=43; nzij_current(401,2)=123;
  nzij_current(402,1)=44; nzij_current(402,2)=123;
  nzij_current(403,1)=37; nzij_current(403,2)=124;
  nzij_current(404,1)=43; nzij_current(404,2)=124;
  nzij_current(405,1)=45; nzij_current(405,2)=124;
  nzij_current(406,1)=38; nzij_current(406,2)=125;
  nzij_current(407,1)=54; nzij_current(407,2)=125;
  nzij_current(408,1)=47; nzij_current(408,2)=126;
  nzij_current(409,1)=54; nzij_current(409,2)=126;
  nzij_current(410,1)=30; nzij_current(410,2)=127;
  nzij_current(411,1)=40; nzij_current(411,2)=127;
  nzij_current(412,1)=55; nzij_current(412,2)=127;
  nzij_current(413,1)=29; nzij_current(413,2)=128;
  nzij_current(414,1)=39; nzij_current(414,2)=128;
  nzij_current(415,1)=49; nzij_current(415,2)=128;
  nzij_current(416,1)=31; nzij_current(416,2)=129;
  nzij_current(417,1)=41; nzij_current(417,2)=129;
  nzij_current(418,1)=50; nzij_current(418,2)=129;
  nzij_current(419,1)=33; nzij_current(419,2)=130;
  nzij_current(420,1)=43; nzij_current(420,2)=130;
  nzij_current(421,1)=51; nzij_current(421,2)=130;
  nzij_current(422,1)=34; nzij_current(422,2)=131;
  nzij_current(423,1)=44; nzij_current(423,2)=131;
  nzij_current(424,1)=52; nzij_current(424,2)=131;
  nzij_current(425,1)=35; nzij_current(425,2)=132;
  nzij_current(426,1)=45; nzij_current(426,2)=132;
  nzij_current(427,1)=53; nzij_current(427,2)=132;
  nzij_current(428,1)=36; nzij_current(428,2)=133;
  nzij_current(429,1)=46; nzij_current(429,2)=133;
  nzij_current(430,1)=56; nzij_current(430,2)=133;
  nzij_current(431,1)=4; nzij_current(431,2)=134;
  nzij_current(432,1)=29; nzij_current(432,2)=134;
  nzij_current(433,1)=57; nzij_current(433,2)=134;
  nzij_current(434,1)=5; nzij_current(434,2)=135;
  nzij_current(435,1)=31; nzij_current(435,2)=135;
  nzij_current(436,1)=58; nzij_current(436,2)=135;
  nzij_current(437,1)=6; nzij_current(437,2)=136;
  nzij_current(438,1)=33; nzij_current(438,2)=136;
  nzij_current(439,1)=59; nzij_current(439,2)=136;
  nzij_current(440,1)=7; nzij_current(440,2)=137;
  nzij_current(441,1)=34; nzij_current(441,2)=137;
  nzij_current(442,1)=60; nzij_current(442,2)=137;
  nzij_current(443,1)=8; nzij_current(443,2)=138;
  nzij_current(444,1)=35; nzij_current(444,2)=138;
  nzij_current(445,1)=61; nzij_current(445,2)=138;
  nzij_current(446,1)=9; nzij_current(446,2)=139;
  nzij_current(447,1)=32; nzij_current(447,2)=139;
  nzij_current(448,1)=63; nzij_current(448,2)=139;
  nzij_current(449,1)=10; nzij_current(449,2)=140;
  nzij_current(450,1)=36; nzij_current(450,2)=140;
  nzij_current(451,1)=62; nzij_current(451,2)=140;
  nzij_current(452,1)=11; nzij_current(452,2)=141;
  nzij_current(453,1)=37; nzij_current(453,2)=141;
  nzij_current(454,1)=64; nzij_current(454,2)=141;
  nzij_current(455,1)=12; nzij_current(455,2)=142;
  nzij_current(456,1)=38; nzij_current(456,2)=142;
  nzij_current(457,1)=65; nzij_current(457,2)=142;
  nzij_current(458,1)=13; nzij_current(458,2)=143;
  nzij_current(459,1)=39; nzij_current(459,2)=143;
  nzij_current(460,1)=66; nzij_current(460,2)=143;
  nzij_current(461,1)=14; nzij_current(461,2)=144;
  nzij_current(462,1)=41; nzij_current(462,2)=144;
  nzij_current(463,1)=67; nzij_current(463,2)=144;
  nzij_current(464,1)=15; nzij_current(464,2)=145;
  nzij_current(465,1)=43; nzij_current(465,2)=145;
  nzij_current(466,1)=68; nzij_current(466,2)=145;
  nzij_current(467,1)=16; nzij_current(467,2)=146;
  nzij_current(468,1)=44; nzij_current(468,2)=146;
  nzij_current(469,1)=69; nzij_current(469,2)=146;
  nzij_current(470,1)=17; nzij_current(470,2)=147;
  nzij_current(471,1)=45; nzij_current(471,2)=147;
  nzij_current(472,1)=70; nzij_current(472,2)=147;
  nzij_current(473,1)=18; nzij_current(473,2)=148;
  nzij_current(474,1)=42; nzij_current(474,2)=148;
  nzij_current(475,1)=72; nzij_current(475,2)=148;
  nzij_current(476,1)=19; nzij_current(476,2)=149;
  nzij_current(477,1)=46; nzij_current(477,2)=149;
  nzij_current(478,1)=71; nzij_current(478,2)=149;
  nzij_current(479,1)=20; nzij_current(479,2)=150;
  nzij_current(480,1)=48; nzij_current(480,2)=150;
  nzij_current(481,1)=73; nzij_current(481,2)=150;
  nzij_current(482,1)=21; nzij_current(482,2)=151;
  nzij_current(483,1)=47; nzij_current(483,2)=151;
  nzij_current(484,1)=74; nzij_current(484,2)=151;
  nzij_current(485,1)=57; nzij_current(485,2)=152;
  nzij_current(486,1)=66; nzij_current(486,2)=152;
  nzij_current(487,1)=75; nzij_current(487,2)=152;
  nzij_current(488,1)=58; nzij_current(488,2)=153;
  nzij_current(489,1)=67; nzij_current(489,2)=153;
  nzij_current(490,1)=76; nzij_current(490,2)=153;
  nzij_current(491,1)=59; nzij_current(491,2)=154;
  nzij_current(492,1)=68; nzij_current(492,2)=154;
  nzij_current(493,1)=77; nzij_current(493,2)=154;
  nzij_current(494,1)=27; nzij_current(494,2)=155;
  nzij_current(495,1)=38; nzij_current(495,2)=155;
  nzij_current(496,1)=80; nzij_current(496,2)=155;
  nzij_current(497,1)=58; nzij_current(497,2)=156;
  nzij_current(498,1)=67; nzij_current(498,2)=156;
  nzij_current(499,1)=83; nzij_current(499,2)=156;
  nzij_current(500,1)=63; nzij_current(500,2)=157;
  nzij_current(501,1)=72; nzij_current(501,2)=157;
  nzij_current(502,1)=81; nzij_current(502,2)=157;
  nzij_current(503,1)=62; nzij_current(503,2)=158;
  nzij_current(504,1)=71; nzij_current(504,2)=158;
  nzij_current(505,1)=82; nzij_current(505,2)=158;
  nzij_current(506,1)=60; nzij_current(506,2)=159;
  nzij_current(507,1)=69; nzij_current(507,2)=159;
  nzij_current(508,1)=78; nzij_current(508,2)=159;
  nzij_current(509,1)=61; nzij_current(509,2)=160;
  nzij_current(510,1)=70; nzij_current(510,2)=160;
  nzij_current(511,1)=79; nzij_current(511,2)=160;
  nzij_current(512,1)=1; nzij_current(512,2)=161;
  nzij_current(513,1)=2; nzij_current(513,2)=162;
  nzij_current(514,1)=1; nzij_current(514,2)=163;
  nzij_current(515,1)=2; nzij_current(515,2)=163;
  nzij_current(516,1)=3; nzij_current(516,2)=163;
  nzij_fwrd = zeros(18, 2, 'int32');
  nzij_fwrd(1,1)=100; nzij_fwrd(1,2)=1;
  nzij_fwrd(2,1)=101; nzij_fwrd(2,2)=2;
  nzij_fwrd(3,1)=100; nzij_fwrd(3,2)=4;
  nzij_fwrd(4,1)=101; nzij_fwrd(4,2)=13;
  nzij_fwrd(5,1)=111; nzij_fwrd(5,2)=29;
  nzij_fwrd(6,1)=112; nzij_fwrd(6,2)=29;
  nzij_fwrd(7,1)=109; nzij_fwrd(7,2)=30;
  nzij_fwrd(8,1)=111; nzij_fwrd(8,2)=30;
  nzij_fwrd(9,1)=111; nzij_fwrd(9,2)=31;
  nzij_fwrd(10,1)=112; nzij_fwrd(10,2)=31;
  nzij_fwrd(11,1)=111; nzij_fwrd(11,2)=39;
  nzij_fwrd(12,1)=112; nzij_fwrd(12,2)=39;
  nzij_fwrd(13,1)=110; nzij_fwrd(13,2)=40;
  nzij_fwrd(14,1)=112; nzij_fwrd(14,2)=40;
  nzij_fwrd(15,1)=111; nzij_fwrd(15,2)=41;
  nzij_fwrd(16,1)=112; nzij_fwrd(16,2)=41;
  nzij_fwrd(17,1)=1; nzij_fwrd(17,2)=161;
  nzij_fwrd(18,1)=2; nzij_fwrd(18,2)=162;
end
