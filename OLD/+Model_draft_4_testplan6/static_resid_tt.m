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

assert(length(T) >= 20);

T(1) = 1/params(5);
T(2) = y(2)/params(5);
T(3) = T(1)*getPowerDeriv(T(2),1+params(4),1);
T(4) = y(4)/params(5);
T(5) = 1/(1-params(5));
T(6) = y(8)/(1-params(5));
T(7) = T(5)*getPowerDeriv(T(6),1+params(4),1);
T(8) = y(10)/(1-params(5));
T(9) = exp(x(1))*getPowerDeriv(y(5),params(10),1);
T(10) = (-T(9));
T(11) = y(27)*T(10);
T(12) = exp(x(3))*getPowerDeriv(y(6),params(11),1);
T(13) = (-T(12));
T(14) = y(28)*T(13);
T(15) = exp(x(2))*getPowerDeriv(y(11),params(10),1);
T(16) = (-T(15));
T(17) = y(29)*T(16);
T(18) = exp(x(4))*getPowerDeriv(y(12),params(11),1);
T(19) = (-T(18));
T(20) = y(30)*T(19);

end
