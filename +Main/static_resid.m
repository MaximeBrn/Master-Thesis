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
residual = zeros(55, 1);
residual(1) = y(52)+(1+params(5))*y(41)+(1+params(5))*y(39)+y(38)*(-(1+params(5)))+y(34)+y(30)*(-((-(1+params(5)))*params(12)))+params(26)*y(34)*(-params(16));
residual(2) = y(38)+y(35)+y(30)*(-params(12))+params(26)*y(35)*(-params(17))-y(39)-y(41);
residual(3) = y(50)*(-T(1))+y(48)*(-params(6))+y(33)*(-T(2))+y(30)*(-(params(12)*T(3)))+y(29)+T(4)*(-y(29))-y(43)-y(52);
residual(4) = params(6)*y(49)+y(43)+y(41)*(-params(5))+y(39)*(-T(3))+params(5)*y(38);
residual(5) = params(6)*(1+params(5))*2*y(5)+y(55)*(-params(22))+y(43)+y(54)*(-params(18));
residual(6) = params(6)*1/params(12)*2*y(6)+y(55)*(-params(24))+y(54)*(-params(20))+(-params(6))*y(47)+y(30)+T(4)*y(29)*(-T(5))+T(4)*y(30)*(-params(4));
residual(7) = y(54)+y(50)*(-(T(1)*(-params(3))))+y(33)*(-(T(2)*(-params(3))))+y(30)*(-(params(12)*(-T(6))))+y(29)*(-params(3))+T(4)*params(3)*y(29)-y(44);
residual(8) = y(44)+y(41)*(-params(8))+y(39)*T(6);
residual(9) = y(44);
residual(10) = y(50);
residual(11) = y(52);
residual(12) = y(53)+(1+params(5))*y(42)+(1+params(5))*y(40)+(1+params(5))*y(38)+y(36)+y(32)*(-((-(1+params(5)))*params(14)))+params(26)*(-params(16))*y(36);
residual(13) = y(37)+y(32)*(-params(14))+params(26)*(-params(17))*y(37)-y(38)-y(40)-y(42);
residual(14) = (-T(1))*y(51)+y(48)*(-(1-params(6)))+y(33)*T(2)+y(32)*(-(T(3)*params(14)))+y(31)+T(4)*(-y(31))-y(45)-y(53);
residual(15) = y(49)*(-(1-params(6)))+y(45)+(-params(5))*y(42)+(-T(3))*y(40)+y(38)*(-params(5));
residual(16) = (1-params(6))*(1+params(5))*2*y(16)+y(55)*(-params(23))+y(45)+y(54)*(-params(19));
residual(17) = (1-params(6))*1/params(14)*2*y(17)+y(55)*(-params(25))+y(54)*(-params(21))+y(47)*(-(1-params(6)))+y(32)+T(4)*(-T(5))*y(31)+T(4)*(-params(4))*y(32);
residual(18) = y(55)+(-(T(1)*(-params(3))))*y(51)+y(33)*(-(params(3)*T(2)))+y(32)*(-((-T(6))*params(14)))+(-params(3))*y(31)+T(4)*params(3)*y(31)-y(46);
residual(19) = y(46)+(-params(8))*y(42)+T(6)*y(40);
residual(20) = y(46);
residual(21) = y(51);
residual(22) = y(53);
residual(23) = T(5)*y(31)+y(29)*T(5);
residual(24) = y(51)*(-(params(13)/params(1)))+y(50)*T(7)+y(33)+y(32)*(-(params(14)*(params(13)-params(6)*params(2))))+y(31)*(params(13)-params(6)*params(2))/params(1)+y(30)*(-(params(12)*(1-params(6)*params(2)-params(11))))+y(29)*T(8)+T(4)*y(29)*(-T(8))+T(4)*y(31)*(-((params(13)-params(6)*params(2))/params(1)));
residual(25) = y(40)*(-(params(13)-params(6)*params(2)))+y(38)+y(39)*(-(1-params(6)*params(2)-params(11)));
residual(26) = y(47);
residual(27) = y(48)-y(49);
residual(28) = y(49);
residual(29) = y(3)-(y(3)-T(5)*(y(23)-y(6)));
residual(30) = y(6)-(y(6)*params(4)+params(12)*(y(2)+T(3)*y(3)-T(6)*y(7)+(1-params(6)*params(2)-params(11))*y(24)-(1+params(5))*y(1)));
residual(31) = y(14)-(y(14)-T(5)*(y(23)-y(17)));
residual(32) = y(17)-(params(4)*y(17)+params(14)*(y(13)+T(3)*y(14)-T(6)*y(18)+(params(13)-params(6)*params(2))*y(24)-(1+params(5))*y(12)));
residual(33) = y(24)-T(2)*(y(3)-y(14)-params(3)*(y(7)-y(18)));
residual(34) = y(1)-(params(16)*y(1)+x(1));
residual(35) = y(2)-(params(17)*y(2)+x(2));
residual(36) = y(12)-(params(16)*y(12)+x(3));
residual(37) = y(13)-(params(17)*y(13)+x(4));
residual(38) = y(25)-((1+params(5))*(y(1)-y(12))-params(5)*(y(4)-y(15))-(y(2)-y(13)));
residual(39) = (-(y(2)+T(3)*y(4)-T(6)*y(8)+(1-params(6)*params(2)-params(11))*y(25)-(1+params(5))*y(1)));
residual(40) = (-(y(13)+T(3)*y(15)-T(6)*y(19)+(params(13)-params(6)*params(2))*y(25)-(1+params(5))*y(12)));
residual(41) = (-params(8))*y(8)-(y(2)+params(5)*y(4)-(1+params(5))*y(1));
residual(42) = (-params(8))*y(19)-(y(13)+params(5)*y(15)-(1+params(5))*y(12));
residual(43) = y(5)-(y(3)-y(4));
residual(44) = y(9)-(y(7)-y(8));
residual(45) = y(16)-(y(14)-y(15));
residual(46) = y(20)-(y(18)-y(19));
residual(47) = y(26)-(params(6)*y(6)+(1-params(6))*y(17));
residual(48) = y(27)-(params(6)*y(3)+(1-params(6))*y(14));
residual(49) = y(28)-(y(27)-params(6)*y(4)+(1-params(6))*y(15));
residual(50) = y(10)-(T(1)*(y(3)-params(3)*y(7))-T(7)*y(24));
residual(51) = y(21)-(T(1)*(y(14)-params(3)*y(18))+params(13)/params(1)*y(24));
residual(52) = y(11)-(y(3)-y(1));
residual(53) = y(22)-(y(14)-y(12));
residual(54) = y(7)-(y(5)*params(18)+y(16)*params(19)+y(6)*params(20)+y(17)*params(21));
residual(55) = y(18)-(y(5)*params(22)+y(16)*params(23)+y(6)*params(24)+y(17)*params(25));
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
