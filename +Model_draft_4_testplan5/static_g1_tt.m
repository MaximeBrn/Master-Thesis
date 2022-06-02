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

assert(length(T) >= 17);

T = Model_draft_4_testplan5.static_resid_tt(T, y, x, params);

T(10) = 1/params(5);
T(11) = T(10)*getPowerDeriv(T(1),1-params(1),1)/(1-params(1));
T(12) = T(10)*getPowerDeriv(T(2),1+params(4),1)/(1+params(4));
T(13) = params(9)*getPowerDeriv(y(4),1-params(8),1)/(1-params(8));
T(14) = 1/(1-params(5));
T(15) = T(14)*getPowerDeriv(T(4),1-params(1),1)/(1-params(1));
T(16) = y(12)*T(14)*getPowerDeriv(T(5),1+params(4),1)/(1+params(4));
T(17) = params(9)*getPowerDeriv(y(10),1-params(8),1)/(1-params(8));

end
