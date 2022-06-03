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
    T = MODEL_MAIN.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(73, 1);
residual(1) = y(70)+y(77)*(-params(6));
residual(2) = y(71);
residual(3) = y(72);
residual(4) = y(73)+y(77)*(-(1-params(6)));
residual(5) = y(74);
residual(6) = y(75);
residual(7) = y(76);
residual(8) = y(77);
residual(9) = y(78)+y(59)+y(55)*(-(params(12)*(-(1+params(5)))))+(-(1+params(5)))*y(52)+(1+params(5))*y(47)+params(21)*y(89)*(-params(16));
residual(10) = y(79)+y(55)*(-params(12))+y(52)-y(47)+params(21)*y(90)*(-params(17));
residual(11) = y(80)+y(63)+y(57)*(-(params(14)*(-(1+params(5)))))+(-(1+params(5)))*y(53)+(1+params(5))*y(48)+params(21)*(-params(16))*y(91);
residual(12) = y(81)+y(57)*(-params(14))+y(53)-y(48)+params(21)*(-params(17))*y(92);
residual(13) = y(70)+params(5)*y(52)+y(50)*T(8)+y(47)*(-params(5));
residual(14) = y(71)+params(8)*y(52)+y(50)*T(9);
residual(15) = y(72)+y(50)+params(1)*y(49)+y(47)*(-params(1));
residual(16) = y(73)+params(5)*y(53)+T(8)*y(51)+y(48)*(-params(5));
residual(17) = y(74)+params(8)*y(53)+T(9)*y(51);
residual(18) = y(75)+y(51)+y(49)*(-params(1))+y(48)*(-params(1));
residual(19) = y(76)+y(51)*T(10)+T(2)*y(50)+y(49)*(-(1-params(2)))+params(19)*y(48)+y(47)*(-params(18));
residual(20) = 2*y(28)+(-params(6))*y(68)+T(8)*y(60)+y(58)*(-T(7))+y(55)*(-(params(12)*T(5)))+y(54)+T(11)*(-y(5))-y(59)-y(70);
residual(21) = 2*y(29)+(-params(6))*y(67)+y(55)+T(11)*y(5)*(-T(3))+T(11)*y(6)*(-params(4));
residual(22) = (-params(6))*y(69)+T(9)*y(60)+y(58)*(-(T(7)*(-params(3))))+y(55)*T(12)+(-params(3))*y(54)+T(11)*params(3)*y(5)-y(71);
residual(23) = y(59);
residual(24) = y(60)-y(61)-y(62)-y(72);
residual(25) = y(62);
residual(26) = y(61);
residual(27) = 2*y(35)+(-(1-params(6)))*y(68)+T(8)*y(64)+T(7)*y(58)+y(57)*(-(T(5)*params(14)))+y(56)+T(11)*(-y(7))-y(63)-y(73);
residual(28) = 2*y(36)+(-(1-params(6)))*y(67)+y(57)+T(11)*(-T(3))*y(7)+T(11)*(-params(4))*y(8);
residual(29) = (-(1-params(6)))*y(69)+T(9)*y(64)+y(58)*(-(params(3)*T(7)))+y(57)*T(13)+(-params(3))*y(56)+T(11)*params(3)*y(7)-y(74);
residual(30) = y(63);
residual(31) = y(64)-y(65)-y(66)-y(75);
residual(32) = y(66);
residual(33) = y(65);
residual(34) = y(67);
residual(35) = y(68);
residual(36) = y(69);
residual(37) = T(3)*y(56)+T(3)*y(54);
residual(38) = params(19)*y(66)+y(65)*(-(1-params(19)))+T(10)*y(64)+(1-params(18))*y(62)+(-params(18))*y(61)+T(2)*y(60)+y(58)+y(57)*(-((params(13)-params(2)*params(6))*params(14)))+T(6)*y(56)+y(55)*(-((1-params(2)*params(6)-params(11))*params(12)))+T(4)*y(54)+T(11)*y(5)*(-T(4))+T(11)*y(7)*(-T(6))-y(76);
residual(39) = (-(y(18)+params(1)*y(23)+params(5)*y(21)+params(18)*y(27)-(1+params(5))*y(17)));
residual(40) = (-(y(20)+params(1)*y(26)+params(5)*y(24)-y(27)*params(19)-(1+params(5))*y(19)));
residual(41) = params(1)*y(23)-(params(1)*y(26)+y(27)*(1-params(2)));
residual(42) = y(23)-(T(1)*(y(21)-params(3)*y(22))-y(27)*T(2));
residual(43) = y(26)-(T(1)*(y(24)-params(3)*y(25))+y(27)*params(13)/params(1));
residual(44) = y(22)*params(8)-((1+params(5))*y(17)+(-y(18))-params(5)*y(21));
residual(45) = y(25)*params(8)-((1+params(5))*y(19)+(-y(20))-params(5)*y(24));
residual(46) = y(28)-(y(82)-T(3)*(y(45)-y(83))+T(4)*(y(88)-y(46))-params(3)*(y(84)-y(30)));
residual(47) = y(29)-(y(83)*params(4)+params(12)*(y(18)+y(28)*T(5)-y(30)*params(1)*params(3)/(1-params(3))+(1-params(2)*params(6)-params(11))*y(46)-(1+params(5))*y(17)));
residual(48) = y(35)-(y(85)-T(3)*(y(45)-y(86))+(y(88)-y(46))*T(6)-params(3)*(y(87)-y(37)));
residual(49) = y(36)-(params(4)*y(86)+params(14)*(y(20)+T(5)*y(35)-params(1)*params(3)/(1-params(3))*y(37)+y(46)*(params(13)-params(2)*params(6))-(1+params(5))*y(19)));
residual(50) = y(46)-T(7)*(y(28)-y(35)-params(3)*(y(30)-y(37)));
residual(51) = y(31)-(y(28)-y(17));
residual(52) = y(32)-(T(1)*(y(28)-params(3)*y(30))-T(2)*y(46));
residual(53) = y(34)-(y(32)+params(18)*y(46));
residual(54) = y(33)-(y(32)+y(46)*(-(1-params(18))));
residual(55) = y(38)-(y(35)-y(19));
residual(56) = y(39)-(T(1)*(y(35)-params(3)*y(37))+params(13)/params(1)*y(46));
residual(57) = y(41)-(y(39)+y(46)*(1-params(19)));
residual(58) = y(40)-(y(39)+y(46)*(-params(19)));
residual(59) = y(42)-(params(6)*y(29)+y(36)*(1-params(6)));
residual(60) = y(43)-(y(28)*params(6)+y(35)*(1-params(6)));
residual(61) = y(44)-(params(6)*y(30)+y(37)*(1-params(6)));
residual(62) = y(9)-(y(28)-y(21));
residual(63) = y(10)-(y(30)-y(22));
residual(64) = y(11)-(y(32)-y(23));
residual(65) = y(12)-(y(35)-y(24));
residual(66) = y(13)-(y(37)-y(25));
residual(67) = y(14)-(y(39)-y(26));
residual(68) = y(15)-(y(46)-y(27));
residual(69) = y(16)-(params(6)*y(9)+(1-params(6))*y(12));
residual(70) = y(17)-(params(16)*y(1)+x(it_, 1));
residual(71) = y(18)-(params(17)*y(2)+x(it_, 2));
residual(72) = y(19)-(params(16)*y(3)+x(it_, 3));
residual(73) = y(20)-(params(17)*y(4)+x(it_, 4));

end
