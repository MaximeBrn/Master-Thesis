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
    T = PLANNER.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(25, 1);
lhs = T(5)*T(6);
rhs = T(8);
residual(1) = lhs - rhs;
lhs = T(6)*T(11);
rhs = T(13);
residual(2) = lhs - rhs;
lhs = T(16)*T(17);
rhs = T(13);
residual(3) = lhs - rhs;
lhs = T(17)*T(20);
rhs = T(8);
residual(4) = lhs - rhs;
lhs = (y(6)/params(5))^params(4);
rhs = T(7)*params(9)*y(9);
residual(5) = lhs - rhs;
lhs = (y(13)/(1-params(5)))^params(4);
rhs = T(12)*params(9)*y(16);
residual(6) = lhs - rhs;
lhs = y(3)/params(5);
rhs = T(22)^T(23);
residual(7) = lhs - rhs;
lhs = y(10)/(1-params(5));
rhs = T(24)^T(23);
residual(8) = lhs - rhs;
lhs = y(8)+y(4)+y(11);
rhs = y(7);
residual(9) = lhs - rhs;
lhs = y(15)+y(5)+y(12);
rhs = y(14);
residual(10) = lhs - rhs;
lhs = y(7);
rhs = y(6)*y(9);
residual(11) = lhs - rhs;
lhs = y(14);
rhs = y(13)*y(16);
residual(12) = lhs - rhs;
lhs = y(9);
rhs = T(25);
residual(13) = lhs - rhs;
lhs = y(16);
rhs = T(26)*exp((-x(it_, 2)));
residual(14) = lhs - rhs;
lhs = y(17);
rhs = log(y(7))-log((steady_state(5)));
residual(15) = lhs - rhs;
lhs = y(19);
rhs = log(y(8))-log((steady_state(6)));
residual(16) = lhs - rhs;
lhs = y(20);
rhs = log(y(3))-log((steady_state(1)));
residual(17) = lhs - rhs;
lhs = y(21);
rhs = log(y(4))-log((steady_state(2)));
residual(18) = lhs - rhs;
lhs = y(22);
rhs = log(y(5))-log((steady_state(3)));
residual(19) = lhs - rhs;
lhs = y(23);
rhs = log(y(14))-log((steady_state(12)));
residual(20) = lhs - rhs;
lhs = y(24);
rhs = log(y(15))-log((steady_state(13)));
residual(21) = lhs - rhs;
lhs = y(25);
rhs = log(y(10))-log((steady_state(8)));
residual(22) = lhs - rhs;
lhs = y(26);
rhs = log(y(11))-log((steady_state(9)));
residual(23) = lhs - rhs;
lhs = y(27);
rhs = log(y(12))-log((steady_state(10)));
residual(24) = lhs - rhs;
lhs = y(18);
rhs = (y(7)-(steady_state(5)))/y(7);
residual(25) = lhs - rhs;

end
