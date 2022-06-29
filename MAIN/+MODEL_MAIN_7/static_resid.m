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
    T = MODEL_MAIN_7.static_resid_tt(T, y, x, params);
end
residual = zeros(146, 1);
residual(1) = y(146)*(-params(7))+y(144)+y(103)+y(97)*(-(params(22)*(-(1+params(3)))))+(1+params(3))*y(91)+y(87)+(1+params(3))*y(75)+T(1)*(-(1+params(3)))*y(91)+params(32)*y(144)*(-params(31));
residual(2) = y(146)*T(2)+y(145)+y(104)+y(98)*(-((-(1+params(3)))*params(23)))+(1+params(3))*y(92)+y(88)+(1+params(3))*y(76)+T(1)*(-(1+params(3)))*y(92)+params(32)*(-params(31))*y(145);
residual(3) = y(146);
residual(4) = y(119)+(-params(7))*y(93)+y(91)*(-params(3))+y(89)+y(79)*(-params(27))+params(25)*y(77)+y(75)*(-params(3))-y(87)+T(1)*params(3)*y(91);
residual(5) = y(120)+(-params(7))*y(94)+params(4)*y(80)+y(79)*(-(params(27)*(-params(11))))+y(77)*params(25)*(-params(11))-y(89);
residual(6) = y(121)+(-params(7))*y(95)+y(80)*(-params(2))+y(77)*(-params(2))+y(75)*(-params(2))-y(83)-y(84);
residual(7) = y(83)+y(122);
residual(8) = y(84)+y(123);
residual(9) = y(87)+y(124);
residual(10) = y(89)+y(125);
residual(11) = y(126)+y(86)*(-(params(21)*(-params(5))))+y(85)*(-(params(5)*(1-params(21))))+y(84)*(-((-params(5))*(1-params(20))))+y(83)*(-(params(5)*params(20)))+y(82)+params(21)*y(81)+y(80)*(-params(20))+y(79)+params(24)*params(7)*params(8)*y(78)+y(77)*(-(params(24)*(1-params(7))*params(8)))+y(76)*params(21)+y(75)*(-params(20));
residual(12) = y(127)+y(91)+(-params(7))*y(96);
residual(13) = y(128)+T(2)*y(93)+y(92)*(-params(3))+y(90)+y(79)*params(27)+params(25)*y(78)+y(76)*(-params(3))-y(88)+T(1)*params(3)*y(92);
residual(14) = y(129)+T(2)*y(94)+params(4)*y(81)+y(79)*(-(params(27)*params(11)))+params(25)*(-params(11))*y(78)-y(90);
residual(15) = y(130)+T(2)*y(95)+(-params(2))*y(81)+(-params(2))*y(78)+y(76)*(-params(2))-y(85)-y(86);
residual(16) = y(85)+y(131);
residual(17) = y(86)+y(132);
residual(18) = y(88)+y(133);
residual(19) = y(90)+y(134);
residual(20) = y(82)+y(135);
residual(21) = y(136)+y(92)+T(2)*y(96);
residual(22) = y(93);
residual(23) = y(94);
residual(24) = y(95);
residual(25) = y(96)+y(140);
residual(26) = (-params(7))*y(116)+y(107)+params(25)*y(105)+(-params(27))*y(101)+T(3)*y(100)+y(99)+y(98)*(-(params(23)*(params(25)-params(27)*params(29))))+y(97)*(-(params(22)*(params(3)+params(27)*params(28))))+T(1)*(-y(99))+T(1)*y(100)*(-T(3))-y(103)-y(119);
residual(27) = params(7)*params(6)/params(22)*2*y(27)+(-params(7))*y(115)+y(97)+T(1)*y(97)*(-params(1))+T(1)*y(99)*(-T(4));
residual(28) = (-params(7))*y(117)+params(25)*(-params(11))*y(105)+(-(params(27)*(-params(11))))*y(101)+y(100)*(-(params(11)*T(3)))+(-params(11))*y(99)+y(98)*(-(params(23)*(-params(11))*(params(25)-params(27)*params(29))))+y(97)*(-(params(22)*(-(params(11)*params(27)*params(28)))))+T(1)*params(11)*y(99)+T(1)*y(100)*(-((-params(11))*T(3)))-y(107)-y(120);
residual(29) = y(103)-y(124);
residual(30) = (-params(7))*y(118)+(-params(2))*y(105)-y(109)-y(110)-y(121);
residual(31) = y(109)-y(122);
residual(32) = y(110)-y(123);
residual(33) = y(107)-y(125);
residual(34) = (-(params(21)*(-params(5))))*y(112)+(-(params(5)*(1-params(21))))*y(111)+(-((-params(5))*(1-params(20))))*y(110)+(-(params(5)*params(20)))*y(109)+params(24)*params(7)*params(8)*y(106)+(-(params(24)*(1-params(7))*params(8)))*y(105)+y(101)+y(102)-y(126);
residual(35) = y(113)+y(99)*T(4)-y(127)-y(140);
residual(36) = T(2)*y(116)+y(108)+params(25)*y(106)+params(27)*y(101)+y(100)+y(99)*T(5)+y(98)*(-(params(23)*(params(3)+params(27)*params(29))))+y(97)*(-(params(22)*(params(25)-params(27)*params(28))))+T(1)*y(99)*(-T(5))+T(1)*(-y(100))-y(104)-y(128);
residual(37) = (1-params(7))*params(6)/params(23)*2*y(37)+T(2)*y(115)+y(98)+T(1)*y(98)*(-params(1))+T(1)*y(100)*(-T(6));
residual(38) = T(2)*y(117)+params(25)*(-params(11))*y(106)+(-(params(27)*params(11)))*y(101)+(-params(11))*y(100)+y(99)*(-(params(11)*T(5)))+y(98)*(-(params(23)*(-(params(11)*params(27)*params(29)))))+y(97)*(-(params(22)*(-params(11))*(params(25)-params(27)*params(28))))+T(1)*y(99)*(-((-params(11))*T(5)))+T(1)*params(11)*y(100)-y(108)-y(129);
residual(39) = y(104)-y(133);
residual(40) = T(2)*y(118)+(-params(2))*y(106)-y(111)-y(112)-y(130);
residual(41) = y(111)-y(131);
residual(42) = y(112)-y(132);
residual(43) = y(108)-y(134);
residual(44) = y(114)+y(100)*T(6)-y(136);
residual(45) = y(102)-y(135);
residual(46) = y(116);
residual(47) = y(117);
residual(48) = y(118);
residual(49) = y(143)+(-y(114))-y(113)+params(32)*y(143)*(-0.7);
residual(50) = y(115);
residual(51) = y(119)+(-params(7))*y(137);
residual(52) = y(58)*params(3)*params(11)*(1-params(11))*(1-params(7))*2*params(7)+params(7)*params(11)*(params(4)+params(3)*params(11))*2*y(52)+y(120)+(-params(7))*y(138)-y(141);
residual(53) = y(121)+(-params(7))*y(139);
residual(54) = y(122);
residual(55) = y(123);
residual(56) = y(125);
residual(57) = y(124)+(-params(7))*y(142);
residual(58) = y(126)+(1-params(11))*params(7)*(1-params(7))*(1+params(3)*(1-params(11)))*2*y(58)+params(3)*params(11)*(1-params(11))*(1-params(7))*2*params(7)*(y(52)-y(61));
residual(59) = y(127);
residual(60) = y(128)+T(2)*y(137);
residual(61) = (params(4)+params(3)*params(11))*(1-params(7))*params(11)*2*y(61)-y(58)*params(3)*params(11)*(1-params(11))*(1-params(7))*2*params(7)+y(141)+y(129)+T(2)*y(138);
residual(62) = y(130)+T(2)*y(139);
residual(63) = y(131);
residual(64) = y(132);
residual(65) = y(134);
residual(66) = y(133)+T(2)*y(142);
residual(67) = y(135);
residual(68) = y(136);
residual(69) = y(137);
residual(70) = y(138)+y(71)*params(3)*2*(1-params(11));
residual(71) = y(139)+(1-params(11))*(params(2)+params(3)*(1-params(11)))*2*y(71)+params(3)*2*(1-params(11))*y(70);
residual(72) = y(140);
residual(73) = y(142);
residual(74) = y(141);
residual(75) = (-(params(2)*y(6)+params(3)*y(4)+params(20)*y(11)-(1+params(3))*y(1)));
residual(76) = (-(params(2)*y(15)+params(3)*y(13)-params(21)*y(11)-(1+params(3))*y(2)));
residual(77) = params(25)*(y(4)-params(11)*y(5))-(params(2)*y(6)+params(24)*(1-params(7))*params(8)*y(11));
residual(78) = params(25)*(y(13)-params(11)*y(14))-(params(2)*y(15)-params(24)*params(7)*params(8)*y(11));
residual(79) = y(11)-params(27)*(y(4)-y(13)-params(11)*(y(5)-y(14)));
residual(80) = params(4)*y(5)-(params(2)*y(6)+params(20)*y(11));
residual(81) = params(4)*y(14)-(params(2)*y(15)-params(21)*y(11));
residual(82) = y(11)+y(20);
residual(83) = y(7)-(y(6)+params(5)*params(20)*y(11));
residual(84) = y(8)-(y(6)+(-params(5))*(1-params(20))*y(11));
residual(85) = y(16)-(y(15)+params(5)*(1-params(21))*y(11));
residual(86) = y(17)-(y(15)+params(21)*(-params(5))*y(11));
residual(87) = y(9)-(y(4)-y(1));
residual(88) = y(18)-(y(13)-y(2));
residual(89) = y(10)-(y(5)-y(4));
residual(90) = y(19)-(y(14)-y(13));
residual(91) = y(12);
residual(92) = y(21);
residual(93) = y(22)-(params(7)*y(4)+(1-params(7))*y(13));
residual(94) = y(23)-(params(7)*y(5)+(1-params(7))*y(14));
residual(95) = y(24)-(params(7)*y(6)+(1-params(7))*y(15));
residual(96) = y(25)-(params(7)*y(12)+(1-params(7))*y(21));
residual(97) = y(27)-(y(27)*params(1)+params(22)*((params(3)+params(27)*params(28))*y(26)-params(11)*params(27)*params(28)*y(28)+(params(25)-params(27)*params(28))*(y(36)-params(11)*y(38))-(1+params(3))*y(1)));
residual(98) = y(37)-(params(1)*y(37)+params(23)*((params(3)+params(27)*params(29))*y(36)-params(11)*params(27)*params(29)*y(38)+(params(25)-params(27)*params(29))*(y(26)-params(11)*y(28))-(1+params(3))*y(2)));
residual(99) = y(26)-(y(26)-T(4)*(y(35)-y(27)));
residual(100) = y(36)-(y(36)-T(6)*(y(44)-y(37)));
residual(101) = y(34)-params(27)*(y(26)-y(36)-params(11)*(y(28)-y(38)));
residual(102) = y(34)+y(45);
residual(103) = y(29)-(y(26)-y(1));
residual(104) = y(39)-(y(36)-y(2));
residual(105) = params(25)*(y(26)-params(11)*y(28))-(params(2)*y(30)+params(24)*(1-params(7))*params(8)*y(34));
residual(106) = params(25)*(y(36)-params(11)*y(38))-(params(2)*y(40)-params(24)*params(7)*params(8)*y(34));
residual(107) = y(33)-(y(28)-y(26));
residual(108) = y(43)-(y(38)-y(36));
residual(109) = y(31)-(y(30)+params(5)*params(20)*y(34));
residual(110) = y(32)-(y(30)+(-params(5))*(1-params(20))*y(34));
residual(111) = y(41)-(y(40)+params(5)*(1-params(21))*y(34));
residual(112) = y(42)-(y(40)+params(21)*(-params(5))*y(34));
residual(113) = y(35)-y(49);
residual(114) = y(44)-y(49);
residual(115) = y(50)-(params(7)*y(27)+(1-params(7))*y(37));
residual(116) = y(46)-(params(7)*y(26)+(1-params(7))*y(36));
residual(117) = y(47)-(params(7)*y(28)+(1-params(7))*y(38));
residual(118) = y(48)-(params(7)*y(30)+(1-params(7))*y(40));
residual(119) = y(51)-(y(26)-y(4));
residual(120) = y(52)-(y(28)-y(5));
residual(121) = y(53)-(y(30)-y(6));
residual(122) = y(54)-(y(31)-y(7));
residual(123) = y(55)-(y(32)-y(8));
residual(124) = y(57)-(y(29)-y(9));
residual(125) = y(56)-(y(33)-y(10));
residual(126) = y(58)-(y(34)-y(11));
residual(127) = y(59)-(y(35)-y(12));
residual(128) = y(60)-(y(36)-y(13));
residual(129) = y(61)-(y(38)-y(14));
residual(130) = y(62)-(y(40)-y(15));
residual(131) = y(63)-(y(41)-y(16));
residual(132) = y(64)-(y(42)-y(17));
residual(133) = y(66)-(y(39)-y(18));
residual(134) = y(65)-(y(43)-y(19));
residual(135) = y(67)-(y(45)-y(20));
residual(136) = y(68)-(y(44)-y(21));
residual(137) = y(69)-(params(7)*y(51)+(1-params(7))*y(60));
residual(138) = y(70)-(params(7)*y(52)+(1-params(7))*y(61));
residual(139) = y(71)-(params(7)*y(53)+(1-params(7))*y(62));
residual(140) = y(72)-(y(35)-y(25));
residual(141) = y(74)-(y(52)-y(61));
residual(142) = y(73)-(params(7)*y(57)+(1-params(7))*y(66));
residual(143) = y(49)-0.7*y(49);
residual(144) = y(1)-(params(31)*y(1)-x(1));
residual(145) = y(2)-(params(31)*y(2)-x(2));
residual(146) = y(3)-(params(7)*y(1)+(1-params(7))*y(2));
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
