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
    T = model_draft_4_Natural.static_resid_tt(T, y, x, params);
end
residual = zeros(13, 1);
lhs = 0;
rhs = y(2)+params(1)*y(5)+params(5)*y(3)+params(18)*y(11)-(1+params(5))*y(1);
residual(1) = lhs - rhs;
lhs = 0;
rhs = y(7)+params(1)*y(10)+params(5)*y(8)-y(11)*params(19)-(1+params(5))*y(6);
residual(2) = lhs - rhs;
lhs = params(1)*y(5);
rhs = params(1)*y(10)+y(11)*(1-params(2));
residual(3) = lhs - rhs;
lhs = y(5);
rhs = T(1)*(y(3)-params(3)*y(4))-y(11)*(params(2)+params(11)-1)/params(1);
residual(4) = lhs - rhs;
lhs = y(10);
rhs = T(1)*(y(8)-params(3)*y(9))+y(11)*params(13)/params(1);
residual(5) = lhs - rhs;
residual(6) = y(4)*params(6)+y(9)*(1-params(6));
lhs = y(4)*params(8)/params(6);
rhs = (1+params(5))*y(1)+(-y(2))-params(5)*y(3);
residual(7) = lhs - rhs;
lhs = y(12);
rhs = y(3)*params(6)+y(8)*(1-params(6));
residual(8) = lhs - rhs;
lhs = y(13);
rhs = y(4)*params(6)+y(9)*(1-params(6));
residual(9) = lhs - rhs;
lhs = y(1);
rhs = y(1)*params(16)+x(1);
residual(10) = lhs - rhs;
lhs = y(2);
rhs = y(2)*params(17)+x(2);
residual(11) = lhs - rhs;
lhs = y(6);
rhs = y(6)*params(16)+x(3);
residual(12) = lhs - rhs;
lhs = y(7);
rhs = y(7)*params(17)+x(4);
residual(13) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
