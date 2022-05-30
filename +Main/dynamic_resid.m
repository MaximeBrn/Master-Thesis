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
residual = zeros(55, 1);
residual(1) = y(60)+(1+params(5))*y(49)+(1+params(5))*y(47)+y(46)*(-(1+params(5)))+y(42)+y(38)*(-(params(12)*(-(1+params(5)))))+params(26)*y(71)*(-params(16));
residual(2) = y(46)+y(43)+y(38)*(-params(12))+params(26)*y(72)*(-params(17))-y(47)-y(49);
residual(3) = y(58)*(-T(7))+y(56)*(-params(6))+y(41)*(-T(6))+y(38)*(-(params(12)*T(3)))+y(37)+T(9)*(-y(5))-y(51)-y(60);
residual(4) = params(6)*y(57)+y(51)+y(49)*(-params(5))+y(47)*(-T(3))+params(5)*y(46);
residual(5) = params(6)*(1+params(5))*2*y(13)+y(63)*(-params(22))+y(51)+y(62)*(-params(18));
residual(6) = params(6)*1/params(12)*2*y(14)+y(63)*(-params(24))+y(62)*(-params(20))+(-params(6))*y(55)+y(38)+T(9)*y(5)*(-T(1))+T(9)*y(6)*(-params(4));
residual(7) = y(62)+y(58)*(-(T(7)*(-params(3))))+y(41)*(-(T(6)*(-params(3))))+y(38)*(-(params(12)*(-T(4))))+y(37)*(-params(3))+T(9)*params(3)*y(5)-y(52);
residual(8) = y(52)+(-params(8))*y(49)+T(4)*y(47);
residual(9) = y(52);
residual(10) = y(58);
residual(11) = y(60);
residual(12) = y(61)+(1+params(5))*y(50)+(1+params(5))*y(48)+(1+params(5))*y(46)+y(44)+y(40)*(-(params(14)*(-(1+params(5)))))+params(26)*(-params(16))*y(73);
residual(13) = y(45)+y(40)*(-params(14))+params(26)*(-params(17))*y(74)-y(46)-y(48)-y(50);
residual(14) = (-T(7))*y(59)+y(56)*(-(1-params(6)))+T(6)*y(41)+y(40)*(-(T(3)*params(14)))+y(39)+T(9)*(-y(7))-y(53)-y(61);
residual(15) = y(57)*(-(1-params(6)))+y(53)+(-params(5))*y(50)+(-T(3))*y(48)+y(46)*(-params(5));
residual(16) = (1-params(6))*(1+params(5))*2*y(24)+y(63)*(-params(23))+y(53)+y(62)*(-params(19));
residual(17) = (1-params(6))*1/params(14)*2*y(25)+y(63)*(-params(25))+y(62)*(-params(21))+y(55)*(-(1-params(6)))+y(40)+T(9)*(-T(1))*y(7)+T(9)*(-params(4))*y(8);
residual(18) = y(63)+(-(T(7)*(-params(3))))*y(59)+y(41)*(-(params(3)*T(6)))+y(40)*(-(params(14)*(-T(4))))+(-params(3))*y(39)+T(9)*params(3)*y(7)-y(54);
residual(19) = y(54)+(-params(8))*y(50)+T(4)*y(48);
residual(20) = y(54);
residual(21) = y(59);
residual(22) = y(61);
residual(23) = T(1)*y(39)+T(1)*y(37);
residual(24) = y(59)*(-(params(13)/params(1)))+T(8)*y(58)+y(41)+y(40)*(-((params(13)-params(2)*params(6))*params(14)))+T(5)*y(39)+y(38)*(-((1-params(2)*params(6)-params(11))*params(12)))+T(2)*y(37)+T(9)*y(5)*(-T(2))+T(9)*y(7)*(-T(5));
residual(25) = y(48)*(-(params(13)-params(2)*params(6)))+y(46)+y(47)*(-(1-params(2)*params(6)-params(11)));
residual(26) = y(55);
residual(27) = y(56)-y(57);
residual(28) = y(57);
residual(29) = y(11)-(y(64)-T(1)*(y(31)-y(65))+T(2)*(y(70)-y(32))-params(3)*(y(66)-y(15)));
residual(30) = y(14)-(y(65)*params(4)+params(12)*(y(10)+y(11)*T(3)-y(15)*T(4)+(1-params(2)*params(6)-params(11))*y(32)-(1+params(5))*y(9)));
residual(31) = y(22)-(y(67)-T(1)*(y(31)-y(68))+(y(70)-y(32))*T(5)-params(3)*(y(69)-y(26)));
residual(32) = y(25)-(params(4)*y(68)+params(14)*(y(21)+T(3)*y(22)-T(4)*y(26)+y(32)*(params(13)-params(2)*params(6))-(1+params(5))*y(20)));
residual(33) = y(32)-T(6)*(y(11)-y(22)-params(3)*(y(15)-y(26)));
residual(34) = y(9)-(params(16)*y(1)+x(it_, 1));
residual(35) = y(10)-(params(17)*y(2)+x(it_, 2));
residual(36) = y(20)-(params(16)*y(3)+x(it_, 3));
residual(37) = y(21)-(params(17)*y(4)+x(it_, 4));
residual(38) = y(33)-((1+params(5))*(y(9)-y(20))-params(5)*(y(12)-y(23))-(y(10)-y(21)));
residual(39) = (-(y(10)+T(3)*y(12)-T(4)*y(16)+(1-params(2)*params(6)-params(11))*y(33)-(1+params(5))*y(9)));
residual(40) = (-(y(21)+T(3)*y(23)-T(4)*y(27)+(params(13)-params(2)*params(6))*y(33)-(1+params(5))*y(20)));
residual(41) = y(16)*(-params(8))-(y(10)+params(5)*y(12)-(1+params(5))*y(9));
residual(42) = y(27)*(-params(8))-(y(21)+params(5)*y(23)-(1+params(5))*y(20));
residual(43) = y(13)-(y(11)-y(12));
residual(44) = y(17)-(y(15)-y(16));
residual(45) = y(24)-(y(22)-y(23));
residual(46) = y(28)-(y(26)-y(27));
residual(47) = y(34)-(params(6)*y(14)+y(25)*(1-params(6)));
residual(48) = y(35)-(y(11)*params(6)+y(22)*(1-params(6)));
residual(49) = y(36)-(y(35)-params(6)*y(12)+y(23)*(1-params(6)));
residual(50) = y(18)-(T(7)*(y(11)-params(3)*y(15))-y(32)*T(8));
residual(51) = y(29)-(T(7)*(y(22)-params(3)*y(26))+y(32)*params(13)/params(1));
residual(52) = y(19)-(y(11)-y(9));
residual(53) = y(30)-(y(22)-y(20));
residual(54) = y(15)-(y(13)*params(18)+y(24)*params(19)+y(14)*params(20)+y(25)*params(21));
residual(55) = y(26)-(y(13)*params(22)+y(24)*params(23)+y(14)*params(24)+y(25)*params(25));

end
