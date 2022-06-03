function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 60);

T(1) = 1/params(5);
T(2) = y(1)/params(5);
T(3) = y(15)^params(12);
T(4) = 1/params(1);
T(5) = 1-params(6)+params(6)*y(14)^(params(12)-T(4));
T(6) = y(6)/y(5);
T(7) = 1/y(5);
T(8) = T(7)*y(3)/params(5);
T(9) = T(8)^params(4);
T(10) = T(1)*getPowerDeriv(T(2),params(1),1);
T(11) = T(2)^params(1);
T(12) = T(7)/params(5);
T(13) = getPowerDeriv(T(8),params(4),1);
T(14) = T(6)*T(12)*T(13);
T(15) = y(3)*(-1)/(y(5)*y(5))/params(5);
T(16) = T(9)*(-y(6))/(y(5)*y(5))+T(6)*T(13)*T(15);
T(17) = 1/(1-params(5));
T(18) = y(7)/(1-params(5));
T(19) = y(16)^params(12);
T(20) = 1-params(7)+params(7)*y(14)^(T(4)-params(12));
T(21) = y(14)^T(4);
T(22) = y(12)/y(11);
T(23) = 1/y(11);
T(24) = T(23)*y(9)/(1-params(5));
T(25) = T(24)^params(4);
T(26) = T(17)*getPowerDeriv(T(18),params(1),1);
T(27) = T(17)*getPowerDeriv(y(8)/(1-params(5)),1+params(4),1);
T(28) = T(18)^params(1);
T(29) = T(23)/(1-params(5));
T(30) = getPowerDeriv(T(24),params(4),1);
T(31) = T(22)*T(29)*T(30);
T(32) = y(9)*(-1)/(y(11)*y(11))/(1-params(5));
T(33) = T(25)*(-y(12))/(y(11)*y(11))+T(22)*T(30)*T(32);
T(34) = getPowerDeriv(y(13),1-params(12),1);
T(35) = y(13)^(1-params(12));
T(36) = 1/(1-params(12));
T(37) = getPowerDeriv(params(7)+(1-params(7))*T(35),T(36),1);
T(38) = getPowerDeriv(1-params(6)+params(6)*T(35),T(36),1);
T(39) = params(7)*getPowerDeriv(y(14),T(4)-params(12),1);
T(40) = T(19)*T(39);
T(41) = params(6)*getPowerDeriv(y(14),params(12)-T(4),1);
T(42) = T(3)*T(41);
T(43) = getPowerDeriv(y(14),T(4),1);
T(44) = getPowerDeriv(y(15),params(12),1);
T(45) = T(5)*T(44);
T(46) = (-((-(y(16)*y(13)))/(y(15)*y(15))));
T(47) = getPowerDeriv(y(16),params(12),1);
T(48) = T(20)*T(47);
T(49) = exp(x(1))*getPowerDeriv(y(5),params(10),1);
T(50) = (-T(49));
T(51) = y(25)*T(50);
T(52) = exp(x(3))*getPowerDeriv(y(6),params(11),1);
T(53) = (-T(52));
T(54) = y(26)*T(53);
T(55) = exp(x(2))*getPowerDeriv(y(11),params(10),1);
T(56) = (-T(55));
T(57) = y(27)*T(56);
T(58) = exp(x(4))*getPowerDeriv(y(12),params(11),1);
T(59) = (-T(58));
T(60) = y(28)*T(59);

end
