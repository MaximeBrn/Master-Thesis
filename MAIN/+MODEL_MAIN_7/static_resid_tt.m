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

assert(length(T) >= 6);

T(1) = params(32)^(-1);
T(2) = (-(1-params(7)));
T(3) = (1+params(8)*params(26))/params(29)-1;
T(4) = 1/(params(27)*params(28));
T(5) = (1+params(8)*params(26))/params(28)-1;
T(6) = 1/(params(27)*params(29));

end
