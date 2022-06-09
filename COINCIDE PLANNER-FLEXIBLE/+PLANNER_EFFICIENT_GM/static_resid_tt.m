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

assert(length(T) >= 26);

T(1) = (-(1/params(4)));
T(2) = y(17)^(1+params(3));
T(3) = params(4)*(-(T(2)/(1+params(3))));
T(4) = (-(1/(1-params(4))));
T(5) = y(18)^(1+params(3));
T(6) = (1-params(4))*(-(T(5)/(1+params(3))));
T(7) = (-(params(4)*params(7)*1/y(13)));
T(8) = (-((1-params(4))*params(7)*1/y(14)));
T(9) = (-(params(4)*(1-params(7))*1/y(15)));
T(10) = (-((1-params(4))*(1-params(7))*1/y(16)));
T(11) = getPowerDeriv(y(17),1+params(3),1);
T(12) = params(4)*(-(y(6)*T(11)/(1+params(3))));
T(13) = getPowerDeriv(y(18),1+params(3),1);
T(14) = (1-params(4))*(-(y(12)*T(13)/(1+params(3))));
T(15) = exp(x(1))*getPowerDeriv(y(5),params(8),1);
T(16) = (-T(15));
T(17) = y(31)*T(16);
T(18) = exp(x(3))*getPowerDeriv(y(6),params(9),1);
T(19) = (-T(18));
T(20) = y(32)*T(19);
T(21) = exp(x(2))*getPowerDeriv(y(11),params(8),1);
T(22) = (-T(21));
T(23) = y(33)*T(22);
T(24) = exp(x(4))*getPowerDeriv(y(12),params(9),1);
T(25) = (-T(24));
T(26) = y(34)*T(25);

end
