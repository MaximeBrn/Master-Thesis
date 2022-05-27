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

assert(length(T) >= 21);

T = Model_draft_4_testplan3.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(13) = (-(exp(x(it_, 1))*getPowerDeriv(y(1),params(12),1)));
T(14) = (-(exp(y(37))*getPowerDeriv(y(10),params(12),2)));
T(15) = (-(exp(x(it_, 2))*getPowerDeriv(y(2),params(13),1)));
T(16) = (-(exp(y(38))*getPowerDeriv(y(11),params(13),2)));
T(17) = T(6)*T(6)*getPowerDeriv(T(7),1+params(4),2);
T(18) = (-(exp(x(it_, 3))*getPowerDeriv(y(3),params(12),1)));
T(19) = (-(exp(y(39))*getPowerDeriv(y(17),params(12),2)));
T(20) = (-(exp(x(it_, 4))*getPowerDeriv(y(4),params(13),1)));
T(21) = (-(exp(y(40))*getPowerDeriv(y(18),params(13),2)));

end
