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
residual = zeros(47, 1);
residual(1) = y(55)*(-params(28))+y(54)*(-params(22))+(1+params(5))*y(45)+(1+params(5))*y(43)+y(42)*(-(1+params(5)))+y(38)+y(34)*(-(params(12)*(-(1+params(5)))))+params(30)*y(63)*(-params(16));
residual(2) = y(42)+y(39)+y(34)*(-params(12))+params(30)*y(64)*(-params(17))-y(43)-y(45);
residual(3) = y(55)*(-params(24))+y(54)*(-params(18))+y(52)*(-params(6))+y(37)*(-T(5))+y(34)*(-(params(12)*T(3)))+y(33)+T(7)*(-y(5))-y(47);
residual(4) = params(6)*y(53)+y(47)+y(45)*(-params(5))+y(43)*(-T(3))+params(5)*y(42);
residual(5) = y(47)+params(6)*(1+params(5))*2*y(13);
residual(6) = params(6)*1/params(12)*2*y(14)+y(55)*(-params(26))+y(54)*(-params(20))+(-params(6))*y(51)+y(34)+T(7)*y(5)*(-T(1))+T(7)*y(6)*(-params(4));
residual(7) = y(54)+y(37)*(-(T(5)*(-params(3))))+y(34)*T(8)+y(33)*(-params(3))+T(7)*params(3)*y(5)-y(48);
residual(8) = y(48)+(-params(8))*y(45)+T(6)*y(43);
residual(9) = y(48);
residual(10) = y(55)*(-params(29))+y(54)*(-params(23))+(1+params(5))*y(46)+(1+params(5))*y(44)+(1+params(5))*y(42)+y(40)+y(36)*(-(params(14)*(-(1+params(5)))))+params(30)*(-params(16))*y(65);
residual(11) = y(41)+y(36)*(-params(14))+params(30)*(-params(17))*y(66)-y(42)-y(44)-y(46);
residual(12) = y(55)*(-params(25))+y(54)*(-params(19))+y(52)*(-(1-params(6)))+T(5)*y(37)+y(36)*(-(T(3)*params(14)))+y(35)+T(7)*(-y(7))-y(49);
residual(13) = y(53)*(-(1-params(6)))+y(49)+(-params(5))*y(46)+(-T(3))*y(44)+y(42)*(-params(5));
residual(14) = y(49)+(1-params(6))*(1+params(5))*2*y(22);
residual(15) = (1-params(6))*1/params(14)*2*y(23)+y(55)*(-params(27))+y(54)*(-params(21))+y(51)*(-(1-params(6)))+y(36)+T(7)*(-T(1))*y(7)+T(7)*(-params(4))*y(8);
residual(16) = y(55)+y(37)*(-(params(3)*T(5)))+y(36)*T(9)+(-params(3))*y(35)+T(7)*params(3)*y(7)-y(50);
residual(17) = y(50)+(-params(8))*y(46)+T(6)*y(44);
residual(18) = y(50);
residual(19) = T(1)*y(35)+T(1)*y(33);
residual(20) = y(37)+y(36)*(-((params(13)-params(2)*params(6))*params(14)))+T(4)*y(35)+y(34)*(-((1-params(2)*params(6)-params(11))*params(12)))+T(2)*y(33)+T(7)*y(5)*(-T(2))+T(7)*y(7)*(-T(4));
residual(21) = y(44)*(-(params(13)-params(2)*params(6)))+y(42)+y(43)*(-(1-params(2)*params(6)-params(11)));
residual(22) = y(51);
residual(23) = y(52)-y(53);
residual(24) = y(53);
residual(25) = y(11)-(y(56)-T(1)*(y(27)-y(57))+T(2)*(y(62)-y(28))-params(3)*(y(58)-y(15)));
residual(26) = y(14)-(y(57)*params(4)+params(12)*(y(10)+y(11)*T(3)-y(15)*params(1)*params(3)/(1-params(3))+(1-params(2)*params(6)-params(11))*y(28)-(1+params(5))*y(9)));
residual(27) = y(20)-(y(59)-T(1)*(y(27)-y(60))+(y(62)-y(28))*T(4)-params(3)*(y(61)-y(24)));
residual(28) = y(23)-(params(4)*y(60)+params(14)*(y(19)+T(3)*y(20)-params(1)*params(3)/(1-params(3))*y(24)+y(28)*(params(13)-params(2)*params(6))-(1+params(5))*y(18)));
residual(29) = y(28)-T(5)*(y(11)-y(20)-params(3)*(y(15)-y(24)));
residual(30) = y(9)-(params(16)*y(1)+x(it_, 1));
residual(31) = y(10)-(params(17)*y(2)+x(it_, 2));
residual(32) = y(18)-(params(16)*y(3)+x(it_, 3));
residual(33) = y(19)-(params(17)*y(4)+x(it_, 4));
residual(34) = y(29)-((1+params(5))*(y(9)-y(18))-params(5)*(y(12)-y(21))-(y(10)-y(19)));
residual(35) = (-(y(10)+T(3)*y(12)-T(6)*y(16)+(1-params(2)*params(6)-params(11))*y(29)-(1+params(5))*y(9)));
residual(36) = (-(y(19)+T(3)*y(21)-T(6)*y(25)+(params(13)-params(2)*params(6))*y(29)-(1+params(5))*y(18)));
residual(37) = y(16)*(-params(8))-(y(10)+params(5)*y(12)-(1+params(5))*y(9));
residual(38) = y(25)*(-params(8))-(y(19)+params(5)*y(21)-(1+params(5))*y(18));
residual(39) = y(13)-(y(11)-y(12));
residual(40) = y(17)-(y(15)-y(16));
residual(41) = y(22)-(y(20)-y(21));
residual(42) = y(26)-(y(24)-y(25));
residual(43) = y(30)-(params(6)*y(14)+y(23)*(1-params(6)));
residual(44) = y(31)-(y(11)*params(6)+y(20)*(1-params(6)));
residual(45) = y(32)-(y(31)-params(6)*y(12)+y(21)*(1-params(6)));
residual(46) = y(15)-(y(11)*params(18)+y(20)*params(19)+y(14)*params(20)+y(23)*params(21)+y(9)*params(22)+y(18)*params(23));
residual(47) = y(24)-(y(11)*params(24)+y(20)*params(25)+y(14)*params(26)+y(23)*params(27)+y(9)*params(28)+y(18)*params(29));

end
