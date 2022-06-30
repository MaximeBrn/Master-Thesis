function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = MODEL_MAIN_8.static_resid_tt(T, y, x, params);
end
residual = zeros(168, 1);
residual(1) = y(168)*T(1)+y(166)+y(118)+y(112)*(-(params(22)*(-(1+params(3)))))+(1+params(3))*y(102)+y(98)+(1+params(3))*y(86)+T(2)*(-(1+params(3)))*y(102)+params(32)*y(166)*(-params(31));
residual(2) = y(168)*T(3)+y(167)+y(119)+y(113)*(-((-(1+params(3)))*params(23)))+(1+params(3))*y(103)+y(99)+(1+params(3))*y(87)+T(2)*(-(1+params(3)))*y(103)+params(32)*(-params(31))*y(167);
residual(3) = y(168);
residual(4) = y(138)+T(1)*y(104)+y(102)*(-params(3))+y(100)+y(90)*(-params(27))+params(25)*y(88)+y(86)*(-params(3))-y(98)+T(2)*params(3)*y(102);
residual(5) = y(139)+T(1)*y(105)+params(4)*y(91)+y(90)*(-(params(27)*(-params(11))))+y(88)*params(25)*(-params(11))-y(100);
residual(6) = y(140)+T(1)*y(106)+y(91)*(-params(2))+y(88)*(-params(2))+y(86)*(-params(2))-y(94)-y(95);
residual(7) = y(141)+y(94)+T(1)*y(108);
residual(8) = y(142)+y(95)+T(1)*y(109);
residual(9) = y(143)+y(98)+T(1)*y(111);
residual(10) = y(144)+y(100)+T(1)*y(110);
residual(11) = y(145)+y(97)*(-(params(21)*(-params(5))))+y(96)*(-(params(5)*(1-params(21))))+y(95)*(-((-params(5))*(1-params(20))))+y(94)*(-(params(5)*params(20)))+y(93)+params(21)*y(92)+y(91)*(-params(20))+y(90)+params(24)*params(7)*params(8)*y(89)+y(88)*(-(params(24)*(1-params(7))*params(8)))+y(87)*params(21)+y(86)*(-params(20));
residual(12) = y(146)+y(102)+T(1)*y(107);
residual(13) = y(147)+T(3)*y(104)+y(103)*(-params(3))+y(101)+y(90)*params(27)+params(25)*y(89)+y(87)*(-params(3))-y(99)+T(2)*params(3)*y(103);
residual(14) = y(148)+T(3)*y(105)+params(4)*y(92)+y(90)*(-(params(27)*params(11)))+params(25)*(-params(11))*y(89)-y(101);
residual(15) = y(149)+T(3)*y(106)+(-params(2))*y(92)+(-params(2))*y(89)+y(87)*(-params(2))-y(96)-y(97);
residual(16) = y(150)+y(96)+T(3)*y(108);
residual(17) = y(151)+y(97)+T(3)*y(109);
residual(18) = y(152)+y(99)+T(3)*y(111);
residual(19) = y(153)+y(101)+T(3)*y(110);
residual(20) = y(93)+y(154);
residual(21) = y(155)+y(103)+T(3)*y(107);
residual(22) = y(104);
residual(23) = y(105);
residual(24) = y(106);
residual(25) = y(108);
residual(26) = y(109);
residual(27) = y(107)+y(159);
residual(28) = y(110);
residual(29) = y(111)+y(161);
residual(30) = T(1)*y(131)+y(122)+params(25)*y(120)+(-params(27))*y(116)+T(4)*y(115)+y(114)+y(113)*(-(params(23)*(params(25)-params(27)*params(29))))+y(112)*(-(params(22)*(params(3)+params(27)*params(28))))+T(2)*(-y(114))+T(2)*y(115)*(-T(4))-y(118)-y(138);
residual(31) = params(7)*params(6)/params(22)*2*y(31)+T(1)*y(130)+y(112)+T(2)*y(112)*(-params(1))+T(2)*y(114)*(-T(5));
residual(32) = T(1)*y(132)+params(25)*(-params(11))*y(120)+(-(params(27)*(-params(11))))*y(116)+y(115)*(-(params(11)*T(4)))+(-params(11))*y(114)+y(113)*(-(params(23)*(-params(11))*(params(25)-params(27)*params(29))))+y(112)*(-(params(22)*(-(params(11)*params(27)*params(28)))))+T(2)*params(11)*y(114)+T(2)*y(115)*(-((-params(11))*T(4)))-y(122)-y(139);
residual(33) = y(118)+T(1)*y(137)-y(143);
residual(34) = T(1)*y(133)+(-params(2))*y(120)-y(124)-y(125)-y(140);
residual(35) = y(124)+T(1)*y(134)-y(141);
residual(36) = y(125)+T(1)*y(135)-y(142);
residual(37) = y(122)+T(1)*y(136)-y(144);
residual(38) = (-(params(21)*(-params(5))))*y(127)+(-(params(5)*(1-params(21))))*y(126)+(-((-params(5))*(1-params(20))))*y(125)+(-(params(5)*params(20)))*y(124)+params(24)*params(7)*params(8)*y(121)+(-(params(24)*(1-params(7))*params(8)))*y(120)+y(116)+y(117)-y(145);
residual(39) = y(128)+y(114)*T(5)-y(146)-y(159);
residual(40) = T(3)*y(131)+y(123)+params(25)*y(121)+params(27)*y(116)+y(115)+y(114)*T(6)+y(113)*(-(params(23)*(params(3)+params(27)*params(29))))+y(112)*(-(params(22)*(params(25)-params(27)*params(28))))+T(2)*y(114)*(-T(6))+T(2)*(-y(115))-y(119)-y(147);
residual(41) = (1-params(7))*params(6)/params(23)*2*y(41)+T(3)*y(130)+y(113)+T(2)*y(113)*(-params(1))+T(2)*y(115)*(-T(7));
residual(42) = T(3)*y(132)+params(25)*(-params(11))*y(121)+(-(params(27)*params(11)))*y(116)+(-params(11))*y(115)+y(114)*(-(params(11)*T(6)))+y(113)*(-(params(23)*(-(params(11)*params(27)*params(29)))))+y(112)*(-(params(22)*(-params(11))*(params(25)-params(27)*params(28))))+T(2)*y(114)*(-((-params(11))*T(6)))+T(2)*params(11)*y(115)-y(123)-y(148);
residual(43) = y(119)+T(3)*y(137)-y(152);
residual(44) = T(3)*y(133)+(-params(2))*y(121)-y(126)-y(127)-y(149);
residual(45) = y(126)+T(3)*y(134)-y(150);
residual(46) = y(127)+T(3)*y(135)-y(151);
residual(47) = y(123)+T(3)*y(136)-y(153);
residual(48) = y(129)+y(115)*T(7)-y(155);
residual(49) = y(117)-y(154);
residual(50) = y(131);
residual(51) = y(132);
residual(52) = y(133);
residual(53) = y(134);
residual(54) = y(135);
residual(55) = (-y(129))-y(128);
residual(56) = y(130);
residual(57) = y(136);
residual(58) = y(137)-y(161);
residual(59) = y(138)+T(1)*y(156);
residual(60) = params(7)*params(11)*(params(4)+params(3)*params(11))*2*y(60)+y(139)+T(1)*y(157)-y(160);
residual(61) = y(140)+T(1)*y(158);
residual(62) = y(141)+T(1)*y(163);
residual(63) = y(142)+T(1)*y(164);
residual(64) = y(144)+T(1)*y(162);
residual(65) = y(143);
residual(66) = y(145)+(1-params(11))*params(8)*params(7)*(1-params(7))*(1+params(3)*(1-params(11)))*2*y(66)+y(85)*params(3)*params(11)*(1-params(11))*(1-params(7))*params(7)*2*params(8);
residual(67) = y(146);
residual(68) = y(147)+T(3)*y(156);
residual(69) = (params(4)+params(3)*params(11))*(1-params(7))*params(11)*2*y(69)+y(160)+y(148)+T(3)*y(157);
residual(70) = y(149)+T(3)*y(158);
residual(71) = y(150)+T(3)*y(163);
residual(72) = y(151)+T(3)*y(164);
residual(73) = y(165);
residual(74) = y(152);
residual(75) = y(154);
residual(76) = y(155);
residual(77) = y(156);
residual(78) = y(157)+y(79)*params(3)*2*(1-params(11));
residual(79) = y(158)+(1-params(11))*(params(2)+params(3)*(1-params(11)))*2*y(79)+params(3)*2*(1-params(11))*y(78);
residual(80) = y(163);
residual(81) = y(164);
residual(82) = y(159);
residual(83) = y(161);
residual(84) = y(162);
residual(85) = y(160)+y(66)*params(3)*params(11)*(1-params(11))*(1-params(7))*params(7)*2*params(8);
residual(86) = (-(params(2)*y(6)+params(3)*y(4)+params(20)*y(11)-(1+params(3))*y(1)));
residual(87) = (-(params(2)*y(15)+params(3)*y(13)-params(21)*y(11)-(1+params(3))*y(2)));
residual(88) = params(25)*(y(4)-params(11)*y(5))-(params(2)*y(6)+params(24)*(1-params(7))*params(8)*y(11));
residual(89) = params(25)*(y(13)-params(11)*y(14))-(params(2)*y(15)-params(24)*params(7)*params(8)*y(11));
residual(90) = y(11)-params(27)*(y(4)-y(13)-params(11)*(y(5)-y(14)));
residual(91) = params(4)*y(5)-(params(2)*y(6)+params(20)*y(11));
residual(92) = params(4)*y(14)-(params(2)*y(15)-params(21)*y(11));
residual(93) = y(11)+y(20);
residual(94) = y(7)-(y(6)+params(5)*params(20)*y(11));
residual(95) = y(8)-(y(6)+(-params(5))*(1-params(20))*y(11));
residual(96) = y(16)-(y(15)+params(5)*(1-params(21))*y(11));
residual(97) = y(17)-(y(15)+params(21)*(-params(5))*y(11));
residual(98) = y(9)-(y(4)-y(1));
residual(99) = y(18)-(y(13)-y(2));
residual(100) = y(10)-(y(5)-y(4));
residual(101) = y(19)-(y(14)-y(13));
residual(102) = y(12);
residual(103) = y(21);
residual(104) = y(22)-(params(7)*y(4)+(1-params(7))*y(13));
residual(105) = y(23)-(params(7)*y(5)+(1-params(7))*y(14));
residual(106) = y(24)-(params(7)*y(6)+(1-params(7))*y(15));
residual(107) = y(27)-(params(7)*y(12)+(1-params(7))*y(21));
residual(108) = y(25)-(params(7)*y(7)+(1-params(7))*y(16));
residual(109) = y(26)-(params(7)*y(8)+(1-params(7))*y(17));
residual(110) = y(28)-(params(7)*y(10)+(1-params(7))*y(19));
residual(111) = y(29)-(params(7)*y(9)+(1-params(7))*y(18));
residual(112) = y(31)-(y(31)*params(1)+params(22)*((params(3)+params(27)*params(28))*y(30)-params(11)*params(27)*params(28)*y(32)+(params(25)-params(27)*params(28))*(y(40)-params(11)*y(42))-(1+params(3))*y(1)));
residual(113) = y(41)-(params(1)*y(41)+params(23)*((params(3)+params(27)*params(29))*y(40)-params(11)*params(27)*params(29)*y(42)+(params(25)-params(27)*params(29))*(y(30)-params(11)*y(32))-(1+params(3))*y(2)));
residual(114) = y(30)-(y(30)-T(5)*(y(39)-y(31)));
residual(115) = y(40)-(y(40)-T(7)*(y(48)-y(41)));
residual(116) = y(38)-params(27)*(y(30)-y(40)-params(11)*(y(32)-y(42)));
residual(117) = y(38)+y(49);
residual(118) = y(33)-(y(30)-y(1));
residual(119) = y(43)-(y(40)-y(2));
residual(120) = params(25)*(y(30)-params(11)*y(32))-(params(2)*y(34)+params(24)*(1-params(7))*params(8)*y(38));
residual(121) = params(25)*(y(40)-params(11)*y(42))-(params(2)*y(44)-params(24)*params(7)*params(8)*y(38));
residual(122) = y(37)-(y(32)-y(30));
residual(123) = y(47)-(y(42)-y(40));
residual(124) = y(35)-(y(34)+params(5)*params(20)*y(38));
residual(125) = y(36)-(y(34)+(-params(5))*(1-params(20))*y(38));
residual(126) = y(45)-(y(44)+params(5)*(1-params(21))*y(38));
residual(127) = y(46)-(y(44)+params(21)*(-params(5))*y(38));
residual(128) = y(39)-y(55);
residual(129) = y(48)-y(55);
residual(130) = y(56)-(params(7)*y(31)+(1-params(7))*y(41));
residual(131) = y(50)-(params(7)*y(30)+(1-params(7))*y(40));
residual(132) = y(51)-(params(7)*y(32)+(1-params(7))*y(42));
residual(133) = y(52)-(params(7)*y(34)+(1-params(7))*y(44));
residual(134) = y(53)-(params(7)*y(35)+(1-params(7))*y(45));
residual(135) = y(54)-(params(7)*y(36)+(1-params(7))*y(46));
residual(136) = y(57)-(params(7)*y(37)+(1-params(7))*y(47));
residual(137) = y(58)-(params(7)*y(33)+(1-params(7))*y(43));
residual(138) = y(59)-(y(30)-y(4));
residual(139) = y(60)-(y(32)-y(5));
residual(140) = y(61)-(y(34)-y(6));
residual(141) = y(62)-(y(35)-y(7));
residual(142) = y(63)-(y(36)-y(8));
residual(143) = y(65)-(y(33)-y(9));
residual(144) = y(64)-(y(37)-y(10));
residual(145) = y(66)-(y(38)-y(11));
residual(146) = y(67)-(y(39)-y(12));
residual(147) = y(68)-(y(40)-y(13));
residual(148) = y(69)-(y(42)-y(14));
residual(149) = y(70)-(y(44)-y(15));
residual(150) = y(71)-(y(45)-y(16));
residual(151) = y(72)-(y(46)-y(17));
residual(152) = y(74)-(y(43)-y(18));
residual(153) = (-(y(47)-y(19)));
residual(154) = y(75)-(y(49)-y(20));
residual(155) = y(76)-(y(48)-y(21));
residual(156) = y(77)-(params(7)*y(59)+(1-params(7))*y(68));
residual(157) = y(78)-(params(7)*y(60)+(1-params(7))*y(69));
residual(158) = y(79)-(params(7)*y(61)+(1-params(7))*y(70));
residual(159) = y(82)-(y(39)-y(27));
residual(160) = y(85)-(y(60)-y(69));
residual(161) = y(83)-(y(58)-y(29));
residual(162) = y(84)-params(7)*y(64);
residual(163) = y(80)-(params(7)*y(62)+(1-params(7))*y(71));
residual(164) = y(81)-(params(7)*y(63)+(1-params(7))*y(72));
residual(165) = y(73);
residual(166) = y(1)-(params(31)*y(1)-x(1));
residual(167) = y(2)-(params(31)*y(2)-x(2));
residual(168) = y(3)-(params(7)*y(1)+(1-params(7))*y(2));
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
