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
    T = Model_Main_8.static_resid_tt(T, y, x, params);
end
residual = zeros(163, 1);
residual(1) = y(163)*T(1)+y(161)+y(115)+y(109)*(-(params(22)*(-(1+params(3)))))+(1+params(3))*y(100)+y(96)+(1+params(3))*y(84)+T(2)*(-(1+params(3)))*y(100)+params(32)*y(161)*(-params(31));
residual(2) = y(163)*T(3)+y(162)+y(116)+y(110)*(-((-(1+params(3)))*params(23)))+(1+params(3))*y(101)+y(97)+(1+params(3))*y(85)+T(2)*(-(1+params(3)))*y(101)+params(32)*(-params(31))*y(162);
residual(3) = y(163);
residual(4) = y(134)+T(1)*y(102)+y(100)*(-params(3))+y(98)+y(88)*(-params(27))+params(25)*y(86)+y(84)*(-params(3))-y(96)+T(2)*params(3)*y(100);
residual(5) = y(135)+T(1)*y(103)+params(4)*y(89)+y(88)*(-(params(27)*(-params(11))))+y(86)*params(25)*(-params(11))-y(98);
residual(6) = y(136)+T(1)*y(104)+y(89)*(-params(2))+y(86)*(-params(2))+y(84)*(-params(2))-y(92)-y(93);
residual(7) = y(137)+y(92)+T(1)*y(106);
residual(8) = y(138)+y(93)+T(1)*y(107);
residual(9) = y(96)+y(139);
residual(10) = y(140)+y(98)+T(1)*y(108);
residual(11) = y(141)+y(95)*(-(params(21)*(-params(5))))+y(94)*(-(params(5)*(1-params(21))))+y(93)*(-((-params(5))*(1-params(20))))+y(92)*(-(params(5)*params(20)))+y(91)+params(21)*y(90)+y(89)*(-params(20))+y(88)+params(24)*params(7)*params(8)*y(87)+y(86)*(-(params(24)*(1-params(7))*params(8)))+y(85)*params(21)+y(84)*(-params(20));
residual(12) = y(142)+y(100)+T(1)*y(105);
residual(13) = y(143)+T(3)*y(102)+y(101)*(-params(3))+y(99)+y(88)*params(27)+params(25)*y(87)+y(85)*(-params(3))-y(97)+T(2)*params(3)*y(101);
residual(14) = y(144)+T(3)*y(103)+params(4)*y(90)+y(88)*(-(params(27)*params(11)))+params(25)*(-params(11))*y(87)-y(99);
residual(15) = y(145)+T(3)*y(104)+(-params(2))*y(90)+(-params(2))*y(87)+y(85)*(-params(2))-y(94)-y(95);
residual(16) = y(146)+y(94)+T(3)*y(106);
residual(17) = y(147)+y(95)+T(3)*y(107);
residual(18) = y(97)+y(148);
residual(19) = y(149)+y(99)+T(3)*y(108);
residual(20) = y(91)+y(150);
residual(21) = y(151)+y(101)+T(3)*y(105);
residual(22) = y(102);
residual(23) = y(103);
residual(24) = y(104);
residual(25) = y(106);
residual(26) = y(107);
residual(27) = y(105)+y(155);
residual(28) = y(108);
residual(29) = T(1)*y(128)+y(119)+params(25)*y(117)+(-params(27))*y(113)+T(4)*y(112)+y(111)+y(110)*(-(params(23)*(params(25)-params(27)*params(29))))+y(109)*(-(params(22)*(params(3)+params(27)*params(28))))+T(2)*(-y(111))+T(2)*y(112)*(-T(4))-y(115)-y(134);
residual(30) = params(7)*params(6)/params(22)*2*y(30)+T(1)*y(127)+y(109)+T(2)*y(109)*(-params(1))+T(2)*y(111)*(-T(5));
residual(31) = T(1)*y(129)+params(25)*(-params(11))*y(117)+(-(params(27)*(-params(11))))*y(113)+y(112)*(-(params(11)*T(4)))+(-params(11))*y(111)+y(110)*(-(params(23)*(-params(11))*(params(25)-params(27)*params(29))))+y(109)*(-(params(22)*(-(params(11)*params(27)*params(28)))))+T(2)*params(11)*y(111)+T(2)*y(112)*(-((-params(11))*T(4)))-y(119)-y(135);
residual(32) = y(115)-y(139);
residual(33) = T(1)*y(130)+(-params(2))*y(117)-y(121)-y(122)-y(136);
residual(34) = y(121)+T(1)*y(131)-y(137);
residual(35) = y(122)+T(1)*y(132)-y(138);
residual(36) = y(119)+T(1)*y(133)-y(140);
residual(37) = (-(params(21)*(-params(5))))*y(124)+(-(params(5)*(1-params(21))))*y(123)+(-((-params(5))*(1-params(20))))*y(122)+(-(params(5)*params(20)))*y(121)+params(24)*params(7)*params(8)*y(118)+(-(params(24)*(1-params(7))*params(8)))*y(117)+y(113)+y(114)-y(141);
residual(38) = y(125)+y(111)*T(5)-y(142)-y(155);
residual(39) = T(3)*y(128)+y(120)+params(25)*y(118)+params(27)*y(113)+y(112)+y(111)*T(6)+y(110)*(-(params(23)*(params(3)+params(27)*params(29))))+y(109)*(-(params(22)*(params(25)-params(27)*params(28))))+T(2)*y(111)*(-T(6))+T(2)*(-y(112))-y(116)-y(143);
residual(40) = (1-params(7))*params(6)/params(23)*2*y(40)+T(3)*y(127)+y(110)+T(2)*y(110)*(-params(1))+T(2)*y(112)*(-T(7));
residual(41) = T(3)*y(129)+params(25)*(-params(11))*y(118)+(-(params(27)*params(11)))*y(113)+(-params(11))*y(112)+y(111)*(-(params(11)*T(6)))+y(110)*(-(params(23)*(-(params(11)*params(27)*params(29)))))+y(109)*(-(params(22)*(-params(11))*(params(25)-params(27)*params(28))))+T(2)*y(111)*(-((-params(11))*T(6)))+T(2)*params(11)*y(112)-y(120)-y(144);
residual(42) = y(116)-y(148);
residual(43) = T(3)*y(130)+(-params(2))*y(118)-y(123)-y(124)-y(145);
residual(44) = y(123)+T(3)*y(131)-y(146);
residual(45) = y(124)+T(3)*y(132)-y(147);
residual(46) = y(120)+T(3)*y(133)-y(149);
residual(47) = y(126)+y(112)*T(7)-y(151);
residual(48) = y(114)-y(150);
residual(49) = y(128);
residual(50) = y(129);
residual(51) = y(130);
residual(52) = y(131);
residual(53) = y(132);
residual(54) = (-y(126))-y(125);
residual(55) = y(127);
residual(56) = y(133);
residual(57) = y(134)+T(1)*y(152);
residual(58) = y(64)*params(3)*params(11)*(1-params(11))*(1-params(7))*2*params(7)+params(7)*params(11)*(params(4)+params(3)*params(11))*2*y(58)+y(135)+T(1)*y(153)-y(156);
residual(59) = y(136)+T(1)*y(154);
residual(60) = y(137)+T(1)*y(159);
residual(61) = y(138)+T(1)*y(160);
residual(62) = y(140)+T(1)*y(158);
residual(63) = y(139)+T(1)*y(157);
residual(64) = y(141)+(1-params(11))*params(7)*(1-params(7))*(1+params(3)*(1-params(11)))*2*y(64)+params(3)*params(11)*(1-params(11))*(1-params(7))*2*params(7)*(y(58)-y(67));
residual(65) = y(142);
residual(66) = y(143)+T(3)*y(152);
residual(67) = (params(4)+params(3)*params(11))*(1-params(7))*params(11)*2*y(67)-y(64)*params(3)*params(11)*(1-params(11))*(1-params(7))*2*params(7)+y(156)+y(144)+T(3)*y(153);
residual(68) = y(145)+T(3)*y(154);
residual(69) = y(146)+T(3)*y(159);
residual(70) = y(147)+T(3)*y(160);
residual(71) = y(149)+T(3)*y(158);
residual(72) = y(148)+T(3)*y(157);
residual(73) = y(150);
residual(74) = y(151);
residual(75) = y(152);
residual(76) = y(153)+y(77)*params(3)*2*(1-params(11));
residual(77) = y(154)+(1-params(11))*(params(2)+params(3)*(1-params(11)))*2*y(77)+params(3)*2*(1-params(11))*y(76);
residual(78) = y(159);
residual(79) = y(160);
residual(80) = y(155);
residual(81) = y(157);
residual(82) = y(158);
residual(83) = y(156);
residual(84) = (-(params(2)*y(6)+params(3)*y(4)+params(20)*y(11)-(1+params(3))*y(1)));
residual(85) = (-(params(2)*y(15)+params(3)*y(13)-params(21)*y(11)-(1+params(3))*y(2)));
residual(86) = params(25)*(y(4)-params(11)*y(5))-(params(2)*y(6)+params(24)*(1-params(7))*params(8)*y(11));
residual(87) = params(25)*(y(13)-params(11)*y(14))-(params(2)*y(15)-params(24)*params(7)*params(8)*y(11));
residual(88) = y(11)-params(27)*(y(4)-y(13)-params(11)*(y(5)-y(14)));
residual(89) = params(4)*y(5)-(params(2)*y(6)+params(20)*y(11));
residual(90) = params(4)*y(14)-(params(2)*y(15)-params(21)*y(11));
residual(91) = y(11)+y(20);
residual(92) = y(7)-(y(6)+params(5)*params(20)*y(11));
residual(93) = y(8)-(y(6)+(-params(5))*(1-params(20))*y(11));
residual(94) = y(16)-(y(15)+params(5)*(1-params(21))*y(11));
residual(95) = y(17)-(y(15)+params(21)*(-params(5))*y(11));
residual(96) = y(9)-(y(4)-y(1));
residual(97) = y(18)-(y(13)-y(2));
residual(98) = y(10)-(y(5)-y(4));
residual(99) = y(19)-(y(14)-y(13));
residual(100) = y(12);
residual(101) = y(21);
residual(102) = y(22)-(params(7)*y(4)+(1-params(7))*y(13));
residual(103) = y(23)-(params(7)*y(5)+(1-params(7))*y(14));
residual(104) = y(24)-(params(7)*y(6)+(1-params(7))*y(15));
residual(105) = y(27)-(params(7)*y(12)+(1-params(7))*y(21));
residual(106) = y(25)-(params(7)*y(7)+(1-params(7))*y(16));
residual(107) = y(26)-(params(7)*y(8)+(1-params(7))*y(17));
residual(108) = y(28)-(params(7)*y(10)+(1-params(7))*y(19));
residual(109) = y(30)-(y(30)*params(1)+params(22)*((params(3)+params(27)*params(28))*y(29)-params(11)*params(27)*params(28)*y(31)+(params(25)-params(27)*params(28))*(y(39)-params(11)*y(41))-(1+params(3))*y(1)));
residual(110) = y(40)-(params(1)*y(40)+params(23)*((params(3)+params(27)*params(29))*y(39)-params(11)*params(27)*params(29)*y(41)+(params(25)-params(27)*params(29))*(y(29)-params(11)*y(31))-(1+params(3))*y(2)));
residual(111) = y(29)-(y(29)-T(5)*(y(38)-y(30)));
residual(112) = y(39)-(y(39)-T(7)*(y(47)-y(40)));
residual(113) = y(37)-params(27)*(y(29)-y(39)-params(11)*(y(31)-y(41)));
residual(114) = y(37)+y(48);
residual(115) = y(32)-(y(29)-y(1));
residual(116) = y(42)-(y(39)-y(2));
residual(117) = params(25)*(y(29)-params(11)*y(31))-(params(2)*y(33)+params(24)*(1-params(7))*params(8)*y(37));
residual(118) = params(25)*(y(39)-params(11)*y(41))-(params(2)*y(43)-params(24)*params(7)*params(8)*y(37));
residual(119) = y(36)-(y(31)-y(29));
residual(120) = y(46)-(y(41)-y(39));
residual(121) = y(34)-(y(33)+params(5)*params(20)*y(37));
residual(122) = y(35)-(y(33)+(-params(5))*(1-params(20))*y(37));
residual(123) = y(44)-(y(43)+params(5)*(1-params(21))*y(37));
residual(124) = y(45)-(y(43)+params(21)*(-params(5))*y(37));
residual(125) = y(38)-y(54);
residual(126) = y(47)-y(54);
residual(127) = y(55)-(params(7)*y(30)+(1-params(7))*y(40));
residual(128) = y(49)-(params(7)*y(29)+(1-params(7))*y(39));
residual(129) = y(50)-(params(7)*y(31)+(1-params(7))*y(41));
residual(130) = y(51)-(params(7)*y(33)+(1-params(7))*y(43));
residual(131) = y(52)-(params(7)*y(34)+(1-params(7))*y(44));
residual(132) = y(53)-(params(7)*y(35)+(1-params(7))*y(45));
residual(133) = y(56)-(params(7)*y(36)+(1-params(7))*y(46));
residual(134) = y(57)-(y(29)-y(4));
residual(135) = y(58)-(y(31)-y(5));
residual(136) = y(59)-(y(33)-y(6));
residual(137) = y(60)-(y(34)-y(7));
residual(138) = y(61)-(y(35)-y(8));
residual(139) = y(63)-(y(32)-y(9));
residual(140) = y(62)-(y(36)-y(10));
residual(141) = y(64)-(y(37)-y(11));
residual(142) = y(65)-(y(38)-y(12));
residual(143) = y(66)-(y(39)-y(13));
residual(144) = y(67)-(y(41)-y(14));
residual(145) = y(68)-(y(43)-y(15));
residual(146) = y(69)-(y(44)-y(16));
residual(147) = y(70)-(y(45)-y(17));
residual(148) = y(72)-(y(42)-y(18));
residual(149) = y(71)-(y(46)-y(19));
residual(150) = y(73)-(y(48)-y(20));
residual(151) = y(74)-(y(47)-y(21));
residual(152) = y(75)-(params(7)*y(57)+(1-params(7))*y(66));
residual(153) = y(76)-(params(7)*y(58)+(1-params(7))*y(67));
residual(154) = y(77)-(params(7)*y(59)+(1-params(7))*y(68));
residual(155) = y(80)-(y(38)-y(27));
residual(156) = y(83)-(y(58)-y(67));
residual(157) = y(81)-(params(7)*y(63)+(1-params(7))*y(72));
residual(158) = y(82)-(params(7)*y(62)+(1-params(7))*y(71));
residual(159) = y(78)-(params(7)*y(60)+(1-params(7))*y(69));
residual(160) = y(79)-(params(7)*y(61)+(1-params(7))*y(70));
residual(161) = y(1)-(params(31)*y(1)-x(1));
residual(162) = y(2)-(params(31)*y(2)-x(2));
residual(163) = y(3)-(params(7)*y(1)+(1-params(7))*y(2));
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
