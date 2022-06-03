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
    T = Main.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(63, 1);
residual(1) = params(6)*(1+params(5))*0.5*(-(2*(y(11)-y(9))))+y(68)+y(62)+y(50)*(-(1+params(5)))+(-(1+params(5)))*y(49)+(1+params(5))*y(47)+y(43)*(-(params(12)*(-(1+params(5)))))+params(21)*y(79)*(-params(16));
residual(2) = y(69)+y(50)+y(49)+y(43)*(-params(12))-y(47)+params(21)*y(80)*(-params(17));
residual(3) = params(6)*(1+params(5))*0.5*2*(y(11)-y(9))+y(63)*T(9)+y(59)*(-params(6))+y(46)*(-T(6))+y(43)*(-(params(12)*T(3)))+y(42)+T(10)*(-y(5))-y(52)-y(62);
residual(4) = T(9)*y(64)+params(6)*y(60)+y(52)+params(5)*y(50)+params(5)*y(49)+y(47)*(-T(3));
residual(5) = y(52);
residual(6) = params(6)*params(20)/(params(6)*2*params(12))*2*y(14)+(-params(6))*y(58)+y(43)+T(10)*y(5)*(-T(1))+T(10)*y(6)*(-params(4));
residual(7) = params(6)*params(3)*0.5*(1-params(8))*2*y(15)+y(63)*T(11)+(-params(6))*y(61)+y(46)*(-(T(6)*(-params(3))))+y(43)*(-(params(12)*(-T(4))))+y(42)*(-params(3))+T(10)*params(3)*y(5)-y(53);
residual(8) = y(64)*T(11)+y(53)+params(8)*y(50)+T(4)*y(47);
residual(9) = y(53);
residual(10) = y(64)+y(54);
residual(11) = y(54);
residual(12) = params(6)*(1-params(3))*0.5*(1-params(1))*2*y(20)+y(63)-y(54);
residual(13) = y(62);
residual(14) = (1-params(6))*(1+params(5))*0.5*(-(2*(y(24)-y(22))))+y(70)+y(65)+(-(1+params(5)))*y(51)+(1+params(5))*y(49)+(1+params(5))*y(48)+y(45)*(-(params(14)*(-(1+params(5)))))+params(21)*(-params(16))*y(81);
residual(15) = y(71)+y(51)+y(45)*(-params(14))-y(48)-y(49)+params(21)*(-params(17))*y(82);
residual(16) = (1-params(6))*(1+params(5))*0.5*2*(y(24)-y(22))+T(9)*y(66)+y(59)*(-(1-params(6)))+T(6)*y(46)+y(45)*(-(T(3)*params(14)))+y(44)+T(10)*(-y(7))-y(55)-y(65);
residual(17) = T(9)*y(67)+y(60)*(-(1-params(6)))+y(55)+params(5)*y(51)+y(49)*(-params(5))+(-T(3))*y(48);
residual(18) = y(55);
residual(19) = (1-params(6))*params(20)/((1-params(6))*2*params(12))*2*y(27)+y(58)*(-(1-params(6)))+y(45)+T(10)*(-T(1))*y(7)+T(10)*(-params(4))*y(8);
residual(20) = (1-params(6))*params(3)*0.5*(1-params(8))*2*y(28)+T(11)*y(66)+y(61)*(-(1-params(6)))+y(46)*(-(params(3)*T(6)))+y(45)*(-(params(14)*(-T(4))))+(-params(3))*y(44)+T(10)*params(3)*y(7)-y(56);
residual(21) = T(11)*y(67)+y(56)+params(8)*y(51)+T(4)*y(48);
residual(22) = y(56);
residual(23) = y(67)+y(57);
residual(24) = y(57);
residual(25) = (1-params(6))*(1-params(3))*0.5*(1-params(1))*2*y(33)+y(66)-y(57);
residual(26) = y(65);
residual(27) = T(1)*y(44)+T(1)*y(42);
residual(28) = y(66)*T(12)+T(8)*y(63)+y(46)+y(45)*(-((params(13)-params(2)*params(6))*params(14)))+T(5)*y(44)+y(43)*(-((1-params(2)*params(6)-params(11))*params(12)))+T(2)*y(42)+T(10)*y(5)*(-T(2))+T(10)*y(7)*(-T(5));
residual(29) = y(67)*T(12)+T(8)*y(64)+y(49)+y(48)*(-(params(13)-params(2)*params(6)))+y(47)*(-(1-params(2)*params(6)-params(11)));
residual(30) = y(58);
residual(31) = y(59)-y(60);
residual(32) = y(60);
residual(33) = y(61);
residual(34) = y(11)-(y(72)-T(1)*(y(35)-y(73))+T(2)*(y(78)-y(36))-params(3)*(y(74)-y(15)));
residual(35) = y(14)-(y(73)*params(4)+params(12)*(y(10)+y(11)*T(3)-y(15)*T(4)+(1-params(2)*params(6)-params(11))*y(36)-(1+params(5))*y(9)));
residual(36) = y(24)-(y(75)-T(1)*(y(35)-y(76))+(y(78)-y(36))*T(5)-params(3)*(y(77)-y(28)));
residual(37) = y(27)-(params(4)*y(76)+params(14)*(y(23)+T(3)*y(24)-T(4)*y(28)+y(36)*(params(13)-params(2)*params(6))-(1+params(5))*y(22)));
residual(38) = y(36)-T(6)*(y(11)-y(24)-params(3)*(y(15)-y(28)));
residual(39) = (-(y(10)+T(3)*y(12)-T(4)*y(16)+(1-params(2)*params(6)-params(11))*y(37)-(1+params(5))*y(9)));
residual(40) = (-(y(23)+T(3)*y(25)-T(4)*y(29)+(params(13)-params(2)*params(6))*y(37)-(1+params(5))*y(22)));
residual(41) = y(37)-((1+params(5))*(y(9)-y(22))-params(5)*(y(12)-y(25))-(y(10)-y(23)));
residual(42) = y(16)*params(8)-((1+params(5))*y(9)+(-y(10))-params(5)*y(12));
residual(43) = y(29)*params(8)-((1+params(5))*y(22)+(-y(23))-params(5)*y(25));
residual(44) = y(13)-(y(11)-y(12));
residual(45) = y(17)-(y(15)-y(16));
residual(46) = y(19)-(y(20)-y(18));
residual(47) = y(26)-(y(24)-y(25));
residual(48) = y(30)-(y(28)-y(29));
residual(49) = y(32)-(y(33)-y(31));
residual(50) = y(38)-(params(6)*y(14)+y(27)*(1-params(6)));
residual(51) = y(39)-(y(11)*params(6)+y(24)*(1-params(6)));
residual(52) = y(40)-(y(39)-params(6)*y(12)+y(25)*(1-params(6)));
residual(53) = y(41)-(params(6)*y(15)+y(28)*(1-params(6)));
residual(54) = y(21)-(y(11)-y(9));
residual(55) = y(20)-(T(7)*(y(11)-params(3)*y(15))-y(36)*T(8));
residual(56) = y(18)-(T(7)*(y(12)-params(3)*y(16))-y(37)*T(8));
residual(57) = y(34)-(y(24)-y(22));
residual(58) = y(33)-(T(7)*(y(24)-params(3)*y(28))+y(36)*params(13)/params(1));
residual(59) = y(31)-(T(7)*(y(25)-params(3)*y(29))+y(37)*params(13)/params(1));
residual(60) = y(9)-(params(16)*y(1)+x(it_, 1));
residual(61) = y(10)-(params(17)*y(2)+x(it_, 2));
residual(62) = y(22)-(params(16)*y(3)+x(it_, 3));
residual(63) = y(23)-(params(17)*y(4)+x(it_, 4));

end
