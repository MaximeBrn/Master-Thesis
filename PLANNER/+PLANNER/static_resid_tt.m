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

assert(length(T) >= 24);

T(1) = 1/params(12);
T(2) = (1-params(6))^T(1);
T(3) = y(2)/params(5);
T(4) = (-1)/params(12);
T(5) = params(10)*T(2)*T(3)^T(4);
T(6) = (y(1)/params(5))^(T(1)-params(1));
T(7) = (y(6)/params(5))^(-params(8));
T(8) = params(9)*T(7);
T(9) = params(6)^T(1);
T(10) = y(3)/params(5);
T(11) = params(10)*T(9)*T(10)^T(4);
T(12) = (y(13)/(1-params(5)))^(-params(8));
T(13) = params(9)*T(12);
T(14) = (1-params(7))^T(1);
T(15) = y(10)/(1-params(5));
T(16) = params(10)*T(14)*T(15)^T(4);
T(17) = (y(8)/(1-params(5)))^(T(1)-params(1));
T(18) = params(7)^T(1);
T(19) = y(9)/(1-params(5));
T(20) = params(10)*T(18)*T(19)^T(4);
T(21) = (params(12)-1)/params(12);
T(22) = T(2)*T(3)^T(21)+T(9)*T(10)^T(21);
T(23) = params(12)/(params(12)-1);
T(24) = T(18)*T(19)^T(21)+T(14)*T(15)^T(21);

end
