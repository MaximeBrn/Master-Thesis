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
    T = Model_draft_4_testplan.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(30, 1);
residual(1) = y(23)+params(5)*getPowerDeriv(y(5),1-params(1),1)/(1-params(1));
residual(2) = y(23)*(-(T(14)*T(15)))-y(22);
residual(3) = y(23)*(-(T(15)*T(16)))-y(25);
residual(4) = params(5)*(-(getPowerDeriv(y(8),1+params(4),1)/(1+params(4))))+y(21)*(-y(11));
residual(5) = params(5)*params(10)*getPowerDeriv(y(9),1-params(9),1)/(1-params(9))-y(22);
residual(6) = y(22)+y(21);
residual(7) = y(27)+y(21)*(-y(8))+params(13)*y(35)*T(21);
residual(8) = y(29)+params(13)*y(37)*T(22);
residual(9) = y(26)+(1-params(5))*getPowerDeriv(y(13),1-params(1),1)/(1-params(1));
residual(10) = y(26)*(-(T(17)*T(18)))-y(22);
residual(11) = y(26)*(-(T(18)*T(19)))-y(25);
residual(12) = (1-params(5))*(-(y(20)*T(20)/(1+params(4))))+y(24)*(-y(19));
residual(13) = (1-params(5))*params(10)*getPowerDeriv(y(17),1-params(9),1)/(1-params(9))-y(25);
residual(14) = y(25)+y(24);
residual(15) = y(28)+y(24)*(-y(16))+params(13)*y(36)*T(23);
residual(16) = (1-params(5))*(-(y(16)^(1+params(4))/(1+params(4))))+y(30)+params(13)*y(38)*T(24);
residual(17) = y(10)-y(11)*y(8);
residual(18) = y(10)-(y(6)+y(14)+y(9));
residual(19) = y(5)-T(5)^T(6);
residual(20) = y(18)-y(19)*y(16);
residual(21) = y(18)-(y(7)+y(15)+y(17));
residual(22) = y(13)-T(9)^T(6);
residual(23) = y(11)-T(10);
residual(24) = y(19)-T(11);
residual(25) = y(12)-T(12);
residual(26) = y(20)-T(13);
lhs = y(31);
rhs = x(it_, 1);
residual(27) = lhs - rhs;
lhs = y(32);
rhs = x(it_, 2);
residual(28) = lhs - rhs;
lhs = y(33);
rhs = x(it_, 3);
residual(29) = lhs - rhs;
lhs = y(34);
rhs = x(it_, 4);
residual(30) = lhs - rhs;

end
