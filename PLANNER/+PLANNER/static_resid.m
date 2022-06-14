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
    T = Planner.static_resid_tt(T, y, x, params);
end
residual = zeros(25, 1);
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
lhs = y(15);
rhs = log(y(5))-log((y(5)));
residual(15) = lhs - rhs;
lhs = y(17);
rhs = log(y(6))-log((y(6)));
residual(16) = lhs - rhs;
lhs = y(18);
rhs = log(y(1))-log((y(1)));
residual(17) = lhs - rhs;
lhs = y(19);
rhs = log(y(2))-log((y(2)));
residual(18) = lhs - rhs;
lhs = y(20);
rhs = log(y(3))-log((y(3)));
residual(19) = lhs - rhs;
lhs = y(21);
rhs = log(y(12))-log((y(12)));
residual(20) = lhs - rhs;
lhs = y(22);
rhs = log(y(13))-log((y(13)));
residual(21) = lhs - rhs;
lhs = y(23);
rhs = log(y(8))-log((y(8)));
residual(22) = lhs - rhs;
lhs = y(24);
rhs = log(y(9))-log((y(9)));
residual(23) = lhs - rhs;
lhs = y(25);
rhs = log(y(10))-log((y(10)));
residual(24) = lhs - rhs;
lhs = y(16);
rhs = (y(5)-(y(5)))/y(5);
residual(25) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
