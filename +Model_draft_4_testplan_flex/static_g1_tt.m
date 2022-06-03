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

assert(length(T) >= 69);

T = Model_draft_4_testplan_flex.static_resid_tt(T, y, x, params);

T(61) = getPowerDeriv(T(8),params(4),2);
T(62) = T(13)*(-1)/(y(5)*y(5))/params(5);
T(63) = y(25)*(-(exp(x(1))*getPowerDeriv(y(5),params(10),2)));
T(64) = y(26)*(-(exp(x(3))*getPowerDeriv(y(6),params(11),2)));
T(65) = getPowerDeriv(T(24),params(4),2);
T(66) = T(30)*(-1)/(y(11)*y(11))/(1-params(5));
T(67) = y(27)*(-(exp(x(2))*getPowerDeriv(y(11),params(10),2)));
T(68) = y(28)*(-(exp(x(4))*getPowerDeriv(y(12),params(11),2)));
T(69) = getPowerDeriv(y(13),1-params(12),2);

end
