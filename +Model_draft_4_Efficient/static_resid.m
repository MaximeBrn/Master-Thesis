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
    T = Model_draft_4_Efficient.static_resid_tt(T, y, x, params);
end
residual = zeros(10, 1);
lhs = (-params(1))*y(5);
rhs = (1-params(18))*params(5)*(y(3)-y(1))+params(18)*params(5)*(y(8)-y(6));
residual(1) = lhs - rhs;
lhs = (-params(1))*y(10);
rhs = (y(3)-y(1))*params(5)*params(19)+(y(8)-y(6))*params(5)*(1-params(19));
residual(2) = lhs - rhs;
lhs = y(3);
rhs = y(5)*(1-params(18))*(1-params(3))+y(10)*params(18)*(1-params(3))+params(3)*y(4);
residual(3) = lhs - rhs;
lhs = y(8);
rhs = y(5)*params(19)*(1-params(3))+y(10)*(1-params(19))*(1-params(3))+params(3)*y(9);
residual(4) = lhs - rhs;
lhs = y(4)*(-params(8));
rhs = params(5)*y(3)-y(1)*(1+params(5))+y(2);
residual(5) = lhs - rhs;
lhs = y(9)*(-params(8));
rhs = params(5)*y(8)-y(6)*(1+params(5))+y(7);
residual(6) = lhs - rhs;
lhs = y(1);
rhs = y(1)*params(16)+x(1);
residual(7) = lhs - rhs;
lhs = y(2);
rhs = y(2)*params(17)+x(2);
residual(8) = lhs - rhs;
lhs = y(6);
rhs = y(6)*params(16)+x(3);
residual(9) = lhs - rhs;
lhs = y(7);
rhs = y(7)*params(17)+x(4);
residual(10) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end