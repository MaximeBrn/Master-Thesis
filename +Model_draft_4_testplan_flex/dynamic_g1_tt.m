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

assert(length(T) >= 65);

T = Model_draft_4_testplan_flex.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(61) = getPowerDeriv(T(3),params(4),2);
T(62) = T(28)*(-1)/(y(9)*y(9))/params(5);
T(63) = getPowerDeriv(T(9),params(4),2);
T(64) = T(36)*(-1)/(y(15)*y(15))/(1-params(5));
T(65) = getPowerDeriv(y(17),1-params(12),2);

end
