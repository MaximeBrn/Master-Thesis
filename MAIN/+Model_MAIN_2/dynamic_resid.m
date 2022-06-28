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
    T = MODEL_MAIN_2.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(121, 1);
residual(1) = params(7)*0.5*params(3)*2*y(9)+y(125)*(-params(7))+y(119)+y(116)+y(115)*(-params(28))+y(114)*(-params(24));
residual(2) = params(7)*0.5*params(11)*params(4)*2*y(10)+(-params(7))*y(126)+y(114)+y(117)-y(119);
residual(3) = params(7)*0.5*(params(2)*(1-params(11))*2*y(11)+T(5)*2*(y(11)-y(20)))+y(118)+(-params(7))*y(127);
residual(4) = y(119);
residual(5) = (1-params(7))*0.5*params(3)*2*y(13)+y(125)*T(6)+y(123)+y(120)+y(115)*(-params(29))+y(114)*(-params(25));
residual(6) = (1-params(7))*0.5*params(11)*params(4)*2*y(14)+y(126)*T(6)+y(115)+y(121)-y(123);
residual(7) = (1-params(7))*0.5*(params(2)*(1-params(11))*2*y(15)+T(7)*2*(y(15)-y(20)))+y(122)+y(127)*T(6);
residual(8) = y(123);
residual(9) = y(124);
residual(10) = y(125);
residual(11) = y(126);
residual(12) = y(127)+params(7)*0.5*T(5)*(-(2*(y(11)-y(20))))+(1-params(7))*0.5*T(7)*(-(2*(y(15)-y(20))));
residual(13) = y(128)+y(98)+y(92)*(-(params(16)*(-(1+params(3)))))+(1+params(3))*y(86)+y(82)+(1+params(3))*y(70)+T(8)*(-(1+params(3)))*y(3)+params(33)*y(140)*(-params(32));
residual(14) = y(129)+y(99)+y(93)*(-(params(17)*(-(1+params(3)))))+(1+params(3))*y(87)+y(83)+(1+params(3))*y(71)+T(8)*(-(1+params(3)))*y(4)+params(33)*(-params(32))*y(141);
residual(15) = y(116)+(-params(7))*y(88)+y(86)*(-params(3))+y(84)+y(74)*(-params(21))+params(19)*y(72)+y(70)*(-params(3))-y(82)+T(8)*params(3)*y(3);
residual(16) = y(117)+(-params(7))*y(89)+params(4)*y(75)+y(74)*(-(params(21)*(-params(11))))+y(72)*params(19)*(-params(11))-y(84);
residual(17) = y(118)+(-params(7))*y(90)+y(75)*(-params(2))+y(72)*(-params(2))+y(70)*(-params(2))-y(78)-y(79);
residual(18) = y(78);
residual(19) = y(79);
residual(20) = y(82);
residual(21) = y(84);
residual(22) = y(124)+y(81)*(-(params(15)*(-params(5))))+y(80)*(-(params(5)*(1-params(15))))+y(79)*(-((-params(5))*(1-params(14))))+y(78)*(-(params(14)*params(5)))+y(77)+params(15)*y(76)+y(75)*(-params(14))+y(74)+params(18)*params(8)*params(7)*y(73)+y(72)*(-(params(8)*(1-params(7))*params(18)))+params(15)*y(71)+y(70)*(-params(14));
residual(23) = y(86)+(-params(7))*y(91);
residual(24) = y(120)+T(6)*y(88)+y(87)*(-params(3))+y(85)+params(21)*y(74)+params(19)*y(73)+y(71)*(-params(3))-y(83)+T(8)*params(3)*y(4);
residual(25) = y(121)+T(6)*y(89)+params(4)*y(76)+y(74)*(-(params(11)*params(21)))+params(19)*(-params(11))*y(73)-y(85);
residual(26) = y(122)+T(6)*y(90)+(-params(2))*y(76)+(-params(2))*y(73)+y(71)*(-params(2))-y(80)-y(81);
residual(27) = y(80);
residual(28) = y(81);
residual(29) = y(83);
residual(30) = y(85);
residual(31) = y(77);
residual(32) = y(87)+T(6)*y(91);
residual(33) = y(88);
residual(34) = y(89);
residual(35) = y(90);
residual(36) = y(91);
residual(37) = (-params(7))*y(111)+y(102)+params(19)*y(100)+(-params(21))*y(96)+T(4)*y(95)+y(94)+y(93)*(-(params(17)*(params(19)-params(21)*params(23))))+y(92)*(-(params(16)*(params(3)+params(21)*params(22))))+T(8)*(-y(7))+T(8)*y(8)*(-T(4))-y(98)-y(116);
residual(38) = params(7)*0.5*params(6)/params(16)*2*y(46)+y(115)*(-params(30))+y(114)*(-params(26))+(-params(7))*y(110)+y(92)+T(8)*y(5)*(-params(1))+T(8)*y(7)*(-T(1));
residual(39) = (-params(7))*y(112)+params(19)*(-params(11))*y(100)+(-(params(21)*(-params(11))))*y(96)+y(95)*(-(params(11)*T(4)))+(-params(11))*y(94)+y(93)*(-(params(17)*(params(19)-params(21)*params(23))*(-params(11))))+y(92)*(-(params(16)*(-(params(11)*params(21)*params(22)))))+T(8)*params(11)*y(7)+T(8)*y(8)*(-(T(4)*(-params(11))))-y(102)-y(117);
residual(40) = y(98);
residual(41) = (-params(7))*y(113)+(-params(2))*y(100)-y(104)-y(105)-y(118);
residual(42) = y(104);
residual(43) = y(105);
residual(44) = y(102);
residual(45) = (-(params(15)*(-params(5))))*y(107)+(-(params(5)*(1-params(15))))*y(106)+(-((-params(5))*(1-params(14))))*y(105)+(-(params(14)*params(5)))*y(104)+params(18)*params(8)*params(7)*y(101)+(-(params(8)*(1-params(7))*params(18)))*y(100)+y(96)+y(97)-y(124);
residual(46) = y(108)+T(1)*y(94);
residual(47) = T(6)*y(111)+y(103)+params(19)*y(101)+params(21)*y(96)+y(95)+T(2)*y(94)+y(93)*(-(params(17)*(params(3)+params(21)*params(23))))+y(92)*(-(params(16)*(params(19)-params(21)*params(22))))+T(8)*y(7)*(-T(2))+T(8)*(-y(8))-y(99)-y(120);
residual(48) = (1-params(7))*0.5*params(6)/params(17)*2*y(56)+y(115)*(-params(31))+y(114)*(-params(27))+T(6)*y(110)+y(93)+T(8)*(-params(1))*y(6)+T(8)*y(8)*(-T(3));
residual(49) = T(6)*y(112)+params(19)*(-params(11))*y(101)+(-(params(11)*params(21)))*y(96)+(-params(11))*y(95)+y(94)*(-(params(11)*T(2)))+y(93)*(-(params(17)*(-(params(11)*params(21)*params(23)))))+y(92)*(-(params(16)*(params(19)-params(21)*params(22))*(-params(11))))+T(8)*y(7)*(-(T(2)*(-params(11))))+T(8)*params(11)*y(8)-y(103)-y(121);
residual(50) = y(99);
residual(51) = T(6)*y(113)+(-params(2))*y(101)-y(106)-y(107)-y(122);
residual(52) = y(106);
residual(53) = y(107);
residual(54) = y(103);
residual(55) = y(109)+T(3)*y(95);
residual(56) = y(97);
residual(57) = y(111);
residual(58) = y(112);
residual(59) = y(113);
residual(60) = (-y(109))-y(108);
residual(61) = y(110);
residual(62) = (-(params(2)*y(25)+params(3)*y(23)+params(14)*y(30)-(1+params(3))*y(21)));
residual(63) = (-(params(2)*y(34)+params(3)*y(32)-y(30)*params(15)-(1+params(3))*y(22)));
residual(64) = params(19)*(y(23)-params(11)*y(24))-(params(2)*y(25)+y(30)*params(8)*(1-params(7))*params(18));
residual(65) = params(19)*(y(32)-params(11)*y(33))-(params(2)*y(34)-y(30)*params(18)*params(8)*params(7));
residual(66) = y(30)-params(21)*(y(23)-y(32)-params(11)*(y(24)-y(33)));
residual(67) = y(24)*params(4)-(params(2)*y(25)+params(14)*y(30));
residual(68) = y(33)*params(4)-(params(2)*y(34)-y(30)*params(15));
residual(69) = y(30)+y(39);
residual(70) = y(26)-(y(25)+y(30)*params(14)*params(5));
residual(71) = y(27)-(y(25)+y(30)*(-params(5))*(1-params(14)));
residual(72) = y(35)-(y(34)+y(30)*params(5)*(1-params(15)));
residual(73) = y(36)-(y(34)+y(30)*params(15)*(-params(5)));
residual(74) = y(28)-(y(23)-y(21));
residual(75) = y(37)-(y(32)-y(22));
residual(76) = y(29)-(y(24)-y(23));
residual(77) = y(38)-(y(33)-y(32));
residual(78) = y(31)-((1+params(3))*(y(130)-y(21))-params(3)*(y(132)-y(23)));
residual(79) = y(40)-((1+params(3))*(y(131)-y(22))-params(3)*(y(133)-y(32)));
residual(80) = y(41)-(y(23)*params(7)+y(32)*(1-params(7)));
residual(81) = y(42)-(y(24)*params(7)+(1-params(7))*y(33));
residual(82) = y(43)-(y(25)*params(7)+y(34)*(1-params(7)));
residual(83) = y(44)-(params(7)*y(31)+(1-params(7))*y(40));
residual(84) = y(46)-(params(1)*y(135)+params(16)*((params(3)+params(21)*params(22))*y(45)-params(11)*params(21)*params(22)*y(47)+(params(19)-params(21)*params(22))*(y(55)-params(11)*y(57))-(1+params(3))*y(21)));
residual(85) = y(56)-(params(1)*y(138)+params(17)*(y(55)*(params(3)+params(21)*params(23))-y(57)*params(11)*params(21)*params(23)+(params(19)-params(21)*params(23))*(y(45)-params(11)*y(47))-(1+params(3))*y(22)));
residual(86) = y(45)-(y(134)-params(11)*(y(136)-y(47))-T(1)*(y(54)-y(135))+T(2)*(y(137)-y(55)-params(11)*(y(139)-y(57))));
residual(87) = y(55)-(y(137)-params(11)*(y(139)-y(57))-T(3)*(y(63)-y(138))+T(4)*(y(134)-y(45)-params(11)*(y(136)-y(47))));
residual(88) = y(53)-params(21)*(y(45)-y(55)-params(11)*(y(47)-y(57)));
residual(89) = y(53)+y(64);
residual(90) = y(48)-(y(45)-y(21));
residual(91) = y(58)-(y(55)-y(22));
residual(92) = params(19)*(y(45)-params(11)*y(47))-(params(2)*y(49)+params(8)*(1-params(7))*params(18)*y(53));
residual(93) = params(19)*(y(55)-params(11)*y(57))-(params(2)*y(59)-params(18)*params(8)*params(7)*y(53));
residual(94) = y(52)-(y(47)-y(45));
residual(95) = y(62)-(y(57)-y(55));
residual(96) = y(50)-(y(49)+params(14)*params(5)*y(53));
residual(97) = y(51)-(y(49)+(-params(5))*(1-params(14))*y(53));
residual(98) = y(60)-(y(59)+params(5)*(1-params(15))*y(53));
residual(99) = y(61)-(y(59)+params(15)*(-params(5))*y(53));
residual(100) = y(54)-y(68);
residual(101) = y(63)-y(68);
residual(102) = y(69)-(params(7)*y(46)+(1-params(7))*y(56));
residual(103) = y(65)-(params(7)*y(45)+(1-params(7))*y(55));
residual(104) = y(66)-(params(7)*y(47)+(1-params(7))*y(57));
residual(105) = y(67)-(params(7)*y(49)+(1-params(7))*y(59));
residual(106) = y(10)-(params(24)*y(9)+params(25)*y(13)+y(46)*params(26)+y(56)*params(27));
residual(107) = y(14)-(y(9)*params(28)+y(13)*params(29)+y(46)*params(30)+y(56)*params(31));
residual(108) = y(9)-(y(45)-y(23));
residual(109) = y(10)-(y(47)-y(24));
residual(110) = y(11)-(y(49)-y(25));
residual(111) = y(12)-(y(10)-y(9));
residual(112) = y(13)-(y(55)-y(32));
residual(113) = y(14)-(y(57)-y(33));
residual(114) = y(15)-(y(59)-y(34));
residual(115) = y(16)-(y(14)-y(13));
residual(116) = y(17)-(y(53)-y(30));
residual(117) = y(18)-(params(7)*y(9)+(1-params(7))*y(13));
residual(118) = y(19)-(params(7)*y(10)+(1-params(7))*y(14));
residual(119) = y(20)-(params(7)*y(11)+(1-params(7))*y(15));
residual(120) = y(21)-(params(32)*y(1)-x(it_, 1));
residual(121) = y(22)-(params(32)*y(2)-x(it_, 2));

end
