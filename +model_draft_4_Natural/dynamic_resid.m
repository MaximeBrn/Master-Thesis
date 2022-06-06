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
    T = Model_draft_4_Natural.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(14, 1);
lhs = 0;
rhs = y(6)+params(1)*y(9)+params(5)*y(7)+params(18)*y(15)-(1+params(5))*y(5);
residual(1) = lhs - rhs;
lhs = 0;
rhs = y(11)+params(1)*y(14)+params(5)*y(12)-y(15)*params(19)-(1+params(5))*y(10);
residual(2) = lhs - rhs;
lhs = params(1)*y(9);
rhs = params(1)*y(14)+y(15)*(1-params(2));
residual(3) = lhs - rhs;
lhs = y(9);
rhs = T(1)*(y(7)-params(3)*y(8))-y(15)*(params(2)+params(11)-1)/params(1);
residual(4) = lhs - rhs;
lhs = y(14);
rhs = T(1)*(y(12)-params(3)*y(13))+y(15)*params(13)/params(1);
residual(5) = lhs - rhs;
lhs = y(8);
rhs = y(7)*params(20)+y(12)*params(21)+y(9)*params(22)+y(14)*params(23)+y(5)*params(24)+y(10)*params(25)+y(6)*params(26)+y(11)*params(27)+y(15)*params(28);
residual(6) = lhs - rhs;
lhs = y(13);
rhs = y(7)*params(29)+y(12)*params(30)+y(9)*params(31)+y(14)*params(32)+y(5)*params(33)+y(10)*params(34)+y(6)*params(35)+y(11)*params(36)+y(15)*params(37);
residual(7) = lhs - rhs;
lhs = y(18);
rhs = 0.9*y(19);
residual(8) = lhs - rhs;
lhs = y(16);
rhs = y(7)*params(6)+y(12)*(1-params(6));
residual(9) = lhs - rhs;
lhs = y(17);
rhs = y(8)*params(6)+y(13)*(1-params(6));
residual(10) = lhs - rhs;
lhs = y(5);
rhs = params(16)*y(1)+x(it_, 1)+x(it_, 5);
residual(11) = lhs - rhs;
lhs = y(6);
rhs = params(17)*y(2)+x(it_, 2);
residual(12) = lhs - rhs;
lhs = y(10);
rhs = x(it_, 5)+params(16)*y(3)+x(it_, 3);
residual(13) = lhs - rhs;
lhs = y(11);
rhs = params(17)*y(4)+x(it_, 4);
residual(14) = lhs - rhs;

end
