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
    T = Model_draft_4_testplan3.static_resid_tt(T, y, x, params);
end
residual = zeros(28, 1);
residual(1) = params(5)*T(1)*getPowerDeriv(y(1)/params(5),1-params(1),1)/(1-params(1))+y(22)*(-params(6))+y(21)*(-(1-params(6)));
residual(2) = y(21)+y(15);
residual(3) = y(22)+y(16);
residual(4) = params(5)*(-(T(1)*getPowerDeriv(y(4)/params(5),1+params(4),1)/(1+params(4))))+y(15)*(-y(6));
residual(5) = y(15)+params(5)*params(10)*getPowerDeriv(y(5),1-params(9),1)/(1-params(9));
residual(6) = y(17)+y(15)*(-y(4))+params(14)*y(17)*T(5);
residual(7) = y(19)+params(14)*y(19)*T(7);
residual(8) = (1-params(5))*T(2)*getPowerDeriv(y(8)/(1-params(5)),1-params(1),1)/(1-params(1))+y(24)*(-params(7))+y(23)*(-(1-params(7)));
residual(9) = y(15)+y(24);
residual(10) = y(16)+y(23);
residual(11) = (1-params(5))*(-(y(14)*T(3)/(1+params(4))))+y(16)*(-y(13));
residual(12) = y(16)+(1-params(5))*params(10)*getPowerDeriv(y(12),1-params(9),1)/(1-params(9));
residual(13) = y(18)+y(16)*(-y(11))+params(14)*y(18)*T(9);
residual(14) = (1-params(5))*(-((y(11)/(1-params(5)))^(1+params(4))/(1+params(4))))+y(20)+params(14)*y(20)*T(11);
residual(15) = y(5)+y(2)+y(9)-y(4)*y(6);
residual(16) = y(12)+y(3)+y(10)-y(11)*y(13);
residual(17) = y(6)-y(6)^params(12)*exp(x(1));
residual(18) = y(13)-y(13)^params(12)*exp(x(3));
residual(19) = y(7)-y(7)^params(13)*exp(x(2));
residual(20) = y(14)-y(14)^params(13)*exp(x(4));
residual(21) = y(2)-y(1)*(1-params(6));
residual(22) = y(3)-y(1)*params(6);
residual(23) = y(10)-y(8)*(1-params(7));
residual(24) = y(9)-y(8)*params(7);
lhs = y(25);
rhs = x(1);
residual(25) = lhs - rhs;
lhs = y(26);
rhs = x(2);
residual(26) = lhs - rhs;
lhs = y(27);
rhs = x(3);
residual(27) = lhs - rhs;
lhs = y(28);
rhs = x(4);
residual(28) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
