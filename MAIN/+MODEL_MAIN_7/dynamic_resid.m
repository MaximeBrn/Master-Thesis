function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = MODEL_MAIN_7.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(146, 1);
residual(1) = y(155)*(-params(7))+y(153)+y(112)+y(106)*(-(params(22)*(-(1+params(3)))))+(1+params(3))*y(100)+y(96)+(1+params(3))*y(84)+T(5)*(-(1+params(3)))*y(4)+params(32)*y(167)*(-params(31));
residual(2) = y(155)*T(6)+y(154)+y(113)+y(107)*(-(params(23)*(-(1+params(3)))))+(1+params(3))*y(101)+y(97)+(1+params(3))*y(85)+T(5)*(-(1+params(3)))*y(5)+params(32)*(-params(31))*y(168);
residual(3) = y(155);
residual(4) = y(128)+(-params(7))*y(102)+y(100)*(-params(3))+y(98)+y(88)*(-params(27))+params(25)*y(86)+y(84)*(-params(3))-y(96)+T(5)*params(3)*y(4);
residual(5) = y(129)+(-params(7))*y(103)+params(4)*y(89)+y(88)*(-(params(27)*(-params(11))))+y(86)*params(25)*(-params(11))-y(98);
residual(6) = y(130)+(-params(7))*y(104)+y(89)*(-params(2))+y(86)*(-params(2))+y(84)*(-params(2))-y(92)-y(93);
residual(7) = y(92)+y(131);
residual(8) = y(93)+y(132);
residual(9) = y(96)+y(133);
residual(10) = y(98)+y(134);
residual(11) = y(135)+y(95)*(-(params(21)*(-params(5))))+y(94)*(-(params(5)*(1-params(21))))+y(93)*(-((-params(5))*(1-params(20))))+y(92)*(-(params(20)*params(5)))+y(91)+params(21)*y(90)+y(89)*(-params(20))+y(88)+params(24)*params(8)*params(7)*y(87)+y(86)*(-(params(8)*(1-params(7))*params(24)))+params(21)*y(85)+y(84)*(-params(20));
residual(12) = y(136)+y(100)+(-params(7))*y(105);
residual(13) = y(137)+T(6)*y(102)+y(101)*(-params(3))+y(99)+params(27)*y(88)+params(25)*y(87)+y(85)*(-params(3))-y(97)+T(5)*params(3)*y(5);
residual(14) = y(138)+T(6)*y(103)+params(4)*y(90)+y(88)*(-(params(11)*params(27)))+params(25)*(-params(11))*y(87)-y(99);
residual(15) = y(139)+T(6)*y(104)+(-params(2))*y(90)+(-params(2))*y(87)+y(85)*(-params(2))-y(94)-y(95);
residual(16) = y(94)+y(140);
residual(17) = y(95)+y(141);
residual(18) = y(97)+y(142);
residual(19) = y(99)+y(143);
residual(20) = y(91)+y(144);
residual(21) = y(145)+y(101)+T(6)*y(105);
residual(22) = y(102);
residual(23) = y(103);
residual(24) = y(104);
residual(25) = y(105)+y(149);
residual(26) = (-params(7))*y(125)+y(116)+params(25)*y(114)+(-params(27))*y(110)+T(4)*y(109)+y(108)+y(107)*(-(params(23)*(params(25)-params(27)*params(29))))+y(106)*(-(params(22)*(params(3)+params(27)*params(28))))+T(5)*(-y(8))+T(5)*y(9)*(-T(4))-y(112)-y(128);
residual(27) = params(7)*params(6)/params(22)*2*y(36)+(-params(7))*y(124)+y(106)+T(5)*y(6)*(-params(1))+T(5)*y(8)*(-T(1));
residual(28) = (-params(7))*y(126)+params(25)*(-params(11))*y(114)+(-(params(27)*(-params(11))))*y(110)+y(109)*(-(params(11)*T(4)))+(-params(11))*y(108)+y(107)*(-(params(23)*(params(25)-params(27)*params(29))*(-params(11))))+y(106)*(-(params(22)*(-(params(11)*params(27)*params(28)))))+T(5)*params(11)*y(8)+T(5)*y(9)*(-(T(4)*(-params(11))))-y(116)-y(129);
residual(29) = y(112)-y(133);
residual(30) = (-params(7))*y(127)+(-params(2))*y(114)-y(118)-y(119)-y(130);
residual(31) = y(118)-y(131);
residual(32) = y(119)-y(132);
residual(33) = y(116)-y(134);
residual(34) = (-(params(21)*(-params(5))))*y(121)+(-(params(5)*(1-params(21))))*y(120)+(-((-params(5))*(1-params(20))))*y(119)+(-(params(20)*params(5)))*y(118)+params(24)*params(8)*params(7)*y(115)+(-(params(8)*(1-params(7))*params(24)))*y(114)+y(110)+y(111)-y(135);
residual(35) = y(122)+T(1)*y(108)-y(136)-y(149);
residual(36) = T(6)*y(125)+y(117)+params(25)*y(115)+params(27)*y(110)+y(109)+T(2)*y(108)+y(107)*(-(params(23)*(params(3)+params(27)*params(29))))+y(106)*(-(params(22)*(params(25)-params(27)*params(28))))+T(5)*y(8)*(-T(2))+T(5)*(-y(9))-y(113)-y(137);
residual(37) = (1-params(7))*params(6)/params(23)*2*y(46)+T(6)*y(124)+y(107)+T(5)*(-params(1))*y(7)+T(5)*y(9)*(-T(3));
residual(38) = T(6)*y(126)+params(25)*(-params(11))*y(115)+(-(params(11)*params(27)))*y(110)+(-params(11))*y(109)+y(108)*(-(params(11)*T(2)))+y(107)*(-(params(23)*(-(params(11)*params(27)*params(29)))))+y(106)*(-(params(22)*(params(25)-params(27)*params(28))*(-params(11))))+T(5)*y(8)*(-(T(2)*(-params(11))))+T(5)*params(11)*y(9)-y(117)-y(138);
residual(39) = y(113)-y(142);
residual(40) = T(6)*y(127)+(-params(2))*y(115)-y(120)-y(121)-y(139);
residual(41) = y(120)-y(140);
residual(42) = y(121)-y(141);
residual(43) = y(117)-y(143);
residual(44) = y(123)+T(3)*y(109)-y(145);
residual(45) = y(111)-y(144);
residual(46) = y(125);
residual(47) = y(126);
residual(48) = y(127);
residual(49) = y(152)+(-y(123))-y(122)+params(32)*y(166)*(-0.7);
residual(50) = y(124);
residual(51) = y(128)+(-params(7))*y(146);
residual(52) = y(67)*params(3)*params(11)*(1-params(11))*(1-params(7))*2*params(7)+params(11)*params(7)*(params(4)+params(3)*params(11))*2*y(61)+y(129)+(-params(7))*y(147)-y(150);
residual(53) = y(130)+(-params(7))*y(148);
residual(54) = y(131);
residual(55) = y(132);
residual(56) = y(134);
residual(57) = y(133)+(-params(7))*y(151);
residual(58) = y(135)+(1-params(11))*params(7)*(1-params(7))*(1+params(3)*(1-params(11)))*2*y(67)+(y(61)-y(70))*params(3)*params(11)*(1-params(11))*(1-params(7))*2*params(7);
residual(59) = y(136);
residual(60) = y(137)+T(6)*y(146);
residual(61) = (params(4)+params(3)*params(11))*params(11)*(1-params(7))*2*y(70)-y(67)*params(3)*params(11)*(1-params(11))*(1-params(7))*2*params(7)+y(150)+y(138)+T(6)*y(147);
residual(62) = y(139)+T(6)*y(148);
residual(63) = y(140);
residual(64) = y(141);
residual(65) = y(143);
residual(66) = y(142)+T(6)*y(151);
residual(67) = y(144);
residual(68) = y(145);
residual(69) = y(146);
residual(70) = y(147)+y(80)*params(3)*2*(1-params(11));
residual(71) = y(148)+(1-params(11))*(params(2)+params(3)*(1-params(11)))*2*y(80)+y(79)*params(3)*2*(1-params(11));
residual(72) = y(149);
residual(73) = y(151);
residual(74) = y(150);
residual(75) = (-(params(2)*y(15)+params(3)*y(13)+params(20)*y(20)-(1+params(3))*y(10)));
residual(76) = (-(params(2)*y(24)+params(3)*y(22)-y(20)*params(21)-(1+params(3))*y(11)));
residual(77) = params(25)*(y(13)-params(11)*y(14))-(params(2)*y(15)+y(20)*params(8)*(1-params(7))*params(24));
residual(78) = params(25)*(y(22)-params(11)*y(23))-(params(2)*y(24)-y(20)*params(24)*params(8)*params(7));
residual(79) = y(20)-params(27)*(y(13)-y(22)-params(11)*(y(14)-y(23)));
residual(80) = y(14)*params(4)-(params(2)*y(15)+params(20)*y(20));
residual(81) = y(23)*params(4)-(params(2)*y(24)-y(20)*params(21));
residual(82) = y(20)+y(29);
residual(83) = y(16)-(y(15)+y(20)*params(20)*params(5));
residual(84) = y(17)-(y(15)+y(20)*(-params(5))*(1-params(20)));
residual(85) = y(25)-(y(24)+y(20)*params(5)*(1-params(21)));
residual(86) = y(26)-(y(24)+y(20)*params(21)*(-params(5)));
residual(87) = y(18)-(y(13)-y(10));
residual(88) = y(27)-(y(22)-y(11));
residual(89) = y(19)-(y(14)-y(13));
residual(90) = y(28)-(y(23)-y(22));
residual(91) = y(21)-((1+params(3))*(y(156)-y(10))-params(3)*(y(158)-y(13)));
residual(92) = y(30)-((1+params(3))*(y(157)-y(11))-params(3)*(y(159)-y(22)));
residual(93) = y(31)-(y(13)*params(7)+y(22)*(1-params(7)));
residual(94) = y(32)-(y(14)*params(7)+(1-params(7))*y(23));
residual(95) = y(33)-(y(15)*params(7)+y(24)*(1-params(7)));
residual(96) = y(34)-(params(7)*y(21)+(1-params(7))*y(30));
residual(97) = y(36)-(params(1)*y(161)+params(22)*((params(3)+params(27)*params(28))*y(35)-params(11)*params(27)*params(28)*y(37)+(params(25)-params(27)*params(28))*(y(45)-params(11)*y(47))-(1+params(3))*y(10)));
residual(98) = y(46)-(params(1)*y(164)+params(23)*(y(45)*(params(3)+params(27)*params(29))-y(47)*params(11)*params(27)*params(29)+(params(25)-params(27)*params(29))*(y(35)-params(11)*y(37))-(1+params(3))*y(11)));
residual(99) = y(35)-(y(160)-params(11)*(y(162)-y(37))-T(1)*(y(44)-y(161))+T(2)*(y(163)-y(45)-params(11)*(y(165)-y(47))));
residual(100) = y(45)-(y(163)-params(11)*(y(165)-y(47))-T(3)*(y(53)-y(164))+T(4)*(y(160)-y(35)-params(11)*(y(162)-y(37))));
residual(101) = y(43)-params(27)*(y(35)-y(45)-params(11)*(y(37)-y(47)));
residual(102) = y(43)+y(54);
residual(103) = y(38)-(y(35)-y(10));
residual(104) = y(48)-(y(45)-y(11));
residual(105) = params(25)*(y(35)-params(11)*y(37))-(params(2)*y(39)+params(8)*(1-params(7))*params(24)*y(43));
residual(106) = params(25)*(y(45)-params(11)*y(47))-(params(2)*y(49)-params(24)*params(8)*params(7)*y(43));
residual(107) = y(42)-(y(37)-y(35));
residual(108) = y(52)-(y(47)-y(45));
residual(109) = y(40)-(y(39)+params(20)*params(5)*y(43));
residual(110) = y(41)-(y(39)+(-params(5))*(1-params(20))*y(43));
residual(111) = y(50)-(y(49)+params(5)*(1-params(21))*y(43));
residual(112) = y(51)-(y(49)+params(21)*(-params(5))*y(43));
residual(113) = y(44)-y(58);
residual(114) = y(53)-y(58);
residual(115) = y(59)-(params(7)*y(36)+(1-params(7))*y(46));
residual(116) = y(55)-(params(7)*y(35)+(1-params(7))*y(45));
residual(117) = y(56)-(params(7)*y(37)+(1-params(7))*y(47));
residual(118) = y(57)-(params(7)*y(39)+(1-params(7))*y(49));
residual(119) = y(60)-(y(35)-y(13));
residual(120) = y(61)-(y(37)-y(14));
residual(121) = y(62)-(y(39)-y(15));
residual(122) = y(63)-(y(40)-y(16));
residual(123) = y(64)-(y(41)-y(17));
residual(124) = y(66)-(y(38)-y(18));
residual(125) = y(65)-(y(42)-y(19));
residual(126) = y(67)-(y(43)-y(20));
residual(127) = y(68)-(y(44)-y(21));
residual(128) = y(69)-(y(45)-y(22));
residual(129) = y(70)-(y(47)-y(23));
residual(130) = y(71)-(y(49)-y(24));
residual(131) = y(72)-(y(50)-y(25));
residual(132) = y(73)-(y(51)-y(26));
residual(133) = y(75)-(y(48)-y(27));
residual(134) = y(74)-(y(52)-y(28));
residual(135) = y(76)-(y(54)-y(29));
residual(136) = y(77)-(y(53)-y(30));
residual(137) = y(78)-(params(7)*y(60)+(1-params(7))*y(69));
residual(138) = y(79)-(params(7)*y(61)+(1-params(7))*y(70));
residual(139) = y(80)-(params(7)*y(62)+(1-params(7))*y(71));
residual(140) = y(81)-(y(44)-y(34));
residual(141) = y(83)-(y(61)-y(70));
residual(142) = y(82)-(params(7)*y(66)+(1-params(7))*y(75));
residual(143) = y(58)-0.7*y(3);
residual(144) = y(10)-(params(31)*y(1)-x(it_, 1));
residual(145) = y(11)-(params(31)*y(2)-x(it_, 2));
residual(146) = y(12)-(y(10)*params(7)+y(11)*(1-params(7)));

end
