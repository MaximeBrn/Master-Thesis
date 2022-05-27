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

assert(length(T) >= 11);

T(1) = 1/params(5);
T(2) = 1/(1-params(5));
T(3) = T(2)*getPowerDeriv(y(11)/(1-params(5)),1+params(4),1);
T(4) = getPowerDeriv(y(6),params(12),1)*exp(x(1));
T(5) = (-T(4));
T(6) = getPowerDeriv(y(7),params(13),1)*exp(x(2));
T(7) = (-T(6));
T(8) = getPowerDeriv(y(13),params(12),1)*exp(x(3));
T(9) = (-T(8));
T(10) = getPowerDeriv(y(14),params(13),1)*exp(x(4));
T(11) = (-T(10));

end
