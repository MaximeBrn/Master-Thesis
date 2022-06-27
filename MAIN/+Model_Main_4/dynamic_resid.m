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
    T = MODEL_MAIN_4.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(123, 1);
residual(1) = 0.5*params(3)*2*y(9)+y(113)+y(126)*(-params(7));
residual(2) = 0.5*params(11)*params(4)*2*y(10)+y(114)+(-params(7))*y(127);
residual(3) = 0.5*params(2)*(1-params(11))*2*y(11)+y(115)+(-params(7))*y(128);
residual(4) = y(117);
residual(5) = y(116);
residual(6) = y(118);
residual(7) = 0.5*params(3)*2*y(15)+y(120)+y(126)*T(5);
residual(8) = 0.5*params(11)*params(4)*2*y(16)+y(121)+y(127)*T(5);
residual(9) = 0.5*params(2)*(1-params(11))*2*y(17)+y(122)+y(128)*T(5);
residual(10) = y(124);
residual(11) = y(123);
residual(12) = y(125);
residual(13) = y(119)+T(6)*2*y(21);
residual(14) = y(126);
residual(15) = y(127);
residual(16) = y(128);
residual(17) = y(129);
residual(18) = y(130)+y(97)+y(92)*(-(params(22)*(-(1+params(3)))))+(1+params(3))*y(87)+y(83)+(1+params(3))*y(72)+T(7)*(-(1+params(3)))*y(3)+params(31)*y(142)*(-params(30));
residual(19) = y(131)+y(98)+y(93)*(-(params(23)*(-(1+params(3)))))+(1+params(3))*y(88)+y(84)+(1+params(3))*y(73)+T(7)*(-(1+params(3)))*y(4)+params(31)*(-params(30))*y(143);
residual(20) = y(113)+(-params(7))*y(89)+y(87)*(-params(3))+y(85)+y(76)*(-params(27))+params(25)*y(74)+y(72)*(-params(3))-y(83)+T(7)*params(3)*y(3);
residual(21) = y(114)+(-params(7))*y(90)+params(4)*y(77)+y(76)*(-(params(27)*(-params(11))))+y(74)*params(25)*(-params(11))-y(85);
residual(22) = y(115)+y(77)*(-params(2))+y(74)*(-params(2))+y(72)*(-params(2))-y(79)-y(80);
residual(23) = y(116)+y(83);
residual(24) = y(79);
residual(25) = y(80);
residual(26) = y(118)+y(87)+(-params(7))*y(91);
residual(27) = y(117)+y(85);
residual(28) = y(120)+T(5)*y(89)+y(88)*(-params(3))+y(86)+params(27)*y(76)+params(25)*y(75)+y(73)*(-params(3))-y(84)+T(7)*params(3)*y(4);
residual(29) = y(121)+T(5)*y(90)+params(4)*y(78)+y(76)*(-(params(11)*params(27)))+params(25)*(-params(11))*y(75)-y(86);
residual(30) = y(122)+(-params(2))*y(78)+(-params(2))*y(75)+y(73)*(-params(2))-y(81)-y(82);
residual(31) = y(81);
residual(32) = y(82);
residual(33) = y(123)+y(84);
residual(34) = y(125)+y(88)+T(5)*y(91);
residual(35) = y(124)+y(86);
residual(36) = y(119)+y(82)*(-(params(21)*(-params(5))))+y(81)*(-(params(5)*(1-params(21))))+y(80)*(-((-params(5))*(1-params(20))))+y(79)*(-(params(20)*params(5)))+params(21)*y(78)+y(77)*(-params(20))+y(76)+params(24)*params(8)*params(7)*y(75)+y(74)*(-(params(8)*(1-params(7))*params(24)))+params(21)*y(73)+y(72)*(-params(20));
residual(37) = y(89);
residual(38) = y(90);
residual(39) = y(129)+y(91);
residual(40) = (-params(7))*y(110)+y(101)+params(25)*y(99)+(-params(27))*y(96)+T(4)*y(95)+y(94)+y(93)*(-(params(23)*(params(25)-params(27)*params(29))))+y(92)*(-(params(22)*(params(3)+params(27)*params(28))))+T(7)*(-y(7))+T(7)*y(8)*(-T(4))-y(97)-y(113);
residual(41) = 0.5*params(6)/params(22)*2*y(49)+(-params(7))*y(109)+y(92)+T(7)*y(5)*(-params(1))+T(7)*y(7)*(-T(1));
residual(42) = (-params(7))*y(111)+params(25)*(-params(11))*y(99)+(-(params(27)*(-params(11))))*y(96)+y(95)*(-(params(11)*T(4)))+(-params(11))*y(94)+y(93)*(-(params(23)*(params(25)-params(27)*params(29))*(-params(11))))+y(92)*(-(params(22)*(-(params(11)*params(27)*params(28)))))+T(7)*params(11)*y(7)+T(7)*y(8)*(-(T(4)*(-params(11))))-y(101)-y(114);
residual(43) = y(97)-y(116);
residual(44) = (-params(7))*y(112)+(-params(2))*y(99)-y(103)-y(104)-y(115);
residual(45) = y(103);
residual(46) = y(104);
residual(47) = y(101)-y(117);
residual(48) = T(5)*y(110)+y(102)+params(25)*y(100)+params(27)*y(96)+y(95)+T(2)*y(94)+y(93)*(-(params(23)*(params(3)+params(27)*params(29))))+y(92)*(-(params(22)*(params(25)-params(27)*params(28))))+T(7)*y(7)*(-T(2))+T(7)*(-y(8))-y(98)-y(120);
residual(49) = 0.5*params(6)/params(23)*2*y(57)+T(5)*y(109)+y(93)+T(7)*(-params(1))*y(6)+T(7)*y(8)*(-T(3));
residual(50) = T(5)*y(111)+params(25)*(-params(11))*y(100)+(-(params(11)*params(27)))*y(96)+(-params(11))*y(95)+y(94)*(-(params(11)*T(2)))+y(93)*(-(params(23)*(-(params(11)*params(27)*params(29)))))+y(92)*(-(params(22)*(params(25)-params(27)*params(28))*(-params(11))))+T(7)*y(7)*(-(T(2)*(-params(11))))+T(7)*params(11)*y(8)-y(102)-y(121);
residual(51) = y(98)-y(123);
residual(52) = T(5)*y(112)+(-params(2))*y(100)-y(105)-y(106)-y(122);
residual(53) = y(105);
residual(54) = y(106);
residual(55) = y(102)-y(124);
residual(56) = y(107)+T(1)*y(94)-y(118)-y(129);
residual(57) = y(108)+T(3)*y(95)-y(125);
residual(58) = (-y(108))-y(107);
residual(59) = (-(params(21)*(-params(5))))*y(106)+(-(params(5)*(1-params(21))))*y(105)+(-((-params(5))*(1-params(20))))*y(104)+(-(params(20)*params(5)))*y(103)+params(24)*params(8)*params(7)*y(100)+y(96)+(-(params(8)*(1-params(7))*params(24)))*y(99)-y(119);
residual(60) = y(109);
residual(61) = y(110);
residual(62) = y(111);
residual(63) = y(112);
residual(64) = (-(params(2)*y(30)+params(3)*y(28)+params(20)*y(44)-(1+params(3))*y(26)));
residual(65) = (-(params(2)*y(38)+params(3)*y(36)-y(44)*params(21)-(1+params(3))*y(27)));
residual(66) = params(25)*(y(28)-params(11)*y(29))-(params(2)*y(30)+y(44)*params(8)*(1-params(7))*params(24));
residual(67) = params(25)*(y(36)-params(11)*y(37))-(params(2)*y(38)-y(44)*params(24)*params(8)*params(7));
residual(68) = y(44)-params(27)*(y(28)-y(36)-params(11)*(y(29)-y(37)));
residual(69) = y(29)*params(4)-(params(2)*y(30)+params(20)*y(44));
residual(70) = y(37)*params(4)-(params(2)*y(38)-y(44)*params(21));
residual(71) = y(32)-(y(30)+y(44)*params(20)*params(5));
residual(72) = y(33)-(y(30)+y(44)*(-params(5))*(1-params(20)));
residual(73) = y(39)-(y(38)+y(44)*params(5)*(1-params(21)));
residual(74) = y(40)-(y(38)+y(44)*params(21)*(-params(5)));
residual(75) = y(31)-(y(28)-y(26));
residual(76) = y(41)-(y(36)-y(27));
residual(77) = y(35)-(y(29)-y(28));
residual(78) = y(43)-(y(37)-y(36));
residual(79) = y(34)-((1+params(3))*(y(132)-y(26))-params(3)*(y(134)-y(28)));
residual(80) = y(42)-((1+params(3))*(y(133)-y(27))-params(3)*(y(135)-y(36)));
residual(81) = y(45)-(y(28)*params(7)+y(36)*(1-params(7)));
residual(82) = y(46)-(y(29)*params(7)+(1-params(7))*y(37));
residual(83) = y(47)-(params(7)*y(34)+(1-params(7))*y(42));
residual(84) = y(49)-(params(1)*y(137)+params(22)*((params(3)+params(27)*params(28))*y(48)-params(11)*params(27)*params(28)*y(50)+(params(25)-params(27)*params(28))*(y(56)-params(11)*y(58))-(1+params(3))*y(26)));
residual(85) = y(57)-(params(1)*y(140)+params(23)*(y(56)*(params(3)+params(27)*params(29))-y(58)*params(11)*params(27)*params(29)+(params(25)-params(27)*params(29))*(y(48)-params(11)*y(50))-(1+params(3))*y(27)));
residual(86) = y(48)-(y(136)-params(11)*(y(138)-y(50))-T(1)*(y(64)-y(137))+T(2)*(y(139)-y(56)-params(11)*(y(141)-y(58))));
residual(87) = y(56)-(y(139)-params(11)*(y(141)-y(58))-T(3)*(y(65)-y(140))+T(4)*(y(136)-y(48)-params(11)*(y(138)-y(50))));
residual(88) = y(67)-params(27)*(y(48)-y(56)-params(11)*(y(50)-y(58)));
residual(89) = y(51)-(y(48)-y(26));
residual(90) = y(59)-(y(56)-y(27));
residual(91) = params(25)*(y(48)-params(11)*y(50))-(params(2)*y(52)+params(8)*(1-params(7))*params(24)*y(67));
residual(92) = params(25)*(y(56)-params(11)*y(58))-(params(2)*y(60)-params(24)*params(8)*params(7)*y(67));
residual(93) = y(55)-(y(50)-y(48));
residual(94) = y(63)-(y(58)-y(56));
residual(95) = y(53)-(y(52)+params(20)*params(5)*y(67));
residual(96) = y(54)-(y(52)+(-params(5))*(1-params(20))*y(67));
residual(97) = y(61)-(y(60)+params(5)*(1-params(21))*y(67));
residual(98) = y(62)-(y(60)+params(21)*(-params(5))*y(67));
residual(99) = y(64)-y(66);
residual(100) = y(65)-y(66);
residual(101) = y(68)-(params(7)*y(49)+(1-params(7))*y(57));
residual(102) = y(69)-(params(7)*y(48)+(1-params(7))*y(56));
residual(103) = y(70)-(params(7)*y(50)+(1-params(7))*y(58));
residual(104) = y(71)-(params(7)*y(52)+(1-params(7))*y(60));
residual(105) = y(9)-(y(48)-y(28));
residual(106) = y(10)-(y(50)-y(29));
residual(107) = y(11)-(y(52)-y(30));
residual(108) = y(13)-(y(51)-y(31));
residual(109) = y(12)-(y(55)-y(35));
residual(110) = y(14)-(y(64)-y(34));
residual(111) = y(21)-(y(67)-y(44));
residual(112) = y(15)-(y(56)-y(36));
residual(113) = y(16)-(y(58)-y(37));
residual(114) = y(17)-(y(60)-y(38));
residual(115) = y(19)-(y(59)-y(41));
residual(116) = y(18)-(y(63)-y(43));
residual(117) = y(20)-(y(65)-y(42));
residual(118) = y(22)-(params(7)*y(9)+(1-params(7))*y(15));
residual(119) = y(23)-(params(7)*y(10)+(1-params(7))*y(16));
residual(120) = y(24)-(params(7)*y(11)+(1-params(7))*y(17));
residual(121) = y(25)-(y(64)-y(47));
residual(122) = y(26)-(params(30)*y(1)-x(it_, 1));
residual(123) = y(27)-(params(30)*y(2)-x(it_, 2));

end
