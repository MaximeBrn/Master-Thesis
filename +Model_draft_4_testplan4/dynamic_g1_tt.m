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

assert(length(T) >= 18);

T = Model_draft_4_testplan4.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(9) = 1/params(5);
T(10) = T(9)*getPowerDeriv(y(6)/params(5),params(4),1);
T(11) = T(9)*getPowerDeriv(y(7)/params(5),(-params(9)),1);
T(12) = (-(exp(x(it_, 1))*getPowerDeriv(y(1),params(11),1)));
T(13) = (-(exp(x(it_, 3))*getPowerDeriv(y(2),params(12),1)));
T(14) = 1/(1-params(5));
T(15) = T(14)*getPowerDeriv(y(11)/(1-params(5)),params(4),1);
T(16) = T(14)*getPowerDeriv(y(12)/(1-params(5)),(-params(9)),1);
T(17) = (-(exp(x(it_, 2))*getPowerDeriv(y(3),params(11),1)));
T(18) = (-(exp(x(it_, 4))*getPowerDeriv(y(4),params(12),1)));

end
