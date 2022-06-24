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

T = PLANNER.static_resid_tt(T, y, x, params);

T(25) = 1/params(5);
T(26) = T(25)*getPowerDeriv(y(1)/params(5),T(1)-params(1),1);
T(27) = getPowerDeriv(T(22),T(23),1);
T(28) = T(25)*getPowerDeriv(y(6)/params(5),(-params(8)),1);
T(29) = (-(params(9)*T(28)));
T(30) = 1/(1-params(5));
T(31) = T(30)*getPowerDeriv(y(8)/(1-params(5)),T(1)-params(1),1);
T(32) = getPowerDeriv(T(24),T(23),1);
T(33) = T(30)*getPowerDeriv(y(13)/(1-params(5)),(-params(8)),1);
T(34) = (-(params(9)*T(33)));

end
