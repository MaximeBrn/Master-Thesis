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
    T = Model_Main_8.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(163, 1);
residual(1) = y(171)*T(5)+y(169)+y(123)+y(117)*(-(params(22)*(-(1+params(3)))))+(1+params(3))*y(108)+y(104)+(1+params(3))*y(92)+T(6)*(-(1+params(3)))*y(3)+params(32)*y(182)*(-params(31));
residual(2) = y(171)*T(7)+y(170)+y(124)+y(118)*(-(params(23)*(-(1+params(3)))))+(1+params(3))*y(109)+y(105)+(1+params(3))*y(93)+T(6)*(-(1+params(3)))*y(4)+params(32)*(-params(31))*y(183);
residual(3) = y(171);
residual(4) = y(142)+T(5)*y(110)+y(108)*(-params(3))+y(106)+y(96)*(-params(27))+params(25)*y(94)+y(92)*(-params(3))-y(104)+T(6)*params(3)*y(3);
residual(5) = y(143)+T(5)*y(111)+params(4)*y(97)+y(96)*(-(params(27)*(-params(11))))+y(94)*params(25)*(-params(11))-y(106);
residual(6) = y(144)+T(5)*y(112)+y(97)*(-params(2))+y(94)*(-params(2))+y(92)*(-params(2))-y(100)-y(101);
residual(7) = y(145)+y(100)+T(5)*y(114);
residual(8) = y(146)+y(101)+T(5)*y(115);
residual(9) = y(104)+y(147);
residual(10) = y(148)+y(106)+T(5)*y(116);
residual(11) = y(149)+y(103)*(-(params(21)*(-params(5))))+y(102)*(-(params(5)*(1-params(21))))+y(101)*(-((-params(5))*(1-params(20))))+y(100)*(-(params(20)*params(5)))+y(99)+params(21)*y(98)+y(97)*(-params(20))+y(96)+params(24)*params(8)*params(7)*y(95)+y(94)*(-(params(8)*(1-params(7))*params(24)))+params(21)*y(93)+y(92)*(-params(20));
residual(12) = y(150)+y(108)+T(5)*y(113);
residual(13) = y(151)+T(7)*y(110)+y(109)*(-params(3))+y(107)+params(27)*y(96)+params(25)*y(95)+y(93)*(-params(3))-y(105)+T(6)*params(3)*y(4);
residual(14) = y(152)+T(7)*y(111)+params(4)*y(98)+y(96)*(-(params(11)*params(27)))+params(25)*(-params(11))*y(95)-y(107);
residual(15) = y(153)+T(7)*y(112)+(-params(2))*y(98)+(-params(2))*y(95)+y(93)*(-params(2))-y(102)-y(103);
residual(16) = y(154)+y(102)+T(7)*y(114);
residual(17) = y(155)+y(103)+T(7)*y(115);
residual(18) = y(105)+y(156);
residual(19) = y(157)+y(107)+T(7)*y(116);
residual(20) = y(99)+y(158);
residual(21) = y(159)+y(109)+T(7)*y(113);
residual(22) = y(110);
residual(23) = y(111);
residual(24) = y(112);
residual(25) = y(114);
residual(26) = y(115);
residual(27) = y(113)+y(163);
residual(28) = y(116);
residual(29) = T(5)*y(136)+y(127)+params(25)*y(125)+(-params(27))*y(121)+T(4)*y(120)+y(119)+y(118)*(-(params(23)*(params(25)-params(27)*params(29))))+y(117)*(-(params(22)*(params(3)+params(27)*params(28))))+T(6)*(-y(7))+T(6)*y(8)*(-T(4))-y(123)-y(142);
residual(30) = params(7)*params(6)/params(22)*2*y(38)+T(5)*y(135)+y(117)+T(6)*y(5)*(-params(1))+T(6)*y(7)*(-T(1));
residual(31) = T(5)*y(137)+params(25)*(-params(11))*y(125)+(-(params(27)*(-params(11))))*y(121)+y(120)*(-(params(11)*T(4)))+(-params(11))*y(119)+y(118)*(-(params(23)*(params(25)-params(27)*params(29))*(-params(11))))+y(117)*(-(params(22)*(-(params(11)*params(27)*params(28)))))+T(6)*params(11)*y(7)+T(6)*y(8)*(-(T(4)*(-params(11))))-y(127)-y(143);
residual(32) = y(123)-y(147);
residual(33) = T(5)*y(138)+(-params(2))*y(125)-y(129)-y(130)-y(144);
residual(34) = y(129)+T(5)*y(139)-y(145);
residual(35) = y(130)+T(5)*y(140)-y(146);
residual(36) = y(127)+T(5)*y(141)-y(148);
residual(37) = (-(params(21)*(-params(5))))*y(132)+(-(params(5)*(1-params(21))))*y(131)+(-((-params(5))*(1-params(20))))*y(130)+(-(params(20)*params(5)))*y(129)+params(24)*params(8)*params(7)*y(126)+(-(params(8)*(1-params(7))*params(24)))*y(125)+y(121)+y(122)-y(149);
residual(38) = y(133)+T(1)*y(119)-y(150)-y(163);
residual(39) = T(7)*y(136)+y(128)+params(25)*y(126)+params(27)*y(121)+y(120)+T(2)*y(119)+y(118)*(-(params(23)*(params(3)+params(27)*params(29))))+y(117)*(-(params(22)*(params(25)-params(27)*params(28))))+T(6)*y(7)*(-T(2))+T(6)*(-y(8))-y(124)-y(151);
residual(40) = (1-params(7))*params(6)/params(23)*2*y(48)+T(7)*y(135)+y(118)+T(6)*(-params(1))*y(6)+T(6)*y(8)*(-T(3));
residual(41) = T(7)*y(137)+params(25)*(-params(11))*y(126)+(-(params(11)*params(27)))*y(121)+(-params(11))*y(120)+y(119)*(-(params(11)*T(2)))+y(118)*(-(params(23)*(-(params(11)*params(27)*params(29)))))+y(117)*(-(params(22)*(params(25)-params(27)*params(28))*(-params(11))))+T(6)*y(7)*(-(T(2)*(-params(11))))+T(6)*params(11)*y(8)-y(128)-y(152);
residual(42) = y(124)-y(156);
residual(43) = T(7)*y(138)+(-params(2))*y(126)-y(131)-y(132)-y(153);
residual(44) = y(131)+T(7)*y(139)-y(154);
residual(45) = y(132)+T(7)*y(140)-y(155);
residual(46) = y(128)+T(7)*y(141)-y(157);
residual(47) = y(134)+T(3)*y(120)-y(159);
residual(48) = y(122)-y(158);
residual(49) = y(136);
residual(50) = y(137);
residual(51) = y(138);
residual(52) = y(139);
residual(53) = y(140);
residual(54) = (-y(134))-y(133);
residual(55) = y(135);
residual(56) = y(141);
residual(57) = y(142)+T(5)*y(160);
residual(58) = y(72)*params(3)*params(11)*(1-params(11))*(1-params(7))*2*params(7)+params(11)*params(7)*(params(4)+params(3)*params(11))*2*y(66)+y(143)+T(5)*y(161)-y(164);
residual(59) = y(144)+T(5)*y(162);
residual(60) = y(145)+T(5)*y(167);
residual(61) = y(146)+T(5)*y(168);
residual(62) = y(148)+T(5)*y(166);
residual(63) = y(147)+T(5)*y(165);
residual(64) = y(149)+(1-params(11))*params(7)*(1-params(7))*(1+params(3)*(1-params(11)))*2*y(72)+(y(66)-y(75))*params(3)*params(11)*(1-params(11))*(1-params(7))*2*params(7);
residual(65) = y(150);
residual(66) = y(151)+T(7)*y(160);
residual(67) = (params(4)+params(3)*params(11))*params(11)*(1-params(7))*2*y(75)-y(72)*params(3)*params(11)*(1-params(11))*(1-params(7))*2*params(7)+y(164)+y(152)+T(7)*y(161);
residual(68) = y(153)+T(7)*y(162);
residual(69) = y(154)+T(7)*y(167);
residual(70) = y(155)+T(7)*y(168);
residual(71) = y(157)+T(7)*y(166);
residual(72) = y(156)+T(7)*y(165);
residual(73) = y(158);
residual(74) = y(159);
residual(75) = y(160);
residual(76) = y(161)+y(85)*params(3)*2*(1-params(11));
residual(77) = y(162)+(1-params(11))*(params(2)+params(3)*(1-params(11)))*2*y(85)+y(84)*params(3)*2*(1-params(11));
residual(78) = y(167);
residual(79) = y(168);
residual(80) = y(163);
residual(81) = y(165);
residual(82) = y(166);
residual(83) = y(164);
residual(84) = (-(params(2)*y(14)+params(3)*y(12)+params(20)*y(19)-(1+params(3))*y(9)));
residual(85) = (-(params(2)*y(23)+params(3)*y(21)-y(19)*params(21)-(1+params(3))*y(10)));
residual(86) = params(25)*(y(12)-params(11)*y(13))-(params(2)*y(14)+y(19)*params(8)*(1-params(7))*params(24));
residual(87) = params(25)*(y(21)-params(11)*y(22))-(params(2)*y(23)-y(19)*params(24)*params(8)*params(7));
residual(88) = y(19)-params(27)*(y(12)-y(21)-params(11)*(y(13)-y(22)));
residual(89) = y(13)*params(4)-(params(2)*y(14)+params(20)*y(19));
residual(90) = y(22)*params(4)-(params(2)*y(23)-y(19)*params(21));
residual(91) = y(19)+y(28);
residual(92) = y(15)-(y(14)+y(19)*params(20)*params(5));
residual(93) = y(16)-(y(14)+y(19)*(-params(5))*(1-params(20)));
residual(94) = y(24)-(y(23)+y(19)*params(5)*(1-params(21)));
residual(95) = y(25)-(y(23)+y(19)*params(21)*(-params(5)));
residual(96) = y(17)-(y(12)-y(9));
residual(97) = y(26)-(y(21)-y(10));
residual(98) = y(18)-(y(13)-y(12));
residual(99) = y(27)-(y(22)-y(21));
residual(100) = y(20)-((1+params(3))*(y(172)-y(9))-params(3)*(y(174)-y(12)));
residual(101) = y(29)-((1+params(3))*(y(173)-y(10))-params(3)*(y(175)-y(21)));
residual(102) = y(30)-(y(12)*params(7)+y(21)*(1-params(7)));
residual(103) = y(31)-(y(13)*params(7)+(1-params(7))*y(22));
residual(104) = y(32)-(y(14)*params(7)+y(23)*(1-params(7)));
residual(105) = y(35)-(params(7)*y(20)+(1-params(7))*y(29));
residual(106) = y(33)-(params(7)*y(15)+(1-params(7))*y(24));
residual(107) = y(34)-(params(7)*y(16)+(1-params(7))*y(25));
residual(108) = y(36)-(params(7)*y(18)+(1-params(7))*y(27));
residual(109) = y(38)-(params(1)*y(177)+params(22)*((params(3)+params(27)*params(28))*y(37)-params(11)*params(27)*params(28)*y(39)+(params(25)-params(27)*params(28))*(y(47)-params(11)*y(49))-(1+params(3))*y(9)));
residual(110) = y(48)-(params(1)*y(180)+params(23)*(y(47)*(params(3)+params(27)*params(29))-y(49)*params(11)*params(27)*params(29)+(params(25)-params(27)*params(29))*(y(37)-params(11)*y(39))-(1+params(3))*y(10)));
residual(111) = y(37)-(y(176)-params(11)*(y(178)-y(39))-T(1)*(y(46)-y(177))+T(2)*(y(179)-y(47)-params(11)*(y(181)-y(49))));
residual(112) = y(47)-(y(179)-params(11)*(y(181)-y(49))-T(3)*(y(55)-y(180))+T(4)*(y(176)-y(37)-params(11)*(y(178)-y(39))));
residual(113) = y(45)-params(27)*(y(37)-y(47)-params(11)*(y(39)-y(49)));
residual(114) = y(45)+y(56);
residual(115) = y(40)-(y(37)-y(9));
residual(116) = y(50)-(y(47)-y(10));
residual(117) = params(25)*(y(37)-params(11)*y(39))-(params(2)*y(41)+params(8)*(1-params(7))*params(24)*y(45));
residual(118) = params(25)*(y(47)-params(11)*y(49))-(params(2)*y(51)-params(24)*params(8)*params(7)*y(45));
residual(119) = y(44)-(y(39)-y(37));
residual(120) = y(54)-(y(49)-y(47));
residual(121) = y(42)-(y(41)+params(20)*params(5)*y(45));
residual(122) = y(43)-(y(41)+(-params(5))*(1-params(20))*y(45));
residual(123) = y(52)-(y(51)+params(5)*(1-params(21))*y(45));
residual(124) = y(53)-(y(51)+params(21)*(-params(5))*y(45));
residual(125) = y(46)-y(62);
residual(126) = y(55)-y(62);
residual(127) = y(63)-(params(7)*y(38)+(1-params(7))*y(48));
residual(128) = y(57)-(params(7)*y(37)+(1-params(7))*y(47));
residual(129) = y(58)-(params(7)*y(39)+(1-params(7))*y(49));
residual(130) = y(59)-(params(7)*y(41)+(1-params(7))*y(51));
residual(131) = y(60)-(params(7)*y(42)+(1-params(7))*y(52));
residual(132) = y(61)-(params(7)*y(43)+(1-params(7))*y(53));
residual(133) = y(64)-(params(7)*y(44)+(1-params(7))*y(54));
residual(134) = y(65)-(y(37)-y(12));
residual(135) = y(66)-(y(39)-y(13));
residual(136) = y(67)-(y(41)-y(14));
residual(137) = y(68)-(y(42)-y(15));
residual(138) = y(69)-(y(43)-y(16));
residual(139) = y(71)-(y(40)-y(17));
residual(140) = y(70)-(y(44)-y(18));
residual(141) = y(72)-(y(45)-y(19));
residual(142) = y(73)-(y(46)-y(20));
residual(143) = y(74)-(y(47)-y(21));
residual(144) = y(75)-(y(49)-y(22));
residual(145) = y(76)-(y(51)-y(23));
residual(146) = y(77)-(y(52)-y(24));
residual(147) = y(78)-(y(53)-y(25));
residual(148) = y(80)-(y(50)-y(26));
residual(149) = y(79)-(y(54)-y(27));
residual(150) = y(81)-(y(56)-y(28));
residual(151) = y(82)-(y(55)-y(29));
residual(152) = y(83)-(params(7)*y(65)+(1-params(7))*y(74));
residual(153) = y(84)-(params(7)*y(66)+(1-params(7))*y(75));
residual(154) = y(85)-(params(7)*y(67)+(1-params(7))*y(76));
residual(155) = y(88)-(y(46)-y(35));
residual(156) = y(91)-(y(66)-y(75));
residual(157) = y(89)-(params(7)*y(71)+(1-params(7))*y(80));
residual(158) = y(90)-(params(7)*y(70)+(1-params(7))*y(79));
residual(159) = y(86)-(params(7)*y(68)+(1-params(7))*y(77));
residual(160) = y(87)-(params(7)*y(69)+(1-params(7))*y(78));
residual(161) = y(9)-(params(31)*y(1)-x(it_, 1));
residual(162) = y(10)-(params(31)*y(2)-x(it_, 2));
residual(163) = y(11)-(y(9)*params(7)+y(10)*(1-params(7)));

end
