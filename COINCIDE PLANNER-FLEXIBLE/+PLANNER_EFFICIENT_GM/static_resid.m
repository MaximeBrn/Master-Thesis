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
    T = PLANNER_EFFICIENT_GM.static_resid_tt(T, y, x, params);
end
residual = zeros(40, 1);
residual(1) = y(27)*T(1)+y(22)*(-params(5))+y(21)*(-(1-params(5)));
residual(2) = T(1)*y(29)+y(23)*(-y(5));
residual(3) = y(21)+y(23);
residual(4) = T(1)*y(25)-y(21);
residual(5) = y(31)+y(23)*(-y(2))+params(10)*T(17);
residual(6) = T(3)+y(35)*(-T(3))+y(32)+params(10)*T(20);
residual(7) = y(28)*T(4)+y(22)*(-(1-params(6)))+y(21)*(-params(6));
residual(8) = T(4)*y(30)+y(24)*(-y(11));
residual(9) = y(22)+y(24);
residual(10) = T(4)*y(26)-y(22);
residual(11) = y(33)+y(24)*(-y(8))+params(10)*T(23);
residual(12) = T(6)+y(36)*(-T(6))+y(34)+params(10)*T(26);
residual(13) = params(4)*params(7)*1/y(13)+y(25)+y(35)*T(7);
residual(14) = (1-params(4))*params(7)*1/y(14)+y(26)+y(36)*T(8);
residual(15) = params(4)*(1-params(7))*1/y(15)+y(27)+y(35)*T(9);
residual(16) = (1-params(4))*(1-params(7))*1/y(16)+y(28)+y(36)*T(10);
residual(17) = T(12)+y(29)+y(35)*(-T(12));
residual(18) = T(14)+y(30)+y(36)*(-T(14));
residual(19) = y(35);
residual(20) = y(36);
residual(21) = y(3)-((1-params(5))*y(1)+params(6)*y(7)+y(4));
residual(22) = y(9)-(params(5)*y(1)+(1-params(6))*y(7)+y(10));
residual(23) = y(3)-y(5)*y(2);
residual(24) = y(9)-y(11)*y(8);
residual(25) = y(13)-y(4)/params(4);
residual(26) = y(14)-y(10)/(1-params(4));
residual(27) = y(15)-y(1)/params(4);
residual(28) = y(16)-y(7)/(1-params(4));
residual(29) = y(17)-y(2)/params(4);
residual(30) = y(18)-y(8)/(1-params(4));
residual(31) = y(5)-y(5)^params(8)*exp(x(1));
residual(32) = y(6)-y(6)^params(9)*exp(x(3));
residual(33) = y(11)-y(11)^params(8)*exp(x(2));
residual(34) = y(12)-y(12)^params(9)*exp(x(4));
residual(35) = y(19)-params(4)*((1-params(7))*log(y(15))+params(7)*log(y(13))-T(2)*y(6)/(1+params(3)));
residual(36) = y(20)-(1-params(4))*((1-params(7))*log(y(16))+params(7)*log(y(14))-T(5)*y(12)/(1+params(3)));
lhs = y(37);
rhs = T(17);
residual(37) = lhs - rhs;
lhs = y(38);
rhs = T(20);
residual(38) = lhs - rhs;
lhs = y(39);
rhs = T(23);
residual(39) = lhs - rhs;
lhs = y(40);
rhs = T(26);
residual(40) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
