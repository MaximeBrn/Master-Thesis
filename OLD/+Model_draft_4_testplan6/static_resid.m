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
    T = Model_draft_4_testplan6.static_resid_tt(T, y, x, params);
end
residual = zeros(36, 1);
residual(1) = params(5)*T(1)*getPowerDeriv(y(1)/params(5),1-params(1),1)/(1-params(1))+y(23)*(-T(1))+y(20)*params(7)/params(5)+y(19)*(1-params(6))/params(5);
residual(2) = params(5)*(-(y(6)*T(3)/(1+params(4))))+y(31)*(-y(5))+(-T(1))*y(25);
residual(3) = y(31)+(-T(1))*y(19);
residual(4) = params(5)*params(9)*T(1)*getPowerDeriv(T(4),1-params(8),1)/(1-params(8))+(-T(1))*y(21)+T(1)*y(19);
residual(5) = y(31)*(-y(2))+y(27)+params(12)*T(11);
residual(6) = params(5)*(-(T(2)^(1+params(4))/(1+params(4))))+y(28)+params(12)*T(14);
residual(7) = (1-params(5))*T(5)*getPowerDeriv(y(7)/(1-params(5)),1-params(1),1)/(1-params(1))+y(24)*(-T(5))+y(20)*(1-params(7))/(1-params(5))+y(19)*params(6)/(1-params(5));
residual(8) = (1-params(5))*(-(y(12)*T(7)/(1+params(4))))+y(32)*(-y(11))+(-T(5))*y(26);
residual(9) = y(32)+y(20)*(-T(5));
residual(10) = (1-params(5))*params(9)*T(5)*getPowerDeriv(T(8),1-params(8),1)/(1-params(8))+(-T(5))*y(22)+y(20)*T(5);
residual(11) = y(32)*(-y(8))+y(29)+params(12)*T(17);
residual(12) = (1-params(5))*(-(T(6)^(1+params(4))/(1+params(4))))+y(30)+params(12)*T(20);
residual(13) = y(21);
residual(14) = y(22);
residual(15) = y(23);
residual(16) = y(24);
residual(17) = y(25);
residual(18) = y(26);
residual(19) = T(4)+y(1)*(1-params(6))/params(5)+params(6)*y(7)/(1-params(5))-y(3)/params(5);
residual(20) = T(8)+y(1)*params(7)/params(5)+y(7)*(1-params(7))/(1-params(5))-y(9)/(1-params(5));
residual(21) = y(13)-T(4);
residual(22) = y(14)-T(8);
residual(23) = y(15)-y(1)/params(5);
residual(24) = y(16)-y(7)/(1-params(5));
residual(25) = y(17)-T(2);
residual(26) = y(18)-T(6);
residual(27) = y(5)-y(5)^params(10)*exp(x(1));
residual(28) = y(6)-y(6)^params(11)*exp(x(3));
residual(29) = y(11)-y(11)^params(10)*exp(x(2));
residual(30) = y(12)-y(12)^params(11)*exp(x(4));
residual(31) = y(3)-y(2)*y(5);
residual(32) = y(9)-y(8)*y(11);
lhs = y(33);
rhs = T(11);
residual(33) = lhs - rhs;
lhs = y(34);
rhs = T(14);
residual(34) = lhs - rhs;
lhs = y(35);
rhs = T(17);
residual(35) = lhs - rhs;
lhs = y(36);
rhs = T(20);
residual(36) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
