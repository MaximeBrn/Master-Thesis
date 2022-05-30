function [nzij_pred, nzij_current, nzij_fwrd] = dynamic_g1_nz()
% Returns the coordinates of non-zero elements in the Jacobian, in column-major order, for each lead/lag (only for endogenous)
  nzij_pred = zeros(14, 2, 'int32');
  nzij_pred(1,1)=20; nzij_pred(1,2)=1;
  nzij_pred(2,1)=21; nzij_pred(2,2)=2;
  nzij_pred(3,1)=22; nzij_pred(3,2)=6;
  nzij_pred(4,1)=23; nzij_pred(4,2)=7;
  nzij_pred(5,1)=3; nzij_pred(5,2)=15;
  nzij_pred(6,1)=4; nzij_pred(6,2)=15;
  nzij_pred(7,1)=5; nzij_pred(7,2)=15;
  nzij_pred(8,1)=12; nzij_pred(8,2)=15;
  nzij_pred(9,1)=4; nzij_pred(9,2)=16;
  nzij_pred(10,1)=8; nzij_pred(10,2)=17;
  nzij_pred(11,1)=9; nzij_pred(11,2)=17;
  nzij_pred(12,1)=10; nzij_pred(12,2)=17;
  nzij_pred(13,1)=12; nzij_pred(13,2)=17;
  nzij_pred(14,1)=9; nzij_pred(14,2)=18;
  nzij_current = zeros(82, 2, 'int32');
  nzij_current(1,1)=1; nzij_current(1,2)=1;
  nzij_current(2,1)=3; nzij_current(2,2)=1;
  nzij_current(3,1)=16; nzij_current(3,2)=1;
  nzij_current(4,1)=20; nzij_current(4,2)=1;
  nzij_current(5,1)=16; nzij_current(5,2)=2;
  nzij_current(6,1)=21; nzij_current(6,2)=2;
  nzij_current(7,1)=1; nzij_current(7,2)=3;
  nzij_current(8,1)=3; nzij_current(8,2)=3;
  nzij_current(9,1)=15; nzij_current(9,2)=3;
  nzij_current(10,1)=16; nzij_current(10,2)=3;
  nzij_current(11,1)=19; nzij_current(11,2)=3;
  nzij_current(12,1)=25; nzij_current(12,2)=3;
  nzij_current(13,1)=4; nzij_current(13,2)=4;
  nzij_current(14,1)=16; nzij_current(14,2)=4;
  nzij_current(15,1)=24; nzij_current(15,2)=4;
  nzij_current(16,1)=5; nzij_current(16,2)=5;
  nzij_current(17,1)=15; nzij_current(17,2)=5;
  nzij_current(18,1)=16; nzij_current(18,2)=5;
  nzij_current(19,1)=19; nzij_current(19,2)=5;
  nzij_current(20,1)=6; nzij_current(20,2)=6;
  nzij_current(21,1)=8; nzij_current(21,2)=6;
  nzij_current(22,1)=18; nzij_current(22,2)=6;
  nzij_current(23,1)=22; nzij_current(23,2)=6;
  nzij_current(24,1)=18; nzij_current(24,2)=7;
  nzij_current(25,1)=23; nzij_current(25,2)=7;
  nzij_current(26,1)=6; nzij_current(26,2)=8;
  nzij_current(27,1)=8; nzij_current(27,2)=8;
  nzij_current(28,1)=17; nzij_current(28,2)=8;
  nzij_current(29,1)=18; nzij_current(29,2)=8;
  nzij_current(30,1)=19; nzij_current(30,2)=8;
  nzij_current(31,1)=25; nzij_current(31,2)=8;
  nzij_current(32,1)=9; nzij_current(32,2)=9;
  nzij_current(33,1)=18; nzij_current(33,2)=9;
  nzij_current(34,1)=24; nzij_current(34,2)=9;
  nzij_current(35,1)=10; nzij_current(35,2)=10;
  nzij_current(36,1)=17; nzij_current(36,2)=10;
  nzij_current(37,1)=18; nzij_current(37,2)=10;
  nzij_current(38,1)=19; nzij_current(38,2)=10;
  nzij_current(39,1)=15; nzij_current(39,2)=11;
  nzij_current(40,1)=17; nzij_current(40,2)=11;
  nzij_current(41,1)=15; nzij_current(41,2)=12;
  nzij_current(42,1)=16; nzij_current(42,2)=12;
  nzij_current(43,1)=17; nzij_current(43,2)=12;
  nzij_current(44,1)=18; nzij_current(44,2)=12;
  nzij_current(45,1)=19; nzij_current(45,2)=12;
  nzij_current(46,1)=24; nzij_current(46,2)=13;
  nzij_current(47,1)=25; nzij_current(47,2)=14;
  nzij_current(48,1)=3; nzij_current(48,2)=15;
  nzij_current(49,1)=5; nzij_current(49,2)=15;
  nzij_current(50,1)=11; nzij_current(50,2)=15;
  nzij_current(51,1)=12; nzij_current(51,2)=15;
  nzij_current(52,1)=1; nzij_current(52,2)=16;
  nzij_current(53,1)=2; nzij_current(53,2)=16;
  nzij_current(54,1)=3; nzij_current(54,2)=16;
  nzij_current(55,1)=4; nzij_current(55,2)=16;
  nzij_current(56,1)=5; nzij_current(56,2)=16;
  nzij_current(57,1)=12; nzij_current(57,2)=16;
  nzij_current(58,1)=8; nzij_current(58,2)=17;
  nzij_current(59,1)=10; nzij_current(59,2)=17;
  nzij_current(60,1)=11; nzij_current(60,2)=17;
  nzij_current(61,1)=12; nzij_current(61,2)=17;
  nzij_current(62,1)=6; nzij_current(62,2)=18;
  nzij_current(63,1)=7; nzij_current(63,2)=18;
  nzij_current(64,1)=8; nzij_current(64,2)=18;
  nzij_current(65,1)=9; nzij_current(65,2)=18;
  nzij_current(66,1)=10; nzij_current(66,2)=18;
  nzij_current(67,1)=12; nzij_current(67,2)=18;
  nzij_current(68,1)=3; nzij_current(68,2)=19;
  nzij_current(69,1)=5; nzij_current(69,2)=19;
  nzij_current(70,1)=8; nzij_current(70,2)=19;
  nzij_current(71,1)=10; nzij_current(71,2)=19;
  nzij_current(72,1)=12; nzij_current(72,2)=19;
  nzij_current(73,1)=1; nzij_current(73,2)=20;
  nzij_current(74,1)=2; nzij_current(74,2)=21;
  nzij_current(75,1)=6; nzij_current(75,2)=22;
  nzij_current(76,1)=7; nzij_current(76,2)=23;
  nzij_current(77,1)=4; nzij_current(77,2)=24;
  nzij_current(78,1)=9; nzij_current(78,2)=24;
  nzij_current(79,1)=13; nzij_current(79,2)=24;
  nzij_current(80,1)=3; nzij_current(80,2)=25;
  nzij_current(81,1)=8; nzij_current(81,2)=25;
  nzij_current(82,1)=14; nzij_current(82,2)=25;
  nzij_fwrd = zeros(14, 2, 'int32');
  nzij_fwrd(1,1)=15; nzij_fwrd(1,2)=3;
  nzij_fwrd(2,1)=15; nzij_fwrd(2,2)=4;
  nzij_fwrd(3,1)=16; nzij_fwrd(3,2)=4;
  nzij_fwrd(4,1)=15; nzij_fwrd(4,2)=5;
  nzij_fwrd(5,1)=17; nzij_fwrd(5,2)=8;
  nzij_fwrd(6,1)=17; nzij_fwrd(6,2)=9;
  nzij_fwrd(7,1)=18; nzij_fwrd(7,2)=9;
  nzij_fwrd(8,1)=17; nzij_fwrd(8,2)=10;
  nzij_fwrd(9,1)=15; nzij_fwrd(9,2)=12;
  nzij_fwrd(10,1)=17; nzij_fwrd(10,2)=12;
  nzij_fwrd(11,1)=1; nzij_fwrd(11,2)=20;
  nzij_fwrd(12,1)=2; nzij_fwrd(12,2)=21;
  nzij_fwrd(13,1)=6; nzij_fwrd(13,2)=22;
  nzij_fwrd(14,1)=7; nzij_fwrd(14,2)=23;
end