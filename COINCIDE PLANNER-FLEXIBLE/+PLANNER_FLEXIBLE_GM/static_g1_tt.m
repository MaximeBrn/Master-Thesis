function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
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

assert(length(T) >= 68);

T = PLANNER_FLEXIBLE_GM.static_resid_tt(T, y, x, params);

T(45) = y(22)*(-(T(2)*T(1)*T(4)*(-((1-y(20))*y(6)))/(y(5)*y(5))/(1-params(7))));
T(46) = y(22)*(-(T(2)*T(1)*T(4)*(1-y(20))/y(5)/(1-params(7))));
T(47) = y(22)*(-(T(2)*T(1)*T(4)*(-y(6))/y(5)/(1-params(7))));
T(48) = y(22)*(-(T(2)*T(6)*T(7)*(-((1-y(20))*y(6)))/(y(5)*y(5))/(1-params(7))))-y(31);
T(49) = y(22)*(-(T(2)*T(6)*T(7)*(1-y(20))/y(5)/(1-params(7))));
T(50) = y(22)*(-(T(2)*T(6)*T(7)*(-y(6))/y(5)/(1-params(7))));
T(51) = y(27)*(-(exp(x(1))*getPowerDeriv(y(5),params(8),2)));
T(52) = y(22)*(-(T(2)*T(6)*T(4)*(-(1-y(20)))/(y(5)*y(5))/(1-params(7))));
T(53) = y(22)*(-(T(2)*T(6)*T(4)*y(6)/(y(5)*y(5))/(1-params(7))));
T(54) = y(28)*(-(exp(x(3))*getPowerDeriv(y(6),params(9),2)));
T(55) = y(22)*(-(T(2)*T(6)*T(4)*(-1)/y(5)/(1-params(7))));
T(56) = y(23)*(-(T(13)*T(12)*T(16)*(-((1-y(21))*y(12)))/(y(11)*y(11))/(1-params(7))));
T(57) = y(23)*(-(T(13)*T(12)*T(16)*(1-y(21))/y(11)/(1-params(7))));
T(58) = y(23)*(-(T(13)*T(12)*T(16)*(-y(12))/y(11)/(1-params(7))));
T(59) = y(23)*(-(T(13)*T(18)*T(19)*(-((1-y(21))*y(12)))/(y(11)*y(11))/(1-params(7))))-y(32);
T(60) = y(23)*(-(T(13)*T(18)*T(19)*(1-y(21))/y(11)/(1-params(7))));
T(61) = y(23)*(-(T(13)*T(18)*T(19)*(-y(12))/y(11)/(1-params(7))));
T(62) = y(29)*(-(exp(x(2))*getPowerDeriv(y(11),params(8),2)));
T(63) = y(23)*(-(T(13)*T(18)*T(16)*(-(1-y(21)))/(y(11)*y(11))/(1-params(7))));
T(64) = y(23)*(-(T(13)*T(18)*T(16)*y(12)/(y(11)*y(11))/(1-params(7))));
T(65) = y(30)*(-(exp(x(4))*getPowerDeriv(y(12),params(9),2)));
T(66) = y(23)*(-(T(13)*T(18)*T(16)*(-1)/y(11)/(1-params(7))));
T(67) = getPowerDeriv(y(19),(-params(6)),2);
T(68) = getPowerDeriv(y(19),params(5),2);

end
