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
    T = Model_draft_4.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(27, 1);
residual(1) = params(6)*(1+params(5))*(-(2*(y(11)-y(9))))+y(35)*(-params(26))+y(34)*(-params(20))+y(28)+y(24)*(-(params(10)*(-(1+params(5)))))+params(28)*y(43)*(-params(14));
residual(2) = y(29)+y(24)*(-params(10))+params(28)*y(44)*(-params(15));
residual(3) = params(6)*(1+params(5))*2*(y(11)-y(9))+y(35)*(-params(22))+y(34)*(-params(16))+y(33)*(-params(6))+y(27)*(-T(5))+y(24)*(-(params(10)*T(3)))+y(23)+T(6)*(-y(5));
residual(4) = params(6)*1/params(10)*2*y(12)+y(35)*(-params(24))+y(34)*(-params(18))+(-params(6))*y(32)+y(24)+T(6)*y(5)*(-T(1))+T(6)*y(6)*(-params(4));
residual(5) = y(34)+y(27)*(-(T(5)*(-params(3))))+y(24)*T(7)+y(23)*(-params(3))+T(6)*params(3)*y(5);
residual(6) = (1-params(6))*(1+params(5))*(-(2*(y(16)-y(14))))+y(35)*(-params(27))+y(34)*(-params(21))+y(30)+y(26)*(-(params(12)*(-(1+params(5)))))+params(28)*(-params(14))*y(45);
residual(7) = y(31)+y(26)*(-params(12))+params(28)*(-params(15))*y(46);
residual(8) = (1-params(6))*(1+params(5))*2*(y(16)-y(14))+y(35)*(-params(23))+y(34)*(-params(17))+y(33)*(-(1-params(6)))+T(5)*y(27)+y(26)*(-(T(3)*params(12)))+y(25)+T(6)*(-y(7));
residual(9) = (1-params(6))*1/params(12)*2*y(17)+y(35)*(-params(25))+y(34)*(-params(19))+y(32)*(-(1-params(6)))+y(26)+T(6)*(-T(1))*y(7)+T(6)*(-params(4))*y(8);
residual(10) = y(35)+y(27)*(-(params(3)*T(5)))+y(26)*T(8)+(-params(3))*y(25)+T(6)*params(3)*y(7);
residual(11) = T(1)*y(25)+T(1)*y(23);
residual(12) = y(27)+y(26)*(-((params(11)-params(2)*params(6))*params(12)))+T(4)*y(25)+y(24)*(-((1-params(2)*params(6)-params(9))*params(10)))+T(2)*y(23)+T(6)*y(5)*(-T(2))+T(6)*y(7)*(-T(4));
residual(13) = y(32);
residual(14) = y(33);
residual(15) = y(11)-(y(36)-T(1)*(y(19)-y(37))+T(2)*(y(42)-y(20))-params(3)*(y(38)-y(13)));
residual(16) = y(12)-(y(37)*params(4)+params(10)*(y(10)+y(11)*T(3)-y(13)*params(1)*params(3)/(1-params(3))+(1-params(2)*params(6)-params(9))*y(20)-(1+params(5))*y(9)));
residual(17) = y(16)-(y(39)-T(1)*(y(19)-y(40))+(y(42)-y(20))*T(4)-params(3)*(y(41)-y(18)));
residual(18) = y(17)-(params(4)*y(40)+params(12)*(y(15)+T(3)*y(16)-params(1)*params(3)/(1-params(3))*y(18)+y(20)*(params(11)-params(2)*params(6))-(1+params(5))*y(14)));
residual(19) = y(20)-T(5)*(y(11)-y(16)-params(3)*(y(13)-y(18)));
residual(20) = y(9)-(params(14)*y(1)+x(it_, 1));
residual(21) = y(10)-(params(15)*y(2)+x(it_, 2));
residual(22) = y(14)-(params(14)*y(3)+x(it_, 3));
residual(23) = y(15)-(params(15)*y(4)+x(it_, 4));
residual(24) = y(21)-(params(6)*y(12)+y(17)*(1-params(6)));
residual(25) = y(22)-(y(11)*params(6)+y(16)*(1-params(6)));
residual(26) = y(13)-(y(11)*params(16)+y(16)*params(17)+y(12)*params(18)+y(17)*params(19)+y(9)*params(20)+y(14)*params(21));
residual(27) = y(18)-(y(11)*params(22)+y(16)*params(23)+y(12)*params(24)+y(17)*params(25)+y(9)*params(26)+y(14)*params(27));

end
