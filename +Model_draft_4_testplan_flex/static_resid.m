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
    T = Model_draft_4_testplan_flex.static_resid_tt(T, y, x, params);
end
residual = zeros(34, 1);
residual(1) = params(5)*T(1)*getPowerDeriv(T(2),1-params(1),1)/(1-params(1))+y(21)*(-(T(3)*T(5)))+T(1)*y(19)+y(17)*(-(y(15)*T(6)*T(9)*T(10)));
residual(2) = params(5)*(-(T(1)*getPowerDeriv(y(2)/params(5),1+params(4),1)/(1+params(4))))+y(29)*(-y(5));
residual(3) = y(29)+y(21)+y(17)*(-(y(15)*T(11)*T(14)));
residual(4) = params(5)*params(9)*getPowerDeriv(y(4),1-params(8),1)/(1-params(8))-y(21);
residual(5) = y(29)*(-y(2))+y(25)+y(17)*(-(y(15)*T(11)*T(16)))+params(13)*T(51);
residual(6) = y(26)+y(17)*(-(y(15)*T(11)*T(7)*T(9)))+params(13)*T(54);
residual(7) = (1-params(5))*T(17)*getPowerDeriv(T(18),1-params(1),1)/(1-params(1))+y(22)*(-(T(19)*T(20)))+y(19)*(-(T(17)*T(21)))+y(18)*(-(y(16)*T(22)*T(25)*T(26)));
residual(8) = (1-params(5))*(-(y(12)*T(27)/(1+params(4))))+y(30)*(-y(11));
residual(9) = y(30)+y(22)+y(18)*(-(y(16)*T(28)*T(31)));
residual(10) = (1-params(5))*params(9)*getPowerDeriv(y(10),1-params(8),1)/(1-params(8))-y(22);
residual(11) = y(30)*(-y(8))+y(27)+y(18)*(-(y(16)*T(28)*T(33)))+params(13)*T(57);
residual(12) = (1-params(5))*(-((y(8)/(1-params(5)))^(1+params(4))/(1+params(4))))+y(28)+y(18)*(-(y(16)*T(28)*T(23)*T(25)))+params(13)*T(60);
residual(13) = y(24)*(-((1-params(7))*T(34)*T(37)))+y(23)*(-(params(6)*T(34)*T(38)))+y(20)*(-(y(16)/y(15)));
residual(14) = y(22)*(-(y(7)*T(40)))+y(21)*(-(y(1)*T(42)))+y(20)+y(19)*(-(T(18)*T(43)));
residual(15) = y(23)+y(21)*(-(y(1)*T(45)))+y(20)*T(46)+y(17)*(-(T(6)*T(9)*T(11)));
residual(16) = y(24)+y(22)*(-(y(7)*T(48)))+y(20)*(-(y(13)/y(15)))+y(18)*(-(T(22)*T(25)*T(28)));
residual(17) = 1-y(15)*T(6)*T(9)*T(11);
residual(18) = 1-y(16)*T(22)*T(25)*T(28);
residual(19) = T(2)-T(18)*T(21);
residual(20) = y(14)-y(16)*y(13)/y(15);
residual(21) = y(3)-(y(4)+y(1)*T(3)*T(5));
residual(22) = y(9)-(y(10)+y(7)*T(19)*T(20));
residual(23) = y(15)-(1-params(6)+params(6)*T(35))^T(36);
residual(24) = y(16)-(params(7)+(1-params(7))*T(35))^T(36);
residual(25) = y(5)-y(5)^params(10)*exp(x(1));
residual(26) = y(6)-y(6)^params(11)*exp(x(3));
residual(27) = y(11)-y(11)^params(10)*exp(x(2));
residual(28) = y(12)-y(12)^params(11)*exp(x(4));
residual(29) = y(3)-y(5)*y(2);
residual(30) = y(9)-y(11)*y(8);
lhs = y(31);
rhs = T(51);
residual(31) = lhs - rhs;
lhs = y(32);
rhs = T(54);
residual(32) = lhs - rhs;
lhs = y(33);
rhs = T(57);
residual(33) = lhs - rhs;
lhs = y(34);
rhs = T(60);
residual(34) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
