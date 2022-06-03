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

assert(length(T) >= 12);

T(1) = 1/(1-params(3));
T(2) = (-T(1));
T(3) = (-(T(1)*(-params(3))));
T(4) = (-(params(13)/params(1)));
T(5) = (params(2)+params(11)-1)/params(1);
T(6) = params(1)/((1-params(3))*(params(13)+params(11)));
T(7) = params(5)+params(1)/(1-params(3));
T(8) = params(21)^(-1);
T(9) = 1/params(1);
T(10) = (-(params(12)*(-(params(3)*params(1)/(1-params(3))))));
T(11) = (-(params(14)*(-(params(3)*params(1)/(1-params(3))))));
T(12) = (1-params(6)*params(2)-params(11))/params(1);

end
