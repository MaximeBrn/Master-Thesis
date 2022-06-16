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
    T = Model_MAIN_2.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(87, 1);
residual(1) = params(7)*0.5*params(3)*2*y(8)+y(90)*(-params(7))+y(81)+y(84);
residual(2) = params(7)*0.5*params(11)*params(4)*2*y(9)+(-params(7))*y(91)+y(82)-y(84);
residual(3) = params(7)*0.5*(params(2)*(1-params(11))*2*y(10)+T(5)*2*(y(10)-y(19)))+y(83)+(-params(7))*y(92);
residual(4) = y(84);
residual(5) = (1-params(7))*0.5*params(3)*2*y(12)+y(90)*(-(1-params(7)))+y(85)+y(88);
residual(6) = (1-params(7))*0.5*params(11)*params(4)*2*y(13)+y(91)*(-(1-params(7)))+y(86)-y(88);
residual(7) = (1-params(7))*0.5*(params(2)*(1-params(11))*2*y(14)+T(6)*2*(y(14)-y(19)))+y(87)+y(92)*(-(1-params(7)));
residual(8) = y(88);
residual(9) = y(89);
residual(10) = y(90);
residual(11) = y(91);
residual(12) = y(92)+params(7)*0.5*T(5)*(-(2*(y(10)-y(19))))+(1-params(7))*0.5*T(6)*(-(2*(y(14)-y(19))));
residual(13) = y(93)+y(69)+y(65)*(-(params(16)*(-(1+params(3)))))+(1+params(3))*y(53)+params(25)*y(102)*(-params(24));
residual(14) = y(94)+y(70)+y(67)*(-(params(17)*(-(1+params(3)))))+(1+params(3))*y(54)+params(25)*(-params(24))*y(103);
residual(15) = y(81)+y(57)*(-params(21))+params(19)*y(55)+y(53)*(-params(3));
residual(16) = y(82)+params(4)*y(58)+y(57)*(-(params(21)*(-params(11))))+y(55)*params(19)*(-params(11));
residual(17) = y(83)+y(58)*(-params(2))+y(55)*(-params(2))+y(53)*(-params(2))-y(60)-y(61);
residual(18) = y(60);
residual(19) = y(61);
residual(20) = y(85)+params(21)*y(57)+params(19)*y(56)+y(54)*(-params(3));
residual(21) = y(86)+params(4)*y(59)+y(57)*(-(params(11)*params(21)))+params(19)*(-params(11))*y(56);
residual(22) = y(87)+(-params(2))*y(59)+(-params(2))*y(56)+y(54)*(-params(2))-y(62)-y(63);
residual(23) = y(62);
residual(24) = y(63);
residual(25) = y(89)+y(63)*(-(params(15)*(-params(5))))+y(62)*(-(params(5)*(1-params(15))))+y(61)*(-((-params(5))*(1-params(14))))+y(60)*(-(params(14)*params(5)))+params(15)*y(59)+y(58)*(-params(14))+y(57)+params(18)*params(8)*params(7)*y(56)+y(55)*(-(params(8)*(1-params(7))*params(18)))+params(15)*y(54)+y(53)*(-params(14));
residual(26) = (-params(7))*y(78)+params(19)*y(71)+(-params(21))*y(68)+y(67)*(-(params(17)*(params(19)-params(21)*params(23))))+T(4)*y(66)+y(65)*(-(params(16)*(params(3)+params(21)*params(22))))+y(64)+T(7)*(-y(4))+T(7)*y(6)*(-T(4))-y(69)-y(81);
residual(27) = params(7)*0.5*params(6)/params(16)*2*y(34)+y(65)+T(7)*y(4)*(-T(1))+T(7)*y(5)*(-params(1))-y(77);
residual(28) = (-params(7))*y(79)+params(19)*(-params(11))*y(71)+(-(params(21)*(-params(11))))*y(68)+y(67)*(-(params(17)*(params(19)-params(21)*params(23))*(-params(11))))+y(66)*(-(params(11)*T(4)))+y(65)*(-(params(16)*(-(params(11)*params(21)*params(22)))))+(-params(11))*y(64)+T(7)*params(11)*y(4)+T(7)*y(6)*(-(T(4)*(-params(11))))-y(82);
residual(29) = y(69);
residual(30) = (-params(7))*y(80)+(-params(2))*y(71)-y(72)-y(73)-y(83);
residual(31) = y(72);
residual(32) = y(73);
residual(33) = (-(1-params(7)))*y(78)+params(19)*y(74)+params(21)*y(68)+y(67)*(-(params(17)*(params(3)+params(21)*params(23))))+y(66)+y(65)*(-(params(16)*(params(19)-params(21)*params(22))))+T(2)*y(64)+T(7)*y(4)*(-T(2))+T(7)*(-y(6))-y(70)-y(85);
residual(34) = (1-params(7))*0.5*params(6)/params(17)*2*y(41)+y(67)+T(7)*y(6)*(-T(3))+T(7)*(-params(1))*y(7);
residual(35) = (-(1-params(7)))*y(79)+params(19)*(-params(11))*y(74)+(-(params(11)*params(21)))*y(68)+y(67)*(-(params(17)*(-(params(11)*params(21)*params(23)))))+(-params(11))*y(66)+y(65)*(-(params(16)*(params(19)-params(21)*params(22))*(-params(11))))+y(64)*(-(params(11)*T(2)))+T(7)*y(4)*(-(T(2)*(-params(11))))+T(7)*params(11)*y(6)-y(86);
residual(36) = y(70);
residual(37) = (-(1-params(7)))*y(80)+(-params(2))*y(74)-y(75)-y(76)-y(87);
residual(38) = y(75);
residual(39) = y(76);
residual(40) = T(3)*y(66)+T(1)*y(64);
residual(41) = (-(1-params(7)))*y(77)+(-(params(15)*(-params(5))))*y(76)+(-(params(5)*(1-params(15))))*y(75)+params(18)*params(8)*params(7)*y(74)+(-((-params(5))*(1-params(14))))*y(73)+(-(params(14)*params(5)))*y(72)+y(68)+(-(params(8)*(1-params(7))*params(18)))*y(71)+params(25)*(1-params(7))*y(101)-y(89);
residual(42) = y(77);
residual(43) = y(78);
residual(44) = y(79);
residual(45) = y(80);
residual(46) = (-(params(2)*y(24)+params(3)*y(22)+params(14)*y(32)-(1+params(3))*y(20)));
residual(47) = (-(params(2)*y(29)+params(3)*y(27)-y(32)*params(15)-(1+params(3))*y(21)));
residual(48) = params(19)*(y(22)-params(11)*y(23))-(params(2)*y(24)+y(32)*params(8)*(1-params(7))*params(18));
residual(49) = params(19)*(y(27)-params(11)*y(28))-(params(2)*y(29)-y(32)*params(18)*params(8)*params(7));
residual(50) = y(32)-params(21)*(y(22)-y(27)-params(11)*(y(23)-y(28)));
residual(51) = y(23)*params(4)-(params(2)*y(24)+params(14)*y(32));
residual(52) = y(28)*params(4)-(params(2)*y(29)-y(32)*params(15));
residual(53) = y(25)-(y(24)+y(32)*params(14)*params(5));
residual(54) = y(26)-(y(24)+y(32)*(-params(5))*(1-params(14)));
residual(55) = y(30)-(y(29)+y(32)*params(5)*(1-params(15)));
residual(56) = y(31)-(y(29)+y(32)*params(15)*(-params(5)));
residual(57) = y(33)-(y(95)-params(11)*(y(97)-y(35))-T(1)*(y(47)-y(96))+T(2)*(y(98)-y(40)-params(11)*(y(100)-y(42))));
residual(58) = y(34)-(y(96)*params(1)+params(16)*(y(33)*(params(3)+params(21)*params(22))-y(35)*params(11)*params(21)*params(22)+(params(19)-params(21)*params(22))*(y(40)-params(11)*y(42))-(1+params(3))*y(20)));
residual(59) = y(40)-(y(98)-params(11)*(y(100)-y(42))-T(3)*(y(47)-y(99))+T(4)*(y(95)-y(33)-params(11)*(y(97)-y(35))));
residual(60) = y(41)-(params(1)*y(99)+params(17)*(y(40)*(params(3)+params(21)*params(23))-y(42)*params(11)*params(21)*params(23)+(params(19)-params(21)*params(23))*(y(33)-params(11)*y(35))-(1+params(3))*y(21)));
residual(61) = y(48)-params(21)*(y(33)-y(40)-params(11)*(y(35)-y(42)));
residual(62) = y(36)-(y(33)-y(20));
residual(63) = y(43)-(y(40)-y(21));
residual(64) = params(19)*(y(33)-params(11)*y(35))-(params(2)*y(37)+params(8)*(1-params(7))*params(18)*y(48));
residual(65) = y(38)-(y(37)+params(14)*params(5)*y(48));
residual(66) = y(39)-(y(37)+(-params(5))*(1-params(14))*y(48));
residual(67) = params(19)*(y(40)-params(11)*y(42))-(params(2)*y(44)-params(18)*params(8)*params(7)*y(48));
residual(68) = y(45)-(y(44)+params(5)*(1-params(15))*y(48));
residual(69) = y(46)-(y(44)+params(15)*(-params(5))*y(48));
residual(70) = y(49)-(y(34)+(1-params(7))*(y(48)-y(3)));
residual(71) = y(50)-(params(7)*y(33)+(1-params(7))*y(40));
residual(72) = y(51)-(params(7)*y(35)+(1-params(7))*y(42));
residual(73) = y(52)-(params(7)*y(37)+(1-params(7))*y(44));
residual(74) = y(8)-(y(33)-y(22));
residual(75) = y(9)-(y(35)-y(23));
residual(76) = y(10)-(y(37)-y(24));
residual(77) = y(11)-(y(9)-y(8));
residual(78) = y(12)-(y(40)-y(27));
residual(79) = y(13)-(y(42)-y(28));
residual(80) = y(14)-(y(44)-y(29));
residual(81) = y(15)-(y(13)-y(12));
residual(82) = y(16)-(y(48)-y(32));
residual(83) = y(17)-(params(7)*y(8)+(1-params(7))*y(12));
residual(84) = y(18)-(params(7)*y(9)+(1-params(7))*y(13));
residual(85) = y(19)-(params(7)*y(10)+(1-params(7))*y(14));
residual(86) = y(20)-(params(24)*y(1)-x(it_, 1));
residual(87) = y(21)-(params(24)*y(2)-x(it_, 2));

end
