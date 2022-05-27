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
    T = Model_draft_4_testplan3.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(28, 1);
residual(1) = params(5)*T(5)*getPowerDeriv(y(5)/params(5),1-params(1),1)/(1-params(1))+y(26)*(-params(6))+y(25)*(-(1-params(6)));
residual(2) = y(25)+y(19);
residual(3) = y(26)+y(20);
residual(4) = params(5)*(-(T(5)*getPowerDeriv(y(8)/params(5),1+params(4),1)/(1+params(4))))+y(19)*(-y(10));
residual(5) = y(19)+params(5)*params(10)*getPowerDeriv(y(9),1-params(9),1)/(1-params(9));
residual(6) = y(21)+y(19)*(-y(8))+params(14)*y(33)*T(9);
residual(7) = y(23)+params(14)*y(35)*T(10);
residual(8) = (1-params(5))*T(6)*getPowerDeriv(y(12)/(1-params(5)),1-params(1),1)/(1-params(1))+y(28)*(-params(7))+y(27)*(-(1-params(7)));
residual(9) = y(19)+y(28);
residual(10) = y(20)+y(27);
residual(11) = (1-params(5))*(-(y(18)*T(8)/(1+params(4))))+y(20)*(-y(17));
residual(12) = y(20)+(1-params(5))*params(10)*getPowerDeriv(y(16),1-params(9),1)/(1-params(9));
residual(13) = y(22)+y(20)*(-y(15))+params(14)*y(34)*T(11);
residual(14) = (1-params(5))*(-(T(7)^(1+params(4))/(1+params(4))))+y(24)+params(14)*y(36)*T(12);
residual(15) = y(6)+y(13)+y(9)-y(10)*y(8);
residual(16) = y(7)+y(14)+y(16)-y(17)*y(15);
residual(17) = y(10)-T(1);
residual(18) = y(17)-T(2);
residual(19) = y(11)-T(3);
residual(20) = y(18)-T(4);
residual(21) = y(6)-(1-params(6))*y(5);
residual(22) = y(7)-params(6)*y(5);
residual(23) = y(14)-(1-params(7))*y(12);
residual(24) = y(13)-params(7)*y(12);
lhs = y(29);
rhs = x(it_, 1);
residual(25) = lhs - rhs;
lhs = y(30);
rhs = x(it_, 2);
residual(26) = lhs - rhs;
lhs = y(31);
rhs = x(it_, 3);
residual(27) = lhs - rhs;
lhs = y(32);
rhs = x(it_, 4);
residual(28) = lhs - rhs;

end
