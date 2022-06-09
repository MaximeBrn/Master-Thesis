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

assert(length(T) >= 34);

T = PLANNER_EFFICIENT_GM.static_resid_tt(T, y, x, params);

T(27) = y(31)*(-(exp(x(1))*getPowerDeriv(y(5),params(8),2)));
T(28) = y(32)*(-(exp(x(3))*getPowerDeriv(y(6),params(9),2)));
T(29) = params(4)*(-(T(11)/(1+params(3))))+y(35)*(-(params(4)*(-(T(11)/(1+params(3))))));
T(30) = y(33)*(-(exp(x(2))*getPowerDeriv(y(11),params(8),2)));
T(31) = y(34)*(-(exp(x(4))*getPowerDeriv(y(12),params(9),2)));
T(32) = (1-params(4))*(-(T(13)/(1+params(3))))+y(36)*(-((1-params(4))*(-(T(13)/(1+params(3))))));
T(33) = params(4)*(-(y(6)*getPowerDeriv(y(17),1+params(3),2)/(1+params(3))));
T(34) = (1-params(4))*(-(y(12)*getPowerDeriv(y(18),1+params(3),2)/(1+params(3))));

end
