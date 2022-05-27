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

T(1) = 1/params(8);
T(2) = (1-params(6))^T(1);
T(3) = (params(8)-1)/params(8);
T(4) = T(2)*getPowerDeriv(y(2),T(3),1);
T(5) = params(6)^T(1);
T(6) = T(2)*y(2)^T(3)+T(5)*y(3)^T(3);
T(7) = params(8)/(params(8)-1);
T(8) = getPowerDeriv(T(6),T(7),1);
T(9) = T(5)*getPowerDeriv(y(3),T(3),1);
T(10) = params(7)^T(1);
T(11) = T(10)*getPowerDeriv(y(10),T(3),1);
T(12) = (1-params(7))^T(1);
T(13) = T(10)*y(10)^T(3)+T(12)*y(11)^T(3);
T(14) = getPowerDeriv(T(13),T(7),1);
T(15) = T(12)*getPowerDeriv(y(11),T(3),1);
T(16) = getPowerDeriv(y(12),1+params(4),1);
T(17) = getPowerDeriv(y(7),params(12),1)*exp(x(1));
T(18) = (-T(17));
T(19) = getPowerDeriv(y(8),params(13),1)*exp(x(2));
T(20) = (-T(19));
T(21) = getPowerDeriv(y(15),params(12),1)*exp(x(3));
T(22) = (-T(21));
T(23) = getPowerDeriv(y(16),params(13),1)*exp(x(4));
T(24) = (-T(23));

end
