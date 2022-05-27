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
    T = Main.static_resid_tt(T, y, x, params);
end
residual = zeros(47, 1);
residual(1) = y(47)*(-params(28))+y(46)*(-params(22))+(1+params(5))*y(37)+(1+params(5))*y(35)+y(34)*(-(1+params(5)))+y(30)+y(26)*(-((-(1+params(5)))*params(12)))+params(30)*y(30)*(-params(16));
residual(2) = y(34)+y(31)+y(26)*(-params(12))+params(30)*y(31)*(-params(17))-y(35)-y(37);
residual(3) = y(47)*(-params(24))+y(46)*(-params(18))+y(44)*(-params(6))+y(29)*(-T(1))+y(26)*(-(params(12)*T(2)))+y(25)+T(3)*(-y(25))-y(39);
residual(4) = params(6)*y(45)+y(39)+y(37)*(-params(5))+y(35)*(-T(2))+params(5)*y(34);
residual(5) = y(39)+params(6)*(1+params(5))*2*y(5);
residual(6) = params(6)*1/params(12)*2*y(6)+y(47)*(-params(26))+y(46)*(-params(20))+(-params(6))*y(43)+y(26)+T(3)*y(25)*(-T(4))+T(3)*y(26)*(-params(4));
residual(7) = y(46)+y(29)*(-(T(1)*(-params(3))))+y(26)*T(5)+y(25)*(-params(3))+T(3)*params(3)*y(25)-y(40);
residual(8) = y(40)+y(37)*(-params(8))+y(35)*T(6);
residual(9) = y(40);
residual(10) = y(47)*(-params(29))+y(46)*(-params(23))+(1+params(5))*y(38)+(1+params(5))*y(36)+(1+params(5))*y(34)+y(32)+y(28)*(-((-(1+params(5)))*params(14)))+params(30)*(-params(16))*y(32);
residual(11) = y(33)+y(28)*(-params(14))+params(30)*(-params(17))*y(33)-y(34)-y(36)-y(38);
residual(12) = y(47)*(-params(25))+y(46)*(-params(19))+y(44)*(-(1-params(6)))+y(29)*T(1)+y(28)*(-(T(2)*params(14)))+y(27)+T(3)*(-y(27))-y(41);
residual(13) = y(45)*(-(1-params(6)))+y(41)+(-params(5))*y(38)+(-T(2))*y(36)+y(34)*(-params(5));
residual(14) = y(41)+(1-params(6))*(1+params(5))*2*y(14);
residual(15) = (1-params(6))*1/params(14)*2*y(15)+y(47)*(-params(27))+y(46)*(-params(21))+y(43)*(-(1-params(6)))+y(28)+T(3)*(-T(4))*y(27)+T(3)*(-params(4))*y(28);
residual(16) = y(47)+y(29)*(-(params(3)*T(1)))+y(28)*T(7)+(-params(3))*y(27)+T(3)*params(3)*y(27)-y(42);
residual(17) = y(42)+(-params(8))*y(38)+T(6)*y(36);
residual(18) = y(42);
residual(19) = T(4)*y(27)+y(25)*T(4);
residual(20) = y(29)+y(28)*(-(params(14)*(params(13)-params(6)*params(2))))+y(27)*(params(13)-params(6)*params(2))/params(1)+y(26)*(-(params(12)*(1-params(6)*params(2)-params(11))))+y(25)*T(8)+T(3)*y(25)*(-T(8))+T(3)*y(27)*(-((params(13)-params(6)*params(2))/params(1)));
residual(21) = y(36)*(-(params(13)-params(6)*params(2)))+y(34)+y(35)*(-(1-params(6)*params(2)-params(11)));
residual(22) = y(43);
residual(23) = y(44)-y(45);
residual(24) = y(45);
residual(25) = y(3)-(y(3)-T(4)*(y(19)-y(6)));
residual(26) = y(6)-(y(6)*params(4)+params(12)*(y(2)+T(2)*y(3)-params(1)*params(3)/(1-params(3))*y(7)+(1-params(6)*params(2)-params(11))*y(20)-(1+params(5))*y(1)));
residual(27) = y(12)-(y(12)-T(4)*(y(19)-y(15)));
residual(28) = y(15)-(params(4)*y(15)+params(14)*(y(11)+T(2)*y(12)-params(1)*params(3)/(1-params(3))*y(16)+(params(13)-params(6)*params(2))*y(20)-(1+params(5))*y(10)));
residual(29) = y(20)-T(1)*(y(3)-y(12)-params(3)*(y(7)-y(16)));
residual(30) = y(1)-(params(16)*y(1)+x(1));
residual(31) = y(2)-(params(17)*y(2)+x(2));
residual(32) = y(10)-(params(16)*y(10)+x(3));
residual(33) = y(11)-(params(17)*y(11)+x(4));
residual(34) = y(21)-((1+params(5))*(y(1)-y(10))-params(5)*(y(4)-y(13))-(y(2)-y(11)));
residual(35) = (-(y(2)+T(2)*y(4)-T(6)*y(8)+(1-params(6)*params(2)-params(11))*y(21)-(1+params(5))*y(1)));
residual(36) = (-(y(11)+T(2)*y(13)-T(6)*y(17)+(params(13)-params(6)*params(2))*y(21)-(1+params(5))*y(10)));
residual(37) = (-params(8))*y(8)-(y(2)+params(5)*y(4)-(1+params(5))*y(1));
residual(38) = (-params(8))*y(17)-(y(11)+params(5)*y(13)-(1+params(5))*y(10));
residual(39) = y(5)-(y(3)-y(4));
residual(40) = y(9)-(y(7)-y(8));
residual(41) = y(14)-(y(12)-y(13));
residual(42) = y(18)-(y(16)-y(17));
residual(43) = y(22)-(params(6)*y(6)+(1-params(6))*y(15));
residual(44) = y(23)-(params(6)*y(3)+(1-params(6))*y(12));
residual(45) = y(24)-(y(23)-params(6)*y(4)+(1-params(6))*y(13));
residual(46) = y(7)-(params(18)*y(3)+params(19)*y(12)+y(6)*params(20)+y(15)*params(21)+params(22)*y(1)+params(23)*y(10));
residual(47) = y(16)-(params(24)*y(3)+params(25)*y(12)+y(6)*params(26)+y(15)*params(27)+params(28)*y(1)+params(29)*y(10));
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
