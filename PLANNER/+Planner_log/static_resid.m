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
    T = Planner_log.static_resid_tt(T, y, x, params);
end
residual = zeros(23, 1);
lhs = y(4);
rhs = params(12)*params(8)*y(7)+(1-params(12)*params(1))*y(3);
residual(1) = lhs - rhs;
lhs = y(5);
rhs = (1-params(12)*params(1))*y(3)+params(12)*params(8)*y(12);
residual(2) = lhs - rhs;
lhs = y(10);
rhs = params(12)*params(8)*y(12)+(1-params(12)*params(1))*y(8);
residual(3) = lhs - rhs;
lhs = y(9);
rhs = params(12)*params(8)*y(7)+(1-params(12)*params(1))*y(8);
residual(4) = lhs - rhs;
lhs = params(4)*y(6);
rhs = (1+params(4))*y(1)-params(8)*y(7);
residual(5) = lhs - rhs;
lhs = params(4)*y(11);
rhs = (1+params(4))*y(2)-params(8)*y(12);
residual(6) = lhs - rhs;
lhs = y(6);
rhs = y(4)*(1-params(6))*(1-params(13))+y(9)*params(6)*(1-params(13))+y(7)*params(13);
residual(7) = lhs - rhs;
lhs = y(11);
rhs = y(5)*(1-params(13))*params(7)+y(10)*(1-params(13))*(1-params(7))+y(12)*params(13);
residual(8) = lhs - rhs;
lhs = y(3);
rhs = y(4)*(1-params(6))+y(5)*params(6);
residual(9) = lhs - rhs;
lhs = y(8);
rhs = y(9)*params(7)+y(10)*(1-params(7));
residual(10) = lhs - rhs;
lhs = y(14);
rhs = params(12)*params(8)*y(17)+(1-params(12)*params(1))*y(13);
residual(11) = lhs - rhs;
lhs = y(15);
rhs = (1-params(12)*params(1))*y(13)+params(12)*params(8)*y(22);
residual(12) = lhs - rhs;
lhs = y(20);
rhs = params(12)*params(8)*y(22)+(1-params(12)*params(1))*y(18);
residual(13) = lhs - rhs;
lhs = y(19);
rhs = params(12)*params(8)*y(17)+(1-params(12)*params(1))*y(18);
residual(14) = lhs - rhs;
lhs = params(8)*y(17);
rhs = params(1)*y(13)+params(6)*y(23);
residual(15) = lhs - rhs;
lhs = params(8)*y(22);
rhs = params(1)*y(18)-params(7)*y(23);
residual(16) = lhs - rhs;
lhs = 0;
rhs = params(6)*y(23)+params(1)*y(13)+params(4)*y(16)-(1+params(4))*y(1);
residual(17) = lhs - rhs;
lhs = 0;
rhs = params(1)*y(18)+params(4)*y(21)-params(7)*y(23)-(1+params(4))*y(2);
residual(18) = lhs - rhs;
lhs = y(23);
rhs = params(18)*(y(16)-y(21)-params(13)*(y(17)-y(22)));
residual(19) = lhs - rhs;
lhs = params(15)*(y(16)-params(13)*y(17));
rhs = params(1)*y(13)+y(23)*params(2)*(1-params(5))*params(14);
residual(20) = lhs - rhs;
lhs = params(15)*(y(21)-params(13)*y(22));
rhs = params(1)*y(18)-y(23)*params(14)*params(2)*params(5);
residual(21) = lhs - rhs;
lhs = y(1);
rhs = y(1)*params(11)+x(1);
residual(22) = lhs - rhs;
lhs = y(2);
rhs = y(2)*params(11)+x(2);
residual(23) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
