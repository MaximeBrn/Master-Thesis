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
    T = PLANNER.static_resid_tt(T, y, x, params);
end
residual = zeros(14, 1);
lhs = T(5)*T(6);
rhs = T(8);
residual(1) = lhs - rhs;
lhs = T(6)*T(11);
rhs = T(13);
residual(2) = lhs - rhs;
lhs = T(16)*T(17);
rhs = T(13);
residual(3) = lhs - rhs;
lhs = T(17)*T(20);
rhs = T(8);
residual(4) = lhs - rhs;
lhs = (y(4)/params(5))^params(4);
rhs = T(7)*params(9)*y(7);
residual(5) = lhs - rhs;
lhs = (y(11)/(1-params(5)))^params(4);
rhs = T(12)*params(9)*y(14);
residual(6) = lhs - rhs;
lhs = y(1)/params(5);
rhs = T(22)^T(23);
residual(7) = lhs - rhs;
lhs = y(8)/(1-params(5));
rhs = T(24)^T(23);
residual(8) = lhs - rhs;
lhs = y(6)+y(2)+y(9);
rhs = y(5);
residual(9) = lhs - rhs;
lhs = y(13)+y(3)+y(10);
rhs = y(12);
residual(10) = lhs - rhs;
lhs = y(5);
rhs = y(4)*y(7);
residual(11) = lhs - rhs;
lhs = y(12);
rhs = y(11)*y(14);
residual(12) = lhs - rhs;
lhs = y(7);
rhs = y(7)^params(11)*exp(x(1));
residual(13) = lhs - rhs;
lhs = y(14);
rhs = y(14)^params(11)*exp(x(2));
residual(14) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
