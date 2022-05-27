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

assert(length(T) >= 12);

T(1) = y(1)^params(12)*exp(x(it_, 1));
T(2) = y(3)^params(12)*exp(x(it_, 3));
T(3) = y(2)^params(13)*exp(x(it_, 2));
T(4) = y(4)^params(13)*exp(x(it_, 4));
T(5) = 1/params(5);
T(6) = 1/(1-params(5));
T(7) = y(15)/(1-params(5));
T(8) = T(6)*getPowerDeriv(T(7),1+params(4),1);
T(9) = (-(getPowerDeriv(y(10),params(12),1)*exp(y(37))));
T(10) = (-(getPowerDeriv(y(11),params(13),1)*exp(y(38))));
T(11) = (-(getPowerDeriv(y(17),params(12),1)*exp(y(39))));
T(12) = (-(getPowerDeriv(y(18),params(13),1)*exp(y(40))));

end
