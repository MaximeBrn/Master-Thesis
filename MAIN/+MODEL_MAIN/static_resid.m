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
residual = zeros(77, 1);
residual(1) = params(6)*0.5*params(5)*2*y(1)+y(72)*(-params(6))+y(65)+params(48)*y(63)*(-params(22))+params(48)*y(64)*(-params(26));
residual(2) = y(66)+(-params(6))*y(73);
residual(3) = y(67)+params(6)*0.5*params(1)*(1-params(3))*2*y(3);
residual(4) = 0.5*(1-params(6))*params(5)*2*y(4)+y(72)*(-(1-params(6)))+y(68)+params(48)*y(63)*(-params(23))+params(48)*y(64)*(-params(27));
residual(5) = y(69)+y(73)*(-(1-params(6)));
residual(6) = y(70)+0.5*(1-params(6))*params(1)*(1-params(3))*2*y(6);
residual(7) = y(71);
residual(8) = y(72);
residual(9) = y(73);
residual(10) = y(74)+y(52)+y(48)*(-(params(12)*(-(1+params(5)))))+(1+params(5))*y(42)+params(48)*y(74)*(-params(16));
residual(11) = y(75)+y(48)*(-params(12))-y(42)+params(48)*y(75)*(-params(17));
residual(12) = y(76)+y(56)+y(50)*(-((-(1+params(5)))*params(14)))+(1+params(5))*y(43)+params(48)*(-params(16))*y(76);
residual(13) = y(77)+y(50)*(-params(14))-y(43)+params(48)*(-params(17))*y(77);
residual(14) = y(65)+y(44)*T(2)+y(42)*(-params(5));
residual(15) = y(66)+y(44)*T(3)+y(42)*(-params(8))+y(41)*(-(params(8)*params(19)))+y(40)*(-(params(8)*(1-params(18))));
residual(16) = y(67)+params(1)*y(46)+y(44)+params(1)*y(40);
residual(17) = y(68)+T(2)*y(45)+y(43)*(-params(5));
residual(18) = y(69)+T(3)*y(45)+y(43)*(-params(8))+y(41)*(-(params(8)*(1-params(19))))+y(40)*(-(params(8)*params(18)));
residual(19) = y(70)+y(46)*(-params(1))+y(45)+params(1)*y(41);
residual(20) = y(71)+y(46)*(-(1-params(2)))+y(45)*T(4)+y(44)*T(5);
residual(21) = (-params(6))*y(61)+T(2)*y(53)+y(51)*(-T(6))+y(48)*(-(params(12)*T(7)))+y(47)+T(8)*(-y(47))-y(52)-y(65);
residual(22) = params(6)*0.5*params(20)/params(12)*2*y(22)+(-params(6))*y(60)+y(48)+T(8)*y(47)*(-T(9))+T(8)*y(48)*(-params(4))+params(48)*y(63)*(-params(24))+params(48)*y(64)*(-params(28));
residual(23) = y(63)+(-params(6))*y(62)+T(3)*y(53)+y(51)*(-((-params(3))*T(6)))+y(48)*T(10)+(-params(3))*y(47)+T(8)*params(3)*y(47)-y(66);
residual(24) = y(52);
residual(25) = y(53)-y(54)-y(55)-y(67);
residual(26) = y(55);
residual(27) = y(54);
residual(28) = (-(1-params(6)))*y(61)+T(2)*y(57)+y(51)*T(6)+y(50)*(-(params(14)*T(7)))+y(49)+T(8)*(-y(49))-y(56)-y(68);
residual(29) = 0.5*(1-params(6))*params(20)/params(14)*2*y(29)+(-(1-params(6)))*y(60)+y(50)+T(8)*(-T(9))*y(49)+T(8)*y(50)*(-params(4))+params(48)*y(63)*(-params(25))+params(48)*y(64)*(-params(29));
residual(30) = y(64)+(-(1-params(6)))*y(62)+T(3)*y(57)+y(51)*(-(params(3)*T(6)))+y(50)*T(11)+(-params(3))*y(49)+T(8)*params(3)*y(49)-y(69);
residual(31) = y(56);
residual(32) = y(57)-y(58)-y(59)-y(70);
residual(33) = y(59);
residual(34) = y(58);
residual(35) = T(9)*y(49)+y(47)*T(9);
residual(36) = params(19)*y(59)+y(58)*(-(1-params(19)))+T(4)*y(57)+(1-params(18))*y(55)+y(54)*(-params(18))+T(5)*y(53)+y(51)+y(50)*(-(params(14)*(params(13)-params(6)*params(2))))+y(49)*(params(13)-params(6)*params(2))/params(1)+y(48)*(-(params(12)*(1-params(6)*params(2)-params(11))))+y(47)*T(12)+T(8)*y(47)*(-T(12))+T(8)*y(49)*(-((params(13)-params(6)*params(2))/params(1)))-y(71);
residual(37) = y(60);
residual(38) = y(61);
residual(39) = y(62);
residual(40) = params(1)*y(16)-(params(8)*(1-params(18))*y(15)+params(8)*params(18)*y(18));
residual(41) = params(1)*y(19)-(params(8)*params(19)*y(15)+params(8)*(1-params(19))*y(18));
residual(42) = (-params(8))*y(15)-(y(11)+params(5)*y(14)-(1+params(5))*y(10));
residual(43) = (-params(8))*y(18)-(y(13)+params(5)*y(17)-(1+params(5))*y(12));
residual(44) = y(16)-(T(1)*(y(14)-params(3)*y(15))-T(5)*y(20));
residual(45) = y(19)-(T(1)*(y(17)-params(3)*y(18))+params(13)/params(1)*y(20));
residual(46) = params(1)*y(16)-(params(1)*y(19)+(1-params(2))*y(20));
residual(47) = y(21)-(y(21)-T(9)*(y(35)-y(22)));
residual(48) = y(22)-(y(22)*params(4)+params(12)*(y(11)+T(7)*y(21)-params(1)*params(3)/(1-params(3))*y(23)+(1-params(6)*params(2)-params(11))*y(36)-(1+params(5))*y(10)));
residual(49) = y(28)-(y(28)-T(9)*(y(35)-y(29)));
residual(50) = y(29)-(params(4)*y(29)+params(14)*(y(13)+T(7)*y(28)-params(1)*params(3)/(1-params(3))*y(30)+(params(13)-params(6)*params(2))*y(36)-(1+params(5))*y(12)));
residual(51) = y(36)-T(6)*(y(21)-y(28)-params(3)*(y(23)-y(30)));
residual(52) = y(24)-(y(21)-y(10));
residual(53) = y(25)-(T(1)*(y(21)-params(3)*y(23))-T(5)*y(36));
residual(54) = y(27)-(y(25)+params(18)*y(36));
residual(55) = y(26)-(y(25)+y(36)*(-(1-params(18))));
residual(56) = y(31)-(y(28)-y(12));
residual(57) = y(32)-(T(1)*(y(28)-params(3)*y(30))+params(13)/params(1)*y(36));
residual(58) = y(34)-(y(32)+(1-params(19))*y(36));
residual(59) = y(33)-(y(32)+y(36)*(-params(19)));
residual(60) = y(37)-(params(6)*y(22)+(1-params(6))*y(29));
residual(61) = y(38)-(params(6)*y(21)+(1-params(6))*y(28));
residual(62) = y(39)-(params(6)*y(23)+(1-params(6))*y(30));
residual(63) = y(23)-(y(1)*params(22)+y(4)*params(23)+y(22)*params(24)+y(29)*params(25));
residual(64) = y(30)-(y(1)*params(26)+y(4)*params(27)+y(22)*params(28)+y(29)*params(29));
residual(65) = y(1)-(y(21)-y(14));
residual(66) = y(2)-(y(23)-y(15));
residual(67) = y(3)-(y(25)-y(16));
residual(68) = y(4)-(y(28)-y(17));
residual(69) = y(5)-(y(30)-y(18));
residual(70) = y(6)-(y(32)-y(19));
residual(71) = y(7)-(y(36)-y(20));
residual(72) = y(8)-(params(6)*y(1)+(1-params(6))*y(4));
residual(73) = y(9)-(params(6)*y(2)+(1-params(6))*y(5));
residual(74) = y(10)-(params(16)*y(10)+x(1));
residual(75) = y(11)-(params(17)*y(11)+x(2));
residual(76) = y(12)-(params(16)*y(12)+x(3));
residual(77) = y(13)-(params(17)*y(13)+x(4));
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
