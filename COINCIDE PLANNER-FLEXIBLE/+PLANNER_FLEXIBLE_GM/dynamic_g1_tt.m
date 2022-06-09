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

assert(length(T) >= 64);

T = PLANNER_FLEXIBLE_GM.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(45) = y(26)*(-(T(5)*T(16)*T(2)*(-((1-y(24))*y(10)))/(y(9)*y(9))/(1-params(7))));
T(46) = y(26)*(-(T(5)*T(16)*T(2)*(1-y(24))/y(9)/(1-params(7))));
T(47) = y(26)*(-(T(5)*T(16)*T(2)*(-y(10))/y(9)/(1-params(7))));
T(48) = y(26)*(-(T(5)*T(3)*T(18)*(-((1-y(24))*y(10)))/(y(9)*y(9))/(1-params(7))))-y(35);
T(49) = y(26)*(-(T(5)*T(3)*T(18)*(1-y(24))/y(9)/(1-params(7))));
T(50) = y(26)*(-(T(5)*T(3)*T(18)*(-y(10))/y(9)/(1-params(7))));
T(51) = y(26)*(-(T(5)*T(3)*T(2)*(-(1-y(24)))/(y(9)*y(9))/(1-params(7))));
T(52) = y(26)*(-(T(5)*T(3)*T(2)*y(10)/(y(9)*y(9))/(1-params(7))));
T(53) = y(26)*(-(T(5)*T(3)*T(2)*(-1)/y(9)/(1-params(7))));
T(54) = y(27)*(-(T(10)*T(23)*T(7)*(-((1-y(25))*y(16)))/(y(15)*y(15))/(1-params(7))));
T(55) = y(27)*(-(T(10)*T(23)*T(7)*(1-y(25))/y(15)/(1-params(7))));
T(56) = y(27)*(-(T(10)*T(23)*T(7)*(-y(16))/y(15)/(1-params(7))));
T(57) = y(27)*(-(T(10)*T(8)*T(25)*(-((1-y(25))*y(16)))/(y(15)*y(15))/(1-params(7))))-y(36);
T(58) = y(27)*(-(T(10)*T(8)*T(25)*(1-y(25))/y(15)/(1-params(7))));
T(59) = y(27)*(-(T(10)*T(8)*T(25)*(-y(16))/y(15)/(1-params(7))));
T(60) = y(27)*(-(T(10)*T(8)*T(7)*(-(1-y(25)))/(y(15)*y(15))/(1-params(7))));
T(61) = y(27)*(-(T(10)*T(8)*T(7)*y(16)/(y(15)*y(15))/(1-params(7))));
T(62) = y(27)*(-(T(10)*T(8)*T(7)*(-1)/y(15)/(1-params(7))));
T(63) = getPowerDeriv(y(23),(-params(6)),2);
T(64) = getPowerDeriv(y(23),params(5),2);

end
