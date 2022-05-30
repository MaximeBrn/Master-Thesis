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
    T = Model_draft_4_testplan4.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(10, 1);
lhs = params(5)*(y(5)/params(5))^(-params(1));
rhs = params(5)*(1-params(6))*params(10)*T(1)+params(10)*params(6)*(1-params(5))*T(2);
residual(1) = lhs - rhs;
lhs = (1-params(5))*(y(10)/(1-params(5)))^(-params(1));
rhs = T(1)*params(10)*params(5)*params(7)+T(2)*params(10)*(1-params(5))*(1-params(7));
residual(2) = lhs - rhs;
lhs = y(9)/y(8)*T(3);
rhs = params(10)*T(1);
residual(3) = lhs - rhs;
lhs = y(14)/y(13)*T(4);
rhs = params(10)*T(2);
residual(4) = lhs - rhs;
lhs = y(7)+y(5)*(1-params(6))+y(10)*params(7);
rhs = y(8)*y(6);
residual(5) = lhs - rhs;
lhs = y(12)+y(5)*params(6)+y(10)*(1-params(7));
rhs = y(13)*y(11);
residual(6) = lhs - rhs;
lhs = y(8);
rhs = T(5);
residual(7) = lhs - rhs;
lhs = y(13);
rhs = T(6);
residual(8) = lhs - rhs;
lhs = y(9);
rhs = T(7);
residual(9) = lhs - rhs;
lhs = y(14);
rhs = T(8);
residual(10) = lhs - rhs;

end
