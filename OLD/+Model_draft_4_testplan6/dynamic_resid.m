function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = Model_draft_4_testplan6.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(36, 1);
residual(1) = params(5)*T(9)*getPowerDeriv(y(5)/params(5),1-params(1),1)/(1-params(1))+y(27)*(-T(9))+y(24)*params(7)/params(5)+y(23)*(1-params(6))/params(5);
residual(2) = params(5)*(-(y(10)*T(10)/(1+params(4))))+y(35)*(-y(9))+(-T(9))*y(29);
residual(3) = y(35)+(-T(9))*y(23);
residual(4) = params(5)*params(9)*T(9)*getPowerDeriv(T(1),1-params(8),1)/(1-params(8))+(-T(9))*y(25)+T(9)*y(23);
residual(5) = y(35)*(-y(6))+y(31)+params(12)*y(41);
residual(6) = params(5)*(-(T(3)^(1+params(4))/(1+params(4))))+y(32)+params(12)*y(42);
residual(7) = (1-params(5))*T(11)*getPowerDeriv(y(11)/(1-params(5)),1-params(1),1)/(1-params(1))+y(28)*(-T(11))+y(24)*(1-params(7))/(1-params(5))+y(23)*params(6)/(1-params(5));
residual(8) = (1-params(5))*(-(y(16)*T(12)/(1+params(4))))+y(36)*(-y(15))+(-T(11))*y(30);
residual(9) = y(36)+y(24)*(-T(11));
residual(10) = (1-params(5))*params(9)*T(11)*getPowerDeriv(T(2),1-params(8),1)/(1-params(8))+(-T(11))*y(26)+y(24)*T(11);
residual(11) = y(36)*(-y(12))+y(33)+params(12)*y(43);
residual(12) = (1-params(5))*(-(T(4)^(1+params(4))/(1+params(4))))+y(34)+params(12)*y(44);
residual(13) = y(25);
residual(14) = y(26);
residual(15) = y(27);
residual(16) = y(28);
residual(17) = y(29);
residual(18) = y(30);
residual(19) = (1-params(6))*y(5)/params(5)+params(6)*y(11)/(1-params(5))+T(1)-y(7)/params(5);
residual(20) = y(5)*params(7)/params(5)+y(11)*(1-params(7))/(1-params(5))+T(2)-y(13)/(1-params(5));
residual(21) = y(17)-T(1);
residual(22) = y(18)-T(2);
residual(23) = y(19)-y(5)/params(5);
residual(24) = y(20)-y(11)/(1-params(5));
residual(25) = y(21)-T(3);
residual(26) = y(22)-T(4);
residual(27) = y(9)-T(5);
residual(28) = y(10)-T(6);
residual(29) = y(15)-T(7);
residual(30) = y(16)-T(8);
residual(31) = y(7)-y(6)*y(9);
residual(32) = y(13)-y(12)*y(15);
lhs = y(37);
rhs = y(31)*T(14);
residual(33) = lhs - rhs;
lhs = y(38);
rhs = y(32)*T(16);
residual(34) = lhs - rhs;
lhs = y(39);
rhs = y(33)*T(18);
residual(35) = lhs - rhs;
lhs = y(40);
rhs = y(34)*T(20);
residual(36) = lhs - rhs;

end
