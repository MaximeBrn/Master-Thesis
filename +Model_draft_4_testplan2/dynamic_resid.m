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
    T = Model_draft_4_testplan2.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(35, 1);
residual(1) = params(5)*getPowerDeriv(y(5),1-params(1),1)/(1-params(1))+y(32)*(-params(6))+y(23)+y(31)*(-(1-params(6)));
residual(2) = y(31)+y(23)*(-(params(5)*T(14)*T(15)))-y(22);
residual(3) = y(32)+y(23)*(-(params(5)*T(15)*T(16)))-y(25);
residual(4) = params(5)*(-(getPowerDeriv(y(8),1+params(4),1)/(1+params(4))))+y(21)*(-y(11));
residual(5) = params(5)*params(10)*getPowerDeriv(y(9),1-params(9),1)/(1-params(9))-y(22);
residual(6) = y(35)*1/params(5)+y(22)+y(21);
residual(7) = y(27)+y(21)*(-y(8))+params(14)*y(40)*T(21);
residual(8) = y(29)+params(14)*y(42)*T(22);
residual(9) = (1-params(5))*getPowerDeriv(y(13),1-params(1),1)/(1-params(1))+y(34)*(-params(7))+y(26)+y(33)*(-(1-params(7)));
residual(10) = y(34)+y(26)*(-((1-params(5))*T(17)*T(18)))-y(22);
residual(11) = y(33)+y(26)*(-((1-params(5))*T(18)*T(19)))-y(25);
residual(12) = (1-params(5))*(-(y(20)*T(20)/(1+params(4))))+y(24)*(-y(19));
residual(13) = (1-params(5))*params(10)*getPowerDeriv(y(17),1-params(9),1)/(1-params(9))-y(25);
residual(14) = y(35)*(-(1/(1-params(5))))+y(25)+y(24);
residual(15) = y(28)+y(24)*(-y(16))+params(14)*y(41)*T(23);
residual(16) = (1-params(5))*(-(y(16)^(1+params(4))/(1+params(4))))+y(30)+params(14)*y(43)*T(24);
residual(17) = y(10)-y(11)*y(8);
residual(18) = y(10)-(y(6)+y(14)+y(9));
residual(19) = y(5)-params(5)*T(5)^T(6);
residual(20) = y(18)-y(19)*y(16);
residual(21) = y(18)-(y(7)+y(15)+y(17));
residual(22) = y(13)-(1-params(5))*T(9)^T(6);
residual(23) = y(11)-T(10);
residual(24) = y(19)-T(11);
residual(25) = y(12)-T(12);
residual(26) = y(20)-T(13);
residual(27) = y(6)-y(5)*(1-params(6));
residual(28) = y(7)-y(5)*params(6);
residual(29) = y(15)-y(13)*(1-params(7));
residual(30) = y(14)-y(13)*params(7);
residual(31) = y(10)/params(5)-y(18)/(1-params(5));
lhs = y(36);
rhs = x(it_, 1);
residual(32) = lhs - rhs;
lhs = y(37);
rhs = x(it_, 2);
residual(33) = lhs - rhs;
lhs = y(38);
rhs = x(it_, 3);
residual(34) = lhs - rhs;
lhs = y(39);
rhs = x(it_, 4);
residual(35) = lhs - rhs;

end
