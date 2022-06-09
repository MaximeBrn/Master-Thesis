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

assert(length(T) >= 26);

T(1) = y(1)^params(8)*exp(x(it_, 1));
T(2) = y(2)^params(9)*exp(x(it_, 3));
T(3) = y(3)^params(8)*exp(x(it_, 2));
T(4) = y(4)^params(9)*exp(x(it_, 4));
T(5) = y(21)^(1+params(3));
T(6) = y(22)^(1+params(3));
T(7) = (-(1/params(4)));
T(8) = params(4)*(-(T(5)/(1+params(3))));
T(9) = (-(1/(1-params(4))));
T(10) = (1-params(4))*(-(T(6)/(1+params(3))));
T(11) = (-(params(4)*params(7)*1/y(17)));
T(12) = (-((1-params(4))*params(7)*1/y(18)));
T(13) = (-(params(4)*(1-params(7))*1/y(19)));
T(14) = (-((1-params(4))*(1-params(7))*1/y(20)));
T(15) = getPowerDeriv(y(21),1+params(3),1);
T(16) = params(4)*(-(y(10)*T(15)/(1+params(3))));
T(17) = getPowerDeriv(y(22),1+params(3),1);
T(18) = (1-params(4))*(-(y(16)*T(17)/(1+params(3))));
T(19) = exp(x(it_, 1))*getPowerDeriv(y(1),params(8),1);
T(20) = (-T(19));
T(21) = exp(x(it_, 3))*getPowerDeriv(y(2),params(9),1);
T(22) = (-T(21));
T(23) = exp(x(it_, 2))*getPowerDeriv(y(3),params(8),1);
T(24) = (-T(23));
T(25) = exp(x(it_, 4))*getPowerDeriv(y(4),params(9),1);
T(26) = (-T(25));

end
