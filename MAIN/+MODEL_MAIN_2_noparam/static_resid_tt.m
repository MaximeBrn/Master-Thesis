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

assert(length(T) >= 7);

T(1) = (1-params(11))*params(2)*params(14)*params(5)*(params(2)-params(14)*params(21))/(1-params(14))^2;
T(2) = (1-params(11))*params(2)*params(5)*params(15)*(params(2)-params(21)*params(15))/(1-params(15))^2;
T(3) = (1+params(21)*params(8))/params(24)-1;
T(4) = params(27)^(-1);
T(5) = 1/(params(22)*params(23));
T(6) = (1+params(21)*params(8))/params(23)-1;
T(7) = 1/(params(22)*params(24));

end
