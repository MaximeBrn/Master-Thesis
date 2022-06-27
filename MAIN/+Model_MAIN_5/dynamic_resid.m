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
    T = Model_MAIN_5.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(139, 1);
residual(1) = y(146)+y(108)+y(102)*(-(params(22)*(-(1+params(3)))))+(1+params(3))*y(96)+y(92)+(1+params(3))*y(80)+T(5)*(-(1+params(3)))*y(3)+params(31)*y(158)*(-params(30));
residual(2) = y(147)+y(109)+y(103)*(-(params(23)*(-(1+params(3)))))+(1+params(3))*y(97)+y(93)+(1+params(3))*y(81)+T(5)*(-(1+params(3)))*y(4)+params(31)*(-params(30))*y(159);
residual(3) = y(124)+y(98)*(-params(7))+y(96)*(-params(3))+y(94)+y(84)*(-params(27))+params(25)*y(82)+y(80)*(-params(3))-y(92)+T(5)*params(3)*y(3);
residual(4) = y(125)+(-params(7))*y(99)+params(4)*y(85)+y(84)*(-(params(27)*(-params(11))))+y(82)*params(25)*(-params(11))-y(94);
residual(5) = y(126)+(-params(7))*y(100)+y(85)*(-params(2))+y(82)*(-params(2))+y(80)*(-params(2))-y(88)-y(89);
residual(6) = y(88)+y(127);
residual(7) = y(89)+y(128);
residual(8) = y(92)+y(129);
residual(9) = y(94)+y(130);
residual(10) = y(131)+y(91)*(-(params(21)*(-params(5))))+y(90)*(-(params(5)*(1-params(21))))+y(89)*(-((-params(5))*(1-params(20))))+y(88)*(-(params(20)*params(5)))+y(87)+params(21)*y(86)+y(85)*(-params(20))+y(84)+params(24)*params(8)*params(7)*y(83)+y(82)*(-(params(8)*(1-params(7))*params(24)))+params(21)*y(81)+y(80)*(-params(20));
residual(11) = y(132)+y(96)+(-params(7))*y(101);
residual(12) = y(133)+y(98)*T(6)+y(97)*(-params(3))+y(95)+params(27)*y(84)+params(25)*y(83)+y(81)*(-params(3))-y(93)+T(5)*params(3)*y(4);
residual(13) = y(134)+y(99)*T(6)+params(4)*y(86)+y(84)*(-(params(11)*params(27)))+params(25)*(-params(11))*y(83)-y(95);
residual(14) = y(135)+y(100)*T(6)+(-params(2))*y(86)+(-params(2))*y(83)+y(81)*(-params(2))-y(90)-y(91);
residual(15) = y(90)+y(136);
residual(16) = y(91)+y(137);
residual(17) = y(93)+y(138);
residual(18) = y(95)+y(139);
residual(19) = y(87)+y(140);
residual(20) = y(141)+y(97)+y(101)*T(6);
residual(21) = y(98);
residual(22) = y(99);
residual(23) = y(100);
residual(24) = y(101)+y(145);
residual(25) = (-params(7))*y(121)+y(112)+params(25)*y(110)+(-params(27))*y(106)+T(4)*y(105)+y(104)+y(103)*(-(params(23)*(params(25)-params(27)*params(29))))+y(102)*(-(params(22)*(params(3)+params(27)*params(28))))+T(5)*(-y(7))+T(5)*y(8)*(-T(4))-y(108)-y(124);
residual(26) = T(7)*params(6)/params(22)*2*y(34)+(-params(7))*y(120)+y(102)+T(5)*y(5)*(-params(1))+T(5)*y(7)*(-T(1));
residual(27) = (-params(7))*y(122)+params(25)*(-params(11))*y(110)+(-(params(27)*(-params(11))))*y(106)+y(105)*(-(params(11)*T(4)))+(-params(11))*y(104)+y(103)*(-(params(23)*(params(25)-params(27)*params(29))*(-params(11))))+y(102)*(-(params(22)*(-(params(11)*params(27)*params(28)))))+T(5)*params(11)*y(7)+T(5)*y(8)*(-(T(4)*(-params(11))))-y(112)-y(125);
residual(28) = y(108)-y(129);
residual(29) = (-params(7))*y(123)+(-params(2))*y(110)-y(114)-y(115)-y(126);
residual(30) = y(114)-y(127);
residual(31) = y(115)-y(128);
residual(32) = y(112)-y(130);
residual(33) = (-(params(21)*(-params(5))))*y(117)+(-(params(5)*(1-params(21))))*y(116)+(-((-params(5))*(1-params(20))))*y(115)+(-(params(20)*params(5)))*y(114)+params(24)*params(8)*params(7)*y(111)+(-(params(8)*(1-params(7))*params(24)))*y(110)+y(106)+y(107)-y(131);
residual(34) = y(118)+T(1)*y(104)-y(132)-y(145);
residual(35) = T(6)*y(121)+y(113)+params(25)*y(111)+params(27)*y(106)+y(105)+T(2)*y(104)+y(103)*(-(params(23)*(params(3)+params(27)*params(29))))+y(102)*(-(params(22)*(params(25)-params(27)*params(28))))+T(5)*y(7)*(-T(2))+T(5)*(-y(8))-y(109)-y(133);
residual(36) = T(8)*params(6)/params(23)*2*y(44)+T(6)*y(120)+y(103)+T(5)*(-params(1))*y(6)+T(5)*y(8)*(-T(3));
residual(37) = T(6)*y(122)+params(25)*(-params(11))*y(111)+(-(params(11)*params(27)))*y(106)+(-params(11))*y(105)+y(104)*(-(params(11)*T(2)))+y(103)*(-(params(23)*(-(params(11)*params(27)*params(29)))))+y(102)*(-(params(22)*(params(25)-params(27)*params(28))*(-params(11))))+T(5)*y(7)*(-(T(2)*(-params(11))))+T(5)*params(11)*y(8)-y(113)-y(134);
residual(38) = y(109)-y(138);
residual(39) = T(6)*y(123)+(-params(2))*y(111)-y(116)-y(117)-y(135);
residual(40) = y(116)-y(136);
residual(41) = y(117)-y(137);
residual(42) = y(113)-y(139);
residual(43) = y(119)+T(3)*y(105)-y(141);
residual(44) = y(107)-y(140);
residual(45) = y(121);
residual(46) = y(122);
residual(47) = y(123);
residual(48) = (-y(119))-y(118);
residual(49) = y(120);
residual(50) = T(7)*params(3)*2*y(58)+y(124)+(-params(7))*y(142);
residual(51) = T(7)*params(11)*params(4)*2*y(59)+y(125)+(-params(7))*y(143);
residual(52) = T(7)*params(2)*(1-params(11))*2*y(60)+y(126)+(-params(7))*y(144);
residual(53) = y(127);
residual(54) = y(128);
residual(55) = y(130);
residual(56) = y(129);
residual(57) = y(131)+T(9)*2*y(65);
residual(58) = y(132);
residual(59) = T(8)*params(3)*2*y(67)+y(133)+T(6)*y(142);
residual(60) = T(8)*params(11)*params(4)*2*y(68)+y(134)+T(6)*y(143);
residual(61) = T(8)*params(2)*(1-params(11))*2*y(69)+y(135)+T(6)*y(144);
residual(62) = y(136);
residual(63) = y(137);
residual(64) = y(139);
residual(65) = y(138);
residual(66) = y(140);
residual(67) = y(141);
residual(68) = y(142);
residual(69) = y(143);
residual(70) = y(144);
residual(71) = y(145);
residual(72) = (-(params(2)*y(13)+params(3)*y(11)+params(20)*y(18)-(1+params(3))*y(9)));
residual(73) = (-(params(2)*y(22)+params(3)*y(20)-y(18)*params(21)-(1+params(3))*y(10)));
residual(74) = params(25)*(y(11)-params(11)*y(12))-(params(2)*y(13)+y(18)*params(8)*(1-params(7))*params(24));
residual(75) = params(25)*(y(20)-params(11)*y(21))-(params(2)*y(22)-y(18)*params(24)*params(8)*params(7));
residual(76) = y(18)-params(27)*(y(11)-y(20)-params(11)*(y(12)-y(21)));
residual(77) = y(12)*params(4)-(params(2)*y(13)+params(20)*y(18));
residual(78) = y(21)*params(4)-(params(2)*y(22)-y(18)*params(21));
residual(79) = y(18)+y(27);
residual(80) = y(14)-(y(13)+y(18)*params(20)*params(5));
residual(81) = y(15)-(y(13)+y(18)*(-params(5))*(1-params(20)));
residual(82) = y(23)-(y(22)+y(18)*params(5)*(1-params(21)));
residual(83) = y(24)-(y(22)+y(18)*params(21)*(-params(5)));
residual(84) = y(16)-(y(11)-y(9));
residual(85) = y(25)-(y(20)-y(10));
residual(86) = y(17)-(y(12)-y(11));
residual(87) = y(26)-(y(21)-y(20));
residual(88) = y(19)-((1+params(3))*(y(148)-y(9))-params(3)*(y(150)-y(11)));
residual(89) = y(28)-((1+params(3))*(y(149)-y(10))-params(3)*(y(151)-y(20)));
residual(90) = y(29)-(y(11)*params(7)+y(20)*(1-params(7)));
residual(91) = y(30)-(y(12)*params(7)+(1-params(7))*y(21));
residual(92) = y(31)-(y(13)*params(7)+y(22)*(1-params(7)));
residual(93) = y(32)-(params(7)*y(19)+(1-params(7))*y(28));
residual(94) = y(34)-(params(1)*y(153)+params(22)*((params(3)+params(27)*params(28))*y(33)-params(11)*params(27)*params(28)*y(35)+(params(25)-params(27)*params(28))*(y(43)-params(11)*y(45))-(1+params(3))*y(9)));
residual(95) = y(44)-(params(1)*y(156)+params(23)*(y(43)*(params(3)+params(27)*params(29))-y(45)*params(11)*params(27)*params(29)+(params(25)-params(27)*params(29))*(y(33)-params(11)*y(35))-(1+params(3))*y(10)));
residual(96) = y(33)-(y(152)-params(11)*(y(154)-y(35))-T(1)*(y(42)-y(153))+T(2)*(y(155)-y(43)-params(11)*(y(157)-y(45))));
residual(97) = y(43)-(y(155)-params(11)*(y(157)-y(45))-T(3)*(y(51)-y(156))+T(4)*(y(152)-y(33)-params(11)*(y(154)-y(35))));
residual(98) = y(41)-params(27)*(y(33)-y(43)-params(11)*(y(35)-y(45)));
residual(99) = y(41)+y(52);
residual(100) = y(36)-(y(33)-y(9));
residual(101) = y(46)-(y(43)-y(10));
residual(102) = params(25)*(y(33)-params(11)*y(35))-(params(2)*y(37)+params(8)*(1-params(7))*params(24)*y(41));
residual(103) = params(25)*(y(43)-params(11)*y(45))-(params(2)*y(47)-params(24)*params(8)*params(7)*y(41));
residual(104) = y(40)-(y(35)-y(33));
residual(105) = y(50)-(y(45)-y(43));
residual(106) = y(38)-(y(37)+params(20)*params(5)*y(41));
residual(107) = y(39)-(y(37)+(-params(5))*(1-params(20))*y(41));
residual(108) = y(48)-(y(47)+params(5)*(1-params(21))*y(41));
residual(109) = y(49)-(y(47)+params(21)*(-params(5))*y(41));
residual(110) = y(42)-y(56);
residual(111) = y(51)-y(56);
residual(112) = y(57)-(params(7)*y(34)+(1-params(7))*y(44));
residual(113) = y(53)-(params(7)*y(33)+(1-params(7))*y(43));
residual(114) = y(54)-(params(7)*y(35)+(1-params(7))*y(45));
residual(115) = y(55)-(params(7)*y(37)+(1-params(7))*y(47));
residual(116) = y(58)-(y(33)-y(11));
residual(117) = y(59)-(y(35)-y(12));
residual(118) = y(60)-(y(37)-y(13));
residual(119) = y(61)-(y(38)-y(14));
residual(120) = y(62)-(y(39)-y(15));
residual(121) = y(64)-(y(36)-y(16));
residual(122) = y(63)-(y(40)-y(17));
residual(123) = y(65)-(y(41)-y(18));
residual(124) = y(66)-(y(42)-y(19));
residual(125) = y(67)-(y(43)-y(20));
residual(126) = y(68)-(y(45)-y(21));
residual(127) = y(69)-(y(47)-y(22));
residual(128) = y(70)-(y(48)-y(23));
residual(129) = y(71)-(y(49)-y(24));
residual(130) = y(73)-(y(46)-y(25));
residual(131) = y(72)-(y(50)-y(26));
residual(132) = y(74)-(y(52)-y(27));
residual(133) = y(75)-(y(51)-y(28));
residual(134) = y(76)-(params(7)*y(58)+(1-params(7))*y(67));
residual(135) = y(77)-(params(7)*y(59)+(1-params(7))*y(68));
residual(136) = y(78)-(params(7)*y(60)+(1-params(7))*y(69));
residual(137) = y(79)-(y(42)-y(32));
residual(138) = y(9)-(params(30)*y(1)-x(it_, 1));
residual(139) = y(10)-(params(30)*y(2)-x(it_, 2));

end
