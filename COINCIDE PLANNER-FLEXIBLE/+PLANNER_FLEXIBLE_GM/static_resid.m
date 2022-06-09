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
    T = PLANNER_FLEXIBLE_GM.static_resid_tt(T, y, x, params);
end
residual = zeros(42, 1);
residual(1) = y(35)*(-T(1))+y(25)*(-T(2))+T(1)*y(24)+y(22)*(-(T(2)*T(5)));
residual(2) = (-T(1))*y(37)+y(31)*(-y(5))+y(22)*T(9);
residual(3) = y(25)+y(31);
residual(4) = (-T(1))*y(33)-y(25);
residual(5) = y(31)*(-y(2))+y(27)+y(22)*(-(T(2)*T(10)))+params(11)*T(35);
residual(6) = params(4)*(-(y(17)^(1+params(3))/(1+params(3))))+y(28)+y(22)*(-(T(2)*T(11)))+params(11)*T(38);
residual(7) = y(36)*(-T(12))+y(26)*(-T(13))+y(24)*(-(T(12)*T(14)))+y(23)*(-(T(13)*T(17)));
residual(8) = (-T(12))*y(38)+y(32)*(-y(11))+y(23)*T(21);
residual(9) = y(26)+y(32);
residual(10) = (-T(12))*y(34)-y(26);
residual(11) = y(32)*(-y(8))+y(29)+y(23)*(-(T(13)*T(22)))+params(11)*T(41);
residual(12) = (1-params(4))*(-(y(18)^(1+params(3))/(1+params(3))))+y(30)+y(23)*(-(T(13)*T(23)))+params(11)*T(44);
residual(13) = y(33)+params(4)*params(7)*1/y(13);
residual(14) = y(34)+(1-params(4))*params(7)*1/y(14);
residual(15) = y(35)+params(4)*(1-params(7))*1/y(15);
residual(16) = y(36)+(1-params(4))*(1-params(7))*1/y(16);
residual(17) = y(37)+params(4)*(-(y(6)*T(24)/(1+params(3))));
residual(18) = y(38)+(1-params(4))*(-(y(12)*T(25)/(1+params(3))));
residual(19) = y(26)*(-(y(7)*T(26)))+y(25)*(-(y(1)*T(27)))+y(24)*(-(T(18)*T(28)))+y(23)*(-(T(26)*T(29)))+y(22)*(-(T(27)*T(30)));
residual(20) = y(22)*(-(T(2)*T(31)));
residual(21) = y(23)*(-(T(13)*T(32)));
residual(22) = 1-1/params(10)-T(2)*T(30);
residual(23) = 1-1/params(10)-T(13)*T(29);
residual(24) = T(6)-T(14)*T(18);
residual(25) = y(3)-(T(2)*y(1)+y(4));
residual(26) = y(9)-(T(13)*y(7)+y(10));
residual(27) = y(5)-y(5)^params(8)*exp(x(1));
residual(28) = y(6)-y(6)^params(9)*exp(x(3));
residual(29) = y(11)-y(11)^params(8)*exp(x(2));
residual(30) = y(12)-y(12)^params(9)*exp(x(4));
residual(31) = y(3)-y(5)*y(2);
residual(32) = y(9)-y(11)*y(8);
residual(33) = y(13)-y(4)/params(4);
residual(34) = y(14)-y(10)/(1-params(4));
residual(35) = y(15)-T(6);
residual(36) = y(16)-T(18);
residual(37) = y(17)-T(3);
residual(38) = y(18)-T(15);
lhs = y(39);
rhs = T(35);
residual(39) = lhs - rhs;
lhs = y(40);
rhs = T(38);
residual(40) = lhs - rhs;
lhs = y(41);
rhs = T(41);
residual(41) = lhs - rhs;
lhs = y(42);
rhs = T(44);
residual(42) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
