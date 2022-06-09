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

assert(length(T) >= 44);

T(1) = 1/params(4);
T(2) = y(19)^params(5);
T(3) = y(2)/params(4);
T(4) = T(3)^params(3);
T(5) = T(1)*(1-y(20))*y(6)/y(5)*T(4)/(1-params(7));
T(6) = y(1)/params(4);
T(7) = T(1)*getPowerDeriv(T(3),params(3),1);
T(8) = (1-y(20))*y(6)/y(5)*T(7);
T(9) = (-(T(2)*T(6)*T(8)/(1-params(7))));
T(10) = T(6)*T(4)*(-((1-y(20))*y(6)))/(y(5)*y(5))/(1-params(7));
T(11) = T(6)*T(4)*(1-y(20))/y(5)/(1-params(7));
T(12) = 1/(1-params(4));
T(13) = y(19)^(-params(6));
T(14) = y(19)^(1-params(1));
T(15) = y(8)/(1-params(4));
T(16) = T(15)^params(3);
T(17) = T(12)*(1-y(21))*y(12)/y(11)*T(16)/(1-params(7));
T(18) = y(7)/(1-params(4));
T(19) = T(12)*getPowerDeriv(T(15),params(3),1);
T(20) = (1-y(21))*y(12)/y(11)*T(19);
T(21) = (-(T(13)*T(18)*T(20)/(1-params(7))));
T(22) = T(18)*T(16)*(-((1-y(21))*y(12)))/(y(11)*y(11))/(1-params(7));
T(23) = T(18)*T(16)*(1-y(21))/y(11)/(1-params(7));
T(24) = getPowerDeriv(y(17),1+params(3),1);
T(25) = getPowerDeriv(y(18),1+params(3),1);
T(26) = getPowerDeriv(y(19),(-params(6)),1);
T(27) = getPowerDeriv(y(19),params(5),1);
T(28) = getPowerDeriv(y(19),1-params(1),1);
T(29) = (1-y(21))*y(12)/y(11)*T(16)*T(18)/(1-params(7));
T(30) = (1-y(20))*y(6)/y(5)*T(4)*T(6)/(1-params(7));
T(31) = T(6)*T(4)*(-y(6))/y(5)/(1-params(7));
T(32) = T(18)*T(16)*(-y(12))/y(11)/(1-params(7));
T(33) = exp(x(1))*getPowerDeriv(y(5),params(8),1);
T(34) = (-T(33));
T(35) = y(27)*T(34);
T(36) = exp(x(3))*getPowerDeriv(y(6),params(9),1);
T(37) = (-T(36));
T(38) = y(28)*T(37);
T(39) = exp(x(2))*getPowerDeriv(y(11),params(8),1);
T(40) = (-T(39));
T(41) = y(29)*T(40);
T(42) = exp(x(4))*getPowerDeriv(y(12),params(9),1);
T(43) = (-T(42));
T(44) = y(30)*T(43);

end
