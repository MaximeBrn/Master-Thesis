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
    T = Planner_log.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(23, 1);
lhs = y(6);
rhs = params(12)*params(8)*y(9)+(1-params(12)*params(1))*y(5);
residual(1) = lhs - rhs;
lhs = y(7);
rhs = (1-params(12)*params(1))*y(5)+params(12)*params(8)*y(14);
residual(2) = lhs - rhs;
lhs = y(12);
rhs = params(12)*params(8)*y(14)+(1-params(12)*params(1))*y(10);
residual(3) = lhs - rhs;
lhs = y(11);
rhs = params(12)*params(8)*y(9)+(1-params(12)*params(1))*y(10);
residual(4) = lhs - rhs;
lhs = params(4)*y(8);
rhs = (1+params(4))*y(3)-params(8)*y(9);
residual(5) = lhs - rhs;
lhs = params(4)*y(13);
rhs = (1+params(4))*y(4)-params(8)*y(14);
residual(6) = lhs - rhs;
lhs = y(8);
rhs = y(6)*(1-params(6))*(1-params(13))+y(11)*params(6)*(1-params(13))+y(9)*params(13);
residual(7) = lhs - rhs;
lhs = y(13);
rhs = y(7)*(1-params(13))*params(7)+y(12)*(1-params(13))*(1-params(7))+y(14)*params(13);
residual(8) = lhs - rhs;
lhs = y(5);
rhs = y(6)*(1-params(6))+y(7)*params(6);
residual(9) = lhs - rhs;
lhs = y(10);
rhs = y(11)*params(7)+y(12)*(1-params(7));
residual(10) = lhs - rhs;
lhs = y(16);
rhs = params(12)*params(8)*y(19)+(1-params(12)*params(1))*y(15);
residual(11) = lhs - rhs;
lhs = y(17);
rhs = (1-params(12)*params(1))*y(15)+params(12)*params(8)*y(24);
residual(12) = lhs - rhs;
lhs = y(22);
rhs = params(12)*params(8)*y(24)+(1-params(12)*params(1))*y(20);
residual(13) = lhs - rhs;
lhs = y(21);
rhs = params(12)*params(8)*y(19)+(1-params(12)*params(1))*y(20);
residual(14) = lhs - rhs;
lhs = params(8)*y(19);
rhs = params(1)*y(15)+params(6)*y(25);
residual(15) = lhs - rhs;
lhs = params(8)*y(24);
rhs = params(1)*y(20)-params(7)*y(25);
residual(16) = lhs - rhs;
lhs = 0;
rhs = params(6)*y(25)+params(1)*y(15)+params(4)*y(18)-(1+params(4))*y(3);
residual(17) = lhs - rhs;
lhs = 0;
rhs = params(1)*y(20)+params(4)*y(23)-params(7)*y(25)-(1+params(4))*y(4);
residual(18) = lhs - rhs;
lhs = y(25);
rhs = params(18)*(y(18)-y(23)-params(13)*(y(19)-y(24)));
residual(19) = lhs - rhs;
lhs = params(15)*(y(18)-params(13)*y(19));
rhs = params(1)*y(15)+y(25)*params(2)*(1-params(5))*params(14);
residual(20) = lhs - rhs;
lhs = params(15)*(y(23)-params(13)*y(24));
rhs = params(1)*y(20)-y(25)*params(14)*params(2)*params(5);
residual(21) = lhs - rhs;
lhs = y(3);
rhs = params(11)*y(1)+x(it_, 1);
residual(22) = lhs - rhs;
lhs = y(4);
rhs = params(11)*y(2)+x(it_, 2);
residual(23) = lhs - rhs;

end
