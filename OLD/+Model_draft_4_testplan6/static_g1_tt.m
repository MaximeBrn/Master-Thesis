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

assert(length(T) >= 24);

T = Model_draft_4_testplan6.static_resid_tt(T, y, x, params);

T(21) = y(27)*(-(exp(x(1))*getPowerDeriv(y(5),params(10),2)));
T(22) = y(28)*(-(exp(x(3))*getPowerDeriv(y(6),params(11),2)));
T(23) = y(29)*(-(exp(x(2))*getPowerDeriv(y(11),params(10),2)));
T(24) = y(30)*(-(exp(x(4))*getPowerDeriv(y(12),params(11),2)));

end
