function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = MODEL_MAIN.static_resid_tt(T, y, x, params);
end
residual = zeros(73, 1);
residual(1) = y(62)+y(69)*(-params(6));
residual(2) = y(63);
residual(3) = y(64);
residual(4) = y(65)+y(69)*(-(1-params(6)));
residual(5) = y(66);
residual(6) = y(67);
residual(7) = y(68);
residual(8) = y(69);
residual(9) = y(70)+y(51)+y(47)*(-(params(12)*(-(1+params(5)))))+(-(1+params(5)))*y(44)+(1+params(5))*y(39)+params(21)*y(70)*(-params(16));
residual(10) = y(71)+y(47)*(-params(12))+y(44)-y(39)+params(21)*y(71)*(-params(17));
residual(11) = y(72)+y(55)+y(49)*(-((-(1+params(5)))*params(14)))+(-(1+params(5)))*y(45)+(1+params(5))*y(40)+params(21)*(-params(16))*y(72);
residual(12) = y(73)+y(49)*(-params(14))+y(45)-y(40)+params(21)*(-params(17))*y(73);
residual(13) = y(62)+params(5)*y(44)+y(42)*T(2)+y(39)*(-params(5));
residual(14) = y(63)+y(44)*params(8)+y(42)*T(3);
residual(15) = y(64)+y(42)+params(1)*y(41)+y(39)*(-params(1));
residual(16) = y(65)+params(5)*y(45)+T(2)*y(43)+y(40)*(-params(5));
residual(17) = y(66)+y(45)*params(8)+T(3)*y(43);
residual(18) = y(67)+y(43)+y(41)*(-params(1))+y(40)*(-params(1));
residual(19) = y(68)+y(43)*T(4)+y(42)*T(5)+y(41)*(-(1-params(2)))+y(40)*params(19)+y(39)*(-params(18));
residual(20) = 2*y(20)+(-params(6))*y(60)+T(2)*y(52)+y(50)*(-T(6))+y(47)*(-(params(12)*T(7)))+y(46)+T(8)*(-y(46))-y(51)-y(62);
residual(21) = 2*y(21)+(-params(6))*y(59)+y(47)+T(8)*y(46)*(-T(9))+T(8)*y(47)*(-params(4));
residual(22) = (-params(6))*y(61)+T(3)*y(52)+y(50)*(-((-params(3))*T(6)))+y(47)*T(10)+(-params(3))*y(46)+T(8)*params(3)*y(46)-y(63);
residual(23) = y(51);
residual(24) = y(52)-y(53)-y(54)-y(64);
residual(25) = y(54);
residual(26) = y(53);
residual(27) = 2*y(27)+(-(1-params(6)))*y(60)+T(2)*y(56)+y(50)*T(6)+y(49)*(-(params(14)*T(7)))+y(48)+T(8)*(-y(48))-y(55)-y(65);
residual(28) = 2*y(28)+(-(1-params(6)))*y(59)+y(49)+T(8)*(-T(9))*y(48)+T(8)*y(49)*(-params(4));
residual(29) = (-(1-params(6)))*y(61)+T(3)*y(56)+y(50)*(-(params(3)*T(6)))+y(49)*T(11)+(-params(3))*y(48)+T(8)*params(3)*y(48)-y(66);
residual(30) = y(55);
residual(31) = y(56)-y(57)-y(58)-y(67);
residual(32) = y(58);
residual(33) = y(57);
residual(34) = y(59);
residual(35) = y(60);
residual(36) = y(61);
residual(37) = T(9)*y(48)+y(46)*T(9);
residual(38) = params(19)*y(58)+y(57)*(-(1-params(19)))+T(4)*y(56)+y(54)*(1-params(18))+(-params(18))*y(53)+T(5)*y(52)+y(50)+y(49)*(-(params(14)*(params(13)-params(6)*params(2))))+y(48)*(params(13)-params(6)*params(2))/params(1)+y(47)*(-(params(12)*(1-params(6)*params(2)-params(11))))+y(46)*T(12)+T(8)*y(46)*(-T(12))+T(8)*y(48)*(-((params(13)-params(6)*params(2))/params(1)))-y(68);
residual(39) = (-(y(10)+params(1)*y(15)+params(5)*y(13)+params(18)*y(19)-(1+params(5))*y(9)));
residual(40) = (-(y(12)+params(1)*y(18)+params(5)*y(16)-params(19)*y(19)-(1+params(5))*y(11)));
residual(41) = params(1)*y(15)-(params(1)*y(18)+(1-params(2))*y(19));
residual(42) = y(15)-(T(1)*(y(13)-params(3)*y(14))-T(5)*y(19));
residual(43) = y(18)-(T(1)*(y(16)-params(3)*y(17))+params(13)/params(1)*y(19));
residual(44) = params(8)*y(14)-((1+params(5))*y(9)+(-y(10))-params(5)*y(13));
residual(45) = params(8)*y(17)-((1+params(5))*y(11)+(-y(12))-params(5)*y(16));
residual(46) = y(20)-(y(20)-T(9)*(y(37)-y(21)));
residual(47) = y(21)-(y(21)*params(4)+params(12)*(y(10)+y(20)*T(7)-params(3)*params(1)/(1-params(3))*y(22)+(1-params(6)*params(2)-params(11))*y(38)-(1+params(5))*y(9)));
residual(48) = y(27)-(y(27)-T(9)*(y(37)-y(28)));
residual(49) = y(28)-(params(4)*y(28)+params(14)*(y(12)+T(7)*y(27)-params(3)*params(1)/(1-params(3))*y(29)+(params(13)-params(6)*params(2))*y(38)-(1+params(5))*y(11)));
residual(50) = y(38)-T(6)*(y(20)-y(27)-params(3)*(y(22)-y(29)));
residual(51) = y(23)-(y(20)-y(9));
residual(52) = y(24)-(T(1)*(y(20)-params(3)*y(22))-T(5)*y(38));
residual(53) = y(26)-(y(24)+params(18)*y(38));
residual(54) = y(25)-(y(24)+y(38)*(-(1-params(18))));
residual(55) = y(30)-(y(27)-y(11));
residual(56) = y(31)-(T(1)*(y(27)-params(3)*y(29))+params(13)/params(1)*y(38));
residual(57) = y(33)-(y(31)+(1-params(19))*y(38));
residual(58) = y(32)-(y(31)+y(38)*(-params(19)));
residual(59) = y(34)-(params(6)*y(21)+(1-params(6))*y(28));
residual(60) = y(35)-(params(6)*y(20)+(1-params(6))*y(27));
residual(61) = y(36)-(params(6)*y(22)+(1-params(6))*y(29));
residual(62) = y(1)-(y(20)-y(13));
residual(63) = y(2)-(y(22)-y(14));
residual(64) = y(3)-(y(24)-y(15));
residual(65) = y(4)-(y(27)-y(16));
residual(66) = y(5)-(y(29)-y(17));
residual(67) = y(6)-(y(31)-y(18));
residual(68) = y(7)-(y(38)-y(19));
residual(69) = y(8)-(params(6)*y(1)+(1-params(6))*y(4));
residual(70) = y(9)-(params(16)*y(9)+x(1));
residual(71) = y(10)-(params(17)*y(10)+x(2));
residual(72) = y(11)-(params(16)*y(11)+x(3));
residual(73) = y(12)-(params(17)*y(12)+x(4));
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
