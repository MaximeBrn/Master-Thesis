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
    T = Model_draft_4_testplan4.static_resid_tt(T, y, x, params);
end
residual = zeros(10, 1);
lhs = params(5)*(y(1)/params(5))^(-params(1));
rhs = params(5)*(1-params(6))*params(10)*T(1)+params(10)*params(6)*(1-params(5))*T(2);
residual(1) = lhs - rhs;
lhs = (1-params(5))*(y(6)/(1-params(5)))^(-params(1));
rhs = T(1)*params(10)*params(5)*params(7)+T(2)*params(10)*(1-params(5))*(1-params(7));
residual(2) = lhs - rhs;
lhs = y(5)/y(4)*T(3);
rhs = params(10)*T(1);
residual(3) = lhs - rhs;
lhs = y(10)/y(9)*T(4);
rhs = params(10)*T(2);
residual(4) = lhs - rhs;
lhs = y(3)+y(1)*(1-params(6))+y(6)*params(7);
rhs = y(4)*y(2);
residual(5) = lhs - rhs;
lhs = y(8)+y(1)*params(6)+y(6)*(1-params(7));
rhs = y(9)*y(7);
residual(6) = lhs - rhs;
lhs = y(4);
rhs = y(4)^params(11)*exp(x(1));
residual(7) = lhs - rhs;
lhs = y(9);
rhs = y(9)^params(11)*exp(x(2));
residual(8) = lhs - rhs;
lhs = y(5);
rhs = y(5)^params(12)*exp(x(3));
residual(9) = lhs - rhs;
lhs = y(10);
rhs = y(10)^params(12)*exp(x(4));
residual(10) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end