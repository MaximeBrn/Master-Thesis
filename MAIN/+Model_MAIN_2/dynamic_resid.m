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
residual = zeros(85, 1);
residual(1) = params(7)*0.5*params(3)*2*y(9)+y(88)*(-params(7))+y(81)+y(80)*(-params(29))+y(79)*(-params(25));
residual(2) = y(82)+(-params(7))*y(89);
residual(3) = y(83)+params(7)*0.5*params(2)*(1-params(11))*2*y(11);
residual(4) = (1-params(7))*0.5*params(3)*2*y(12)+y(88)*(-(1-params(7)))+y(84)+y(80)*(-params(30))+y(79)*(-params(26));
residual(5) = y(85)+y(89)*(-(1-params(7)));
residual(6) = y(86)+(1-params(7))*0.5*params(2)*(1-params(11))*2*y(14);
residual(7) = y(87);
residual(8) = y(88);
residual(9) = y(89);
residual(10) = y(90)+y(68)+y(64)*(-(params(16)*(-(1+params(3)))))+(1+params(3))*y(52)+params(35)*y(100)*(-params(33));
residual(11) = y(91)+params(35)*y(101)*(-params(34));
residual(12) = y(92)+y(72)+y(66)*(-(params(17)*(-(1+params(3)))))+(1+params(3))*y(53)+params(35)*(-params(33))*y(102);
residual(13) = y(93)+params(35)*(-params(34))*y(103);
residual(14) = y(81)+y(56)*(-params(22))+params(19)*y(54)+y(52)*(-params(3));
residual(15) = y(82)+params(4)*y(57)+y(56)*(-(params(22)*(-params(11))))+y(54)*params(19)*(-params(11));
residual(16) = y(83)+y(57)*(-params(2))+y(54)*(-params(2))+y(52)*(-params(2))-y(59)-y(60);
residual(17) = y(59);
residual(18) = y(60);
residual(19) = y(84)+params(22)*y(56)+params(19)*y(55)+y(53)*(-params(3));
residual(20) = y(85)+params(4)*y(58)+y(56)*(-(params(11)*params(22)))+params(19)*(-params(11))*y(55);
residual(21) = y(86)+(-params(2))*y(58)+(-params(2))*y(55)+y(53)*(-params(2))-y(61)-y(62);
residual(22) = y(61);
residual(23) = y(62);
residual(24) = y(87)+params(15)*y(62)+y(61)*(-(1-params(15)))+(1-params(14))*y(60)+y(59)*(-params(14))+params(15)*y(58)+y(57)*(-params(14))+y(56)+params(18)*params(8)*params(7)*y(55)+y(54)*(-(params(8)*(1-params(7))*params(18)))+params(15)*y(53)+y(52)*(-params(14));
residual(25) = (-params(7))*y(77)+params(19)*y(69)+(-params(22))*y(67)+y(66)*(-(params(17)*(params(19)-params(22)*params(24))))+T(4)*y(65)+y(64)*(-(params(16)*(params(3)+params(22)*params(23))))+y(63)+T(5)*(-y(5))+T(5)*y(7)*(-T(4))-y(68)-y(81);
residual(26) = params(7)*0.5*params(6)/params(16)*2*y(34)+y(80)*(-params(31))+y(79)*(-params(27))+(-params(7))*y(76)+y(64)+T(5)*y(5)*(-T(1))+T(5)*y(6)*(-params(1));
residual(27) = y(79)+(-params(7))*y(78)+params(19)*(-params(11))*y(69)+(-(params(22)*(-params(11))))*y(67)+y(66)*(-(params(17)*(params(19)-params(22)*params(24))*(-params(11))))+y(65)*(-(params(11)*T(4)))+y(64)*(-(params(16)*(-(params(11)*params(22)*params(23)))))+(-params(11))*y(63)+T(5)*params(11)*y(5)+T(5)*y(7)*(-(T(4)*(-params(11))))-y(82);
residual(28) = y(68);
residual(29) = (-params(2))*y(69)-y(70)-y(71)-y(83);
residual(30) = y(70);
residual(31) = y(71);
residual(32) = (-(1-params(7)))*y(77)+params(19)*y(73)+params(22)*y(67)+y(66)*(-(params(17)*(params(3)+params(22)*params(24))))+y(65)+y(64)*(-(params(16)*(params(19)-params(22)*params(23))))+T(2)*y(63)+T(5)*y(5)*(-T(2))+T(5)*(-y(7))-y(72)-y(84);
residual(33) = (1-params(7))*0.5*params(6)/params(17)*2*y(41)+y(80)*(-params(32))+y(79)*(-params(28))+(-(1-params(7)))*y(76)+y(66)+T(5)*y(7)*(-T(3))+T(5)*(-params(1))*y(8);
residual(34) = y(80)+(-(1-params(7)))*y(78)+params(19)*(-params(11))*y(73)+(-(params(11)*params(22)))*y(67)+y(66)*(-(params(17)*(-(params(11)*params(22)*params(24)))))+(-params(11))*y(65)+y(64)*(-(params(16)*(params(19)-params(22)*params(23))*(-params(11))))+y(63)*(-(params(11)*T(2)))+T(5)*y(5)*(-(T(2)*(-params(11))))+T(5)*params(11)*y(7)-y(85);
residual(35) = y(72);
residual(36) = (-params(2))*y(73)-y(74)-y(75)-y(86);
residual(37) = y(74);
residual(38) = y(75);
residual(39) = T(3)*y(65)+T(1)*y(63);
residual(40) = params(15)*y(75)+(-(1-params(15)))*y(74)+params(18)*params(8)*params(7)*y(73)+(1-params(14))*y(71)+(-params(14))*y(70)+y(67)+(-(params(8)*(1-params(7))*params(18)))*y(69)-y(87);
residual(41) = y(76);
residual(42) = y(77);
residual(43) = y(78);
residual(44) = (-(params(2)*y(24)+params(3)*y(22)+params(14)*y(32)-(1+params(3))*y(18)));
residual(45) = (-(params(2)*y(29)+params(3)*y(27)-y(32)*params(15)-(1+params(3))*y(20)));
residual(46) = params(19)*(y(22)-params(11)*y(23))-(params(2)*y(24)+y(32)*params(8)*(1-params(7))*params(18));
residual(47) = params(19)*(y(27)-params(11)*y(28))-(params(2)*y(29)-y(32)*params(18)*params(8)*params(7));
residual(48) = y(32)-params(22)*(y(22)-y(27)-params(11)*(y(23)-y(28)));
residual(49) = y(23)*params(4)-(params(2)*y(24)+params(14)*y(32));
residual(50) = y(28)*params(4)-(params(2)*y(29)-y(32)*params(15));
residual(51) = y(25)-(y(24)+params(14)*y(32));
residual(52) = y(26)-(y(24)+y(32)*(-(1-params(14))));
residual(53) = y(30)-(y(29)+y(32)*(1-params(15)));
residual(54) = y(31)-(y(29)+y(32)*(-params(15)));
residual(55) = y(33)-(y(94)-params(11)*(y(96)-y(35))-T(1)*(y(47)-y(95))+T(2)*(y(97)-y(40)-params(11)*(y(99)-y(42))));
residual(56) = y(34)-(y(95)*params(1)+params(16)*(y(33)*(params(3)+params(22)*params(23))-y(35)*params(11)*params(22)*params(23)+(params(19)-params(22)*params(23))*(y(40)-params(11)*y(42))-(1+params(3))*y(18)));
residual(57) = y(40)-(y(97)-params(11)*(y(99)-y(42))-T(3)*(y(47)-y(98))+T(4)*(y(94)-y(33)-params(11)*(y(96)-y(35))));
residual(58) = y(41)-(params(1)*y(98)+params(17)*(y(40)*(params(3)+params(22)*params(24))-y(42)*params(11)*params(22)*params(24)+(params(19)-params(22)*params(24))*(y(33)-params(11)*y(35))-(1+params(3))*y(20)));
residual(59) = y(48)-params(22)*(y(33)-y(40)-params(11)*(y(35)-y(42)));
residual(60) = y(36)-(y(33)-y(18));
residual(61) = params(19)*(y(33)-params(11)*y(35))-(params(2)*y(37)+params(8)*(1-params(7))*params(18)*y(48));
residual(62) = y(38)-(y(37)+params(14)*y(48));
residual(63) = y(39)-(y(37)+(-(1-params(14)))*y(48));
residual(64) = y(43)-(y(40)-y(20));
residual(65) = params(19)*(y(40)-params(11)*y(42))-(params(2)*y(44)-params(18)*params(8)*params(7)*y(48));
residual(66) = y(45)-(y(44)+(1-params(15))*y(48));
residual(67) = y(46)-(y(44)+(-params(15))*y(48));
residual(68) = y(49)-(params(7)*y(34)+(1-params(7))*y(41));
residual(69) = y(50)-(params(7)*y(33)+(1-params(7))*y(40));
residual(70) = y(51)-(params(7)*y(35)+(1-params(7))*y(42));
residual(71) = y(35)-(params(25)*y(9)+params(26)*y(12)+y(34)*params(27)+y(41)*params(28));
residual(72) = y(42)-(y(9)*params(29)+y(12)*params(30)+y(34)*params(31)+y(41)*params(32));
residual(73) = y(9)-(y(33)-y(22));
residual(74) = y(10)-(y(35)-y(23));
residual(75) = y(11)-(y(37)-y(24));
residual(76) = y(12)-(y(40)-y(27));
residual(77) = y(13)-(y(42)-y(28));
residual(78) = y(14)-(y(44)-y(29));
residual(79) = y(15)-(y(48)-y(32));
residual(80) = y(16)-(params(7)*y(9)+(1-params(7))*y(12));
residual(81) = y(17)-(params(7)*y(10)+(1-params(7))*y(13));
residual(82) = y(18)-(params(33)*y(1)+x(it_, 1));
residual(83) = y(19)-(params(34)*y(2)+x(it_, 2));
residual(84) = y(20)-(params(33)*y(3)+x(it_, 3));
residual(85) = y(21)-(params(34)*y(4)+x(it_, 4));

end
