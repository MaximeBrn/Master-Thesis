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
    T = Model_draft_4_testplan5.static_resid_tt(T, y, x, params);
end
residual = zeros(29, 1);
lhs = params(5)*T(1)^(-params(1));
rhs = (1-params(6))*y(13)+params(7)*y(14);
residual(1) = lhs - rhs;
lhs = params(5)*y(6)*T(3);
rhs = y(13)*y(5);
residual(2) = lhs - rhs;
lhs = params(5)*params(9)*(y(4)/params(5))^(-params(8));
rhs = y(13);
residual(3) = lhs - rhs;
lhs = (1-params(5))*T(4)^(-params(1));
rhs = params(6)*y(13)+y(14)*(1-params(7));
residual(4) = lhs - rhs;
lhs = (1-params(5))*y(12)*T(6);
rhs = y(14)*y(11);
residual(5) = lhs - rhs;
lhs = params(9)*(1-params(5))*(y(10)/(1-params(5)))^(-params(8));
rhs = y(14);
residual(6) = lhs - rhs;
lhs = y(4)+y(1)*(1-params(6))+params(7)*y(7);
rhs = y(2)*y(5);
residual(7) = lhs - rhs;
lhs = y(10)+y(1)*params(6)+y(7)*(1-params(7));
rhs = y(8)*y(11);
residual(8) = lhs - rhs;
lhs = y(5);
rhs = y(5)^params(10)*exp(x(1));
residual(9) = lhs - rhs;
lhs = y(6);
rhs = y(6)^params(11)*exp(x(3));
residual(10) = lhs - rhs;
lhs = y(11);
rhs = y(11)^params(10)*exp(x(2));
residual(11) = lhs - rhs;
lhs = y(12);
rhs = y(12)^params(11)*exp(x(4));
residual(12) = lhs - rhs;
lhs = y(15);
rhs = log(y(1))-log((y(1)));
residual(13) = lhs - rhs;
lhs = y(16);
rhs = log(y(2))-log((y(2)));
residual(14) = lhs - rhs;
lhs = y(17);
rhs = log(y(4))-log((y(4)));
residual(15) = lhs - rhs;
lhs = y(18);
rhs = log(y(5))-log((y(5)));
residual(16) = lhs - rhs;
lhs = y(19);
rhs = log(y(6))-log((y(6)));
residual(17) = lhs - rhs;
lhs = y(20);
rhs = y(16)+y(18);
residual(18) = lhs - rhs;
lhs = y(21);
rhs = log(y(7))-log((y(7)));
residual(19) = lhs - rhs;
lhs = y(22);
rhs = log(y(8))-log((y(8)));
residual(20) = lhs - rhs;
lhs = y(23);
rhs = log(y(10))-log((y(10)));
residual(21) = lhs - rhs;
lhs = y(24);
rhs = log(y(11))-log((y(11)));
residual(22) = lhs - rhs;
lhs = y(25);
rhs = log(y(12))-log((y(12)));
residual(23) = lhs - rhs;
lhs = y(26);
rhs = y(22)+y(24);
residual(24) = lhs - rhs;
lhs = y(3);
rhs = y(2)*y(5);
residual(25) = lhs - rhs;
lhs = y(9);
rhs = y(8)*y(11);
residual(26) = lhs - rhs;
lhs = y(29);
rhs = params(5)*T(7)+(1-params(5))*T(9);
residual(27) = lhs - rhs;
lhs = y(27);
rhs = T(7);
residual(28) = lhs - rhs;
lhs = y(28);
rhs = T(9);
residual(29) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
