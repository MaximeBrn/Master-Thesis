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
    T = Model_draft_4_Efficient.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(10, 1);
lhs = (-params(1))*y(9);
rhs = (1-params(18))*params(5)*(y(7)-y(5))+params(18)*params(5)*(y(12)-y(10));
residual(1) = lhs - rhs;
lhs = (-params(1))*y(14);
rhs = (y(7)-y(5))*params(5)*params(19)+(y(12)-y(10))*params(5)*(1-params(19));
residual(2) = lhs - rhs;
lhs = y(7);
rhs = y(9)*(1-params(18))*(1-params(3))+y(14)*params(18)*(1-params(3))+params(3)*y(8);
residual(3) = lhs - rhs;
lhs = y(12);
rhs = y(9)*params(19)*(1-params(3))+y(14)*(1-params(19))*(1-params(3))+params(3)*y(13);
residual(4) = lhs - rhs;
lhs = y(8)*(-params(8));
rhs = params(5)*y(7)-y(5)*(1+params(5))+y(6);
residual(5) = lhs - rhs;
lhs = y(13)*(-params(8));
rhs = params(5)*y(12)-y(10)*(1+params(5))+y(11);
residual(6) = lhs - rhs;
lhs = y(5);
rhs = params(16)*y(1)+x(it_, 1);
residual(7) = lhs - rhs;
lhs = y(6);
rhs = params(17)*y(2)+x(it_, 2);
residual(8) = lhs - rhs;
lhs = y(10);
rhs = params(16)*y(3)+x(it_, 3);
residual(9) = lhs - rhs;
lhs = y(11);
rhs = params(17)*y(4)+x(it_, 4);
residual(10) = lhs - rhs;

end
