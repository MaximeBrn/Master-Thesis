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

T(1) = 1/(1-params(3));
T(2) = (params(11)+params(2)-1)/params(1);
T(3) = 1/params(1);
T(4) = (1-params(2)*params(6)-params(11))/params(1);
T(5) = params(5)+params(1)/(1-params(3));
T(6) = (params(13)-params(2)*params(6))/params(1);
T(7) = params(1)/((1-params(3))*(params(11)+params(13)));
T(8) = (-T(1));
T(9) = (-(T(1)*(-params(3))));
T(10) = (-(params(13)/params(1)));
T(11) = params(48)^(-1);
T(12) = (-(params(12)*(-(params(1)*params(3)/(1-params(3))))));
T(13) = (-(params(14)*(-(params(1)*params(3)/(1-params(3))))));

end