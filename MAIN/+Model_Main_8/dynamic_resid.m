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
    T = MODEL_MAIN_8.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(168, 1);
residual(1) = y(176)*T(5)+y(174)+y(126)+y(120)*(-(params(22)*(-(1+params(3)))))+(1+params(3))*y(110)+y(106)+(1+params(3))*y(94)+T(6)*(-(1+params(3)))*y(3)+params(32)*y(187)*(-params(31));
residual(2) = y(176)*T(7)+y(175)+y(127)+y(121)*(-(params(23)*(-(1+params(3)))))+(1+params(3))*y(111)+y(107)+(1+params(3))*y(95)+T(6)*(-(1+params(3)))*y(4)+params(32)*(-params(31))*y(188);
residual(3) = y(176);
residual(4) = y(146)+T(5)*y(112)+y(110)*(-params(3))+y(108)+y(98)*(-params(27))+params(25)*y(96)+y(94)*(-params(3))-y(106)+T(6)*params(3)*y(3);
residual(5) = y(147)+T(5)*y(113)+params(4)*y(99)+y(98)*(-(params(27)*(-params(11))))+y(96)*params(25)*(-params(11))-y(108);
residual(6) = y(148)+T(5)*y(114)+y(99)*(-params(2))+y(96)*(-params(2))+y(94)*(-params(2))-y(102)-y(103);
residual(7) = y(149)+y(102)+T(5)*y(116);
residual(8) = y(150)+y(103)+T(5)*y(117);
residual(9) = y(151)+y(106)+T(5)*y(119);
residual(10) = y(152)+y(108)+T(5)*y(118);
residual(11) = y(153)+y(105)*(-(params(21)*(-params(5))))+y(104)*(-(params(5)*(1-params(21))))+y(103)*(-((-params(5))*(1-params(20))))+y(102)*(-(params(20)*params(5)))+y(101)+params(21)*y(100)+y(99)*(-params(20))+y(98)+params(24)*params(8)*params(7)*y(97)+y(96)*(-(params(8)*(1-params(7))*params(24)))+params(21)*y(95)+y(94)*(-params(20));
residual(12) = y(154)+y(110)+T(5)*y(115);
residual(13) = y(155)+T(7)*y(112)+y(111)*(-params(3))+y(109)+params(27)*y(98)+params(25)*y(97)+y(95)*(-params(3))-y(107)+T(6)*params(3)*y(4);
residual(14) = y(156)+T(7)*y(113)+params(4)*y(100)+y(98)*(-(params(11)*params(27)))+params(25)*(-params(11))*y(97)-y(109);
residual(15) = y(157)+T(7)*y(114)+(-params(2))*y(100)+(-params(2))*y(97)+y(95)*(-params(2))-y(104)-y(105);
residual(16) = y(158)+y(104)+T(7)*y(116);
residual(17) = y(159)+y(105)+T(7)*y(117);
residual(18) = y(160)+y(107)+T(7)*y(119);
residual(19) = y(161)+y(109)+T(7)*y(118);
residual(20) = y(101)+y(162);
residual(21) = y(163)+y(111)+T(7)*y(115);
residual(22) = y(112);
residual(23) = y(113);
residual(24) = y(114);
residual(25) = y(116);
residual(26) = y(117);
residual(27) = y(115)+y(167);
residual(28) = y(118);
residual(29) = y(119)+y(169);
residual(30) = T(5)*y(139)+y(130)+params(25)*y(128)+(-params(27))*y(124)+T(4)*y(123)+y(122)+y(121)*(-(params(23)*(params(25)-params(27)*params(29))))+y(120)*(-(params(22)*(params(3)+params(27)*params(28))))+T(6)*(-y(7))+T(6)*y(8)*(-T(4))-y(126)-y(146);
residual(31) = params(7)*params(6)/params(22)*2*y(39)+T(5)*y(138)+y(120)+T(6)*y(5)*(-params(1))+T(6)*y(7)*(-T(1));
residual(32) = T(5)*y(140)+params(25)*(-params(11))*y(128)+(-(params(27)*(-params(11))))*y(124)+y(123)*(-(params(11)*T(4)))+(-params(11))*y(122)+y(121)*(-(params(23)*(params(25)-params(27)*params(29))*(-params(11))))+y(120)*(-(params(22)*(-(params(11)*params(27)*params(28)))))+T(6)*params(11)*y(7)+T(6)*y(8)*(-(T(4)*(-params(11))))-y(130)-y(147);
residual(33) = y(126)+T(5)*y(145)-y(151);
residual(34) = T(5)*y(141)+(-params(2))*y(128)-y(132)-y(133)-y(148);
residual(35) = y(132)+T(5)*y(142)-y(149);
residual(36) = y(133)+T(5)*y(143)-y(150);
residual(37) = y(130)+T(5)*y(144)-y(152);
residual(38) = (-(params(21)*(-params(5))))*y(135)+(-(params(5)*(1-params(21))))*y(134)+(-((-params(5))*(1-params(20))))*y(133)+(-(params(20)*params(5)))*y(132)+params(24)*params(8)*params(7)*y(129)+(-(params(8)*(1-params(7))*params(24)))*y(128)+y(124)+y(125)-y(153);
residual(39) = y(136)+T(1)*y(122)-y(154)-y(167);
residual(40) = T(7)*y(139)+y(131)+params(25)*y(129)+params(27)*y(124)+y(123)+T(2)*y(122)+y(121)*(-(params(23)*(params(3)+params(27)*params(29))))+y(120)*(-(params(22)*(params(25)-params(27)*params(28))))+T(6)*y(7)*(-T(2))+T(6)*(-y(8))-y(127)-y(155);
residual(41) = (1-params(7))*params(6)/params(23)*2*y(49)+T(7)*y(138)+y(121)+T(6)*(-params(1))*y(6)+T(6)*y(8)*(-T(3));
residual(42) = T(7)*y(140)+params(25)*(-params(11))*y(129)+(-(params(11)*params(27)))*y(124)+(-params(11))*y(123)+y(122)*(-(params(11)*T(2)))+y(121)*(-(params(23)*(-(params(11)*params(27)*params(29)))))+y(120)*(-(params(22)*(params(25)-params(27)*params(28))*(-params(11))))+T(6)*y(7)*(-(T(2)*(-params(11))))+T(6)*params(11)*y(8)-y(131)-y(156);
residual(43) = y(127)+T(7)*y(145)-y(160);
residual(44) = T(7)*y(141)+(-params(2))*y(129)-y(134)-y(135)-y(157);
residual(45) = y(134)+T(7)*y(142)-y(158);
residual(46) = y(135)+T(7)*y(143)-y(159);
residual(47) = y(131)+T(7)*y(144)-y(161);
residual(48) = y(137)+T(3)*y(123)-y(163);
residual(49) = y(125)-y(162);
residual(50) = y(139);
residual(51) = y(140);
residual(52) = y(141);
residual(53) = y(142);
residual(54) = y(143);
residual(55) = (-y(137))-y(136);
residual(56) = y(138);
residual(57) = y(144);
residual(58) = y(145)-y(169);
residual(59) = y(146)+T(5)*y(164);
residual(60) = params(11)*params(7)*(params(4)+params(3)*params(11))*2*y(68)+y(147)+T(5)*y(165)-y(168);
residual(61) = y(148)+T(5)*y(166);
residual(62) = y(149)+T(5)*y(171);
residual(63) = y(150)+T(5)*y(172);
residual(64) = y(152)+T(5)*y(170);
residual(65) = y(151);
residual(66) = y(153)+(1-params(11))*params(8)*params(7)*(1-params(7))*(1+params(3)*(1-params(11)))*2*y(74)+y(93)*params(3)*params(11)*(1-params(11))*(1-params(7))*params(7)*2*params(8);
residual(67) = y(154);
residual(68) = y(155)+T(7)*y(164);
residual(69) = (params(4)+params(3)*params(11))*params(11)*(1-params(7))*2*y(77)+y(168)+y(156)+T(7)*y(165);
residual(70) = y(157)+T(7)*y(166);
residual(71) = y(158)+T(7)*y(171);
residual(72) = y(159)+T(7)*y(172);
residual(73) = y(173);
residual(74) = y(160);
residual(75) = y(162);
residual(76) = y(163);
residual(77) = y(164);
residual(78) = y(165)+y(87)*params(3)*2*(1-params(11));
residual(79) = y(166)+(1-params(11))*(params(2)+params(3)*(1-params(11)))*2*y(87)+y(86)*params(3)*2*(1-params(11));
residual(80) = y(171);
residual(81) = y(172);
residual(82) = y(167);
residual(83) = y(169);
residual(84) = y(170);
residual(85) = y(168)+y(74)*params(3)*params(11)*(1-params(11))*(1-params(7))*params(7)*2*params(8);
residual(86) = (-(params(2)*y(14)+params(3)*y(12)+params(20)*y(19)-(1+params(3))*y(9)));
residual(87) = (-(params(2)*y(23)+params(3)*y(21)-y(19)*params(21)-(1+params(3))*y(10)));
residual(88) = params(25)*(y(12)-params(11)*y(13))-(params(2)*y(14)+y(19)*params(8)*(1-params(7))*params(24));
residual(89) = params(25)*(y(21)-params(11)*y(22))-(params(2)*y(23)-y(19)*params(24)*params(8)*params(7));
residual(90) = y(19)-params(27)*(y(12)-y(21)-params(11)*(y(13)-y(22)));
residual(91) = y(13)*params(4)-(params(2)*y(14)+params(20)*y(19));
residual(92) = y(22)*params(4)-(params(2)*y(23)-y(19)*params(21));
residual(93) = y(19)+y(28);
residual(94) = y(15)-(y(14)+y(19)*params(20)*params(5));
residual(95) = y(16)-(y(14)+y(19)*(-params(5))*(1-params(20)));
residual(96) = y(24)-(y(23)+y(19)*params(5)*(1-params(21)));
residual(97) = y(25)-(y(23)+y(19)*params(21)*(-params(5)));
residual(98) = y(17)-(y(12)-y(9));
residual(99) = y(26)-(y(21)-y(10));
residual(100) = y(18)-(y(13)-y(12));
residual(101) = y(27)-(y(22)-y(21));
residual(102) = y(20)-((1+params(3))*(y(177)-y(9))-params(3)*(y(179)-y(12)));
residual(103) = y(29)-((1+params(3))*(y(178)-y(10))-params(3)*(y(180)-y(21)));
residual(104) = y(30)-(y(12)*params(7)+y(21)*(1-params(7)));
residual(105) = y(31)-(y(13)*params(7)+(1-params(7))*y(22));
residual(106) = y(32)-(y(14)*params(7)+y(23)*(1-params(7)));
residual(107) = y(35)-(params(7)*y(20)+(1-params(7))*y(29));
residual(108) = y(33)-(params(7)*y(15)+(1-params(7))*y(24));
residual(109) = y(34)-(params(7)*y(16)+(1-params(7))*y(25));
residual(110) = y(36)-(params(7)*y(18)+(1-params(7))*y(27));
residual(111) = y(37)-(params(7)*y(17)+(1-params(7))*y(26));
residual(112) = y(39)-(params(1)*y(182)+params(22)*((params(3)+params(27)*params(28))*y(38)-params(11)*params(27)*params(28)*y(40)+(params(25)-params(27)*params(28))*(y(48)-params(11)*y(50))-(1+params(3))*y(9)));
residual(113) = y(49)-(params(1)*y(185)+params(23)*(y(48)*(params(3)+params(27)*params(29))-y(50)*params(11)*params(27)*params(29)+(params(25)-params(27)*params(29))*(y(38)-params(11)*y(40))-(1+params(3))*y(10)));
residual(114) = y(38)-(y(181)-params(11)*(y(183)-y(40))-T(1)*(y(47)-y(182))+T(2)*(y(184)-y(48)-params(11)*(y(186)-y(50))));
residual(115) = y(48)-(y(184)-params(11)*(y(186)-y(50))-T(3)*(y(56)-y(185))+T(4)*(y(181)-y(38)-params(11)*(y(183)-y(40))));
residual(116) = y(46)-params(27)*(y(38)-y(48)-params(11)*(y(40)-y(50)));
residual(117) = y(46)+y(57);
residual(118) = y(41)-(y(38)-y(9));
residual(119) = y(51)-(y(48)-y(10));
residual(120) = params(25)*(y(38)-params(11)*y(40))-(params(2)*y(42)+params(8)*(1-params(7))*params(24)*y(46));
residual(121) = params(25)*(y(48)-params(11)*y(50))-(params(2)*y(52)-params(24)*params(8)*params(7)*y(46));
residual(122) = y(45)-(y(40)-y(38));
residual(123) = y(55)-(y(50)-y(48));
residual(124) = y(43)-(y(42)+params(20)*params(5)*y(46));
residual(125) = y(44)-(y(42)+(-params(5))*(1-params(20))*y(46));
residual(126) = y(53)-(y(52)+params(5)*(1-params(21))*y(46));
residual(127) = y(54)-(y(52)+params(21)*(-params(5))*y(46));
residual(128) = y(47)-y(63);
residual(129) = y(56)-y(63);
residual(130) = y(64)-(params(7)*y(39)+(1-params(7))*y(49));
residual(131) = y(58)-(params(7)*y(38)+(1-params(7))*y(48));
residual(132) = y(59)-(params(7)*y(40)+(1-params(7))*y(50));
residual(133) = y(60)-(params(7)*y(42)+(1-params(7))*y(52));
residual(134) = y(61)-(params(7)*y(43)+(1-params(7))*y(53));
residual(135) = y(62)-(params(7)*y(44)+(1-params(7))*y(54));
residual(136) = y(65)-(params(7)*y(45)+(1-params(7))*y(55));
residual(137) = y(66)-(params(7)*y(41)+(1-params(7))*y(51));
residual(138) = y(67)-(y(38)-y(12));
residual(139) = y(68)-(y(40)-y(13));
residual(140) = y(69)-(y(42)-y(14));
residual(141) = y(70)-(y(43)-y(15));
residual(142) = y(71)-(y(44)-y(16));
residual(143) = y(73)-(y(41)-y(17));
residual(144) = y(72)-(y(45)-y(18));
residual(145) = y(74)-(y(46)-y(19));
residual(146) = y(75)-(y(47)-y(20));
residual(147) = y(76)-(y(48)-y(21));
residual(148) = y(77)-(y(50)-y(22));
residual(149) = y(78)-(y(52)-y(23));
residual(150) = y(79)-(y(53)-y(24));
residual(151) = y(80)-(y(54)-y(25));
residual(152) = y(82)-(y(51)-y(26));
residual(153) = (-(y(55)-y(27)));
residual(154) = y(83)-(y(57)-y(28));
residual(155) = y(84)-(y(56)-y(29));
residual(156) = y(85)-(params(7)*y(67)+(1-params(7))*y(76));
residual(157) = y(86)-(params(7)*y(68)+(1-params(7))*y(77));
residual(158) = y(87)-(params(7)*y(69)+(1-params(7))*y(78));
residual(159) = y(90)-(y(47)-y(35));
residual(160) = y(93)-(y(68)-y(77));
residual(161) = y(91)-(y(66)-y(37));
residual(162) = y(92)-params(7)*y(72);
residual(163) = y(88)-(params(7)*y(70)+(1-params(7))*y(79));
residual(164) = y(89)-(params(7)*y(71)+(1-params(7))*y(80));
residual(165) = y(81);
residual(166) = y(9)-(params(31)*y(1)-x(it_, 1));
residual(167) = y(10)-(params(31)*y(2)-x(it_, 2));
residual(168) = y(11)-(y(9)*params(7)+y(10)*(1-params(7)));

end
