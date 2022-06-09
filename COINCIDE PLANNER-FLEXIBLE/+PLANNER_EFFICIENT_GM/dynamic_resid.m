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
    T = PLANNER_EFFICIENT_GM.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(40, 1);
residual(1) = y(31)*T(7)+y(26)*(-params(5))+y(25)*(-(1-params(5)));
residual(2) = T(7)*y(33)+y(27)*(-y(9));
residual(3) = y(25)+y(27);
residual(4) = T(7)*y(29)-y(25);
residual(5) = y(35)+y(27)*(-y(6))+params(10)*y(45);
residual(6) = T(8)+y(39)*(-T(8))+y(36)+params(10)*y(46);
residual(7) = y(32)*T(9)+y(26)*(-(1-params(6)))+y(25)*(-params(6));
residual(8) = T(9)*y(34)+y(28)*(-y(15));
residual(9) = y(26)+y(28);
residual(10) = T(9)*y(30)-y(26);
residual(11) = y(37)+y(28)*(-y(12))+params(10)*y(47);
residual(12) = T(10)+y(40)*(-T(10))+y(38)+params(10)*y(48);
residual(13) = params(4)*params(7)*1/y(17)+y(29)+y(39)*T(11);
residual(14) = (1-params(4))*params(7)*1/y(18)+y(30)+y(40)*T(12);
residual(15) = params(4)*(1-params(7))*1/y(19)+y(31)+y(39)*T(13);
residual(16) = (1-params(4))*(1-params(7))*1/y(20)+y(32)+y(40)*T(14);
residual(17) = T(16)+y(33)+y(39)*(-T(16));
residual(18) = T(18)+y(34)+y(40)*(-T(18));
residual(19) = y(39);
residual(20) = y(40);
residual(21) = y(7)-((1-params(5))*y(5)+params(6)*y(11)+y(8));
residual(22) = y(13)-(params(5)*y(5)+y(11)*(1-params(6))+y(14));
residual(23) = y(7)-y(9)*y(6);
residual(24) = y(13)-y(15)*y(12);
residual(25) = y(17)-y(8)/params(4);
residual(26) = y(18)-y(14)/(1-params(4));
residual(27) = y(19)-y(5)/params(4);
residual(28) = y(20)-y(11)/(1-params(4));
residual(29) = y(21)-y(6)/params(4);
residual(30) = y(22)-y(12)/(1-params(4));
residual(31) = y(9)-T(1);
residual(32) = y(10)-T(2);
residual(33) = y(15)-T(3);
residual(34) = y(16)-T(4);
residual(35) = y(23)-params(4)*((1-params(7))*log(y(19))+params(7)*log(y(17))-y(10)*T(5)/(1+params(3)));
residual(36) = y(24)-(1-params(4))*((1-params(7))*log(y(20))+params(7)*log(y(18))-y(16)*T(6)/(1+params(3)));
lhs = y(41);
rhs = y(35)*T(20);
residual(37) = lhs - rhs;
lhs = y(42);
rhs = y(36)*T(22);
residual(38) = lhs - rhs;
lhs = y(43);
rhs = y(37)*T(24);
residual(39) = lhs - rhs;
lhs = y(44);
rhs = y(38)*T(26);
residual(40) = lhs - rhs;

end
