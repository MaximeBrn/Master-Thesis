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

assert(length(T) >= 36);

T = Planner.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(27) = 1/params(5);
T(28) = T(27)*getPowerDeriv(y(3)/params(5),T(1)-params(1),1);
T(29) = getPowerDeriv(T(22),T(23),1);
T(30) = T(27)*getPowerDeriv(y(8)/params(5),(-params(8)),1);
T(31) = (-(params(9)*T(30)));
T(32) = 1/(1-params(5));
T(33) = T(32)*getPowerDeriv(y(10)/(1-params(5)),T(1)-params(1),1);
T(34) = getPowerDeriv(T(24),T(23),1);
T(35) = T(32)*getPowerDeriv(y(15)/(1-params(5)),(-params(8)),1);
T(36) = (-(params(9)*T(35)));

end
