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

assert(length(T) >= 60);

T(1) = y(10)/y(9);
T(2) = 1/y(9);
T(3) = T(2)*y(7)/params(5);
T(4) = T(3)^params(4);
T(5) = y(5)/params(5);
T(6) = T(5)^params(1);
T(7) = y(16)/y(15);
T(8) = 1/y(15);
T(9) = T(8)*y(13)/(1-params(5));
T(10) = T(9)^params(4);
T(11) = y(11)/(1-params(5));
T(12) = T(11)^params(1);
T(13) = 1/params(1);
T(14) = y(18)^T(13);
T(15) = y(19)^params(12);
T(16) = 1-params(6)+params(6)*y(18)^(params(12)-T(13));
T(17) = y(20)^params(12);
T(18) = 1-params(7)+params(7)*y(18)^(T(13)-params(12));
T(19) = y(17)^(1-params(12));
T(20) = 1/(1-params(12));
T(21) = y(1)^params(10)*exp(x(it_, 1));
T(22) = y(2)^params(11)*exp(x(it_, 3));
T(23) = y(3)^params(10)*exp(x(it_, 2));
T(24) = y(4)^params(11)*exp(x(it_, 4));
T(25) = 1/params(5);
T(26) = T(25)*getPowerDeriv(T(5),params(1),1);
T(27) = T(2)/params(5);
T(28) = getPowerDeriv(T(3),params(4),1);
T(29) = T(1)*T(27)*T(28);
T(30) = y(7)*(-1)/(y(9)*y(9))/params(5);
T(31) = T(4)*(-y(10))/(y(9)*y(9))+T(1)*T(28)*T(30);
T(32) = 1/(1-params(5));
T(33) = T(32)*getPowerDeriv(T(11),params(1),1);
T(34) = T(32)*getPowerDeriv(y(12)/(1-params(5)),1+params(4),1);
T(35) = T(8)/(1-params(5));
T(36) = getPowerDeriv(T(9),params(4),1);
T(37) = T(7)*T(35)*T(36);
T(38) = y(13)*(-1)/(y(15)*y(15))/(1-params(5));
T(39) = T(10)*(-y(16))/(y(15)*y(15))+T(7)*T(36)*T(38);
T(40) = getPowerDeriv(y(17),1-params(12),1);
T(41) = getPowerDeriv(params(7)+(1-params(7))*T(19),T(20),1);
T(42) = getPowerDeriv(1-params(6)+params(6)*T(19),T(20),1);
T(43) = params(7)*getPowerDeriv(y(18),T(13)-params(12),1);
T(44) = T(17)*T(43);
T(45) = params(6)*getPowerDeriv(y(18),params(12)-T(13),1);
T(46) = T(15)*T(45);
T(47) = getPowerDeriv(y(18),T(13),1);
T(48) = getPowerDeriv(y(19),params(12),1);
T(49) = T(16)*T(48);
T(50) = (-((-(y(20)*y(17)))/(y(19)*y(19))));
T(51) = getPowerDeriv(y(20),params(12),1);
T(52) = T(18)*T(51);
T(53) = exp(x(it_, 1))*getPowerDeriv(y(1),params(10),1);
T(54) = (-T(53));
T(55) = exp(x(it_, 3))*getPowerDeriv(y(2),params(11),1);
T(56) = (-T(55));
T(57) = exp(x(it_, 2))*getPowerDeriv(y(3),params(10),1);
T(58) = (-T(57));
T(59) = exp(x(it_, 4))*getPowerDeriv(y(4),params(11),1);
T(60) = (-T(59));

end
