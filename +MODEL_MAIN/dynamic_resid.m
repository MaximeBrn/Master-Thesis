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
residual = zeros(75, 1);
residual(1) = params(6)*0.5*params(5)*2*y(9)+y(71)+y(78)*(-params(6));
residual(2) = params(6)*0.5*params(3)*params(8)*2*y(10)+y(72)+(-params(6))*y(79);
residual(3) = y(73)+params(6)*0.5*params(1)*(1-params(3))*2*y(11);
residual(4) = (1-params(6))*0.5*params(5)*2*y(12)+y(74)+y(78)*(-(1-params(6)));
residual(5) = (1-params(6))*0.5*params(3)*params(8)*2*y(13)+y(75)+y(79)*(-(1-params(6)));
residual(6) = y(76)+(1-params(6))*0.5*params(1)*(1-params(3))*2*y(14);
residual(7) = y(77);
residual(8) = y(78);
residual(9) = y(79);
residual(10) = y(80)+y(60)+y(56)*(-(params(12)*(-(1+params(5)))))+y(54)*(-params(34))+y(53)*(-params(25))+(1+params(5))*y(48)+params(39)*y(91)*(-params(16));
residual(11) = y(81)+y(56)*(-params(12))+y(54)*(-params(36))+y(53)*(-params(27))-y(48)+params(39)*y(92)*(-params(17));
residual(12) = y(82)+y(64)+y(58)*(-(params(14)*(-(1+params(5)))))+y(54)*(-params(35))+y(53)*(-params(26))+(1+params(5))*y(49)+params(39)*(-params(16))*y(93);
residual(13) = y(83)+y(58)*(-params(14))+y(54)*(-params(37))+y(53)*(-params(28))-y(49)+params(39)*(-params(17))*y(94);
residual(14) = y(71)+y(54)*(-params(30))+y(53)*(-params(21))+y(51)*T(8)+y(48)*(-params(5));
residual(15) = y(72)+y(53)+y(51)*T(9);
residual(16) = y(73)+y(54)*(-params(32))+y(53)*(-params(23))+y(51)+params(1)*y(50)+y(48)*(-params(1));
residual(17) = y(74)+y(54)*(-params(31))+y(53)*(-params(22))+T(8)*y(52)+y(49)*(-params(5));
residual(18) = y(75)+y(54)+T(9)*y(52);
residual(19) = y(76)+y(54)*(-params(33))+y(53)*(-params(24))+y(52)+y(50)*(-params(1))+y(49)*(-params(1));
residual(20) = y(77)+y(54)*(-params(38))+y(53)*(-params(29))+y(52)*T(10)+T(2)*y(51)+y(50)*(-(1-params(2)))+params(19)*y(49)+y(48)*(-params(18));
residual(21) = (-params(6))*y(69)+T(8)*y(61)+y(59)*(-T(7))+y(56)*(-(params(12)*T(5)))+y(55)+T(11)*(-y(5))-y(60)-y(71);
residual(22) = params(6)*0.5*params(20)/params(12)*2*y(30)+(-params(6))*y(68)+y(56)+T(11)*y(5)*(-T(3))+T(11)*y(6)*(-params(4));
residual(23) = (-params(6))*y(70)+T(9)*y(61)+y(59)*(-(T(7)*(-params(3))))+y(56)*T(12)+(-params(3))*y(55)+T(11)*params(3)*y(5)-y(72);
residual(24) = y(60);
residual(25) = y(61)-y(62)-y(63)-y(73);
residual(26) = y(63);
residual(27) = y(62);
residual(28) = (-(1-params(6)))*y(69)+T(8)*y(65)+T(7)*y(59)+y(58)*(-(T(5)*params(14)))+y(57)+T(11)*(-y(7))-y(64)-y(74);
residual(29) = (1-params(6))*0.5*params(20)/params(14)*2*y(37)+(-(1-params(6)))*y(68)+y(58)+T(11)*(-T(3))*y(7)+T(11)*(-params(4))*y(8);
residual(30) = (-(1-params(6)))*y(70)+T(9)*y(65)+y(59)*(-(params(3)*T(7)))+y(58)*T(13)+(-params(3))*y(57)+T(11)*params(3)*y(7)-y(75);
residual(31) = y(64);
residual(32) = y(65)-y(66)-y(67)-y(76);
residual(33) = y(67);
residual(34) = y(66);
residual(35) = T(3)*y(57)+T(3)*y(55);
residual(36) = params(19)*y(67)+y(66)*(-(1-params(19)))+T(10)*y(65)+(1-params(18))*y(63)+(-params(18))*y(62)+T(2)*y(61)+y(59)+y(58)*(-((params(13)-params(2)*params(6))*params(14)))+T(6)*y(57)+y(56)*(-((1-params(2)*params(6)-params(11))*params(12)))+T(4)*y(55)+T(11)*y(5)*(-T(4))+T(11)*y(7)*(-T(6))-y(77);
residual(37) = y(68);
residual(38) = y(69);
residual(39) = y(70);
residual(40) = (-(y(19)+params(1)*y(24)+params(5)*y(22)+params(18)*y(28)-(1+params(5))*y(18)));
residual(41) = (-(y(21)+params(1)*y(27)+params(5)*y(25)-y(28)*params(19)-(1+params(5))*y(20)));
residual(42) = params(1)*y(24)-(params(1)*y(27)+y(28)*(1-params(2)));
residual(43) = y(24)-(T(1)*(y(22)-params(3)*y(23))-y(28)*T(2));
residual(44) = y(27)-(T(1)*(y(25)-params(3)*y(26))+y(28)*params(13)/params(1));
residual(45) = y(23)-(y(22)*params(21)+y(25)*params(22)+y(24)*params(23)+y(27)*params(24)+y(18)*params(25)+y(20)*params(26)+y(19)*params(27)+y(21)*params(28)+y(28)*params(29));
residual(46) = y(26)-(y(22)*params(30)+y(25)*params(31)+y(24)*params(32)+y(27)*params(33)+y(18)*params(34)+y(20)*params(35)+y(19)*params(36)+y(21)*params(37)+y(28)*params(38));
residual(47) = y(29)-(y(84)-T(3)*(y(43)-y(85))+T(4)*(y(90)-y(44))-params(3)*(y(86)-y(31)));
residual(48) = y(30)-(y(85)*params(4)+params(12)*(y(19)+y(29)*T(5)-y(31)*params(1)*params(3)/(1-params(3))+(1-params(2)*params(6)-params(11))*y(44)-(1+params(5))*y(18)));
residual(49) = y(36)-(y(87)-T(3)*(y(43)-y(88))+(y(90)-y(44))*T(6)-params(3)*(y(89)-y(38)));
residual(50) = y(37)-(params(4)*y(88)+params(14)*(y(21)+T(5)*y(36)-params(1)*params(3)/(1-params(3))*y(38)+y(44)*(params(13)-params(2)*params(6))-(1+params(5))*y(20)));
residual(51) = y(44)-T(7)*(y(29)-y(36)-params(3)*(y(31)-y(38)));
residual(52) = y(32)-(y(29)-y(18));
residual(53) = y(33)-(T(1)*(y(29)-params(3)*y(31))-T(2)*y(44));
residual(54) = y(35)-(y(33)+params(18)*y(44));
residual(55) = y(34)-(y(33)+y(44)*(-(1-params(18))));
residual(56) = y(39)-(y(36)-y(20));
residual(57) = y(40)-(T(1)*(y(36)-params(3)*y(38))+params(13)/params(1)*y(44));
residual(58) = y(42)-(y(40)+y(44)*(1-params(19)));
residual(59) = y(41)-(y(40)+y(44)*(-params(19)));
residual(60) = y(45)-(params(6)*y(30)+y(37)*(1-params(6)));
residual(61) = y(46)-(y(29)*params(6)+y(36)*(1-params(6)));
residual(62) = y(47)-(params(6)*y(31)+y(38)*(1-params(6)));
residual(63) = y(9)-(y(29)-y(22));
residual(64) = y(10)-(y(31)-y(23));
residual(65) = y(11)-(y(33)-y(24));
residual(66) = y(12)-(y(36)-y(25));
residual(67) = y(13)-(y(38)-y(26));
residual(68) = y(14)-(y(40)-y(27));
residual(69) = y(15)-(y(44)-y(28));
residual(70) = y(16)-(params(6)*y(9)+(1-params(6))*y(12));
residual(71) = y(17)-(params(6)*y(10)+(1-params(6))*y(13));
residual(72) = y(18)-(params(16)*y(1)+x(it_, 1));
residual(73) = y(19)-(params(17)*y(2)+x(it_, 2));
residual(74) = y(20)-(params(16)*y(3)+x(it_, 3));
residual(75) = y(21)-(params(17)*y(4)+x(it_, 4));

end
