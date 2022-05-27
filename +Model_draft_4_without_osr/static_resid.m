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
    T = Model_draft_4_without_osr.static_resid_tt(T, y, x, params);
end
residual = zeros(25, 1);
residual(1) = params(6)*(1+params(5))*(-(2*(y(3)-y(1))))+y(20)+y(16)*(-(params(10)*(-(1+params(5)))))+params(17)*y(20)*(-params(14));
residual(2) = y(21)+y(16)*(-params(10))+params(17)*y(21)*(-params(15));
residual(3) = params(6)*(1+params(5))*2*(y(3)-y(1))+y(25)*(-params(6))+y(19)*(-T(1))+y(16)*(-(params(10)*T(2)))+y(15)+T(3)*(-y(15));
residual(4) = params(6)*1/params(10)*2*y(4)+(-params(6))*y(24)+y(16)+T(3)*y(15)*(-T(4))+T(3)*y(16)*(-params(4));
residual(5) = params(6)*params(16)*2*y(5)+y(19)*(-(T(1)*(-params(3))))+y(16)*T(5)+y(15)*(-params(3))+T(3)*params(3)*y(15);
residual(6) = (1-params(6))*(1+params(5))*(-(2*(y(8)-y(6))))+y(22)+y(18)*(-((-(1+params(5)))*params(12)))+params(17)*(-params(14))*y(22);
residual(7) = y(23)+y(18)*(-params(12))+params(17)*(-params(15))*y(23);
residual(8) = (1-params(6))*(1+params(5))*2*(y(8)-y(6))+y(25)*(-(1-params(6)))+y(19)*T(1)+y(18)*(-(T(2)*params(12)))+y(17)+T(3)*(-y(17));
residual(9) = (1-params(6))*1/params(12)*2*y(9)+y(24)*(-(1-params(6)))+y(18)+T(3)*(-T(4))*y(17)+T(3)*(-params(4))*y(18);
residual(10) = (1-params(6))*params(16)*2*y(10)+y(19)*(-(params(3)*T(1)))+y(18)*T(6)+(-params(3))*y(17)+T(3)*params(3)*y(17);
residual(11) = T(4)*y(17)+y(15)*T(4);
residual(12) = y(19)+y(18)*(-(params(12)*(params(11)-params(6)*params(2))))+y(17)*(params(11)-params(6)*params(2))/params(1)+y(16)*(-(params(10)*(1-params(6)*params(2)-params(9))))+y(15)*T(7)+T(3)*y(15)*(-T(7))+T(3)*y(17)*(-((params(11)-params(6)*params(2))/params(1)));
residual(13) = y(24);
residual(14) = y(25);
residual(15) = y(3)-(y(3)-T(4)*(y(11)-y(4)));
residual(16) = y(4)-(y(4)*params(4)+params(10)*(y(2)+y(3)*T(2)-y(5)*params(1)*params(3)/(1-params(3))+(1-params(6)*params(2)-params(9))*y(12)-(1+params(5))*y(1)));
residual(17) = y(8)-(y(8)-T(4)*(y(11)-y(9)));
residual(18) = y(9)-(params(4)*y(9)+params(12)*(y(7)+T(2)*y(8)-params(1)*params(3)/(1-params(3))*y(10)+(params(11)-params(6)*params(2))*y(12)-(1+params(5))*y(6)));
residual(19) = y(12)-T(1)*(y(3)-y(8)-params(3)*(y(5)-y(10)));
residual(20) = y(1)-(y(1)*params(14)+x(1));
residual(21) = y(2)-(params(15)*y(2)+x(2));
residual(22) = y(6)-(params(14)*y(6)+x(3));
residual(23) = y(7)-(params(15)*y(7)+x(4));
residual(24) = y(13)-(params(6)*y(4)+(1-params(6))*y(9));
residual(25) = y(14)-(params(6)*y(3)+(1-params(6))*y(8));
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
