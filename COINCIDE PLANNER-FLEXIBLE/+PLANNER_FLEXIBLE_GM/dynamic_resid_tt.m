function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 44);

T(1) = y(6)/params(4);
T(2) = T(1)^params(3);
T(3) = y(5)/params(4);
T(4) = (1-y(24))*y(10)/y(9)*T(2)*T(3)/(1-params(7));
T(5) = y(23)^params(5);
T(6) = y(12)/(1-params(4));
T(7) = T(6)^params(3);
T(8) = y(11)/(1-params(4));
T(9) = (1-y(25))*y(16)/y(15)*T(7)*T(8)/(1-params(7));
T(10) = y(23)^(-params(6));
T(11) = y(23)^(1-params(1));
T(12) = y(1)^params(8)*exp(x(it_, 1));
T(13) = y(2)^params(9)*exp(x(it_, 3));
T(14) = y(3)^params(8)*exp(x(it_, 2));
T(15) = y(4)^params(9)*exp(x(it_, 4));
T(16) = 1/params(4);
T(17) = (1-y(24))*y(10)/y(9)*T(2)*T(16)/(1-params(7));
T(18) = T(16)*getPowerDeriv(T(1),params(3),1);
T(19) = (1-y(24))*y(10)/y(9)*T(18);
T(20) = (-(T(5)*T(3)*T(19)/(1-params(7))));
T(21) = T(3)*T(2)*(-((1-y(24))*y(10)))/(y(9)*y(9))/(1-params(7));
T(22) = T(3)*T(2)*(1-y(24))/y(9)/(1-params(7));
T(23) = 1/(1-params(4));
T(24) = (1-y(25))*y(16)/y(15)*T(7)*T(23)/(1-params(7));
T(25) = T(23)*getPowerDeriv(T(6),params(3),1);
T(26) = (1-y(25))*y(16)/y(15)*T(25);
T(27) = (-(T(10)*T(8)*T(26)/(1-params(7))));
T(28) = T(8)*T(7)*(-((1-y(25))*y(16)))/(y(15)*y(15))/(1-params(7));
T(29) = T(8)*T(7)*(1-y(25))/y(15)/(1-params(7));
T(30) = getPowerDeriv(y(21),1+params(3),1);
T(31) = getPowerDeriv(y(22),1+params(3),1);
T(32) = getPowerDeriv(y(23),(-params(6)),1);
T(33) = getPowerDeriv(y(23),params(5),1);
T(34) = getPowerDeriv(y(23),1-params(1),1);
T(35) = T(3)*T(2)*(-y(10))/y(9)/(1-params(7));
T(36) = T(8)*T(7)*(-y(16))/y(15)/(1-params(7));
T(37) = exp(x(it_, 1))*getPowerDeriv(y(1),params(8),1);
T(38) = (-T(37));
T(39) = exp(x(it_, 3))*getPowerDeriv(y(2),params(9),1);
T(40) = (-T(39));
T(41) = exp(x(it_, 2))*getPowerDeriv(y(3),params(8),1);
T(42) = (-T(41));
T(43) = exp(x(it_, 4))*getPowerDeriv(y(4),params(9),1);
T(44) = (-T(43));

end
