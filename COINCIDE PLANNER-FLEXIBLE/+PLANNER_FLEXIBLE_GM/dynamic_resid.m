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
    T = PLANNER_FLEXIBLE_GM.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(42, 1);
residual(1) = y(39)*(-T(16))+y(29)*(-T(5))+T(16)*y(28)+y(26)*(-(T(5)*T(17)));
residual(2) = (-T(16))*y(41)+y(35)*(-y(9))+y(26)*T(20);
residual(3) = y(29)+y(35);
residual(4) = (-T(16))*y(37)-y(29);
residual(5) = y(35)*(-y(6))+y(31)+y(26)*(-(T(5)*T(21)))+params(11)*y(47);
residual(6) = params(4)*(-(y(21)^(1+params(3))/(1+params(3))))+y(32)+y(26)*(-(T(5)*T(22)))+params(11)*y(48);
residual(7) = y(40)*(-T(23))+y(30)*(-T(10))+y(28)*(-(T(11)*T(23)))+y(27)*(-(T(10)*T(24)));
residual(8) = (-T(23))*y(42)+y(36)*(-y(15))+y(27)*T(27);
residual(9) = y(30)+y(36);
residual(10) = (-T(23))*y(38)-y(30);
residual(11) = y(36)*(-y(12))+y(33)+y(27)*(-(T(10)*T(28)))+params(11)*y(49);
residual(12) = (1-params(4))*(-(y(22)^(1+params(3))/(1+params(3))))+y(34)+y(27)*(-(T(10)*T(29)))+params(11)*y(50);
residual(13) = y(37)+params(4)*params(7)*1/y(17);
residual(14) = y(38)+(1-params(4))*params(7)*1/y(18);
residual(15) = y(39)+params(4)*(1-params(7))*1/y(19);
residual(16) = y(40)+(1-params(4))*(1-params(7))*1/y(20);
residual(17) = y(41)+params(4)*(-(y(10)*T(30)/(1+params(3))));
residual(18) = y(42)+(1-params(4))*(-(y(16)*T(31)/(1+params(3))));
residual(19) = y(30)*(-(y(11)*T(32)))+y(29)*(-(y(5)*T(33)))+y(28)*(-(T(8)*T(34)))+y(27)*(-(T(9)*T(32)))+y(26)*(-(T(4)*T(33)));
residual(20) = y(26)*(-(T(5)*T(35)));
residual(21) = y(27)*(-(T(10)*T(36)));
residual(22) = 1-1/params(10)-T(4)*T(5);
residual(23) = 1-1/params(10)-T(9)*T(10);
residual(24) = T(3)-T(8)*T(11);
residual(25) = y(7)-(y(5)*T(5)+y(8));
residual(26) = y(13)-(y(11)*T(10)+y(14));
residual(27) = y(9)-T(12);
residual(28) = y(10)-T(13);
residual(29) = y(15)-T(14);
residual(30) = y(16)-T(15);
residual(31) = y(7)-y(9)*y(6);
residual(32) = y(13)-y(15)*y(12);
residual(33) = y(17)-y(8)/params(4);
residual(34) = y(18)-y(14)/(1-params(4));
residual(35) = y(19)-T(3);
residual(36) = y(20)-T(8);
residual(37) = y(21)-T(1);
residual(38) = y(22)-T(6);
lhs = y(43);
rhs = y(31)*T(38);
residual(39) = lhs - rhs;
lhs = y(44);
rhs = y(32)*T(40);
residual(40) = lhs - rhs;
lhs = y(45);
rhs = y(33)*T(42);
residual(41) = lhs - rhs;
lhs = y(46);
rhs = y(34)*T(44);
residual(42) = lhs - rhs;

end
