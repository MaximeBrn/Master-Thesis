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

assert(length(T) >= 24);

T(1) = 1/params(8);
T(2) = (1-params(6))^T(1);
T(3) = (params(8)-1)/params(8);
T(4) = params(6)^T(1);
T(5) = T(2)*y(6)^T(3)+T(4)*y(7)^T(3);
T(6) = params(8)/(params(8)-1);
T(7) = params(7)^T(1);
T(8) = (1-params(7))^T(1);
T(9) = T(7)*y(14)^T(3)+T(8)*y(15)^T(3);
T(10) = y(1)^params(12)*exp(x(it_, 1));
T(11) = y(3)^params(12)*exp(x(it_, 3));
T(12) = y(2)^params(13)*exp(x(it_, 2));
T(13) = y(4)^params(13)*exp(x(it_, 4));
T(14) = T(2)*getPowerDeriv(y(6),T(3),1);
T(15) = getPowerDeriv(T(5),T(6),1);
T(16) = T(4)*getPowerDeriv(y(7),T(3),1);
T(17) = T(7)*getPowerDeriv(y(14),T(3),1);
T(18) = getPowerDeriv(T(9),T(6),1);
T(19) = T(8)*getPowerDeriv(y(15),T(3),1);
T(20) = getPowerDeriv(y(16),1+params(4),1);
T(21) = (-(getPowerDeriv(y(11),params(12),1)*exp(y(44))));
T(22) = (-(getPowerDeriv(y(12),params(13),1)*exp(y(45))));
T(23) = (-(getPowerDeriv(y(19),params(12),1)*exp(y(46))));
T(24) = (-(getPowerDeriv(y(20),params(13),1)*exp(y(47))));

end
