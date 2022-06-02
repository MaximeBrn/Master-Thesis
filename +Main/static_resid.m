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
    T = main.static_resid_tt(T, y, x, params);
end
residual = zeros(65, 1);
residual(1) = params(6)*(1+params(5))*0.5*(-(2*(y(3)-y(1))))+y(60)+y(54)+y(41)*(-(1+params(5)))+(1+params(5))*y(39)+y(35)*(-((-(1+params(5)))*params(12)))+params(29)*y(60)*(-params(16));
residual(2) = y(61)+y(41)+y(35)*(-params(12))-y(39)+params(29)*y(61)*(-params(17));
residual(3) = params(6)*(1+params(5))*0.5*2*(y(3)-y(1))+y(55)*T(2)+y(51)*(-params(6))+y(38)*(-T(3))+y(35)*(-(params(12)*T(4)))+y(34)+T(5)*(-y(34))-y(44)-y(54);
residual(4) = T(2)*y(56)+params(6)*y(52)+y(44)+params(5)*y(41)+y(39)*(-T(4))-y(42);
residual(5) = y(65)*(-params(25))+y(44)+y(64)*(-params(21));
residual(6) = params(6)*params(20)/(params(6)*2*params(12))*2*y(6)+y(65)*(-params(27))+y(64)*(-params(23))+(-params(6))*y(50)+y(35)+T(5)*y(34)*(-T(6))+T(5)*y(35)*(-params(4));
residual(7) = params(6)*T(7)*2*y(7)+y(64)+y(55)*T(8)+(-params(6))*y(53)+y(38)*(-(T(3)*(-params(3))))+y(35)*(-(params(12)*(-T(9))))+y(34)*(-params(3))+T(5)*params(3)*y(34)-y(45);
residual(8) = y(56)*T(8)+y(45)+y(42)+y(39)*T(9);
residual(9) = y(45);
residual(10) = y(56)+y(46);
residual(11) = y(46);
residual(12) = params(6)*(1-params(3))*0.5*(1-params(1))*2*y(12)+y(55)-y(46);
residual(13) = y(54);
residual(14) = (1-params(6))*(1+params(5))*0.5*(-(2*(y(16)-y(14))))+y(62)+y(57)+(1+params(5))*y(41)+(1+params(5))*y(40)+y(37)*(-((-(1+params(5)))*params(14)))+params(29)*(-params(16))*y(62);
residual(15) = y(63)+y(37)*(-params(14))-y(40)-y(41)+params(29)*(-params(17))*y(63);
residual(16) = (1-params(6))*(1+params(5))*0.5*2*(y(16)-y(14))+T(2)*y(58)+y(51)*(-(1-params(6)))+y(38)*T(3)+y(37)*(-(T(4)*params(14)))+y(36)+T(5)*(-y(36))-y(47)-y(57);
residual(17) = T(2)*y(59)+y(52)*(-(1-params(6)))+y(47)+y(41)*(-params(5))+(-T(4))*y(40)-y(43);
residual(18) = y(65)*(-params(26))+y(47)+y(64)*(-params(22));
residual(19) = (1-params(6))*params(20)/(2*params(12)*(1-params(6)))*2*y(19)+y(65)*(-params(28))+y(64)*(-params(24))+y(50)*(-(1-params(6)))+y(37)+T(5)*(-T(6))*y(36)+T(5)*(-params(4))*y(37);
residual(20) = (1-params(6))*T(7)*2*y(20)+y(65)+T(8)*y(58)+y(53)*(-(1-params(6)))+y(38)*(-(params(3)*T(3)))+y(37)*(-((-T(9))*params(14)))+(-params(3))*y(36)+T(5)*params(3)*y(36)-y(48);
residual(21) = T(8)*y(59)+y(48)+y(43)+T(9)*y(40);
residual(22) = y(48);
residual(23) = y(59)+y(49);
residual(24) = y(49);
residual(25) = (1-params(6))*(1-params(3))*0.5*(1-params(1))*2*y(25)+y(58)-y(49);
residual(26) = y(57);
residual(27) = T(6)*y(36)+y(34)*T(6);
residual(28) = y(58)*T(10)+y(55)*T(11)+y(38)+y(37)*(-(params(14)*(params(13)-params(6)*params(2))))+y(36)*(params(13)-params(6)*params(2))/params(1)+y(35)*(-(params(12)*(1-params(6)*params(2)-params(11))))+y(34)*T(12)+T(5)*y(34)*(-T(12))+T(5)*y(36)*(-((params(13)-params(6)*params(2))/params(1)));
residual(29) = y(59)*T(10)+y(56)*T(11)+y(41)+y(40)*(-(params(13)-params(6)*params(2)))+y(39)*(-(1-params(6)*params(2)-params(11)));
residual(30) = y(50);
residual(31) = y(51)-y(52);
residual(32) = y(52);
residual(33) = y(53);
residual(34) = y(3)-(y(3)-T(6)*(y(27)-y(6)));
residual(35) = y(6)-(y(6)*params(4)+params(12)*(y(2)+y(3)*T(4)-y(7)*T(9)+(1-params(6)*params(2)-params(11))*y(28)-(1+params(5))*y(1)));
residual(36) = y(16)-(y(16)-T(6)*(y(27)-y(19)));
residual(37) = y(19)-(params(4)*y(19)+params(14)*(y(15)+T(4)*y(16)-T(9)*y(20)+(params(13)-params(6)*params(2))*y(28)-(1+params(5))*y(14)));
residual(38) = y(28)-T(3)*(y(3)-y(16)-params(3)*(y(7)-y(20)));
residual(39) = (-(y(2)+T(4)*y(4)-T(9)*y(8)+(1-params(6)*params(2)-params(11))*y(29)-(1+params(5))*y(1)));
residual(40) = (-(y(15)+T(4)*y(17)-T(9)*y(21)+(params(13)-params(6)*params(2))*y(29)-(1+params(5))*y(14)));
residual(41) = y(29)-((1+params(5))*(y(1)-y(14))-params(5)*(y(4)-y(17))-(y(2)-y(15)));
residual(42) = y(8)-y(4);
residual(43) = y(21)-y(17);
residual(44) = y(5)-(y(3)-y(4));
residual(45) = y(9)-(y(7)-y(8));
residual(46) = y(11)-(y(12)-y(10));
residual(47) = y(18)-(y(16)-y(17));
residual(48) = y(22)-(y(20)-y(21));
residual(49) = y(24)-(y(25)-y(23));
residual(50) = y(30)-(params(6)*y(6)+(1-params(6))*y(19));
residual(51) = y(31)-(params(6)*y(3)+(1-params(6))*y(16));
residual(52) = y(32)-(y(31)-params(6)*y(4)+(1-params(6))*y(17));
residual(53) = y(33)-(params(6)*y(7)+(1-params(6))*y(20));
residual(54) = y(13)-(y(3)-y(1));
residual(55) = y(12)-(T(1)*(y(3)-params(3)*y(7))-T(11)*y(28));
residual(56) = y(10)-(T(1)*(y(4)-params(3)*y(8))-T(11)*y(29));
residual(57) = y(26)-(y(16)-y(14));
residual(58) = y(25)-(T(1)*(y(16)-params(3)*y(20))+params(13)/params(1)*y(28));
residual(59) = y(23)-(T(1)*(y(17)-params(3)*y(21))+params(13)/params(1)*y(29));
residual(60) = y(1)-(y(1)*params(16)+x(1));
residual(61) = y(2)-(params(17)*y(2)+x(2));
residual(62) = y(14)-(params(16)*y(14)+x(3));
residual(63) = y(15)-(params(17)*y(15)+x(4));
residual(64) = y(7)-(params(21)*y(5)+params(22)*y(18)+y(6)*params(23)+y(19)*params(24));
residual(65) = y(20)-(params(25)*y(5)+params(26)*y(18)+y(6)*params(27)+y(19)*params(28));
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
