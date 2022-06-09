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
residual = zeros(77, 1);
residual(1) = params(6)*0.5*params(5)*2*y(13)+y(84)*(-params(6))+y(77)+params(48)*y(97)*(-params(22))+params(48)*y(98)*(-params(26));
residual(2) = y(78)+(-params(6))*y(85);
residual(3) = y(79)+params(6)*0.5*params(1)*(1-params(3))*2*y(15);
residual(4) = (1-params(6))*0.5*params(5)*2*y(16)+y(84)*(-(1-params(6)))+y(80)+params(48)*y(97)*(-params(23))+params(48)*y(98)*(-params(27));
residual(5) = y(81)+y(85)*(-(1-params(6)));
residual(6) = y(82)+(1-params(6))*0.5*params(1)*(1-params(3))*2*y(18);
residual(7) = y(83);
residual(8) = y(84);
residual(9) = y(85);
residual(10) = y(86)+y(64)+y(60)*(-(params(12)*(-(1+params(5)))))+(1+params(5))*y(54)+params(48)*y(99)*(-params(16));
residual(11) = y(87)+y(60)*(-params(12))-y(54)+params(48)*y(100)*(-params(17));
residual(12) = y(88)+y(68)+y(62)*(-(params(14)*(-(1+params(5)))))+(1+params(5))*y(55)+params(48)*(-params(16))*y(101);
residual(13) = y(89)+y(62)*(-params(14))-y(55)+params(48)*(-params(17))*y(102);
residual(14) = y(77)+y(56)*T(8)+y(54)*(-params(5));
residual(15) = y(78)+y(56)*T(9)+(-params(8))*y(54)+y(53)*(-(params(8)*params(19)))+y(52)*(-((1-params(18))*params(8)));
residual(16) = y(79)+params(1)*y(58)+y(56)+params(1)*y(52);
residual(17) = y(80)+T(8)*y(57)+y(55)*(-params(5));
residual(18) = y(81)+T(9)*y(57)+(-params(8))*y(55)+y(53)*(-(params(8)*(1-params(19))))+y(52)*(-(params(18)*params(8)));
residual(19) = y(82)+y(58)*(-params(1))+y(57)+params(1)*y(53);
residual(20) = y(83)+y(58)*(-(1-params(2)))+y(57)*T(10)+T(2)*y(56);
residual(21) = (-params(6))*y(73)+T(8)*y(65)+y(63)*(-T(7))+y(60)*(-(params(12)*T(5)))+y(59)+T(11)*(-y(9))-y(64)-y(77);
residual(22) = params(6)*0.5*params(20)/params(12)*2*y(34)+(-params(6))*y(72)+y(60)+T(11)*y(9)*(-T(3))+T(11)*y(10)*(-params(4))+params(48)*y(97)*(-params(24))+params(48)*y(98)*(-params(28));
residual(23) = y(75)+(-params(6))*y(74)+T(9)*y(65)+y(63)*(-(T(7)*(-params(3))))+y(60)*T(12)+(-params(3))*y(59)+T(11)*params(3)*y(9)-y(78);
residual(24) = y(64);
residual(25) = y(65)-y(66)-y(67)-y(79);
residual(26) = y(67);
residual(27) = y(66);
residual(28) = (-(1-params(6)))*y(73)+T(8)*y(69)+T(7)*y(63)+y(62)*(-(T(5)*params(14)))+y(61)+T(11)*(-y(11))-y(68)-y(80);
residual(29) = (1-params(6))*0.5*params(20)/params(14)*2*y(41)+(-(1-params(6)))*y(72)+y(62)+T(11)*(-T(3))*y(11)+T(11)*(-params(4))*y(12)+params(48)*y(97)*(-params(25))+params(48)*y(98)*(-params(29));
residual(30) = y(76)+(-(1-params(6)))*y(74)+T(9)*y(69)+y(63)*(-(params(3)*T(7)))+y(62)*T(13)+(-params(3))*y(61)+T(11)*params(3)*y(11)-y(81);
residual(31) = y(68);
residual(32) = y(69)-y(70)-y(71)-y(82);
residual(33) = y(71);
residual(34) = y(70);
residual(35) = T(3)*y(61)+T(3)*y(59);
residual(36) = params(19)*y(71)+y(70)*(-(1-params(19)))+T(10)*y(69)+(1-params(18))*y(67)+y(66)*(-params(18))+T(2)*y(65)+y(63)+y(62)*(-((params(13)-params(2)*params(6))*params(14)))+T(6)*y(61)+y(60)*(-((1-params(2)*params(6)-params(11))*params(12)))+T(4)*y(59)+T(11)*y(9)*(-T(4))+T(11)*y(11)*(-T(6))-y(83);
residual(37) = y(72);
residual(38) = y(73);
residual(39) = y(74);
residual(40) = params(1)*y(28)-((1-params(18))*params(8)*y(27)+params(18)*params(8)*y(30));
residual(41) = params(1)*y(31)-(y(27)*params(8)*params(19)+y(30)*params(8)*(1-params(19)));
residual(42) = y(27)*(-params(8))-(y(23)+params(5)*y(26)-(1+params(5))*y(22));
residual(43) = y(30)*(-params(8))-(y(25)+params(5)*y(29)-(1+params(5))*y(24));
residual(44) = y(28)-(T(1)*(y(26)-y(27)*params(3))-T(2)*y(32));
residual(45) = y(31)-(T(1)*(y(29)-y(30)*params(3))+y(32)*params(13)/params(1));
residual(46) = params(1)*y(28)-(params(1)*y(31)+y(32)*(1-params(2)));
residual(47) = y(33)-(y(90)-T(3)*(y(47)-y(91))+T(4)*(y(96)-y(48))-params(3)*(y(92)-y(35)));
residual(48) = y(34)-(y(91)*params(4)+params(12)*(y(23)+y(33)*T(5)-y(35)*params(1)*params(3)/(1-params(3))+(1-params(2)*params(6)-params(11))*y(48)-(1+params(5))*y(22)));
residual(49) = y(40)-(y(93)-T(3)*(y(47)-y(94))+(y(96)-y(48))*T(6)-params(3)*(y(95)-y(42)));
residual(50) = y(41)-(params(4)*y(94)+params(14)*(y(25)+T(5)*y(40)-params(1)*params(3)/(1-params(3))*y(42)+y(48)*(params(13)-params(2)*params(6))-(1+params(5))*y(24)));
residual(51) = y(48)-T(7)*(y(33)-y(40)-params(3)*(y(35)-y(42)));
residual(52) = y(36)-(y(33)-y(22));
residual(53) = y(37)-(T(1)*(y(33)-params(3)*y(35))-T(2)*y(48));
residual(54) = y(39)-(y(37)+params(18)*y(48));
residual(55) = y(38)-(y(37)+y(48)*(-(1-params(18))));
residual(56) = y(43)-(y(40)-y(24));
residual(57) = y(44)-(T(1)*(y(40)-params(3)*y(42))+params(13)/params(1)*y(48));
residual(58) = y(46)-(y(44)+(1-params(19))*y(48));
residual(59) = y(45)-(y(44)+y(48)*(-params(19)));
residual(60) = y(49)-(params(6)*y(34)+y(41)*(1-params(6)));
residual(61) = y(50)-(y(33)*params(6)+y(40)*(1-params(6)));
residual(62) = y(51)-(params(6)*y(35)+y(42)*(1-params(6)));
residual(63) = y(35)-(params(22)*y(1)+params(23)*y(2)+params(24)*y(7)+params(25)*y(8));
residual(64) = y(42)-(y(1)*params(26)+y(2)*params(27)+y(7)*params(28)+y(8)*params(29));
residual(65) = y(13)-(y(33)-y(26));
residual(66) = y(14)-(y(35)-y(27));
residual(67) = y(15)-(y(37)-y(28));
residual(68) = y(16)-(y(40)-y(29));
residual(69) = y(17)-(y(42)-y(30));
residual(70) = y(18)-(y(44)-y(31));
residual(71) = y(19)-(y(48)-y(32));
residual(72) = y(20)-(params(6)*y(13)+(1-params(6))*y(16));
residual(73) = y(21)-(params(6)*y(14)+(1-params(6))*y(17));
residual(74) = y(22)-(params(16)*y(3)+x(it_, 1));
residual(75) = y(23)-(params(17)*y(4)+x(it_, 2));
residual(76) = y(24)-(params(16)*y(5)+x(it_, 3));
residual(77) = y(25)-(params(17)*y(6)+x(it_, 4));

end
