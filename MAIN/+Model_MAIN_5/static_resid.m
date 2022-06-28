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
    T = MOdel_main_5.static_resid_tt(T, y, x, params);
end
residual = zeros(141, 1);
residual(1) = y(140)+y(101)+y(95)*(-(params(22)*(-(1+params(3)))))+(1+params(3))*y(89)+y(85)+(1+params(3))*y(73)+T(1)*(-(1+params(3)))*y(89)+params(31)*y(140)*(-params(30));
residual(2) = y(141)+y(102)+y(96)*(-((-(1+params(3)))*params(23)))+(1+params(3))*y(90)+y(86)+(1+params(3))*y(74)+T(1)*(-(1+params(3)))*y(90)+params(31)*(-params(30))*y(141);
residual(3) = y(117)+y(91)*(-params(7))+y(89)*(-params(3))+y(87)+y(77)*(-params(27))+params(25)*y(75)+y(73)*(-params(3))-y(85)+T(1)*params(3)*y(89);
residual(4) = y(118)+(-params(7))*y(92)+params(4)*y(78)+y(77)*(-(params(27)*(-params(11))))+y(75)*params(25)*(-params(11))-y(87);
residual(5) = y(119)+(-params(7))*y(93)+y(78)*(-params(2))+y(75)*(-params(2))+y(73)*(-params(2))-y(81)-y(82);
residual(6) = y(81)+y(120);
residual(7) = y(82)+y(121);
residual(8) = y(85)+y(122);
residual(9) = y(87)+y(123);
residual(10) = y(124)+y(84)*(-(params(21)*(-params(5))))+y(83)*(-(params(5)*(1-params(21))))+y(82)*(-((-params(5))*(1-params(20))))+y(81)*(-(params(5)*params(20)))+y(80)+params(21)*y(79)+y(78)*(-params(20))+y(77)+params(24)*params(7)*params(8)*y(76)+y(75)*(-(params(24)*params(8)*(1-params(7))))+y(74)*params(21)+y(73)*(-params(20));
residual(11) = y(125)+y(89)+(-params(7))*y(94);
residual(12) = y(126)+y(91)*T(2)+y(90)*(-params(3))+y(88)+y(77)*params(27)+params(25)*y(76)+y(74)*(-params(3))-y(86)+T(1)*params(3)*y(90);
residual(13) = y(127)+y(92)*T(2)+params(4)*y(79)+y(77)*(-(params(27)*params(11)))+params(25)*(-params(11))*y(76)-y(88);
residual(14) = y(128)+y(93)*T(2)+(-params(2))*y(79)+(-params(2))*y(76)+y(74)*(-params(2))-y(83)-y(84);
residual(15) = y(83)+y(129);
residual(16) = y(84)+y(130);
residual(17) = y(86)+y(131);
residual(18) = y(88)+y(132);
residual(19) = y(80)+y(133);
residual(20) = y(134)+y(90)+y(94)*T(2);
residual(21) = y(91);
residual(22) = y(92);
residual(23) = y(93);
residual(24) = y(94)+y(138);
residual(25) = (-params(7))*y(114)+y(105)+params(25)*y(103)+(-params(27))*y(99)+T(3)*y(98)+y(97)+y(96)*(-(params(23)*(params(25)-params(27)*params(29))))+y(95)*(-(params(22)*(params(3)+params(27)*params(28))))+T(1)*(-y(97))+T(1)*y(98)*(-T(3))-y(101)-y(117);
residual(26) = 2*y(26)+(-params(7))*y(113)+y(95)+T(1)*y(95)*(-params(1))+T(1)*y(97)*(-T(4));
residual(27) = (-params(7))*y(115)+params(25)*(-params(11))*y(103)+(-(params(27)*(-params(11))))*y(99)+y(98)*(-(params(11)*T(3)))+(-params(11))*y(97)+y(96)*(-(params(23)*(-params(11))*(params(25)-params(27)*params(29))))+y(95)*(-(params(22)*(-(params(11)*params(27)*params(28)))))+T(1)*params(11)*y(97)+T(1)*y(98)*(-((-params(11))*T(3)))-y(105)-y(118);
residual(28) = y(101)-y(122);
residual(29) = (-params(7))*y(116)+(-params(2))*y(103)-y(107)-y(108)-y(119);
residual(30) = y(107)-y(120);
residual(31) = y(108)-y(121);
residual(32) = y(105)-y(123);
residual(33) = (-(params(21)*(-params(5))))*y(110)+(-(params(5)*(1-params(21))))*y(109)+(-((-params(5))*(1-params(20))))*y(108)+(-(params(5)*params(20)))*y(107)+params(24)*params(7)*params(8)*y(104)+(-(params(24)*params(8)*(1-params(7))))*y(103)+y(99)+y(100)-y(124);
residual(34) = y(111)+y(97)*T(4)-y(125)-y(138);
residual(35) = T(2)*y(114)+y(106)+params(25)*y(104)+params(27)*y(99)+y(98)+y(97)*T(5)+y(96)*(-(params(23)*(params(3)+params(27)*params(29))))+y(95)*(-(params(22)*(params(25)-params(27)*params(28))))+T(1)*y(97)*(-T(5))+T(1)*(-y(98))-y(102)-y(126);
residual(36) = 2*y(36)+T(2)*y(113)+y(96)+T(1)*y(96)*(-params(1))+T(1)*y(98)*(-T(6));
residual(37) = T(2)*y(115)+params(25)*(-params(11))*y(104)+(-(params(27)*params(11)))*y(99)+(-params(11))*y(98)+y(97)*(-(params(11)*T(5)))+y(96)*(-(params(23)*(-(params(11)*params(27)*params(29)))))+y(95)*(-(params(22)*(-params(11))*(params(25)-params(27)*params(28))))+T(1)*y(97)*(-((-params(11))*T(5)))+T(1)*params(11)*y(98)-y(106)-y(127);
residual(38) = y(102)-y(131);
residual(39) = T(2)*y(116)+(-params(2))*y(104)-y(109)-y(110)-y(128);
residual(40) = y(109)-y(129);
residual(41) = y(110)-y(130);
residual(42) = y(106)-y(132);
residual(43) = y(112)+y(98)*T(6)-y(134);
residual(44) = y(100)-y(133);
residual(45) = y(114);
residual(46) = y(115);
residual(47) = y(116);
residual(48) = (-y(112))-y(111);
residual(49) = y(113);
residual(50) = y(117)+(-params(7))*y(135);
residual(51) = y(57)+2*y(51)+y(118)+(-params(7))*y(136)-y(139);
residual(52) = y(119)+(-params(7))*y(137);
residual(53) = y(120);
residual(54) = y(121);
residual(55) = y(123);
residual(56) = y(122);
residual(57) = y(124)+y(51)-y(60)+2*y(57);
residual(58) = y(125);
residual(59) = y(126)+T(2)*y(135);
residual(60) = 2*y(60)-y(57)+y(139)+y(127)+T(2)*y(136);
residual(61) = y(128)+T(2)*y(137);
residual(62) = y(129);
residual(63) = y(130);
residual(64) = y(132);
residual(65) = y(131);
residual(66) = y(133);
residual(67) = y(134);
residual(68) = y(135);
residual(69) = y(136)+y(70);
residual(70) = y(137)+y(69)+2*y(70);
residual(71) = y(138);
residual(72) = y(139);
residual(73) = (-(params(2)*y(5)+params(3)*y(3)+params(20)*y(10)-(1+params(3))*y(1)));
residual(74) = (-(params(2)*y(14)+params(3)*y(12)-params(21)*y(10)-(1+params(3))*y(2)));
residual(75) = params(25)*(y(3)-params(11)*y(4))-(params(2)*y(5)+params(24)*params(8)*(1-params(7))*y(10));
residual(76) = params(25)*(y(12)-params(11)*y(13))-(params(2)*y(14)-params(24)*params(7)*params(8)*y(10));
residual(77) = y(10)-params(27)*(y(3)-y(12)-params(11)*(y(4)-y(13)));
residual(78) = params(4)*y(4)-(params(2)*y(5)+params(20)*y(10));
residual(79) = params(4)*y(13)-(params(2)*y(14)-params(21)*y(10));
residual(80) = y(10)+y(19);
residual(81) = y(6)-(y(5)+params(5)*params(20)*y(10));
residual(82) = y(7)-(y(5)+(-params(5))*(1-params(20))*y(10));
residual(83) = y(15)-(y(14)+params(5)*(1-params(21))*y(10));
residual(84) = y(16)-(y(14)+params(21)*(-params(5))*y(10));
residual(85) = y(8)-(y(3)-y(1));
residual(86) = y(17)-(y(12)-y(2));
residual(87) = y(9)-(y(4)-y(3));
residual(88) = y(18)-(y(13)-y(12));
residual(89) = y(11);
residual(90) = y(20);
residual(91) = y(21)-(params(7)*y(3)+(1-params(7))*y(12));
residual(92) = y(22)-(params(7)*y(4)+(1-params(7))*y(13));
residual(93) = y(23)-(params(7)*y(5)+(1-params(7))*y(14));
residual(94) = y(24)-(params(7)*y(11)+(1-params(7))*y(20));
residual(95) = y(26)-(y(26)*params(1)+params(22)*((params(3)+params(27)*params(28))*y(25)-params(11)*params(27)*params(28)*y(27)+(params(25)-params(27)*params(28))*(y(35)-params(11)*y(37))-(1+params(3))*y(1)));
residual(96) = y(36)-(params(1)*y(36)+params(23)*((params(3)+params(27)*params(29))*y(35)-params(11)*params(27)*params(29)*y(37)+(params(25)-params(27)*params(29))*(y(25)-params(11)*y(27))-(1+params(3))*y(2)));
residual(97) = y(25)-(y(25)-T(4)*(y(34)-y(26)));
residual(98) = y(35)-(y(35)-T(6)*(y(43)-y(36)));
residual(99) = y(33)-params(27)*(y(25)-y(35)-params(11)*(y(27)-y(37)));
residual(100) = y(33)+y(44);
residual(101) = y(28)-(y(25)-y(1));
residual(102) = y(38)-(y(35)-y(2));
residual(103) = params(25)*(y(25)-params(11)*y(27))-(params(2)*y(29)+params(24)*params(8)*(1-params(7))*y(33));
residual(104) = params(25)*(y(35)-params(11)*y(37))-(params(2)*y(39)-params(24)*params(7)*params(8)*y(33));
residual(105) = y(32)-(y(27)-y(25));
residual(106) = y(42)-(y(37)-y(35));
residual(107) = y(30)-(y(29)+params(5)*params(20)*y(33));
residual(108) = y(31)-(y(29)+(-params(5))*(1-params(20))*y(33));
residual(109) = y(40)-(y(39)+params(5)*(1-params(21))*y(33));
residual(110) = y(41)-(y(39)+params(21)*(-params(5))*y(33));
residual(111) = y(34)-y(48);
residual(112) = y(43)-y(48);
residual(113) = y(49)-(params(7)*y(26)+(1-params(7))*y(36));
residual(114) = y(45)-(params(7)*y(25)+(1-params(7))*y(35));
residual(115) = y(46)-(params(7)*y(27)+(1-params(7))*y(37));
residual(116) = y(47)-(params(7)*y(29)+(1-params(7))*y(39));
residual(117) = y(50)-(y(25)-y(3));
residual(118) = y(51)-(y(27)-y(4));
residual(119) = y(52)-(y(29)-y(5));
residual(120) = y(53)-(y(30)-y(6));
residual(121) = y(54)-(y(31)-y(7));
residual(122) = y(56)-(y(28)-y(8));
residual(123) = y(55)-(y(32)-y(9));
residual(124) = y(57)-(y(33)-y(10));
residual(125) = y(58)-(y(34)-y(11));
residual(126) = y(59)-(y(35)-y(12));
residual(127) = y(60)-(y(37)-y(13));
residual(128) = y(61)-(y(39)-y(14));
residual(129) = y(62)-(y(40)-y(15));
residual(130) = y(63)-(y(41)-y(16));
residual(131) = y(65)-(y(38)-y(17));
residual(132) = y(64)-(y(42)-y(18));
residual(133) = y(66)-(y(44)-y(19));
residual(134) = y(67)-(y(43)-y(20));
residual(135) = y(68)-(params(7)*y(50)+(1-params(7))*y(59));
residual(136) = y(69)-(params(7)*y(51)+(1-params(7))*y(60));
residual(137) = y(70)-(params(7)*y(52)+(1-params(7))*y(61));
residual(138) = y(71)-(y(34)-y(24));
residual(139) = y(72)-(y(51)-y(60));
residual(140) = y(1)-(params(30)*y(1)-x(1));
residual(141) = y(2)-(params(30)*y(2)-x(2));
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
