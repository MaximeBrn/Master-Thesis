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
    T = Model_draft_4_testplan5.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(29, 1);
lhs = params(5)*T(1)^(-params(1));
rhs = (1-params(6))*y(17)+params(7)*y(18);
residual(1) = lhs - rhs;
lhs = params(5)*y(10)*T(3);
rhs = y(17)*y(9);
residual(2) = lhs - rhs;
lhs = params(5)*params(9)*(y(8)/params(5))^(-params(8));
rhs = y(17);
residual(3) = lhs - rhs;
lhs = (1-params(5))*T(4)^(-params(1));
rhs = params(6)*y(17)+y(18)*(1-params(7));
residual(4) = lhs - rhs;
lhs = (1-params(5))*y(16)*T(6);
rhs = y(18)*y(15);
residual(5) = lhs - rhs;
lhs = params(9)*(1-params(5))*(y(14)/(1-params(5)))^(-params(8));
rhs = y(18);
residual(6) = lhs - rhs;
lhs = y(8)+y(5)*(1-params(6))+params(7)*y(11);
rhs = y(6)*y(9);
residual(7) = lhs - rhs;
lhs = y(14)+y(5)*params(6)+y(11)*(1-params(7));
rhs = y(12)*y(15);
residual(8) = lhs - rhs;
lhs = y(9);
rhs = T(7);
residual(9) = lhs - rhs;
lhs = y(10);
rhs = T(8);
residual(10) = lhs - rhs;
lhs = y(15);
rhs = T(9);
residual(11) = lhs - rhs;
lhs = y(16);
rhs = T(10);
residual(12) = lhs - rhs;
lhs = y(19);
rhs = log(y(5))-log((steady_state(1)));
residual(13) = lhs - rhs;
lhs = y(20);
rhs = log(y(6))-log((steady_state(2)));
residual(14) = lhs - rhs;
lhs = y(21);
rhs = log(y(8))-log((steady_state(4)));
residual(15) = lhs - rhs;
lhs = y(22);
rhs = log(y(9))-log((steady_state(5)));
residual(16) = lhs - rhs;
lhs = y(23);
rhs = log(y(10))-log((steady_state(6)));
residual(17) = lhs - rhs;
lhs = y(24);
rhs = y(20)+y(22);
residual(18) = lhs - rhs;
lhs = y(25);
rhs = log(y(11))-log((steady_state(7)));
residual(19) = lhs - rhs;
lhs = y(26);
rhs = log(y(12))-log((steady_state(8)));
residual(20) = lhs - rhs;
lhs = y(27);
rhs = log(y(14))-log((steady_state(10)));
residual(21) = lhs - rhs;
lhs = y(28);
rhs = log(y(15))-log((steady_state(11)));
residual(22) = lhs - rhs;
lhs = y(29);
rhs = log(y(16))-log((steady_state(12)));
residual(23) = lhs - rhs;
lhs = y(30);
rhs = y(26)+y(28);
residual(24) = lhs - rhs;
lhs = y(7);
rhs = y(6)*y(9);
residual(25) = lhs - rhs;
lhs = y(13);
rhs = y(12)*y(15);
residual(26) = lhs - rhs;
lhs = y(33);
rhs = params(5)*T(11)+(1-params(5))*T(13);
residual(27) = lhs - rhs;
lhs = y(31);
rhs = T(11);
residual(28) = lhs - rhs;
lhs = y(32);
rhs = T(13);
residual(29) = lhs - rhs;

end
