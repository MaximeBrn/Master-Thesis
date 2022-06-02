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

assert(length(T) >= 13);

T(1) = y(5)/params(5);
T(2) = y(6)/params(5);
T(3) = T(2)^params(4);
T(4) = y(11)/(1-params(5));
T(5) = y(12)/(1-params(5));
T(6) = T(5)^params(4);
T(7) = y(1)^params(10)*exp(x(it_, 1));
T(8) = y(2)^params(11)*exp(x(it_, 3));
T(9) = y(3)^params(10)*exp(x(it_, 2));
T(10) = y(4)^params(11)*exp(x(it_, 4));
T(11) = T(1)^(1-params(1))/(1-params(1))+params(9)*y(8)^(1-params(8))/(1-params(8))-T(2)^(1+params(4))/(1+params(4));
T(12) = T(5)^(1+params(4));
T(13) = T(4)^(1-params(1))/(1-params(1))+params(9)*y(14)^(1-params(8))/(1-params(8))-y(16)*T(12)/(1+params(4));

end
