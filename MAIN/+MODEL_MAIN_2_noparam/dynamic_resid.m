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
    T = MODEL_MAIN_2_noparam.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(85, 1);
residual(1) = params(7)*0.5*params(3)*2*y(9)+y(80)+y(87)*(-params(7));
residual(2) = params(7)*0.5*params(11)*params(4)*2*y(10)+y(81)+(-params(7))*y(88);
residual(3) = params(7)*0.5*(params(2)*(1-params(11))*2*y(11)+T(5)*2*(y(11)-y(18)))+y(82)+(-params(7))*y(89);
residual(4) = (1-params(7))*0.5*params(3)*2*y(12)+y(83)+y(87)*(-(1-params(7)));
residual(5) = (1-params(7))*0.5*params(11)*params(4)*2*y(13)+y(84)+y(88)*(-(1-params(7)));
residual(6) = (1-params(7))*0.5*(params(2)*(1-params(11))*2*y(14)+T(6)*2*(y(14)-y(18)))+y(85)+y(89)*(-(1-params(7)));
residual(7) = y(86);
residual(8) = y(87);
residual(9) = y(88);
residual(10) = y(89)+params(7)*0.5*T(5)*(-(2*(y(11)-y(18))))+(1-params(7))*0.5*T(6)*(-(2*(y(14)-y(18))));
residual(11) = y(90)+y(69)+y(65)*(-(params(16)*(-(1+params(3)))))+(1+params(3))*y(53)+params(27)*y(100)*(-params(25));
residual(12) = y(91)+params(27)*y(101)*(-params(26));
residual(13) = y(92)+y(73)+y(67)*(-(params(17)*(-(1+params(3)))))+(1+params(3))*y(54)+params(27)*(-params(25))*y(102);
residual(14) = y(93)+params(27)*(-params(26))*y(103);
residual(15) = y(80)+y(57)*(-params(22))+params(19)*y(55)+y(53)*(-params(3));
residual(16) = y(81)+params(4)*y(58)+y(57)*(-(params(22)*(-params(11))))+y(55)*params(19)*(-params(11));
residual(17) = y(82)+y(58)*(-params(2))+y(55)*(-params(2))+y(53)*(-params(2))-y(60)-y(61);
residual(18) = y(60);
residual(19) = y(61);
residual(20) = y(83)+params(22)*y(57)+params(19)*y(56)+y(54)*(-params(3));
residual(21) = y(84)+params(4)*y(59)+y(57)*(-(params(11)*params(22)))+params(19)*(-params(11))*y(56);
residual(22) = y(85)+(-params(2))*y(59)+(-params(2))*y(56)+y(54)*(-params(2))-y(62)-y(63);
residual(23) = y(62);
residual(24) = y(63);
residual(25) = y(86)+params(15)*y(63)+y(62)*(-(1-params(15)))+(1-params(14))*y(61)+y(60)*(-params(14))+params(15)*y(59)+y(58)*(-params(14))+y(57)+params(18)*params(8)*params(7)*y(56)+y(55)*(-(params(8)*(1-params(7))*params(18)))+params(15)*y(54)+y(53)*(-params(14));
residual(26) = (-params(7))*y(78)+params(19)*y(70)+(-params(22))*y(68)+y(67)*(-(params(17)*(params(19)-params(22)*params(24))))+T(4)*y(66)+y(65)*(-(params(16)*(params(3)+params(22)*params(23))))+y(64)+T(7)*(-y(5))+T(7)*y(7)*(-T(4))-y(69)-y(80);
residual(27) = params(7)*0.5*params(6)/params(16)*2*y(35)+(-params(7))*y(77)+y(65)+T(7)*y(5)*(-T(1))+T(7)*y(6)*(-params(1));
residual(28) = (-params(7))*y(79)+params(19)*(-params(11))*y(70)+(-(params(22)*(-params(11))))*y(68)+y(67)*(-(params(17)*(params(19)-params(22)*params(24))*(-params(11))))+y(66)*(-(params(11)*T(4)))+y(65)*(-(params(16)*(-(params(11)*params(22)*params(23)))))+(-params(11))*y(64)+T(7)*params(11)*y(5)+T(7)*y(7)*(-(T(4)*(-params(11))))-y(81);
residual(29) = y(69);
residual(30) = (-params(2))*y(70)-y(71)-y(72)-y(82);
residual(31) = y(71);
residual(32) = y(72);
residual(33) = (-(1-params(7)))*y(78)+params(19)*y(74)+params(22)*y(68)+y(67)*(-(params(17)*(params(3)+params(22)*params(24))))+y(66)+y(65)*(-(params(16)*(params(19)-params(22)*params(23))))+T(2)*y(64)+T(7)*y(5)*(-T(2))+T(7)*(-y(7))-y(73)-y(83);
residual(34) = (1-params(7))*0.5*params(6)/params(17)*2*y(42)+(-(1-params(7)))*y(77)+y(67)+T(7)*y(7)*(-T(3))+T(7)*(-params(1))*y(8);
residual(35) = (-(1-params(7)))*y(79)+params(19)*(-params(11))*y(74)+(-(params(11)*params(22)))*y(68)+y(67)*(-(params(17)*(-(params(11)*params(22)*params(24)))))+(-params(11))*y(66)+y(65)*(-(params(16)*(params(19)-params(22)*params(23))*(-params(11))))+y(64)*(-(params(11)*T(2)))+T(7)*y(5)*(-(T(2)*(-params(11))))+T(7)*params(11)*y(7)-y(84);
residual(36) = y(73);
residual(37) = (-params(2))*y(74)-y(75)-y(76)-y(85);
residual(38) = y(75);
residual(39) = y(76);
residual(40) = T(3)*y(66)+T(1)*y(64);
residual(41) = params(15)*y(76)+(-(1-params(15)))*y(75)+params(18)*params(8)*params(7)*y(74)+(1-params(14))*y(72)+(-params(14))*y(71)+y(68)+(-(params(8)*(1-params(7))*params(18)))*y(70)-y(86);
residual(42) = y(77);
residual(43) = y(78);
residual(44) = y(79);
residual(45) = (-(params(2)*y(25)+params(3)*y(23)+params(14)*y(33)-(1+params(3))*y(19)));
residual(46) = (-(params(2)*y(30)+params(3)*y(28)-y(33)*params(15)-(1+params(3))*y(21)));
residual(47) = params(19)*(y(23)-params(11)*y(24))-(params(2)*y(25)+y(33)*params(8)*(1-params(7))*params(18));
residual(48) = params(19)*(y(28)-params(11)*y(29))-(params(2)*y(30)-y(33)*params(18)*params(8)*params(7));
residual(49) = y(33)-params(22)*(y(23)-y(28)-params(11)*(y(24)-y(29)));
residual(50) = y(24)*params(4)-(params(2)*y(25)+params(14)*y(33));
residual(51) = y(29)*params(4)-(params(2)*y(30)-y(33)*params(15));
residual(52) = y(26)-(y(25)+params(14)*y(33));
residual(53) = y(27)-(y(25)+y(33)*(-(1-params(14))));
residual(54) = y(31)-(y(30)+y(33)*(1-params(15)));
residual(55) = y(32)-(y(30)+y(33)*(-params(15)));
residual(56) = y(34)-(y(94)-params(11)*(y(96)-y(36))-T(1)*(y(48)-y(95))+T(2)*(y(97)-y(41)-params(11)*(y(99)-y(43))));
residual(57) = y(35)-(y(95)*params(1)+params(16)*(y(34)*(params(3)+params(22)*params(23))-y(36)*params(11)*params(22)*params(23)+(params(19)-params(22)*params(23))*(y(41)-params(11)*y(43))-(1+params(3))*y(19)));
residual(58) = y(41)-(y(97)-params(11)*(y(99)-y(43))-T(3)*(y(48)-y(98))+T(4)*(y(94)-y(34)-params(11)*(y(96)-y(36))));
residual(59) = y(42)-(params(1)*y(98)+params(17)*(y(41)*(params(3)+params(22)*params(24))-y(43)*params(11)*params(22)*params(24)+(params(19)-params(22)*params(24))*(y(34)-params(11)*y(36))-(1+params(3))*y(21)));
residual(60) = y(49)-params(22)*(y(34)-y(41)-params(11)*(y(36)-y(43)));
residual(61) = y(37)-(y(34)-y(19));
residual(62) = params(19)*(y(34)-params(11)*y(36))-(params(2)*y(38)+params(8)*(1-params(7))*params(18)*y(49));
residual(63) = y(39)-(y(38)+params(14)*y(49));
residual(64) = y(40)-(y(38)+(-(1-params(14)))*y(49));
residual(65) = y(44)-(y(41)-y(21));
residual(66) = params(19)*(y(41)-params(11)*y(43))-(params(2)*y(45)-params(18)*params(8)*params(7)*y(49));
residual(67) = y(46)-(y(45)+(1-params(15))*y(49));
residual(68) = y(47)-(y(45)+(-params(15))*y(49));
residual(69) = y(50)-(params(7)*y(35)+(1-params(7))*y(42));
residual(70) = y(51)-(params(7)*y(34)+(1-params(7))*y(41));
residual(71) = y(52)-(params(7)*y(36)+(1-params(7))*y(43));
residual(72) = y(9)-(y(34)-y(23));
residual(73) = y(10)-(y(36)-y(24));
residual(74) = y(11)-(y(38)-y(25));
residual(75) = y(12)-(y(41)-y(28));
residual(76) = y(13)-(y(43)-y(29));
residual(77) = y(14)-(y(45)-y(30));
residual(78) = y(15)-(y(49)-y(33));
residual(79) = y(16)-(params(7)*y(9)+(1-params(7))*y(12));
residual(80) = y(17)-(params(7)*y(10)+(1-params(7))*y(13));
residual(81) = y(18)-(params(7)*y(11)+(1-params(7))*y(14));
residual(82) = y(19)-(params(25)*y(1)+x(it_, 1));
residual(83) = y(20)-(params(26)*y(2)+x(it_, 2));
residual(84) = y(21)-(params(25)*y(3)+x(it_, 3));
residual(85) = y(22)-(params(26)*y(4)+x(it_, 4));

end
