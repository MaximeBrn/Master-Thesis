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
    T = Model_draft_4_testplan_flex.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(34, 1);
residual(1) = params(5)*T(25)*getPowerDeriv(T(5),1-params(1),1)/(1-params(1))+y(25)*(-(T(15)*T(16)))+T(25)*y(23)+y(21)*(-(y(19)*T(1)*T(4)*T(26)));
residual(2) = params(5)*(-(T(25)*getPowerDeriv(y(6)/params(5),1+params(4),1)/(1+params(4))))+y(33)*(-y(9));
residual(3) = y(33)+y(25)+y(21)*(-(y(19)*T(6)*T(29)));
residual(4) = params(5)*params(9)*getPowerDeriv(y(8),1-params(8),1)/(1-params(8))-y(25);
residual(5) = y(33)*(-y(6))+y(29)+y(21)*(-(y(19)*T(6)*T(31)))+params(13)*y(39);
residual(6) = y(30)+y(21)*(-(y(19)*T(6)*T(2)*T(4)))+params(13)*y(40);
residual(7) = (1-params(5))*T(32)*getPowerDeriv(T(11),1-params(1),1)/(1-params(1))+y(26)*(-(T(17)*T(18)))+y(23)*(-(T(14)*T(32)))+y(22)*(-(y(20)*T(7)*T(10)*T(33)));
residual(8) = (1-params(5))*(-(y(16)*T(34)/(1+params(4))))+y(34)*(-y(15));
residual(9) = y(34)+y(26)+y(22)*(-(y(20)*T(12)*T(37)));
residual(10) = (1-params(5))*params(9)*getPowerDeriv(y(14),1-params(8),1)/(1-params(8))-y(26);
residual(11) = y(34)*(-y(12))+y(31)+y(22)*(-(y(20)*T(12)*T(39)))+params(13)*y(41);
residual(12) = (1-params(5))*(-((y(12)/(1-params(5)))^(1+params(4))/(1+params(4))))+y(32)+y(22)*(-(y(20)*T(12)*T(8)*T(10)))+params(13)*y(42);
residual(13) = y(28)*(-((1-params(7))*T(40)*T(41)))+y(27)*(-(params(6)*T(40)*T(42)))+y(24)*(-(y(20)/y(19)));
residual(14) = y(26)*(-(y(11)*T(44)))+y(25)*(-(y(5)*T(46)))+y(24)+y(23)*(-(T(11)*T(47)));
residual(15) = y(27)+y(25)*(-(y(5)*T(49)))+y(24)*T(50)+y(21)*(-(T(1)*T(4)*T(6)));
residual(16) = y(28)+y(26)*(-(y(11)*T(52)))+y(24)*(-(y(17)/y(19)))+y(22)*(-(T(7)*T(10)*T(12)));
residual(17) = 1-T(1)*T(4)*T(6)*y(19);
residual(18) = 1-T(7)*T(10)*T(12)*y(20);
residual(19) = T(5)-T(11)*T(14);
residual(20) = y(18)-y(20)*y(17)/y(19);
residual(21) = y(7)-(y(5)*T(15)*T(16)+y(8));
residual(22) = y(13)-(y(11)*T(17)*T(18)+y(14));
residual(23) = y(19)-(1-params(6)+params(6)*T(19))^T(20);
residual(24) = y(20)-(params(7)+(1-params(7))*T(19))^T(20);
residual(25) = y(9)-T(21);
residual(26) = y(10)-T(22);
residual(27) = y(15)-T(23);
residual(28) = y(16)-T(24);
residual(29) = y(7)-y(9)*y(6);
residual(30) = y(13)-y(15)*y(12);
lhs = y(35);
rhs = y(29)*T(54);
residual(31) = lhs - rhs;
lhs = y(36);
rhs = y(30)*T(56);
residual(32) = lhs - rhs;
lhs = y(37);
rhs = y(31)*T(58);
residual(33) = lhs - rhs;
lhs = y(38);
rhs = y(32)*T(60);
residual(34) = lhs - rhs;

end
