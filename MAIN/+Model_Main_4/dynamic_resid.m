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
    T = Model_Main_4.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(57, 1);
lhs = 0;
rhs = params(2)*y(25)+params(3)*y(23)+params(20)*y(37)-(1+params(3))*y(21);
residual(1) = lhs - rhs;
lhs = 0;
rhs = params(2)*y(32)+params(3)*y(30)-y(37)*params(21)-(1+params(3))*y(22);
residual(2) = lhs - rhs;
lhs = params(25)*(y(23)-params(11)*y(24));
rhs = params(2)*y(25)+y(37)*params(8)*(1-params(7))*params(24);
residual(3) = lhs - rhs;
lhs = params(25)*(y(30)-params(11)*y(31));
rhs = params(2)*y(32)-y(37)*params(24)*params(8)*params(7);
residual(4) = lhs - rhs;
lhs = y(37);
rhs = params(27)*(y(23)-y(30)-params(11)*(y(24)-y(31)));
residual(5) = lhs - rhs;
lhs = y(24)*params(4);
rhs = params(2)*y(25)+params(20)*y(37);
residual(6) = lhs - rhs;
lhs = y(31)*params(4);
rhs = params(2)*y(32)-y(37)*params(21);
residual(7) = lhs - rhs;
lhs = y(27);
rhs = y(25)+y(37)*params(20)*params(5);
residual(8) = lhs - rhs;
lhs = y(28);
rhs = y(25)+y(37)*(-params(5))*(1-params(20));
residual(9) = lhs - rhs;
lhs = y(33);
rhs = y(32)+y(37)*params(5)*(1-params(21));
residual(10) = lhs - rhs;
lhs = y(34);
rhs = y(32)+y(37)*params(21)*(-params(5));
residual(11) = lhs - rhs;
lhs = y(26);
rhs = y(23)-y(21);
residual(12) = lhs - rhs;
lhs = y(35);
rhs = y(30)-y(22);
residual(13) = lhs - rhs;
lhs = y(29);
rhs = (1+params(3))*(y(63)-y(21))-params(3)*(y(65)-y(23));
residual(14) = lhs - rhs;
lhs = y(36);
rhs = (1+params(3))*(y(64)-y(22))-params(3)*(y(66)-y(30));
residual(15) = lhs - rhs;
lhs = y(38);
rhs = y(23)*params(7)+y(30)*(1-params(7));
residual(16) = lhs - rhs;
lhs = y(39);
rhs = y(24)*params(7)+(1-params(7))*y(31);
residual(17) = lhs - rhs;
lhs = y(40);
rhs = params(7)*y(29)+(1-params(7))*y(36);
residual(18) = lhs - rhs;
lhs = y(42);
rhs = params(1)*y(68)+params(22)*((params(3)+params(27)*params(28))*y(41)-params(11)*params(27)*params(28)*y(43)+(params(25)-params(27)*params(28))*(y(48)-params(11)*y(50))-(1+params(3))*y(21));
residual(19) = lhs - rhs;
lhs = y(49);
rhs = params(1)*y(71)+params(23)*(y(48)*(params(3)+params(27)*params(29))-y(50)*params(11)*params(27)*params(29)+(params(25)-params(27)*params(29))*(y(41)-params(11)*y(43))-(1+params(3))*y(22));
residual(20) = lhs - rhs;
lhs = y(41);
rhs = y(67)-params(11)*(y(69)-y(43))-1/(params(27)*params(28))*(y(55)-y(68))+T(1)*(y(70)-y(48)-params(11)*(y(72)-y(50)));
residual(21) = lhs - rhs;
lhs = y(48);
rhs = y(70)-params(11)*(y(72)-y(50))-1/(params(27)*params(29))*(y(56)-y(71))+T(2)*(y(67)-y(41)-params(11)*(y(69)-y(43)));
residual(22) = lhs - rhs;
lhs = y(58);
rhs = params(27)*(y(41)-y(48)-params(11)*(y(43)-y(50)));
residual(23) = lhs - rhs;
lhs = y(44);
rhs = y(41)-y(21);
residual(24) = lhs - rhs;
lhs = y(51);
rhs = y(48)-y(22);
residual(25) = lhs - rhs;
lhs = params(25)*(y(41)-params(11)*y(43));
rhs = params(2)*y(45)+params(8)*(1-params(7))*params(24)*y(58);
residual(26) = lhs - rhs;
lhs = params(25)*(y(48)-params(11)*y(50));
rhs = params(2)*y(52)-params(24)*params(8)*params(7)*y(58);
residual(27) = lhs - rhs;
lhs = y(46);
rhs = y(45)+params(20)*params(5)*y(58);
residual(28) = lhs - rhs;
lhs = y(47);
rhs = y(45)+(-params(5))*(1-params(20))*y(58);
residual(29) = lhs - rhs;
lhs = y(53);
rhs = y(52)+params(5)*(1-params(21))*y(58);
residual(30) = lhs - rhs;
lhs = y(54);
rhs = y(52)+params(21)*(-params(5))*y(58);
residual(31) = lhs - rhs;
lhs = y(55);
rhs = y(57);
residual(32) = lhs - rhs;
lhs = y(56);
rhs = y(57);
residual(33) = lhs - rhs;
lhs = y(59);
rhs = params(7)*y(42)+(1-params(7))*y(49);
residual(34) = lhs - rhs;
lhs = y(60);
rhs = params(7)*y(41)+(1-params(7))*y(48);
residual(35) = lhs - rhs;
lhs = y(61);
rhs = params(7)*y(43)+(1-params(7))*y(50);
residual(36) = lhs - rhs;
lhs = y(62);
rhs = params(7)*y(45)+(1-params(7))*y(52);
residual(37) = lhs - rhs;
lhs = y(57);
rhs = y(40)+y(59)*2.5+0.125*y(17)+0.7*y(5);
residual(38) = lhs - rhs;
lhs = y(7);
rhs = 0.85*y(1)+params(30)*y(6)+y(42)*params(31);
residual(39) = lhs - rhs;
lhs = y(12);
rhs = 0.85*y(2)+params(38)*y(11)+y(49)*params(39);
residual(40) = lhs - rhs;
lhs = y(6);
rhs = y(41)-y(23);
residual(41) = lhs - rhs;
lhs = y(7);
rhs = y(43)-y(24);
residual(42) = lhs - rhs;
lhs = y(8);
rhs = y(45)-y(25);
residual(43) = lhs - rhs;
lhs = y(9);
rhs = y(7)-y(6);
residual(44) = lhs - rhs;
lhs = y(10);
rhs = y(55)-y(29);
residual(45) = lhs - rhs;
lhs = y(16);
rhs = y(58)-y(37);
residual(46) = lhs - rhs;
lhs = y(11);
rhs = y(48)-y(30);
residual(47) = lhs - rhs;
lhs = y(12);
rhs = y(50)-y(31);
residual(48) = lhs - rhs;
lhs = y(13);
rhs = y(52)-y(32);
residual(49) = lhs - rhs;
lhs = y(14);
rhs = y(12)-y(11);
residual(50) = lhs - rhs;
lhs = y(15);
rhs = y(56)-y(36);
residual(51) = lhs - rhs;
lhs = y(17);
rhs = params(7)*y(6)+(1-params(7))*y(11);
residual(52) = lhs - rhs;
lhs = y(18);
rhs = params(7)*y(7)+(1-params(7))*y(12);
residual(53) = lhs - rhs;
lhs = y(19);
rhs = params(7)*y(8)+(1-params(7))*y(13);
residual(54) = lhs - rhs;
lhs = y(20);
rhs = y(55)-y(40);
residual(55) = lhs - rhs;
lhs = y(21);
rhs = params(42)*y(3)-x(it_, 1);
residual(56) = lhs - rhs;
lhs = y(22);
rhs = params(42)*y(4)-x(it_, 2);
residual(57) = lhs - rhs;

end
