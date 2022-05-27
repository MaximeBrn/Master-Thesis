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

assert(length(T) >= 39);

T = Model_draft_4_testplan2.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(25) = T(2)*getPowerDeriv(y(6),T(3),2);
T(26) = getPowerDeriv(T(5),T(6),2);
T(27) = T(4)*getPowerDeriv(y(7),T(3),2);
T(28) = (-(exp(x(it_, 1))*getPowerDeriv(y(1),params(12),1)));
T(29) = (-(exp(y(44))*getPowerDeriv(y(11),params(12),2)));
T(30) = (-(exp(x(it_, 2))*getPowerDeriv(y(2),params(13),1)));
T(31) = (-(exp(y(45))*getPowerDeriv(y(12),params(13),2)));
T(32) = T(7)*getPowerDeriv(y(14),T(3),2);
T(33) = getPowerDeriv(T(9),T(6),2);
T(34) = T(8)*getPowerDeriv(y(15),T(3),2);
T(35) = getPowerDeriv(y(16),1+params(4),2);
T(36) = (-(exp(x(it_, 3))*getPowerDeriv(y(3),params(12),1)));
T(37) = (-(exp(y(46))*getPowerDeriv(y(19),params(12),2)));
T(38) = (-(exp(x(it_, 4))*getPowerDeriv(y(4),params(13),1)));
T(39) = (-(exp(y(47))*getPowerDeriv(y(20),params(13),2)));

end
