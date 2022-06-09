function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 30);

T = PLANNER_EFFICIENT_GM.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(27) = params(4)*(-(T(15)/(1+params(3))))+y(39)*(-(params(4)*(-(T(15)/(1+params(3))))));
T(28) = (1-params(4))*(-(T(17)/(1+params(3))))+y(40)*(-((1-params(4))*(-(T(17)/(1+params(3))))));
T(29) = params(4)*(-(y(10)*getPowerDeriv(y(21),1+params(3),2)/(1+params(3))));
T(30) = (1-params(4))*(-(y(16)*getPowerDeriv(y(22),1+params(3),2)/(1+params(3))));

end