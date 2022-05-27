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
    T = Model_draft_4_testplan2.static_resid_tt(T, y, x, params);
end
residual = zeros(35, 1);
residual(1) = params(5)*getPowerDeriv(y(1),1-params(1),1)/(1-params(1))+y(28)*(-params(6))+y(19)+y(27)*(-(1-params(6)));
residual(2) = y(27)+y(19)*(-(params(5)*T(4)*T(8)))-y(18);
residual(3) = y(28)+y(19)*(-(params(5)*T(8)*T(9)))-y(21);
residual(4) = params(5)*(-(getPowerDeriv(y(4),1+params(4),1)/(1+params(4))))+y(17)*(-y(7));
residual(5) = params(5)*params(10)*getPowerDeriv(y(5),1-params(9),1)/(1-params(9))-y(18);
residual(6) = y(31)*1/params(5)+y(18)+y(17);
residual(7) = y(23)+y(17)*(-y(4))+params(14)*y(23)*T(18);
residual(8) = y(25)+params(14)*y(25)*T(20);
residual(9) = (1-params(5))*getPowerDeriv(y(9),1-params(1),1)/(1-params(1))+y(30)*(-params(7))+y(22)+y(29)*(-(1-params(7)));
residual(10) = y(30)+y(22)*(-((1-params(5))*T(11)*T(14)))-y(18);
residual(11) = y(29)+y(22)*(-((1-params(5))*T(14)*T(15)))-y(21);
residual(12) = (1-params(5))*(-(y(16)*T(16)/(1+params(4))))+y(20)*(-y(15));
residual(13) = (1-params(5))*params(10)*getPowerDeriv(y(13),1-params(9),1)/(1-params(9))-y(21);
residual(14) = y(31)*(-(1/(1-params(5))))+y(21)+y(20);
residual(15) = y(24)+y(20)*(-y(12))+params(14)*y(24)*T(22);
residual(16) = (1-params(5))*(-(y(12)^(1+params(4))/(1+params(4))))+y(26)+params(14)*y(26)*T(24);
residual(17) = y(6)-y(4)*y(7);
residual(18) = y(6)-(y(5)+y(2)+y(10));
residual(19) = y(1)-params(5)*T(6)^T(7);
residual(20) = y(14)-y(12)*y(15);
residual(21) = y(14)-(y(13)+y(3)+y(11));
residual(22) = y(9)-(1-params(5))*T(13)^T(7);
residual(23) = y(7)-y(7)^params(12)*exp(x(1));
residual(24) = y(15)-y(15)^params(12)*exp(x(3));
residual(25) = y(8)-y(8)^params(13)*exp(x(2));
residual(26) = y(16)-y(16)^params(13)*exp(x(4));
residual(27) = y(2)-y(1)*(1-params(6));
residual(28) = y(3)-y(1)*params(6);
residual(29) = y(11)-y(9)*(1-params(7));
residual(30) = y(10)-y(9)*params(7);
residual(31) = y(6)/params(5)-y(14)/(1-params(5));
lhs = y(32);
rhs = x(1);
residual(32) = lhs - rhs;
lhs = y(33);
rhs = x(2);
residual(33) = lhs - rhs;
lhs = y(34);
rhs = x(3);
residual(34) = lhs - rhs;
lhs = y(35);
rhs = x(4);
residual(35) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
